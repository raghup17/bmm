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


#define B1_BASE 	0xC0000000
#define B2_BASE 	0xC1000000
#define B3_BASE 	0xC2000000
#define BRAM_SIZE_BYTES 4096*32

#define TMPBUF			0x3E000000
// Matrix and block sizes
#define SIZE 1024
#define BSIZE 64

XAxiCdma dmaInstance;
//XFe_top hlsInstance;

XBmm_top hlsInstance;

int dma_init(XAxiCdma_Config* cfg_ptr)
{
        // ***** Local variables *****
        int status = 0;
        int numBdring = 0;

        xil_printf("Initializing DMA...\n\r");

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

        printf("DMA initialization complete!\n\r");
        XAxiCdma_DumpRegisters(&dmaInstance);
        return XST_SUCCESS;
}

int hls_ip_init()
{
        int status = XST_SUCCESS;

        // status = XFe_top_Initialize(&hlsInstance, XPAR_FE_TOP_0_DEVICE_ID);
        status = XBmm_top_Initialize(&hlsInstance, XPAR_BMM_TOP_0_DEVICE_ID);
        if (status != XST_SUCCESS) {
                xil_printf("Error: Could not initialize HLS device, status = %d\n\r", status);
                return status;
        }
        XBmm_top_InterruptClear(&hlsInstance, 0xFFFFFFFF);
        XBmm_top_InterruptDisable(&hlsInstance, 0xFFFFFFFF);
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

int copyBlockToBRAM(int m[][SIZE], int si, int sj, int bram[][BSIZE])
{
	XAxiCdma_Bd *bdring = NULL, *bdringReturn = NULL;
	int status = XST_SUCCESS;
	int i = 0;
//	XAxiCdma_DumpRegisters(&dmaInstance);
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
		XAxiCdma_BdSetDstBufAddr(bd, &bram[i][0]);
		XAxiCdma_BdSetSrcBufAddr(bd, &m[si+i][sj]);
		XAxiCdma_BdSetLength(bd, BSIZE*sizeof(int));
	}


//	XAxiCdma_DumpRegisters(&dmaInstance);

	// Write &bdring[0] into the CDESC register
	XAxiCdma_WriteReg(dmaInstance.BaseAddr, XAXICDMA_CDESC_OFFSET, bdring);

//	XAxiCdma_DumpRegisters(&dmaInstance);

	// Enqueue in hw, launch
//	printf("[before] SgHandlerHead = %d, SgHandlerTail = %d\n\r", dmaInstance.SgHandlerHead, dmaInstance.SgHandlerTail);
	status = XAxiCdma_BdRingToHw(&dmaInstance, BSIZE, bdring, NULL, NULL);
//	printf("[after] SgHandlerHead = %d, SgHandlerTail = %d\n\r", dmaInstance.SgHandlerHead, dmaInstance.SgHandlerTail);
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
//	printf("[adjusted] SgHandlerHead = %d, SgHandlerTail = %d\n\r", dmaInstance.SgHandlerHead, dmaInstance.SgHandlerTail);

	return status;
}

