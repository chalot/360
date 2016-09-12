/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  common_defs.h
 *
 */

#ifndef COMMON_DEFS_H
#define COMMON_DEFS_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>
#include <ti/sysbios/knl/Queue.h>
#include <ti/ipc/MessageQ.h>

#include "logger.h"

#define MAX_NAME            32
#define MAX_PORTS           4
#define MAX_CORES           5
#define MAX_SLICES			32
/* Maximum number of readers, the buffer manager can support. */
#define MAX_READERS         2

/* Maximum number of buffers in the buffer manager queue. */
#define NUM_BUFFERS         6

#define NULL_VALUE ((void *)0x0)
#define FRAME_WIDTH_VGA     640
#define FRAME_HEIGHT_VGA    480

#define WIDTH_NTSC 720u
#define HEIGHT_NTSC 480u
#define HEIGHT_PAL 576u

#define WIDTH_WVGA 768u
#define WIDTH_WVGA1 752u
#define HEIGHT_WVGA1 480u

#define WIDTH_CIF 352u

#define WIDTH_HD 1280u
#define HEIGHT_HD 720u

#define WIDTH_FULLHD 1920u
#define HEIGHT_FULLHD 1080u

#define TWO_BYTES_PER_PIXEL 2u
#define THREE_BYTES_PER_PIXEL 3u

/*Latency Calc resolution */
#define LATENCY_64BIT_RESOLUTION
#define LATENCY_INTERVAL 30u

/* For buffer alignment */
#define BUFFER_ALIGN_BYTES 16

typedef enum taskIndex_t
{
    CAPT_TASK_INDEX = 0,
    PCIE_SOURCE_TASK_INDEX,
    RAWETH_SOURCE_TASK_INDEX,
	MEM_SRC_TASK_INDEX,
	AVB_SOURCE_TASK_INDEX,
    DEI_M2M_TASK_INDEX,
    CROP_FRAME_TASK_INDEX,
    VLIB_TASK_INDEX,
    PAS_THRU_TASK_INDEX,
    BOP_TASK_INDEX,
	VDEC_TASK_INDEX,
    SCALAR_TASK_INDEX,
    IMG_WARP_TASK_INDEX,
    PCIE_SINK_TASK_INDEX,
    RAWETH_SINK_TASK_INDEX,
	AVB_SINK_TASK_INDEX,
    DISP_TASK_INDEX,
    GRPX_TASK_INDEX,
    NUM_TASKS
} taskIndex_t;

#define MAX_TASKS           NUM_TASKS
#define MAX_COMPONENTS      NUM_TASKS

/* Shared region indices. */
#define SHARED_CTRL_REGION_IDX              0
#define SHARED_MEM_REGION_IDX               1
#define SHARED_FRAME_BUFFER_REGION_IDX      2
#define SHARED_LOG_MEM_REGION_IDX           3

#define MSGQ_HEAP_NAME      "msgQHeap"
#define MSGQ_HEAPID         0u

#define MSGQ_HEAP_NAME1      "msgQHeap1"//liuxu, 10/5/2013
#define MSGQ_HEAPID1         1u

#ifndef APP_ON_M3
    #define MASTER_TASK_MGR_CMDQ_NAME   "HOST_MST_CMD_Q"
    #define MASTER_TASK_NAME    "A8"
#else
    #define MASTER_TASK_MGR_CMDQ_NAME   "VIDEO-M3_MST_CMD_Q"
    #define MASTER_TASK_NAME    "VIDEO-M3"
#endif /*APP_ON_M3*/

#define DSP_CORE_ID         0u
//liuxuliuxu, #define EVE_CORE_ID         1u
#define VIDEO_M3_CORE_ID    1u
#define VPSS_M3_CORE_ID     2u
#define HOST_CORE_ID        3u
//

