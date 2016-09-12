/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  a8_task_mgr_priv.h
 *
 */

#ifndef MASTER_TASK_MGR_PRIV_H
#define MASTER_TASK_MGR_PRIV_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <ti/ipc/HeapBufMP.h>

#include "logger.h"
#include "common_defs.h"
#include "cmd_msg_defs.h"
#include "shared_frame_buffers.h"

/* Data structure declarations */

/* This structure contains the input and output frame queues corresponding to each task. */
typedef struct taskChanIOParams_t
{
    frameBufMgr_t *pOutputFrameBufMgr;
    frameBufMgr_t *pInputFrameBufMgr;
} taskChanIOParams_t;

typedef struct masterTaskMgrCtxt_t
{
    /* Number of channels. */
    uint8_t nNumChans;
    /* Total number of tasks created so far. */
    uint8_t nNumOfTasks;
    /* List of names of the tasks created. */
    int8_t cTaskName[MAX_TASKS][MAX_NAME];
    /* I/O Qs per channel per task. */
    taskChanIOParams_t taskChanIO[MAX_TASKS][MAX_PORTS];
    /* Local Task Manager Command Q. */
    cmdQParams_t localTaskMgrCmdQ;
    /* Remote Task Mgr Command Qs. */
    cmdQParams_t remoteTaskMgrCmdQ[MAX_CORES];
    /* Remote Task Command Qs. */
    cmdQParams_t remoteTaskCmdQ[MAX_TASKS];
    /* Command Message. */
    cfgCmds_t *pCmdMsg;
    /* MessageQ Message. */
    MessageQ_Msg msgQMsg;
    /* Logger related info. */
    loggerInfo_t loggerInfo;
    /* Logger task handle. */
    Task_Handle hLoggerTask;
    /* Quit the logger? */
    Bool bQuitLogger;
    /* MSG-Q heap handle. */
    HeapBufMP_Handle hMsgQHeap;
} masterTaskMgrCtxt_t;

/* Function prototypes */


#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* MASTER_TASK_MGR_PRIV_H */
