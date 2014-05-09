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

//void bmm_top(volatile ap_uint<BUS_WIDTH> b1[RAM_SIZE], volatile ap_uint<BUS_WIDTH> b2[RAM_SIZE],  volatile ap_uint<BUS_WIDTH> b3[RAM_SIZE], int blockSize)
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
// #pragma HLS UNROLL
    				arow[k] =  apint_get_range(curElemA, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS); // curElemA & mask; 
		    		crow[k] =  apint_get_range(curElemC, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS); // curElemC & mask; 
		    }
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
    				brow[k] =  apint_get_range(curElemB, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS);
                }
            }

            // Multiply-accumulate arow and brow into crow
	        for (int t1=0; t1<bsize; t1++) {
    		    crow[t1] += arow[t1] * brow[t1];   // So that i can verify if rowIdx is correct
    	    }

        }
        

        // Store crow back
        k=0;
        for (j=0; j<rowSize; j++) {
            int curIdx = rowBaseIdx+j;
    		BRAM_DT curElemC = 0;
    		for (int t2=0; t2<ELEMS_PER_BUS; t2++, k++) {
// #pragma HLS UNROLL
			    curElemC = apint_set_range(curElemC, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS, crow[k]);
    		}
    		b3[curIdx] = curElemC;
        }
    }

/*
	for (i=0; i<bsize; i+=dim) {

		// Read row i from b1 into arow
		// Read row i from b3 into crow
		for (int t1=0; t1<dim; t1++) {
			BRAM_DT curElemA = b1[i+t1];
			BRAM_DT curElemB = b2[i+t1];
			BRAM_DT curElemC = b3[i+t1];
			for (int t2=0; t2<ELEMS_PER_BUS; t2++) {
#pragma HLS UNROLL
				arow[t1*ELEMS_PER_BUS+t2] =  apint_get_range(curElemA, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS); // curElemA & mask; 
				brow[t1*ELEMS_PER_BUS+t2] =  apint_get_range(curElemB, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS); // curElemA & mask; 
				crow[t1*ELEMS_PER_BUS+t2] =  apint_get_range(curElemC, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS); // curElemC & mask; 
			}
		}


		

		for (j=0; j<bsize; j++) {
			// Read row j from b2 into brow		
			for (int t1=0; t1<dim; t1++) {
				BRAM_DT curElemB = b2[j+t1];
				for (int t2=0; t2<ELEMS_PER_BUS; t2++) {
#pragma HLS UNROLL
					brow[t1*ELEMS_PER_BUS+t2] = apint_get_range(curElemB, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS); // curElemB & mask;
				}
			}

			// At this point, you have arow, brow and crow loaded
			// Perform dot product-accumulate: crow += arow.brow
			for (k=0; k<bsize; k++) {
#pragma AP UNROLL factor=4
#pragma AP PIPELINE II=1
				crow[k] += arow[k] * brow[k];
			}
		}
		
		// Store crow into row i in b3 (b3[i+0] b3[i+1]...b3[i+t1]...b3[i+dim-1])
		for (int t1=0; t1<dim; t1++) {
			BRAM_DT curElemC = 0;   // b3[i+t1]
			for (int t2=0; t2<ELEMS_PER_BUS; t2++) {
				apint_set_range(curElemC, t2*ELEM_WIDTH_BITS + ELEM_WIDTH_BITS-1, t2*ELEM_WIDTH_BITS, crow[t1*ELEMS_PER_BUS+t2]);
				
			}
			b3[i+t1] = curElemC;
		}
	}

*/	

/*
	// SIMD-style matrix multiply
	for (ia=0; ia<bsize; ia+=ELEMS_PER_BUS) {
		for (ja=0; ja<bsize; ja+=ELEMS_PER_BUS) {
			// Copy into a local block
			int p,q;
			for (jb = 0; jb < bsize; jb += ELEMS_PER_BUS) {
			for (p=0; p<ELEMS_PER_BUS; p++) {
#pragma HLS UNROLL factor=full
				for (q=0; q<ELEMS_PER_BUS; q++) {
#pragma HLS UNROLL factor=full
					bloc[p][q] = apint_get_range(b2[p],q*ELEM_WIDTH*8+ELEM_WIDTH*8-1 ,q*ELEM_WIDTH*8);
					cloc[p][q] = apint_get_range(b3[p],q*ELEM_WIDTH*8+ELEM_WIDTH*8-1 ,q*ELEM_WIDTH*8);
				}
			}

			}

			// Multiply the matrices

			for (k=0; k<bsize; k++) {
#pragma HLS UNROLL factor=4
#pragma HLS PIPELINE II=1
				tmpVal += b1[i][k] * b2[k][j];
			}
			b3[i][j] += tmpVal;
		}
	}
*/
}
