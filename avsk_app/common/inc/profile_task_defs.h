/*******************************************************************************
*                                                                             *
* Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
*                        ALL RIGHTS RESERVED                                  *
*                                                                             *
******************************************************************************/

/*
*   @file  profile_task_defs.h
*
*/

#ifndef PROFILE_TASK_DEFS_H
#define PROFILE_TASK_DEFS_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <xdc/runtime/IGateProvider.h>
#include <ti/sysbios/utils/Load.h>
#include <ti/sysbios/utils/package/internal/Load.xdc.h>
#include "logger.h"
#include "common_defs.h"

#define THRLOAD_TASK_NAME_MAX_LEN         32u
#define THRLOAD_MAX_NUM_TASKS             32
#define THRLOAD_LOAD_TABLE_LENGTH         500


typedef struct loadEntry 
{
    Char      tskName[THRLOAD_TASK_NAME_MAX_LEN];
    Load_Stat load_stat;
    uint32_t    load;
}loadEntry;


typedef struct loadEntryTbl 
{
    uint32_t               loadEntryIdx;
    IGateProvider_Handle GateH;
    loadEntry            loadList[THRLOAD_LOAD_TABLE_LENGTH][THRLOAD_MAX_NUM_TASKS];
    loadEntry            idleTsk[THRLOAD_LOAD_TABLE_LENGTH];
    Load_Stat            isr[THRLOAD_LOAD_TABLE_LENGTH];
    Load_Stat            swi[THRLOAD_LOAD_TABLE_LENGTH];
    uint32_t             ticks[THRLOAD_LOAD_TABLE_LENGTH];
    uint32_t             nNumTasks;
} loadEntryTbl;

/*Void loadPrint (FILE   *fp_profile); */ 
Void loadUpdate();
Void loadInit();
Void profileSystemLoad (UArg nArgc, UArg pArgv);
void stopProfileSystemLoad(cmdProfileSysLoadData_t *pProfileSysLoad);
void printProfileSystemLoad(cmdProfileSysLoadData_t *pProfileSysLoad);

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* PROFILE_TASK_DEFS_H */
