// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xconvolution_filter.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XConvolution_filter_CfgInitialize(XConvolution_filter *InstancePtr, XConvolution_filter_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

u32 XConvolution_filter_Get_kernel_config_V_BaseAddress(XConvolution_filter *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_BASE);
}

u32 XConvolution_filter_Get_kernel_config_V_HighAddress(XConvolution_filter *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Axilites_BaseAddress + XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_HIGH);
}

u32 XConvolution_filter_Get_kernel_config_V_TotalBytes(XConvolution_filter *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_HIGH - XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_BASE + 1);
}

u32 XConvolution_filter_Get_kernel_config_V_BitWidth(XConvolution_filter *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCONVOLUTION_FILTER_AXILITES_WIDTH_KERNEL_CONFIG_V;
}

u32 XConvolution_filter_Get_kernel_config_V_Depth(XConvolution_filter *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCONVOLUTION_FILTER_AXILITES_DEPTH_KERNEL_CONFIG_V;
}

u32 XConvolution_filter_Write_kernel_config_V_Words(XConvolution_filter *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_HIGH - XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Axilites_BaseAddress + XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XConvolution_filter_Read_kernel_config_V_Words(XConvolution_filter *InstancePtr, int offset, int *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_HIGH - XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Axilites_BaseAddress + XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_BASE + (offset + i)*4);
    }
    return length;
}

u32 XConvolution_filter_Write_kernel_config_V_Bytes(XConvolution_filter *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_HIGH - XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Axilites_BaseAddress + XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XConvolution_filter_Read_kernel_config_V_Bytes(XConvolution_filter *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_HIGH - XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Axilites_BaseAddress + XCONVOLUTION_FILTER_AXILITES_ADDR_KERNEL_CONFIG_V_BASE + offset + i);
    }
    return length;
}
