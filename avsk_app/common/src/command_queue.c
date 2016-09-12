/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *  @file   command_queue.c
 *
 *  @brief  
 */

#include <xdc/std.h>
#include <string.h>


#include <xdc/runtime/System.h>
#include <xdc/runtime/IHeap.h>

#include <ti/ipc/MessageQ.h>

#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>
#include <ti/sysbios/knl/Clock.h>
#include <ti/sysbios/hal/Cache.h>

#include "error_codes.h"
#include "cmd_msg_defs.h"
#include "common_defs.h"
#include "command_queue.h"
int32_t commandQClose(uint32_t *pQId);

ERRORTYPE commandQInit(int8_t nMode, HeapBufMP_Handle *pHeap)
{
    ERRORTYPE nRetVal = ecNone;
    HeapBufMP_Handle hHeap = NULL_VALUE;
    HeapBufMP_Params heapBufParams;
    int32_t nStatus = 0;

    do
    {
        if (MASTER == nMode)
        {
            /* Create the heap that will be used to allocate messages. */
            HeapBufMP_Params_init(&heapBufParams);
            heapBufParams.regionId       = 0u;
            heapBufParams.name           = MSGQ_HEAP_NAME;
            heapBufParams.numBlocks      = 1u;
            heapBufParams.blockSize      = sizeof(cfgCmds_t);
            hHeap = HeapBufMP_create(&heapBufParams);
            if (NULL == hHeap)
            {
                System_printf("\n%s: %d: HeapBufMP_create() failed. \n", __FUNCTION__, __LINE__);
                nRetVal = ecOutOfMemory;
                break;
            }
        }
        else
        {
            /* Open the heap created by the other processor. Loop until opened. */
            do
            {
                nStatus = HeapBufMP_open(MSGQ_HEAP_NAME, &hHeap);
                /*
                 *  Sleep for 1 clock tick to avoid inundating remote processor
                 *  with interrupts if open failed
                 */
                if (nStatus < 0)
                {
                    Task_sleep(1u);
                }
            } while (nStatus < 0);
        }

        *pHeap = hHeap;

        /* Register this heap with MessageQ */
        MessageQ_registerHeap((IHeap_Handle) hHeap, MSGQ_HEAPID);

    } while(0);

    return nRetVal;
}

ERRORTYPE commandQInitJ5ecoProject(int8_t nMode, HeapBufMP_Handle *pHeap)//liuxuliuxu
{
    ERRORTYPE nRetVal = ecNone;
    HeapBufMP_Handle hHeap = NULL_VALUE;

    HeapBufMP_Handle hHeap1 = NULL_VALUE;//liuxu, 10/14/2013, logic bug fix.
    
    HeapBufMP_Params heapBufParams;
    int32_t nStatus = 0;

    do
    {
        if (MASTER == nMode)
        {
            /* Create the heap that will be used to allocate messages. */
            HeapBufMP_Params_init(&heapBufParams);
            heapBufParams.regionId       = 0u;
            heapBufParams.name           = MSGQ_HEAP_NAME;
            heapBufParams.numBlocks      = 10u;//liuxuliuxu, 8/8/2013, prepare enough room for messages. 
            heapBufParams.blockSize      = sizeof(cfg4Pointers_t);
            hHeap = HeapBufMP_create(&heapBufParams);
            if (NULL == hHeap)
            {
                System_printf("\n%s: %d: HeapBufMP_create() failed. \n", __FUNCTION__, __LINE__);
                nRetVal = ecOutOfMemory;
                break;
            }


            /* Create the heap that will be used to allocate messages. */
            HeapBufMP_Params_init(&heapBufParams);
            heapBufParams.regionId       = 0u;
            heapBufParams.name           = MSGQ_HEAP_NAME1;
            heapBufParams.numBlocks      = 4u;//liuxuliuxu, 8/8/2013, prepare enough room for messages. 
            heapBufParams.blockSize      = sizeof(cfg8Pointers_t);//liuxu, 10/5/2013, creat for different structure.
            hHeap1 = HeapBufMP_create(&heapBufParams);
            if (NULL == hHeap1)
            {
                System_printf("\n%s: %d: HeapBufMP_create() failed. \n", __FUNCTION__, __LINE__);
                nRetVal = ecOutOfMemory;
                break;
            }

        }
        else
        {
            /* Open the heap created by the other processor. Loop until opened. */
            do
            {
                nStatus = HeapBufMP_open(MSGQ_HEAP_NAME, &hHeap);
                /*
                 *  Sleep for 1 clock tick to avoid inundating remote processor
                 *  with interrupts if open failed
                 */
                if (nStatus < 0)
                {
                    Task_sleep(1u);
                }
            } while (nStatus < 0);
        }

        *pHeap = hHeap;

        /* Register this heap with MessageQ */
        nRetVal = MessageQ_registerHeap((IHeap_Handle) hHeap, MSGQ_HEAPID);

        if(nRetVal != ecNone)//liuxu, 11/20/2013.
        {
            System_printf("\nliuxu, MessageQ_registerHeap MSGQ_HEAPID error\n");
            while(1);
        }


 
        /* Register this heap with MessageQ */
        nRetVal = MessageQ_registerHeap((IHeap_Handle) hHeap1, MSGQ_HEAPID1);//liuxu, 10/5/2013.

        if(nRetVal != ecNone)
        {
            System_printf("\nliuxu, MessageQ_registerHeap MSGQ_HEAPID1 error\n");
            while(1);
        }



    } while(0);

    return nRetVal;
}

