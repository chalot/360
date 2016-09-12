/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  remote_task_defs.h
 *
 */

#ifndef REMOTE_TASK_DEFS_H
#define REMOTE_TASK_DEFS_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>

#include <ti/ipc/Notify.h>
#include <ti/ipc/HeapBufMP.h>

#include <xdc/runtime/Types.h>
#include <xdc/runtime/Timestamp.h>

#include <ti/sysbios/knl/Task.h>

#include "common_defs.h"
#include "cmd_msg_defs.h"
#include "shared_frame_buffers.h"
#include "logger.h"
#include "queue.h"


/* Number of buffers required for priming the capture driver. */
#define BUFFER_PRIMING_COUNT (NUM_BUFFERS)


typedef ERRORTYPE (*deqFxn)(void * );

/* 
 * Status sent to the process done callback. 
 * This function 
 *      - sends filled buffers to the next component in the chain.
 *      - returns empty buffers to the previous component in the chain.
 */
typedef enum eProcessStatus_t
{
    /* both input and output buffers have to be processed */
    processStatusOk = 0xe0000000,
    /* only input buffers have to be processed */
    processStatusOkInput,
    /* only output buffers have to be processed */
    processStatusOkOutput
} eProcessStatus_t;

/*
 * Task states
 */
typedef enum eTaskState_t
{
    /* task created */
    taskStateCreated = 0xf0000000,
    /*
     * task has handled the READY command. In this state it
     * has completed any buffering or priming activities
     */
    taskStateIdle,
    /* task in buffer handling mode */
    taskStateExecuting,
    /* task in paused state */
    taskStatePaused,
    /* task destroyed */
    taskStateDestroyed
} eTaskState_t;

/*
 * Element used in the queue between the callback function and the 
 * processDoneCbFunc(), which calls processDoneCallback(), which sends
 * the buffers to the next and previous component as applicable.
 */
typedef struct cbParams_t
{
    Queue_Elem qElem;
    int32_t nChanNum;
    frame_t *pInFrame;
    frame_t *pOutFrame;
} cbParams_t;


/* Commands sent to the remote task for control command processing. */
typedef enum eTaskCtrlCmd_t
{
    /* 
     * Perform any inits before moving to executing state. 
     * Also indicate if priming of the drivers is required.
     */
    taskCtrlCmdReady = 0x01000000,
    /* Perform priming of the drivers, if applicable. */
    taskCtrlCmdPrime,
    /* 
     * Perform any final inits before moving to executing state. 
     * E.g. starting of the drivers. 
     */
    taskCtrlCmdStart,
    /* Perform any inits in the PAUSED state. */
    taskCtrlCmdPause,
    /* 
     * Perform de-inits before moving back to start state. 
     * E.g. stopping of the drivers. 
     */
    taskCtrlCmdStop,
    /* Perform any driver flush operation if required. */
    taskCtrlCmdFlush,

    /* Perform on Display, to calculate Latency */
    taskCtrlCmdLatencyStart,

    /* Perform on Display, to calculate Latency */
    taskCtrlCmdLatencyStop,

} eTaskCtrlCmd_t;

/* Control command status. */
typedef enum eTaskCtrlCmdStatus_t
{
    /* Indicates priming of driver required. */
    taskCtrlCmdStatusPriming = 0x01100000,
    /* Indicates control command success. */
    taskCtrlCmdStatusSuccess,
    /* Indicates control command failure. */
    taskCtrlCmdStatusFailure
} eTaskCtrlCmdStatus_t;

/*
 * Base task context.
 */
