/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *  @file   queue.c
 *
 *  @brief  Wrapper over Sys/BIOS queue containing an implementation of 
 *          blocking queue
 */

#include <stdlib.h>
#include <string.h>

#include "queue.h"
#include "common_defs.h"


/*************************************************************************
 *  @func       queue_create
 *
 *  @brief      Allocate the queue context, create the Sys/BIOS queue
 *              and create semaphores required for implementing the 
 *              blocking queue
 *
 *  @param[in]  phQueue     :   Pointer to queue handle
 *     
 *  @returns    ecNone
 *              ecFail
 *              ecOutOfMemory
 ************************************************************************/
ERRORTYPE queue_create(hQueue *phQueue)
{
    ERRORTYPE nRetVal = ecNone;
    queueCtxt_t *pQueueCtxt = NULL_VALUE;
    Semaphore_Params semaParams; /* Inited using API provided by semaphore */

    do
    {
        MEM_ALLOC(pQueueCtxt, queueCtxt_t);
        if (NULL == pQueueCtxt)
        {
            LOG_PRINT("%s: %d: Queue Context allocation failed.\n", __FUNCTION__, __LINE__);
            nRetVal = ecOutOfMemory;
            break;
        }

        /* Queue holding the elements to be inserted */
        pQueueCtxt->hQueue = Queue_create(NULL_VALUE, NULL_VALUE);
        if (NULL == pQueueCtxt->hQueue)
        {
            LOG_PRINT("%s: %d: Queue_create error. \n", __FUNCTION__, __LINE__);
            nRetVal = ecFail;
            break;
        }

        /* Semaphore for implementing the blocking queue operation */
        Semaphore_Params_init(&semaParams);
        semaParams.mode = Semaphore_Mode_BINARY;
        pQueueCtxt->hSemaphore = NULL_VALUE;
        pQueueCtxt->hSemaphore = Semaphore_create(0, &semaParams, NULL_VALUE);
        if (NULL == pQueueCtxt->hSemaphore)
        {
            LOG_PRINT("%s: %d: Semaphore_create error. \n", __FUNCTION__, __LINE__);
            nRetVal = ecFail;
            break;
        }

        /* Mutex for protecting access to queue */
        Semaphore_Params_init(&semaParams);
        semaParams.mode = Semaphore_Mode_BINARY;
        pQueueCtxt->hMutex = NULL_VALUE;
        pQueueCtxt->hMutex = Semaphore_create(1, &semaParams, NULL_VALUE);
        if (NULL == pQueueCtxt->hMutex)
        {
            LOG_PRINT("%s: %d: Semaphore_create error. \n", __FUNCTION__, __LINE__);
            nRetVal = ecFail;
            break;
        }
    } while (0);

    /* Return the allocated and initialized queue context */
    *phQueue = pQueueCtxt;

    return nRetVal;
}

/*************************************************************************
 *  @func       queue_delete
 *
 *  @brief      De-allocate the queue context, delete the Sys/BIOS queue
 *              and delete semaphores required for implementing the 
 *              blocking queue
 *
 *  @param[in]  hQueue     :   queue handle
 *     
 *  @returns    ecNone
 *              ecFail
 ************************************************************************/
ERRORTYPE queue_delete(hQueue hQueue_handle)
{
    ERRORTYPE nRetVal = ecNone;
    queueCtxt_t *pQueueCtxt = NULL_VALUE;

    do
    {
        if (NULL == hQueue_handle)
        {
            LOG_PRINT("%s: %d: Invalid params. \n", __FUNCTION__, __LINE__);
            nRetVal = ecFail;
            break;
        }

        pQueueCtxt = (queueCtxt_t *) hQueue_handle;

        if (pQueueCtxt->hMutex != NULL)
        {
            Semaphore_delete(&(pQueueCtxt->hMutex));
            pQueueCtxt->hMutex = NULL_VALUE;
        }

        if (pQueueCtxt->hSemaphore != NULL)
        {
            Semaphore_delete(&(pQueueCtxt->hSemaphore));
            pQueueCtxt->hSemaphore = NULL_VALUE;
        }

        if (pQueueCtxt->hQueue != NULL)
        {
            Queue_delete(&(pQueueCtxt->hQueue));
            pQueueCtxt->hQueue = NULL_VALUE;
        }

        if (NULL != pQueueCtxt)
        {
            free(pQueueCtxt);
            pQueueCtxt = NULL_VALUE;
            hQueue_handle = NULL_VALUE;
        }
    } while (0);

    return nRetVal;
}

/*************************************************************************
 *  @func       wait_on_queue
 *
 *  @brief      Blocking queue wait, but with timeout
 *
 *  @param[in]  hQueue      :   queue handle
 *  @param[in]  nTimeOut    :   timeout value
 *     
 *  @returns    ecNone
 *              ecFail
 *              ecTimeOut
 ************************************************************************/
