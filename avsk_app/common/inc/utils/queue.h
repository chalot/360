/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  queue.h
 *
 */

#ifndef QUEUE_H
#define QUEUE_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>

#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Queue.h>
#include <ti/sysbios/knl/Semaphore.h>
#include <ti/sysbios/knl/Task.h>

#include "error_codes.h"

typedef struct queueCtxt
{
    /* Handle to Sys/BIOS Queue */
    Queue_Handle hQueue;
    
    /* Handle to semaphore - required for implementing a blocking wait */
    Semaphore_Handle hSemaphore;

    /* Handle to mutex for protecting Q access. */
    Semaphore_Handle hMutex;
} queueCtxt_t;

typedef queueCtxt_t *hQueue;

/* 
 * Frame Queue elements - input and output frame pointers
 */
typedef struct FRAMEQ_ELEMENT
{
    void *pInFrame;
    void *pOutFrame;
} frameQElem_t;

/* 
 * Notify Queue elements - Buffer index that has to be dequeued
 */
typedef struct FW_NOTIFY_ELEMENT
{
    int32_t nBufIdx;
} fwNotifyQElem_t;

/* 
 * Queue elements that will be queued between capture callback and 
 * processDoneCbFunc task.
 */
typedef struct queueElem
{
    Queue_Elem qElem;
    int32_t nChanNum;
    union qPayload
    {
        frameQElem_t frameQElemObj;
        fwNotifyQElem_t fwNotifyQElemObj;
        /* Will be set to the bit pattern 0xDEADBEEF to indicate quit command. */
        uint32_t nQuitTaskCmd;
    } qPayload_t;
} queueElem_t;


/* Functions */
ERRORTYPE queue_create(hQueue *phQueue);
ERRORTYPE queue_delete(hQueue hQueue_handle);
ERRORTYPE wait_on_queue(hQueue hQueue_handle, uint32_t nTimeOut);
ERRORTYPE queue_get(hQueue hQueue_handle, queueElem_t **pQElem);
ERRORTYPE queue_put(hQueue hQueue_handle, queueElem_t *pQElem);
ERRORTYPE queue_lock(hQueue hQueue_handle);
ERRORTYPE queue_unlock(hQueue hQueue_handle);

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* QUEUE_H */
