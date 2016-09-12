/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  raw_Eth_source_exp.h
 *
 *   @brief 
 */

#ifndef RAWETHSOURCE_EXP_H
#define RAWETHSOURCE_EXP_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <string.h>
#include <xdc/std.h>

#include "remote_task_defs.h"

taskCtxt_t* rawEthSrcCreate(int32_t nMaxChannels);

ERRORTYPE rawEthSrcInit(taskCtxt_t *pTaskCtxt , int32_t nChanNum ,void *pInitParams );

eTaskCtrlCmdStatus_t rawEthSrcControl(taskCtxt_t *pTaskCtxt , eTaskCtrlCmd_t cmd , void *pControlParams );

eChFrmStatus_t rawEthSrcProcess(taskCtxt_t *pTaskCtxt , int32_t nChanNum , frame_t *pInFrame, frame_t *pOutFrame);

ERRORTYPE rawEthSrcDeinit(taskCtxt_t *pTaskCtxt , int32_t nChanNum);

ERRORTYPE rawEthSrcDestroy(taskCtxt_t *pTaskCtxt );

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* RAWETHSOURCE_EXP_H */