/* slice setmask with cachewb */
#define SET_SLICE_BIT(frame, index) \
{ \
       if(frame != NULL) \
    { \
              frame->nSliceMask =  (frame->nSliceMask | ((uint32_t)1u << index)); \
              Cache_wbInv((Ptr) (frame->nSliceMask), sizeof(uint32_t), (xdc_Bits16)Cache_Type_ALL, (Bool)TRUE);\
    } \
}

#define IS_SLICE_AVAILABLE(frame,index) ( frame->nSliceMask & ((uint32_t)1u << index) )
#define IS_END_OF_FRAME(frame,index) ( (frame->nSliceMask) == (((uint32_t)1u << index) - 1u) )
#define CLEAR_SLICE_BIT(frame) (frame->nSliceMask = 0u)

/* Round the value 'a' up by 'b', a power of two */
#define ROUNDUP_SIZE(a, b) (uint32_t)((((uint32_t)(a)) + (((uint32_t)(b)) - 1)) & ~((uint32_t)(b) - 1))

/* memory allocation and memset */ 
#define MEM_ALLOC(pData, type) \
{ \
    pData = (type *) malloc(sizeof(type));  \
	if(pData != NULL) \
    { \
        memset(pData, 0, sizeof(type)); \
    } \
}


/* FrameQ related info. */
typedef struct taskCoreTable_t
{
    int8_t cTaskName[MAX_NAME];
    uint16_t nCoreId;
    uint16_t nInterruptLineId;
    uint16_t *pEventId;
} taskCoreTable_t;

/* Command Q related info. */
typedef struct cmdQParams_t
{
    int8_t cQName[MAX_NAME];
    void *hCmdQ;
    uint32_t nCmdQId;
} cmdQParams_t;

typedef struct cmdProfileData_t
{
    uint32_t nChanNum;
    float fFps;
} cmdProfileData_t;


typedef struct cmdProfileSysLoadData_t
{
    uint32_t nCaptureInterval;
    uint32_t nLogInterval;
    float  fTskLoad;
    float  fHWILoad;
    float  fSWILoad;
    int32_t nNumTasks;
    int8_t cSlaveTaskName[MAX_TASKS][MAX_NAME];
    SizeT TaskMemUsage[MAX_TASKS];
} cmdProfileSysLoadData_t;

/* Latency calculation informantion */
typedef struct cmdLatencyCalcData
{
    uint32_t nChanNum;
    float fAvgLatency;
} cmdLatencyCalcData_t;

/*Commmand Q related Logger*/
typedef struct cmdLoggerData_t
{
    int32_t nLogLevel;
} cmdLoggerData_t;

typedef struct createRemoteTaskArgs_t
{
    int8_t cTaskName[MAX_NAME];
} createRemoteTaskArgs_t;

typedef struct cfg4Pointers_t
{
    MessageQ_MsgHeader msgHdr;
    UInt32 cmdType;
    void *pPointer0;
    void *pPointer1;
    void *pPointer2;
    void *pPointer3;
} cfg4Pointers_t;//liuxuliuxu, have to be identical w/ the one in M3 app. 


//A8传递DSP的消息，单独定义，不能改变原来cfg4Pointers_t结构体定义
typedef struct cfgCmdMsg_t
{
    MessageQ_MsgHeader msgHdr;
    UInt32 cmdType;
    UInt8 cmdParam[4];	///+ gzd, 增加命令参数
} cfgCmdMsg_t;


typedef struct cfg8Pointers_t
{
    MessageQ_MsgHeader msgHdr;
    UInt32 cmdType;
    void *pY_Pointer0;
    void *pY_Pointer1;
    void *pY_Pointer2;
    void *pY_Pointer3;
    void *pUV_Pointer0;
    void *pUV_Pointer1;
    void *pUV_Pointer2;
    void *pUV_Pointer3;
} cfg8Pointers_t;//liuxuliuxu, 8/8/2013, have to be identical w/ the one in M3 app. 

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* COMMON_DEFS_H */
