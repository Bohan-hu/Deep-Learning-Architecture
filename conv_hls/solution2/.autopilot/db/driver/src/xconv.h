// ==============================================================
// File generated on Mon Dec 02 16:50:10 +0800 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCONV_H
#define XCONV_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xconv_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XConv_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XConv;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XConv_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XConv_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XConv_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XConv_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XConv_Initialize(XConv *InstancePtr, u16 DeviceId);
XConv_Config* XConv_LookupConfig(u16 DeviceId);
int XConv_CfgInitialize(XConv *InstancePtr, XConv_Config *ConfigPtr);
#else
int XConv_Initialize(XConv *InstancePtr, const char* InstanceName);
int XConv_Release(XConv *InstancePtr);
#endif

void XConv_Start(XConv *InstancePtr);
u32 XConv_IsDone(XConv *InstancePtr);
u32 XConv_IsIdle(XConv *InstancePtr);
u32 XConv_IsReady(XConv *InstancePtr);
void XConv_EnableAutoRestart(XConv *InstancePtr);
void XConv_DisableAutoRestart(XConv *InstancePtr);

void XConv_Set_A(XConv *InstancePtr, u32 Data);
u32 XConv_Get_A(XConv *InstancePtr);
void XConv_Set_kernel(XConv *InstancePtr, u32 Data);
u32 XConv_Get_kernel(XConv *InstancePtr);
void XConv_Set_out_r(XConv *InstancePtr, u32 Data);
u32 XConv_Get_out_r(XConv *InstancePtr);

void XConv_InterruptGlobalEnable(XConv *InstancePtr);
void XConv_InterruptGlobalDisable(XConv *InstancePtr);
void XConv_InterruptEnable(XConv *InstancePtr, u32 Mask);
void XConv_InterruptDisable(XConv *InstancePtr, u32 Mask);
void XConv_InterruptClear(XConv *InstancePtr, u32 Mask);
u32 XConv_InterruptGetEnabled(XConv *InstancePtr);
u32 XConv_InterruptGetStatus(XConv *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