typedef struct taskCtxt_t
{
    /* Generic task context, common across all tasks. */
    int32_t nNumChans;
    /* Task state. */
    eTaskState_t taskState;
    /* Remote task name. */
    int8_t cRemoteTaskName[MAX_NAME];
    /* Remote Task Command Q. */
    cmdQParams_t remoteTaskCmdQ;
    /* Master Task Mgr Command Qs. */
    cmdQParams_t masterTaskMgrCmdQ;
    /* Command Message. */
    cfgCmds_t *pCmdMsg;
    /* MessageQ Message. */
    MessageQ_Msg msgQMsg;
    /* Input buffer manager interface. */
    bufMgmtIfFxns_t inputBufMgmtIfFxns[MAX_PORTS];
    /* Output buffer manager interface. */
    bufMgmtIfFxns_t outputBufMgmtIfFxns[MAX_PORTS];
    /* Input frame buffer manager. */
    frameBufMgr_t *pInputFrameBufMgr[MAX_PORTS];
    /* Output frame buffer manager. */
    frameBufMgr_t *pOutputFrameBufMgr[MAX_PORTS];
    /* Current input frame. */
    frame_t *pCurInFrame[MAX_PORTS];
    /* Current output frame. */
    frame_t *pCurOutFrame[MAX_PORTS];
    /* Reader index - required for handling single writer, multiple reader case. */
    uint32_t nReaderIdx;
    /* Input Port Ids */
    int32_t nInPortIdx[MAX_PORTS];
    /* Channel enabled status. */
    uint8_t bChEnabled[MAX_PORTS];
    /* Per channel frame status. */
    eChFrmStatus_t chFrmStatus[MAX_PORTS]; 
    /* Profiling related info. */
    Bool isProfileStarted[MAX_PORTS];
    uint32_t frameCount[MAX_PORTS];
    uint64_t startTime[MAX_PORTS];
    Types_FreqHz freqObj;
    loggerInfo_t loggerInfo;
    int32_t nLogLevel;
    Bool isLoggerStarted;

    /* Lantecny Calculation data*/
    Bool isLatencyCalcStarted[MAX_PORTS];
    uint64_t nLatency[MAX_PORTS];
    uint32_t nLatencyInterval;
    uint64_t nFrequency;

    /* Input and Output Frame pointers. */
    frame_t *pInFrame[MAX_PORTS][NUM_BUFFERS];
    frame_t *pOutFrame[MAX_PORTS][NUM_BUFFERS];

    /* Queue handle: Q will have processDoneCallback requests. */
    hQueue hQueueCbDone;

    /* Indicates whether processDoneCallback will be sent from a separate task. */
    Bool bCreateCbDoneTask;
    Task_Handle hCbDoneTask;
    Bool bCbFuncDone;

    /* Driver specific de-queue function */
    ERRORTYPE (*drvDeqFxn)(void * );

    /* MSG-Q heap handle. */
    HeapBufMP_Handle hMsgQHeap;

} taskCtxt_t;

typedef struct taskTable_t
{
    int8_t cTaskName[MAX_NAME];
    int8_t nTaskPriority;
    /* creates the task context */
    taskCtxt_t* (*create)(int maxchannels);
    /* initializes the channel baesd on init params */
    ERRORTYPE (*init)(taskCtxt_t *pContext , int32_t channum ,void *pInitparams );
    /* handles start,pause,stop and flush commands for all channels */
    eTaskCtrlCmdStatus_t (*control)(taskCtxt_t *pContext , eTaskCtrlCmd_t cmd , void *pControlparams );
    /* 
     * processes the data for a specific channel
     * this could be either synchronous or asynchornous
     * if the processing is synchronous, return EC_OK
     * if asynchronous return EC_PENDING and later call processDoneCallback callback function
     */
    eChFrmStatus_t (*process)(taskCtxt_t *pContext , int32_t channum ,frame_t* pInFrame, frame_t *pOutFrame);
    /* deinit the channel */
    ERRORTYPE (*deInit)(taskCtxt_t *pContext , int32_t channum);
    /* destroys the task context */
    ERRORTYPE (*destroy)(taskCtxt_t *pContext ); 
} taskTable_t;

/* 
 * Buffer manager parameters, for buffer manager creation.
 * Type, width, height, color format, number of buffers.
 */
/* Buffer manager params. Valid mainly for reader. */
typedef struct BUF_MGR_PARAMS
{
    int32_t nChanNum;
    eBufMgrType_t bufMgrType;
    uint32_t nWidth;
    uint32_t nHeight;
    eColorFormatType_t colorFmt;
    uint32_t nNumBuffers;
} bufMgrParams_t;


/* Task functions. */
void remoteTaskFunc(UArg pArgc, UArg pArgv);
void setCbDoneTask(taskCtxt_t *pTaskCtxt );
void notifyCbFxn(uint16_t nProcId, uint16_t nLineId, uint32_t nEventId, UArg pArg, uint32_t nPayload);
void processDoneCallback(taskCtxt_t *pTaskCtxt, int32_t nChanNum, eProcessStatus_t processStatus, frame_t *pInFrame, frame_t *pOutFrame);
static int32_t getInputPortIdx(char * pTaskName, void *pOutParams);
void setDrvDeqFunc(taskCtxt_t *pTaskCtxt, deqFxn pDeqFxn);

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* REMOTE_TASK_DEFS_H */