int copyBlockFromBRAM(int m[][SIZE], int si, int sj, int bram[][BSIZE])
{
	XAxiCdma_Bd *bdring = NULL, *bdringReturn = NULL;
	int status = XST_SUCCESS;
	int i = 0;

	status = XAxiCdma_BdRingAlloc(&dmaInstance, BSIZE, &bdring);
	if (status != XST_SUCCESS) {
		printf("Error: Couldn't allocate bdring, status = %d\n\r", status);
		return status;
	}

	for (i=0; i<BSIZE; i++) {
		XAxiCdma_Bd *bd = &bdring[i];
		XAxiCdma_BdClear(bd);
		XAxiCdma_BdClearSts(bd);
		XAxiCdma_BdSetSrcBufAddr(bd, &bram[i][0]);
		XAxiCdma_BdSetDstBufAddr(bd, &m[si+i][sj]);
		XAxiCdma_BdSetLength(bd, BSIZE*sizeof(int));
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
				m1[i][j] = 1; // *(i*SIZE+j);
				m2[i][j] = 2; // *(i*SIZE+j);
				m3[i][j] = 0; (i*SIZE+j);
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

void dumpBRAM(int *bramAddr)
{
	int *tmp = (int*)TMPBUF;
	int status = XST_SUCCESS;
	int i = 0;
	status = simpleCopy(tmp, bramAddr, BRAM_SIZE_BYTES);
	if (status != XST_SUCCESS) {
		return status;
	}

	for (i=0; i<BRAM_SIZE_BYTES/sizeof(int); i+=4) {
		printf("(%x) %d ", &bramAddr[i], tmp[i]);
		printf("(%x) %d ", &bramAddr[i+1], tmp[i+1]);
		printf("(%x) %d ", &bramAddr[i+2], tmp[i+2]);
		printf("(%x) %d ", &bramAddr[i+3], tmp[i+3]);
		printf("\n\r");
	}
//	printArray(tmp, BRAM_SIZE_BYTES/sizeof(int));
}

void zeroBRAM(int *bramAddr)
{
	int *tmp = (int*)TMPBUF;
	int status = XST_SUCCESS;
	int i = 0;
	for (i=0; i<BRAM_SIZE_BYTES/sizeof(int); i++) {
		tmp[i] = 0;
	}
	status = simpleCopy(bramAddr, tmp, BRAM_SIZE_BYTES);
	if (status != XST_SUCCESS) {
		return status;
	}

}

void matMult(int a[][SIZE], int b[][SIZE], int c[][SIZE], int blocka[][BSIZE], int blockb[][BSIZE], int blockc[][BSIZE])
{
    int ia=0, ja=0, jb=0;
    for (ia=0; ia < SIZE; ia += BSIZE) {
        for (ja=0; ja < SIZE; ja += BSIZE) {
        	copyBlockToBRAM(a, ia, ja, blocka);
            for (jb = 0; jb < SIZE; jb+=BSIZE) {
//            	printMatrix(c);
            	copyBlockToBRAM(b, ja, jb, blockb);
            	copyBlockToBRAM(c, ia, jb, blockc);
                XBmm_top_Start(&hlsInstance);
                while (!(XBmm_top_IsDone(&hlsInstance) || XBmm_top_IsIdle(&hlsInstance)));
                copyBlockFromBRAM(c, ia, jb, blockc);
//                printMatrix(c);
             }
        }
    }

}

int matMultVerify(int a[][SIZE], int b[][SIZE], int c[][SIZE])
{
    int i, j, k;
    int tempVal = 0;
    int mismatchCount = 0;
    for (i=0; i<SIZE; i++) {
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
    }
    return mismatchCount;
}

int main()
{
	int status = XST_SUCCESS;
	int mismatchCount = -1;
	int **m1 = (int**)MATRIX_BASE;
	int **m2 = (int**)(MATRIX_BASE+(SIZE*SIZE*sizeof(int)));
	int **m3 = (int**)(MATRIX_BASE+(2*SIZE*SIZE*sizeof(int)));
	int **b1 = (int**)B1_BASE;
	int **b2 = (int**)B2_BASE;
	int **b3 = (int**)B3_BASE; // +(BSIZE*BSIZE*sizeof(int));
	int eventCounter1[6], eventCounter2[6];
	int clock1=0, clock2=0;
	Xpm_EnableEventCounters();
	Xpm_SetEvents(XPM_CNTRCFG3);
	Xpm_GetEventCounters(eventCounter1);
	clock1 = eventCounter1[4];
	printf("Clock1 = %d\n\r", clock1);

    init_platform();
    Xpm_GetEventCounters(eventCounter2);
    clock1 = eventCounter2[4];
    printf("Clock difference: %d - %d = %d\n\r", clock2, clock1, clock2-clock1);
    Xil_DCacheDisable();

    status = init();
    if (status != XST_SUCCESS) {
    	printf("Error: Initialization failed, status = %d\n\r", status);
    	return status;
    }

    initMatrices(m1, m2, m3, -1);
/*
    printMatrix(m3);
    copyBlockToBRAM(m1, 0, 0, b1);
    copyBlockToBRAM(m2, 0, 0, b2);
    copyBlockToBRAM(m3, 0, 0, b3);
    initMatrices(m1, m2, m3, 0);
    copyBlockFromBRAM(m1, 0, 0, b1);
    copyBlockFromBRAM(m2, 0, 0, b2);
    copyBlockFromBRAM(m3, 0, 0, b3);
    printMatrix(m3);
    printMatrix(m1);
*/
    printf("Beginning matrix multiply\n\r");
    matMult(m1, m2, m3, b1, b2, b3);
    printf("Matrix multiply done. Verifying..\n\r");
    mismatchCount = matMultVerify(m1, m2, m3);
    printf("Verification done\n\r");
    if (mismatchCount != 0) {
    	printf("Matrix multiply FAILED, %d mismatches\n\r", mismatchCount);
    }
    else {
    	printf("Matrix multiply PASSED\n\r");
    }

    cleanup_platform();
    return 0;
//    printMatrix(m3);
/*
    zeroBRAM(b1);
    XAxiCdma_DumpRegisters(&dmaInstance);
    zeroBRAM(b3);
    XAxiCdma_DumpRegisters(&dmaInstance);
    printf("B1 after zeroing\n\r");
    dumpBRAM(b1);
    printf("B3 after zeroing\n\r");
    dumpBRAM(b3);

    copyBlockToBRAM(m1, 0, 0, b1);
    copyBlockToBRAM(m2, 0, 0, b2);
    copyBlockToBRAM(m3, 0, 0, b3);

    // printf("B1 after block copy\n\r");
    // dumpBRAM(b1);
    // printf("B3 after block copy\n\r");
    // dumpBRAM(b3);
    initMatrices(m1, m2, m3, 0);

//    XBmm_top_SetOption(&hlsInstance, 0x0);

    XBmm_top_Start(&hlsInstance);
//    XBmm_top_SetOption(&hlsInstance, 0x1);
//    XBmm_top_SetOptionVld(&hlsInstance);
    while (!(XBmm_top_IsDone(&hlsInstance) || XBmm_top_IsIdle(&hlsInstance)));

//    printf("B1 after HLS\n\r");
//    dumpBRAM(b1);
//    printf("B3 after HLS\n\r");
//    dumpBRAM(b3);

    copyBlockFromBRAM(m1, 0, 0, b1);
    copyBlockFromBRAM(m2, 0, 0, b2);
    copyBlockFromBRAM(m3, 0, 0, b3);

    printMatrix(m1);
    printMatrix(m2);
    printMatrix(m3);

    dumpBRAM(b1);
    dumpBRAM(b2);
    dumpBRAM(b3);
*/
    return 0;
}
