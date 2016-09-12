/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  crop_frame.h
 *
 */

#ifndef CROP_FRAME_H
#define CROP_FRAME_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>
#include <xdc/runtime/Timestamp.h>

#include "remote_task_defs.h"

typedef struct cropFrameCtxt_t
{
    /* Main task context. */
    taskCtxt_t taskCtxt;
    uint32_t nWidth;
    uint32_t nHeight;
    uint32_t nCropWidth;
    uint32_t nCropHeight;
} cropFrameCtxt_t;

taskCtxt_t* cropFrameCreate(int32_t nMaxChannels);
ERRORTYPE cropFrameInit(taskCtxt_t* pTaskContext, int32_t nChanNum, void *pInitparams );
eTaskCtrlCmdStatus_t cropFrameControl(taskCtxt_t *pTaskContext, eTaskCtrlCmd_t cmd, void *pControlParams );
eChFrmStatus_t cropFrameProcess(taskCtxt_t *pTaskContext, Int32 nChanNum, frame_t *pInFrame, frame_t *pOutFrame);
ERRORTYPE cropFrameDeinit(taskCtxt_t *pCtxt, int32_t nChanNum);
ERRORTYPE cropFrameDestroy(taskCtxt_t *pCtxt);

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* CROP_FRAME_H */