ERRORTYPE wait_on_queue(hQueue hQueue_handle, uint32_t nTimeOut)
{
    ERRORTYPE nRetVal = ecNone;
    queueCtxt_t *pQueueCtxt = NULL_VALUE;
    Bool bQRetVal = (Bool)FALSE;
    Bool bSemRetVal = (Bool)FALSE;

    do
    {
        if (NULL == hQueue_handle)
        {
            LOG_PRINT("%s: %d: Invalid params. \n", __FUNCTION__, __LINE__);
            nRetVal = ecFail;
            break;
        }

        pQueueCtxt = (queueCtxt_t *) hQueue_handle;

        /* Check if Q is empty. If yes, then pend for timeout period of time */
        Semaphore_pend(pQueueCtxt->hMutex, (uint32_t)BIOS_WAIT_FOREVER);

        bQRetVal = Queue_empty(pQueueCtxt->hQueue);

        Semaphore_post(pQueueCtxt->hMutex);

        if ((Bool)TRUE == bQRetVal)
        {
            /* Pend on elements in Q */
            bSemRetVal = Semaphore_pend(pQueueCtxt->hSemaphore, nTimeOut);
            if ((Bool)FALSE == bSemRetVal)
            {
                nRetVal = ecTimeOut;
            }
        }
    } while (0);

    return nRetVal;
}

/*************************************************************************
 *  @func       queue_get
 *
 *  @brief      Get element from queue
 *
 *  @param[in]  hQueue      :   queue handle
 *  @param[in]  pQElem      :   queue element
 *     
 *  @returns    ecNone
 *              ecFail
 ************************************************************************/
ERRORTYPE queue_get(hQueue hQueue_handle, queueElem_t **pQElem)
{
    ERRORTYPE nRetVal = ecNone;
    queueCtxt_t *pQueueCtxt = NULL_VALUE;
    
    do
    {
        if ((NULL == hQueue_handle) || (NULL == pQElem))
        {
            LOG_PRINT("%s: %d: Invalid params. \n", __FUNCTION__, __LINE__);
            nRetVal = ecFail;
            break;
        }

        pQueueCtxt = (queueCtxt_t *) hQueue_handle;

        /* Q has an element. Dequeue it */
        Semaphore_pend(pQueueCtxt->hMutex, (uint32_t)BIOS_WAIT_FOREVER);

        *pQElem = (queueElem_t *) Queue_get(pQueueCtxt->hQueue);

        Semaphore_post(pQueueCtxt->hMutex);
    } while (0);

    return nRetVal;
}

/*************************************************************************
 *  @func       queue_put
 *
 *  @brief      Put an element into the Q and signal it's availability
 *
 *  @param[in]  hQueue      :   queue handle
 *  @param[in]  pQElem      :   queue element
 *     
 *  @returns    ecNone
 *              ecFail
 ************************************************************************/
ERRORTYPE queue_put(hQueue hQueue_handle, queueElem_t *pQElem)
{
    ERRORTYPE nRetVal = ecNone;
    queueCtxt_t *pQueueCtxt = NULL_VALUE;
    
    do
    {
        if ((NULL == hQueue_handle) || (NULL == pQElem))
        {
            LOG_PRINT("%s: %d: Invalid params. \n", __FUNCTION__, __LINE__);
            nRetVal = ecFail;
            break;
        }

        pQueueCtxt = (queueCtxt_t *) hQueue_handle;

        /* Queue the element into the Q */
        Semaphore_pend(pQueueCtxt->hMutex, (uint32_t)BIOS_WAIT_FOREVER);

        Queue_put(pQueueCtxt->hQueue, &(pQElem->qElem));

        Semaphore_post(pQueueCtxt->hMutex);

        /* Indicate new element availability. */
        Semaphore_post(pQueueCtxt->hSemaphore);
    } while (0);

    return nRetVal;
}

/*************************************************************************
 *  @func       queue_lock
 *
 *  @brief      Lock access to queue before modifying shared resource
 *
 *  @param[in]  hQueue      :   queue handle
 *     
 *  @returns    ecNone
 *              ecFail
 ************************************************************************/
ERRORTYPE queue_lock(hQueue hQueue_handle)
{
    ERRORTYPE nRetVal = ecNone;
    queueCtxt_t *pQueueCtxt = NULL_VALUE;
    
    do
    {
        if (NULL == hQueue_handle)
        {
            LOG_PRINT("%s: %d: Invalid params. \n", __FUNCTION__, __LINE__);
            nRetVal = ecFail;
            break;
        }

        pQueueCtxt = (queueCtxt_t *) hQueue_handle;

        Semaphore_pend(pQueueCtxt->hMutex, (uint32_t)BIOS_WAIT_FOREVER);
    } while (0);

    return nRetVal;
}

/*************************************************************************
 *  @func       queue_unlock
 *
 *  @brief      Un-lock access to queue after modifying shared resource
 *
 *  @param[in]  hQueue      :   queue handle
 *     
 *  @returns    ecNone
 *              ecFail
 ************************************************************************/
ERRORTYPE queue_unlock(hQueue hQueue_handle)
{
    ERRORTYPE nRetVal = ecNone;
    queueCtxt_t *pQueueCtxt = NULL_VALUE;

    do
    {
        if (NULL == hQueue_handle)
        {
            LOG_PRINT("%s: %d: Invalid params. \n", __FUNCTION__, __LINE__);
            nRetVal = ecFail;
            break;
        }

        pQueueCtxt = (queueCtxt_t *) hQueue_handle;

        Semaphore_post(pQueueCtxt->hMutex);
    } while (0);

    return nRetVal;
}
