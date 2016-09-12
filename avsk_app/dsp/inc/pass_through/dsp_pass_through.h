/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  dsp_pass_through.h
 *
 */

#ifndef DSP_PASS_THROUGH_H
#define DSP_PASS_THROUGH_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>
#include <xdc/runtime/Timestamp.h>

#include "remote_task_defs.h"

typedef enum eDspPassThroughSrc_t
{
    dspPassThroughSrcMT9V022,
    dspPassThroughSrcMT9M024,
    dspPassThroughSrcNone
} eDspPassThroughSrc_t;

typedef struct dspPassThroughCtxt_t
{
    /* Main task context. */
    taskCtxt_t taskCtxt;

    eDspPassThroughSrc_t dspPTSrc;
} dspPassThroughCtxt_t;

taskCtxt_t* dspPassThroughCreate(int32_t nMaxChannels);
ERRORTYPE dspPassThroughInit(taskCtxt_t* pTaskContext, int32_t nChanNum, void *pInitparams );
eTaskCtrlCmdStatus_t dspPassThroughControl(taskCtxt_t *pTaskContext, eTaskCtrlCmd_t cmd, void *pControlParams);
eChFrmStatus_t dspPassThroughProcess(taskCtxt_t *pTaskContext, Int32 nChanNum, frame_t *pInFrame, frame_t *pOutFrame);
ERRORTYPE dspPassThroughDeinit(taskCtxt_t *pCtxt, int32_t nChanNum);
ERRORTYPE dspPassThroughDestroy(taskCtxt_t *pCtxt);

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* DSP_PASS_THROUGH_H */
