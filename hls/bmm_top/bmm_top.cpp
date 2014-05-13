#include "ap_int.h"
#include "ap_cint.h"

#define BRAM_DT int256
#define BUS_WIDTH 256
#define ELEM_WIDTH_BYTES 4
#define ELEM_WIDTH_BITS (ELEM_WIDTH_BYTES*8)
#define ELEMS_PER_BUS (BUS_WIDTH/ELEM_WIDTH_BITS)
#define ELEM_WIDTH_MASK (ELEM_WIDTH_BITS-1)

// In ELEM_WIDTH_BYTES
#define BDIM 128
#define BSIZE (BDIM*BDIM)
#define RAM_SIZE ((BSIZE*ELEM_WIDTH_BITS)/(BUS_WIDTH))

void bmm_top(volatile BRAM_DT b1[RAM_SIZE], volatile BRAM_DT b2[RAM_SIZE],  volatile BRAM_DT b3[RAM_SIZE], int blockSize)
{
#pragma HLS INTERFACE ap_bus port=b1
#pragma HLS RESOURCE core=AXI4M variable=b1
#pragma HLS INTERFACE ap_bus port=b2
#pragma HLS RESOURCE core=AXI4M variable=b2
#pragma HLS INTERFACE ap_bus port=b3
#pragma HLS RESOURCE core=AXI4M variable=b3
#pragma HLS RESOURCE core=AXI4LiteS variable=return metadata="-bus_bundle CONTROL"
#pragma HLS INTERFACE ap_hs port=blockSize
#pragma HLS RESOURCE core=AXI4LiteS variable=blockSize metadata="-bus_bundle CONTROL"

	int i = 0,j = 0,k = 0;
	int arow[BDIM], brow[BDIM], crow[BDIM];
#pragma HLS ARRAY_PARTITION variable=arow complete dim=1
#pragma HLS ARRAY_PARTITION variable=brow complete dim=1
#pragma HLS ARRAY_PARTITION variable=crow complete dim=1

	int bsize = blockSize;

    int rowSize = bsize/ELEMS_PER_BUS;              // number of entries per bus
    int numRows = bsize;
    int rowIdx = 0;
	for (rowIdx = 0; rowIdx < numRows; rowIdx++) {   // rowIdx refers to the current bram row in the logical view
        int rowBaseIdx = rowIdx*rowSize;             // rowBaseIdx is the actual index that points to the first element of the row number rowIdx in bram
        k = 0;
        for (j = 0; j < rowSize; j++) {  // j iterates through all the elements in that row, starting from rowIdx
            int curIdx = rowBaseIdx+j;
    		BRAM_DT curElemA = b1[curIdx];
		    BRAM_DT curElemC = b3[curIdx];

    		for (int t2=0; t2<ELEMS_PER_BUS; t2++, k++) {  // Each entry has ELEMS_PER_BUS number of entries, split them and add them to arow and crow
//#pragma HLS UNROLL factor=2
    				arow[k] =  apint_get_range(curElemA, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS); // curElemA & mask; 
		    		crow[k] =  apint_get_range(curElemC, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS); // curElemC & mask; 
            }
/*
   				arow[k] =  apint_get_range(curElemA, 31, 0); // curElemA & mask; 
	    		crow[k] =  apint_get_range(curElemC, 31, 0); // curElemC & mask; 
   				
                arow[k+1] =  apint_get_range(curElemA, 63, 32); // curElemA & mask; 
	    		crow[k+1] =  apint_get_range(curElemC, 63, 32); // curElemC & mask; 

   				arow[k+2] =  apint_get_range(curElemA, 95, 64); // curElemA & mask; 
	    		crow[k+2] =  apint_get_range(curElemC, 95, 64); // curElemC & mask; 

   				arow[k+3] =  apint_get_range(curElemA, 127, 96); // curElemA & mask; 
	    		crow[k+3] =  apint_get_range(curElemC, 127, 96); // curElemC & mask; 

                arow[k+4] =  apint_get_range(curElemA, 159, 128); // curElemA & mask; 
	    		crow[k+4] =  apint_get_range(curElemC, 159, 128); // curElemC & mask; 

   				arow[k+5] =  apint_get_range(curElemA, 191, 160); // curElemA & mask; 
	    		crow[k+5] =  apint_get_range(curElemC, 191, 160); // curElemC & mask; 

   				arow[k+6] =  apint_get_range(curElemA, 223, 192); // curElemA & mask; 
	    		crow[k+6] =  apint_get_range(curElemC, 223, 192); // curElemC & mask; 

   				arow[k+7] =  apint_get_range(curElemA, 255, 224); // curElemA & mask; 
	    		crow[k+7] =  apint_get_range(curElemC, 255, 224); // curElemC & mask; 

                k = k + 8;
*/
	    }

        // Now, iterate through all rows in b2, store them in brow, 
        // to a SIMD multiply-accumulate of arow and brow into crow
        //
        // 1. Iterate through all rows in B
        for (int rowIdxB = 0; rowIdxB < numRows; rowIdxB++) {
            int rowBaseIdxB = rowIdxB * rowSize;
            k = 0;
            // Fetch one row of b2 into brow
            for (j=0; j<rowSize; j++) {
                int curIdx = rowBaseIdxB+j;
                BRAM_DT curElemB = b2[curIdx];

                for (int t2=0; t2<ELEMS_PER_BUS; t2++, k++) {
// #pragma HLS UNROLL factor=2
    				brow[k] =  apint_get_range(curElemB, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS);
                }

/*
    		    brow[k] =  apint_get_range(curElemB, 31, 0);
    		    brow[k+1] =  apint_get_range(curElemB, 63, 32);
    		    brow[k+2] =  apint_get_range(curElemB, 95, 64);
    		    brow[k+3] =  apint_get_range(curElemB, 127, 96);
    		    brow[k+4] =  apint_get_range(curElemB, 159, 128);
    		    brow[k+5] =  apint_get_range(curElemB, 191, 160);
    		    brow[k+6] =  apint_get_range(curElemB, 223, 192);
    		    brow[k+7] =  apint_get_range(curElemB, 255, 224);

                k = k + 8;
*/
            }

            // Multiply-accumulate arow and brow into crow
	        for (int t1=0; t1<bsize; t1++) {
#pragma HLS UNROLL factor=2 skip_exit_check
//#pragma HLS PIPELINE II=1
    		    crow[t1] += arow[t1] * brow[t1];   // So that i can verify if rowIdx is correct
    	    }

        }
        
        // Store crow back
        k=0;
        for (j=0; j<rowSize; j++) {
            int curIdx = rowBaseIdx+j;
    		BRAM_DT curElemC = 0;

    		for (int t2=0; t2<ELEMS_PER_BUS; t2++, k++) {
// #pragma HLS UNROLL factor=2
			    curElemC = apint_set_range(curElemC, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS, crow[k]);
    		}

/*
			curElemC = apint_set_range(curElemC, 31, 0, crow[k]);
			curElemC = apint_set_range(curElemC, 63, 32, crow[k+1]);
			curElemC = apint_set_range(curElemC, 95, 64, crow[k+2]);
			curElemC = apint_set_range(curElemC, 127, 96, crow[k+3]);
			curElemC = apint_set_range(curElemC, 159, 128, crow[k+4]);
			curElemC = apint_set_range(curElemC, 191, 160, crow[k+5]);
			curElemC = apint_set_range(curElemC, 223, 192, crow[k+6]);
			curElemC = apint_set_range(curElemC, 255, 224, crow[k+7]);
            k = k + 8;
*/
    		b3[curIdx] = curElemC;
        }
    }
}