ERRORTYPE commandQDeInit(int8_t nMode, HeapBufMP_Handle hHeap)
{
    ERRORTYPE nRetVal = ecNone;

    do
    {
        if (NULL == hHeap)
        {
            nRetVal = ecBadParameter;
            break;
        }

        if (MASTER == nMode)
        {
            /* Delete the heap that will be used to allocate messages. */
            HeapBufMP_delete(&hHeap);
        }
        else
        {
            /* Close the heap created by the other processor. */
            HeapBufMP_close(&hHeap);
        }

        /* Un-register this heap with MessageQ */
        MessageQ_unregisterHeap(MSGQ_HEAPID);

    } while(0);
    return nRetVal;
}

void *commandQCreate(int8_t *cQName, void *pParams)
{
    MessageQ_Handle hMessageQ = NULL_VALUE;

    hMessageQ = MessageQ_create((String) cQName, pParams);

    return ((void *) hMessageQ);
}

int32_t commandQOpen(int8_t *cQName, uint32_t *pQId)
{
    return (MessageQ_open((String) cQName, pQId));
}

int32_t commandQClose(uint32_t *pQId)
{
    return (MessageQ_close(pQId));
}

void *commandQAlloc(uint16_t nHeapId, Uint32 nSize)
{
    MessageQ_Msg cmdMsg = NULL_VALUE;

    cmdMsg = MessageQ_alloc(nHeapId, ROUNDUP_SIZE(nSize, 128));

    return ((void *) cmdMsg);
}

void commandQDelete(void *hCmdQ)
{
    MessageQ_delete((MessageQ_Handle *) hCmdQ);
}


#define L2CFG  *((volatile unsigned int *)(0x01840000))
#define L1PCFG *((volatile unsigned int *)(L2CFG + 0x20))
#define L1DCFG *((volatile unsigned int *)(L2CFG + 0x40))

#define L1DWB  *((volatile unsigned int *)(0x01845040))//liuxu, 10/18/2013.
#define L2WB  *((volatile unsigned int *)(0x01845000))//liuxu, 10/18/2013.
#define L1PINV  *((volatile unsigned int *)(0x01845028))//liuxu, 10/18/2013.

int32_t commandQPut(uint32_t remoteQId, void *pCmdMsg)
{
    int32_t nRetVal = 0;
    
    /* Flush and invalidate  pCmdMsg except MessageQ_MsgHeader. */
    //Cache_wbInv((Ptr) ((int8_t *) pCmdMsg), sizeof(cfgCmds_t), (UInt16)Cache_Type_ALL, (Bool)TRUE);

#if 0//liuxu, 02/12/2014, this would slow the ti dsp processing down????
        L1DWB = 0x1u;//liuxu, 10/23/2013, writeback dirty lines globally for A8 Syslink IPC issue; is it a patch??

        while((L1DWB & 1)!=0);

        L2WB = 0x1u;

        while((L2WB & 1)!=0);

        L1PINV = 0x1u;

        while((L1PINV & 1)!=0);
#endif
    nRetVal = MessageQ_put((MessageQ_QueueId) remoteQId, pCmdMsg);

    /* Flush and invalidate only MessageQ_MsgHeader in pCmdMsg. */
    //Cache_wbInv((Ptr) pCmdMsg , sizeof(MessageQ_MsgHeader), (UInt16)Cache_Type_ALL, (Bool)TRUE);

#if 0///liuxu, 02/12/2014, this would slow the ti dsp processing down????
        L1DWB = 0x1u;//liuxu, 10/23/2013, writeback dirty lines globally for A8 Syslink IPC issue; is it a patch??

        while((L1DWB & 1)!=0);

        L2WB = 0x1u;

        while((L2WB & 1)!=0);

        L1PINV = 0x1u;

        while((L1PINV & 1)!=0);
#endif
    return nRetVal;
}

int32_t commandQGet(void *hCmdQ, void *ppMsg, uint32_t nTimeOut)
{
    /* Invalidate cache. */
    //Cache_inv((cfgCmds_t *)(*(cfgCmds_t **) ppMsg), sizeof(cfgCmds_t), (UInt16)Cache_Type_ALL, (Bool)TRUE);

#if 0//liuxu, 02/12/2014, this would slow the ti dsp processing down????
        L1DWB = 0x1u;//liuxu, 10/22/2013, writeback dirty lines globally for A8 Syslink IPC issue.

        while((L1DWB & 1)!=0);

        L2WB = 0x1u;

        while((L2WB & 1)!=0);

        L1PINV = 0x1u;

        while((L1PINV & 1)!=0);
#endif 

    return (MessageQ_get((MessageQ_Handle) hCmdQ, (MessageQ_Msg *) ppMsg, nTimeOut));
}
