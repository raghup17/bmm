#include "ap_int.h"

#define BSIZE 128
void bmm_top(volatile int b1[BSIZE][BSIZE], volatile int b2[BSIZE][BSIZE],  volatile int b3[BSIZE][BSIZE], int blockSize)
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
	
	int i, j,k;
	int bsize = blockSize;
	for (i=0; i<bsize; i++) {
		for (j=0; j<bsize; j++) {
			int tmpVal = 0;
			for (k=0; k<bsize; k++) {
#pragma HLS UNROLL factor=4
#pragma HLS PIPELINE II=1
				tmpVal += b1[i][k] * b2[k][j];
			}
			b3[i][j] += tmpVal;
		}
	}
}
