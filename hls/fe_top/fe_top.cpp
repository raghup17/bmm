#include "ap_int.h"
void fe_top(volatile unsigned int *start,volatile unsigned int *idle,volatile unsigned int *done)
{
#pragma HLS INTERFACE ap_none port=start
#pragma HLS INTERFACE ap_none port=idle
#pragma HLS INTERFACE ap_none port=done
#pragma HLS RESOURCE core=AXI4LiteS variable=return metadata="-bus_bundle CONTROL"
	*start = 0x00000000;
	while(!(*idle));  // Wait for the interfaced HLS module to finish
	*start  = 0xFFFFFFFF;  // Start the HLS module
	*start = 0x00000000;
	while(!(*idle || *done));  // Wait for the interfaced HLS module to finish
	*start = 0x00000000;
}
