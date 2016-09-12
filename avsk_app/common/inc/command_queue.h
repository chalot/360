/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  command_queue.h
 *
 */

#ifndef COMMAND_QUEUE_H
#define COMMAND_QUEUE_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>

#include <ti/ipc/HeapBufMP.h>

#define MASTER  0
#define SLAVE   1

ERRORTYPE commandQInit(int8_t nMode, HeapBufMP_Handle *pHeap);
ERRORTYPE commandQDeInit(int8_t nMode, HeapBufMP_Handle hHeap);
void *commandQCreate(int8_t *cQName, void *pParams);
int32_t commandQOpen(int8_t *cQName, uint32_t *pQId);
void *commandQAlloc(uint16_t nHeapId, Uint32 nSize);
void commandQDelete(void *hCmdQ);
int32_t commandQPut(uint32_t remoteQId, void *pCmdMsg);
int32_t commandQGet(void *hCmdQ, void *ppMsg, uint32_t nTimeOut);

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* COMMAND_QUEUE_H */
