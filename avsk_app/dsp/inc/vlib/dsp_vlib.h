/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  dsp_vlib.h
 *
 *   @brief 
 */

#ifndef DSP_VLIB_H
#define DSP_VLIB_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>
#include <xdc/std.h>
#include <xdc/runtime/Timestamp.h>

#include "VLIB_prototypes.h"
#include "remote_task_defs.h"

#define WIDTH   1280
#define HEIGHT  720


typedef struct vlib_context_t
{
    taskCtxt_t TaskContext;
    uint8_t cBufLuma[WIDTH * HEIGHT];
    uint8_t cBufCr[(WIDTH * HEIGHT) / 2];
    uint8_t cBufCb[(WIDTH * HEIGHT) / 2];
}vlib_context_t;


taskCtxt_t* dspVlibCreate(int nMaxchannels);
ERRORTYPE dspVlibInit(taskCtxt_t *pContext , int32_t nChannum ,void *pInitparams );
eTaskCtrlCmdStatus_t dspVlibControl(taskCtxt_t *pContext, eTaskCtrlCmd_t cmd, void *pControlParams );
eChFrmStatus_t dspVlibProcess(taskCtxt_t *pContext , int32_t nChanNum ,frame_t* pInFrame, frame_t *pOutFrame);
ERRORTYPE dspVlibDeinit(taskCtxt_t *pCtxt, int32_t nChanNum);
ERRORTYPE dspVlibDestroy(taskCtxt_t *pCtxt);


#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* DSP_VLIB_H */
