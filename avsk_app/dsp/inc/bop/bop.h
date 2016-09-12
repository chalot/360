/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  bop.h
 *
 */

#ifndef BOP_H
#define BOP_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>
#include <xdc/runtime/Timestamp.h>

#include <ti/sysbios/family/c64p/Hwi.h> 

/* Include EDMA3 Driver */
#include <ti/sdo/edma3/drv/edma3_drv.h>

#include "remote_task_defs.h"
#include "vision.h"
#include "edma_helper_funcs.h"





#define SRC_WIDTH 720
#define SRC_HEIGHT 480

#define BOP_WIDTH 480
#define BOP_HEIGHT 320

#define STOP_THR_HI 18
#define STOP_THR_LO  9



typedef enum eDspEveBop_t
{
    bopDSPbased = 0xFF000000,    
    bopNonebased,
} eDspEveBop_t;
    
typedef struct bopCtxt_t
{
    /* Main task context. */
    taskCtxt_t taskCtxt;

    Bool bCurrentFrameAlarmState;
    uint32_t nFrameCounter;
    volatile uint32_t *pMem;
    eDspEveBop_t bopType;

    /* Queue handle: Q will have frames to be processed. */
    hQueue hQueueBopFrames;

    /* Elements that will be put into the Q */
    queueElem_t qBopElemObj[MAX_PORTS][NUM_BUFFERS];

    /* Quit task command. */
    queueElem_t qBopStopElemObj;

    Bool bBopProcFuncDone;
    Task_Handle hBopProcessTask;
    EDMA3_DRV_Handle hEdma;
    
    Bool bInitDone;
 
} bopCtxt_t;

taskCtxt_t* bopCreate(int32_t nMaxChannels);
ERRORTYPE bopInit(taskCtxt_t* pTaskContext, int32_t nChanNum, void *pInitparams);
eTaskCtrlCmdStatus_t bopControl(taskCtxt_t *pTaskContext, eTaskCtrlCmd_t cmd, void *pControlParams);
eChFrmStatus_t bopProcess(taskCtxt_t *pTaskContext, Int32 nChanNum, frame_t *pInFrame, frame_t *pOutFrame);
ERRORTYPE bopDeinit(taskCtxt_t *pCtxt, int32_t nChanNum);
ERRORTYPE bopDestroy(taskCtxt_t *pCtxt);
EDMA3_DRV_Handle edma3init(unsigned int edma3Id, EDMA3_DRV_Result *);
EDMA3_DRV_Result edma3deinit (unsigned int edma3Id, EDMA3_DRV_Handle hEdma);

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* BOP_H */
