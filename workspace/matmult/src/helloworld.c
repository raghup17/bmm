/*
 * Copyright (c) 2009-2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xaxicdma.h"
#include "xbmm_top.h"
#include "xpm_counter.h"

// A few hardcoded definitions
#define DRAM_BASE 		0x20000000
#define DRAM_MAX		0x3FFFFFFF
#define MATRIX_BASE		DRAM_BASE
#define BDRING_BASE 	0x3F000000
#define BDRING_ALIGN	0x40


#define B_A 		0xC0000000

#define B0_B 		0xC1000000
#define B0_AB 		0xC2000000

#define B1_B 		0xC3000000
#define B1_AB 		0xC4000000

#define B2_B 		0xC5000000
#define B2_AB 		0xC6000000

#define B3_B 		0xC7000000
#define B3_AB 		0xC8000000


#define TMPBUF			0x3E000000
// Matrix and block sizes
#define SIZE 64
#define BSIZE 64
#define BRAM_SIZE 128
#define NUM_MULTIPLIERS 1

#define BRAM_WIDTH_BITS 256
#define BRAM_DEPTH 8192
#define BRAM_SIZE_BYTES (BRAM_DEPTH*BRAM_WIDTH_BITS)/8


// #define DCACHE_ENABLE

XAxiCdma dmaInstance;
//XFe_top hlsInstance;

XBmm_top hlsInstance[NUM_MULTIPLIERS];

double copyTime = 0.0;
double hlsTime = 0.0;
double initTime = 0.0;
double verifTime = 0.0;
double counterOverhead = 0;

u32 startCounter = 0;
u32 endCounter = 0;
void timerStart()
{
	u32 counters[6];
	Xpm_SetEvents(XPM_CNTRCFG3);
	Xpm_EnableEventCounters();
	Xpm_ResetEventCounters();
	counters[3] = 0;
	Xpm_GetEventCounters(counters);
	startCounter = counters[3];
	Xpm_EnableEventCounters();
}

double timerStop()
{
	u32 counters[6];
	counters[3] = 0;
	Xpm_GetEventCounters(counters);
	if (counters[3] < startCounter) {
		endCounter = (UINT32_MAX-startCounter) + counters[3];
	}
	else {
		endCounter = counters[3];
	}
	return (double)(endCounter-startCounter)/XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ;
}

void printHlsStatus(XBmm_top hlsInstance)
{
        xil_printf("*** HLS status signals ***\n\r");
        if (!hlsInstance.IsReady) {
                xil_printf("\tHLS instance is not ready\n\r");
                return;
        }

        xil_printf("\tHLS done: %08x\n\r", XBmm_top_IsDone(&hlsInstance));
        xil_printf("\tHLS idle: %08x\n\r", XBmm_top_IsIdle(&hlsInstance));
        xil_printf("\tHLS ready: %08x\n\r", XBmm_top_IsReady(&hlsInstance));

        xil_printf("\tHLS interrupt enabled: %08x\n\r", XBmm_top_InterruptGetEnabled(&hlsInstance));
        xil_printf("\tHLS interrupt status: %08x\n\r", XBmm_top_InterruptGetStatus(&hlsInstance));
}

int dma_init(XAxiCdma_Config* cfg_ptr)
{
        // ***** Local variables *****
        int status = 0;
        int numBdring = 0;

        // Look up hardware configuration for device
        cfg_ptr = XAxiCdma_LookupConfig(XPAR_AXICDMA_0_DEVICE_ID);
        if (!cfg_ptr)
        {
                printf("Error: No config found for %d\r\n", XPAR_AXICDMA_0_DEVICE_ID);
                return XST_FAILURE;
        }

        // Initialize driver
        status = XAxiCdma_CfgInitialize(&dmaInstance, cfg_ptr, XPAR_AXI_CDMA_0_BASEADDR);
        if (status != XST_SUCCESS)
        {
                xil_printf("Error: Initialization failed, status = %d\r\n", status);
                return status;
        }

        status = XAxiCdma_SwitchMode(&dmaInstance, XAXICDMA_SG_MODE);
        if (status != XST_SUCCESS) {
        	printf("Error: Could not switch to SG mode, status = %d\n\r", status);
        	return status;
        }

        // Test for Scatter Gather
        if (XAxiCdma_IsSimpleMode(&dmaInstance))
        {
                xil_printf("Error: Device configured as SG mode \r\n");
                return XST_FAILURE;
        }

        // Disable interrupts for both channels
        XAxiCdma_IntrDisable(&dmaInstance, XAXICDMA_XR_IRQ_ALL_MASK);

        numBdring = XAxiCdma_BdRingCntCalc(BDRING_ALIGN, DRAM_MAX-BDRING_BASE+1, (u32)BDRING_BASE);
        // Initialize BD ring
        status = XAxiCdma_BdRingCreate(&dmaInstance, BDRING_BASE, BDRING_BASE, BDRING_ALIGN, numBdring);
        if (status != XST_SUCCESS) {
        	printf("Error: Could not create bdring, status = %d\n\r", status);
        }

        return XST_SUCCESS;
}

u32 getHlsID(int i)
{
	u32 idList[] = {XPAR_XBMM_TOP_0_DEVICE_ID, XPAR_XBMM_TOP_1_DEVICE_ID, XPAR_XBMM_TOP_2_DEVICE_ID, XPAR_XBMM_TOP_3_DEVICE_ID};
	if (i >=NUM_MULTIPLIERS) {
		printf("Error: Invalid i (%d) passed to getHlsID!\n\r", i);
		return -1;
	}
	else {
		return idList[i];
	}
}

int hls_ip_init()
{
        int status = XST_SUCCESS;
        int i = 0;
        // status = XFe_top_Initialize(&hlsInstance, XPAR_FE_TOP_0_DEVICE_ID);

        for (i=0; i<NUM_MULTIPLIERS; i++) {

        	status = XBmm_top_Initialize(&hlsInstance[i], getHlsID(i));
        	if (status != XST_SUCCESS) {
                	xil_printf("Error: Could not initialize HLS device, status = %d\n\r", status);
                	return status;
        	}
        	XBmm_top_InterruptClear(&hlsInstance[i], 0xFFFFFFFF);
        	XBmm_top_InterruptDisable(&hlsInstance[i], 0xFFFFFFFF);

        	while (! (XBmm_top_IsIdle(&hlsInstance[i]) || XBmm_top_IsDone(&hlsInstance[i]))) {
        		printHlsStatus(hlsInstance[i]);
        	}
        }

        printf("HLS initialization complete!\n\r");
        return status;
}

int init()
{
	int status = XST_SUCCESS;
	XAxiCdma_Config *cfgPtr = NULL;
	status = dma_init(cfgPtr);
	if (status != XST_SUCCESS) {
		return status;
	}
	status = hls_ip_init();
	if (status != XST_SUCCESS) {
		return status;
	}
	return status;
}

int copyBlockToBRAM(int m[][SIZE], int si, int sj, char bram[BRAM_DEPTH])
{
	XAxiCdma_Bd *bdring = NULL, *bdringReturn = NULL;
	int status = XST_SUCCESS;
	int i = 0;
	int k = 0;
	int rowSize = (BSIZE*sizeof(int)*8) / BRAM_WIDTH_BITS;

	status = XAxiCdma_BdRingAlloc(&dmaInstance, BSIZE, &bdring);
	if (status != XST_SUCCESS) {
		printf("Error: Couldn't allocate bdring, status = %d\n\r", status);
		return status;
	}
//	XAxiCdma_DumpRegisters(&dmaInstance);

	for (i=0; i<BSIZE; i++) {
		XAxiCdma_Bd *bd = &bdring[i];
		XAxiCdma_BdClear(bd);
		XAxiCdma_BdClearSts(bd);
		XAxiCdma_BdSetDstBufAddr(bd, &bram[k]);
		XAxiCdma_BdSetSrcBufAddr(bd, &m[si+i][sj]);
		XAxiCdma_BdSetLength(bd, BSIZE*sizeof(int));
		k += rowSize;
	}


//	XAxiCdma_DumpRegisters(&dmaInstance);
	// Write &bdring[0] into the CDESC register
	XAxiCdma_WriteReg(dmaInstance.BaseAddr, XAXICDMA_CDESC_OFFSET, bdring);

//	XAxiCdma_DumpRegisters(&dmaInstance);

	// Enqueue in hw, launch
	status = XAxiCdma_BdRingToHw(&dmaInstance, BSIZE, bdring, NULL, NULL);
	if (status != XST_SUCCESS) {
		printf("Error: Couldn't enqueue bdrings in hw, status = %d\n\r", status);
		printf("SgHandlerHead = %d, SgHandlerTail = %d\n\r", dmaInstance.SgHandlerHead, dmaInstance.SgHandlerTail);
		return status;
	}

//	XAxiCdma_DumpRegisters(&dmaInstance);
	// Wait for DMA to finish
	while (XAxiCdma_IsBusy(&dmaInstance)) {
//		XAxiCdma_DumpRegisters(&dmaInstance);
	}
//	XAxiCdma_DumpRegisters(&dmaInstance);


	status = XAxiCdma_BdRingFromHw(&dmaInstance, BSIZE, &bdringReturn);
	if (status != BSIZE) {
		printf("Error: num finished bds (%d) != %d, WHAT ?\n\r", status, BSIZE);
		XAxiCdma_DumpRegisters(&dmaInstance);
	}

	// Free all allocated BDs
	status = XAxiCdma_BdRingFree(&dmaInstance, BSIZE, bdringReturn);
	if (status != XST_SUCCESS) {
		printf("Error freeing bdrings, status = %d\n\r", status);
		return status;
	}

	dmaInstance.SgHandlerHead = (dmaInstance.SgHandlerHead + 1) % XAXICDMA_MAXIMUM_MAX_HANDLER;
	return status;
}

int copyBlockFromBRAM(int m[][SIZE], int si, int sj, char bram[BRAM_DEPTH])
{
	XAxiCdma_Bd *bdring = NULL, *bdringReturn = NULL;
	int status = XST_SUCCESS;
	int i = 0;
	int k = 0;
	int rowSize = (BSIZE*sizeof(int)*8) / BRAM_WIDTH_BITS;
//	printf("Copy start\n\r");
	status = XAxiCdma_BdRingAlloc(&dmaInstance, BSIZE, &bdring);
	if (status != XST_SUCCESS) {
		printf("Error: Couldn't allocate bdring, status = %d\n\r", status);
		return status;
	}

	for (i=0; i<BSIZE; i++) {
		XAxiCdma_Bd *bd = &bdring[i];
		XAxiCdma_BdClear(bd);
		XAxiCdma_BdClearSts(bd);
		XAxiCdma_BdSetSrcBufAddr(bd, &bram[k]);
		XAxiCdma_BdSetDstBufAddr(bd, &m[si+i][sj]);
		XAxiCdma_BdSetLength(bd, BSIZE*sizeof(int));
		k += BSIZE*sizeof(int);
	}

	// Write &bdring[0] into the CDESC register
	XAxiCdma_WriteReg(dmaInstance.BaseAddr, XAXICDMA_CDESC_OFFSET, bdring);

	// Enqueue in hw, launch
	status = XAxiCdma_BdRingToHw(&dmaInstance, BSIZE, bdring, NULL, NULL);
	if (status != XST_SUCCESS) {
		printf("Error: Couldn't enqueue bdrings in hw, status = %d\n\r", status);
		return status;
	}

	// Wait for DMA to finish
	while (XAxiCdma_IsBusy(&dmaInstance));

	status = XAxiCdma_BdRingFromHw(&dmaInstance, BSIZE, &bdringReturn);
	if (status != BSIZE) {
		printf("Error: num finished bds (%d) != %d, WHAT ?\n\r", status, BSIZE);
		XAxiCdma_DumpRegisters(&dmaInstance);
	}

	// Free all allocated BDs
	status = XAxiCdma_BdRingFree(&dmaInstance, BSIZE, bdringReturn);
	if (status != XST_SUCCESS) {
		printf("Error freeing bdrings, status = %d\n\r", status);
		printf("SgHandlerHead = %d, SgHandlerTail = %d", dmaInstance.SgHandlerHead, dmaInstance.SgHandlerTail);
		return status;
	}
	dmaInstance.SgHandlerHead = (dmaInstance.SgHandlerHead + 1) % XAXICDMA_MAXIMUM_MAX_HANDLER;
	return status;
}

int simpleCopy(int *dstAddr, int *srcAddr, int len)
{
	int status = XST_SUCCESS;
	XAxiCdma_SwitchMode(&dmaInstance, XAXICDMA_SIMPLE_MODE);
	XAxiCdma_DumpRegisters(&dmaInstance);
	status = XAxiCdma_SimpleTransfer(&dmaInstance, (u32)srcAddr, (u32)dstAddr, len, NULL, NULL);
	if (status != XST_SUCCESS) {
		printf("Error: Simple transfer failed, status = %d\n\r", status);
		return status;
	}
	while (XAxiCdma_IsBusy(&dmaInstance));
	XAxiCdma_DumpRegisters(&dmaInstance);
	XAxiCdma_SwitchMode(&dmaInstance, XAXICDMA_SG_MODE);
	XAxiCdma_DumpRegisters(&dmaInstance);
	return status;
}

void initMatrices(int m1[][SIZE], int m2[][SIZE], int m3[][SIZE], int val)
{
	int i=0, j=0;
	for (i=0; i<SIZE; i++) {
		for (j=0; j<SIZE; j++) {
			if (val == -1) {
				m1[i][j] = (i*SIZE+j);
				m2[i][j] = 2; // (i*SIZE+j);
				m3[i][j] = 0; // (i*SIZE+j);
			}
			else {
				m1[i][j] = 0;
				m2[i][j] = 0;
				m3[i][j] = 0;
			}
		}
	}
}

void printMatrix(int m[][SIZE])
{
	int i=0, j=0;
	for (i=0; i<SIZE; i++) {
		for (j=0; j<SIZE; j++) {
			printf("%d ", m[i][j]);
		}
		printf("\n\r");
	}
	printf("\n\r");
}

void printArray(int *a, int size)
{
	int i = 0;
	for (i=0; i<size; i++) {
		printf ("(%x) %d\n\r", &a[i], a[i]);
	}
}

void dumpBRAM(int bramAddr[BRAM_DEPTH])
{
	int *tmp = (int*)TMPBUF;
	int status = XST_SUCCESS;
	int i = 0;

	for (i=0; i <= BRAM_SIZE_BYTES/sizeof(int); i++) {
		tmp[i] =  -1;
	}

	status = simpleCopy(tmp, bramAddr, BRAM_SIZE_BYTES/sizeof(int));
	if (status != XST_SUCCESS) {
		return status;
	}

	for (i=0; i <= BRAM_SIZE_BYTES/sizeof(int); i++) {
		if (i%20 == 0) {
			printf("\n\r");
		}
		printf("%d ", tmp[i]);
	}
//	printArray(tmp, BRAM_SIZE_BYTES/sizeof(int));
}

void zeroBRAM(char bramAddr[BRAM_DEPTH])
{
	int *tmp = (int*)TMPBUF;
	int status = XST_SUCCESS;
	int i = 0;
	for (i=0; i <= BRAM_SIZE_BYTES/sizeof(int); i++) {
		tmp[i] =  i;
	}
	status = simpleCopy(bramAddr, tmp, BRAM_SIZE_BYTES/sizeof(int));

	for (i=0; i <= BRAM_SIZE_BYTES/sizeof(int); i++) {
		tmp[i] =  -1;
	}

	if (status != XST_SUCCESS) {
		return status;
	}

}

void matMult(
		int a[][SIZE], int b[][SIZE], int c[][SIZE],
		int block_a[][BRAM_SIZE],
		int* blocks_b[NUM_MULTIPLIERS],
		int* blocks_ab[NUM_MULTIPLIERS]
		)
{
    int ia=0, ja=0, jb=0;
    double elapsed = 0.0;
    for (ia=0; ia < SIZE; ia += BSIZE) {
        for (ja=0; ja < SIZE; ja += BSIZE) {
        	timerStart();
        	copyBlockToBRAM(a, ia, ja, block_a);
        	elapsed = timerStop();
        	copyTime += elapsed - counterOverhead;
            for (jb = 0; jb < SIZE; jb+=BSIZE*NUM_MULTIPLIERS) {
            	int iter = 0;

            	// Copy blocks to the multiplier modules
            	timerStart();
            	for (iter = 0; iter < NUM_MULTIPLIERS; iter++) {
            		int jb0 = jb + BSIZE*iter;
                	copyBlockToBRAM(b, ja, jb0, blocks_b[iter]);
                	copyBlockToBRAM(c, ia, jb0, blocks_ab[iter]);
            	}
            	elapsed = timerStop();
            	copyTime += elapsed - counterOverhead;

            	// Set the block size in all multipliers
            	timerStart();
            	for (iter = 0; iter < NUM_MULTIPLIERS; iter++) {
            		XBmm_top_SetBlocksize(&hlsInstance[iter], BSIZE);
            		XBmm_top_SetBlocksizeVld(&hlsInstance[iter]);
            	}

            	// Start the HLS block
            	for (iter = 0; iter < NUM_MULTIPLIERS; iter++) {
            		XBmm_top_Start(&hlsInstance[iter]);
            	}

            	// Wait for all HLS blocks to finish
            	for (iter = 0; iter < NUM_MULTIPLIERS; iter++) {
            		while (
            		         !(XBmm_top_IsDone(&hlsInstance[iter]) || XBmm_top_IsIdle(&hlsInstance[iter]))
            		      ) {
            			// Waiting for all block multipliers to finish..
            		}
            	}
                elapsed = timerStop();
                hlsTime += elapsed - counterOverhead;

                // Copy result blocks back to the original matrix
                timerStart();
                for (iter = 0; iter < NUM_MULTIPLIERS; iter++) {
                	int jb0 = jb + BSIZE*iter;
                	copyBlockFromBRAM(c, ia, jb0, blocks_ab[iter]);
                }
                elapsed = timerStop();
                copyTime += elapsed - counterOverhead;
             }
        }
    }

}

int matMultVerify(int a[][SIZE], int b[][SIZE], int c[][SIZE])
{
    int i, j, k;
    int tempVal = 0;
    int mismatchCount = 0;
    double t2 = 0.0;
    for (i=0; i<SIZE; i++) {
        timerStart();
        for (j=0; j<SIZE; j++) {

            tempVal = 0;
            for (k=0; k<SIZE; k++) {
                tempVal += a[i][k] * b[k][j];
            }
            if (c[i][j] != tempVal) {
                mismatchCount++;
                printf("Mismatch at (%d, %d): Expected %d, found %d\n", i, j, tempVal, c[i][j]);
            }
        }
        t2 = timerStop();
        verifTime += t2;
    }
    return mismatchCount;
}

void flushMatrix(int m[][SIZE])
{
	int cacheLineSize = 8;  // 8 integers = 32 bytes
	int i=0, j=0;
	for (i=0; i<SIZE; i++) {
		for (j=0; j<SIZE; j+=cacheLineSize) {
			Xil_DCacheFlushLine((u32)&m[i][j]);
			Xil_DCacheInvalidateLine((u32)&m[i][j]);
		}
	}
}

void printStats()
{
	printf("****PROGRAM STATS****\n\r");
	printf("Matrix size: %d, block size: %d\n\r", SIZE, BSIZE);
	printf("Init time: %lf s\n\r", initTime);
	printf("DMA copy time: %lf s\n\r", copyTime);
	printf("Block multiplication time: %lf s\n\r", hlsTime);
	printf("Verification time: %lf\n\r", verifTime);
}

int main()
{
	int status = XST_SUCCESS;
	int mismatchCount = -1;
	int **m1 = (int**)MATRIX_BASE;
	int **m2 = (int**)(MATRIX_BASE+(SIZE*SIZE*sizeof(int)));
	int **m3 = (int**)(MATRIX_BASE+(2*SIZE*SIZE*sizeof(int)));
	int **b_a = (int**)B_A;
	int* blocks_b[] = {(int*)B0_B, (int*)B1_B, (int*)B2_B, (int*)B3_B};
	int* blocks_ab[] = {(int*)B0_AB, (int*)B1_AB, (int*)B2_AB, (int*)B3_AB};

	int **b1 = (int**)b_a;
	int **b2 = (int**)blocks_b[0];
	int **b3 = (int**)blocks_ab[0];
	printf("\nMatrix multiply on the Zynq\n\r");
	// Measure counter overhead
	timerStart();
	counterOverhead = timerStop();
	printf("Counter overhead = %lf s\n\r", counterOverhead);
	double elapsed = 0.0;
	timerStart();
	sleep(1);
	elapsed = timerStop();
	printf("Slept for 1 sec, time elapsed = %lf sec\n\r", elapsed);

	timerStart();
    init_platform();
    elapsed = timerStop();
    initTime += elapsed;
#ifndef DCACHE_ENABLE
    Xil_DCacheDisable();
#endif
    timerStart();
    status = init();
    if (status != XST_SUCCESS) {
    	printf("Error: Initialization failed, status = %d\n\r", status);
    	return status;
    }

    initMatrices(m1, m2, m3, -1);

#ifdef DCACHE_ENABLE
    flushMatrix(m1);
    flushMatrix(m2);
    flushMatrix(m3);
#endif

//    zeroBRAM(b1);
//    dumpBRAM(b1);
//    printMatrix(m3);
    copyBlockToBRAM(m1, 0, 0, b1);

//    dumpBRAM(b1);
//    copyBlockToBRAM(m2, 0, 0, b2);
//    copyBlockToBRAM(m3, 0, 0, b3);
    initMatrices(m1, m2, m3, 0);
//    XBmm_top_SetBlocksize(&hlsInstance[0], BSIZE);
//    XBmm_top_SetBlocksizeVld(&hlsInstance[0]);
//    XBmm_top_Start(&hlsInstance[0]);
//    while (! (XBmm_top_IsIdle(&hlsInstance[0]) || XBmm_top_IsDone(&hlsInstance[0])));

    copyBlockFromBRAM(m1, 0, 0, b1);
//    copyBlockFromBRAM(m2, 0, 0, b2);
//    copyBlockFromBRAM(m3, 0, 0, b3);
//    printMatrix(m3);
//    printMatrix(m2);
    printMatrix(m1);

#ifdef DCACHE_ENABLE
    flushMatrix(m1);
    flushMatrix(m2);
    flushMatrix(m3);
#endif
    elapsed = timerStop();
    initTime += elapsed;
    printf("Beginning matrix multiply\n\r");
    matMult(
    		m1, m2, m3,
    		b_a,
    		blocks_b,
    		blocks_ab
    		);
    printf("Matrix multiply done. Verifying..\n\r");
    mismatchCount = matMultVerify(m1, m2, m3);
    printf("Verification done\n\r");
    if (mismatchCount != 0) {
    	printf("Matrix multiply FAILED, %d mismatches\n\r", mismatchCount);
    }
    else {
    	printf("Matrix multiply PASSED\n\r");
    }

    printStats();

    cleanup_platform();
    return 0;
}
