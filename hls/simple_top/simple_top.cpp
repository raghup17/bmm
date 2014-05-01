#include "ap_int.h"
#include <string.h>

#define SIZE 32
void simple_top(volatile int *inPtr) // , volatile int *outPtr)
{
#pragma HLS interface ap_bus port=inPtr
#pragma HLS resource core=AXI4M variable=inPtr
// #pragma HLS interface ap_bus port=outPtr
// #pragma HLS resource core=AXI4M variable=outPtr
// #pragma HLS interface ap_none port return

	volatile int i;
//	int blk[SIZE];
//	memcpy(blk, (int*)inPtr, SIZE * sizeof(int));

	// Waiting
//	for (i=0; i<SIZE*SIZE; i++) {
//	}
	for (i=0; i<SIZE; i++) {
		inPtr[i] = inPtr[i] + 10; // blk[SIZE-1-i];
	}
//	memcpy((int*)inPtr, blk, SIZE * sizeof(int));
}
