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

#ifndef SLAVE_TASK_MGR_PRIV_H
#define SLAVE_TASK_MGR_PRIV_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <ti/ipc/HeapBufMP.h>
#include <ti/sysbios/knl/task.h>
#include "logger.h"
#include "common_defs.h"
#include "cmd_msg_defs.h"

/* Data structure declarations */

typedef struct tasksInfo_t
{
    Task_Handle hTask[MAX_TASKS];
    /*maintaining flag for explicity allocated stack address */
    uint32_t isStackAllocatedExplicity[MAX_TASKS];
    
}tasksInfo_t;

typedef struct slaveTaskMgrCtxt_t
{
    /* Slave core id. */
    uint16_t nCoreId;
    /* Total number of tasks created so far. */
    uint8_t nNumOfSlaveTasks;
    /* List of names of the tasks created. */
    int8_t cSlaveTaskName[MAX_TASKS][MAX_NAME];
    /* Local Task Manager Command Q. */
    cmdQParams_t slaveTaskMgrCmdQ;
    /* Remote Task Mgr Command Qs. */
    cmdQParams_t masterTaskMgrCmdQ;
    /* Command Message. */
    cfgCmds_t *pCmdMsg;
    /* MessageQ Message. */
    MessageQ_Msg msgQMsg;
    /* Task status; Used in Profiling Load */
    Bool    isProfileSysLoadStarted;
    Bool    isProfileSysLoadStoped;
    tasksInfo_t tasksInfo;
    loggerInfo_t loggerInfo;
    Task_Handle hPrfTask;
    /* MSG-Q heap handle. */
    HeapBufMP_Handle hMsgQHeap;
} slaveTaskMgrCtxt_t;

/* Function prototypes */


#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* SLAVE_TASK_MGR_PRIV_H */
