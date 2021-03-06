// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.3
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xsimple_top.h"

extern XSimple_top_Config XSimple_top_ConfigTable[];

XSimple_top_Config *XSimple_top_LookupConfig(u16 DeviceId) {
	XSimple_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSIMPLE_TOP_NUM_INSTANCES; Index++) {
		if (XSimple_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSimple_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSimple_top_Initialize(XSimple_top *InstancePtr, u16 DeviceId) {
	XSimple_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSimple_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSimple_top_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

