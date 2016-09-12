/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  raw_Eth_sink_exp.h
 *
 *   @brief 
 */

#ifndef RAWETHSINK_EXP_H
#define RAWETHSINK_EXP_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <string.h>
#include <xdc/std.h>

#include "remote_task_defs.h"

taskCtxt_t* rawEthSinkCreate(int32_t nMaxChannels);

ERRORTYPE rawEthSinkInit(taskCtxt_t *pTaskCtxt , int32_t nChanNum ,void *pInitParams );

eTaskCtrlCmdStatus_t rawEthSinkControl(taskCtxt_t *pTaskCtxt , eTaskCtrlCmd_t cmd , void *pControlParams );

eChFrmStatus_t rawEthSinkProcess(taskCtxt_t *pTaskCtxt , int32_t nChanNum , frame_t *pInFrame, frame_t *pOutFrame);

ERRORTYPE rawEthSinkDeinit(taskCtxt_t *pTaskCtxt , int32_t nChanNum);

ERRORTYPE rawEthSinkDestroy(taskCtxt_t *pTaskCtxt );

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* RAWETHSINK_EXP_H */
