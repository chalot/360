/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  raw_eth_sink.h
 *
 */
 
 
#ifndef RAWETHSINK_H
#define RAWETHSINK_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#define ETH_MAXIM_PAYLOAD 1500
#define FRM_HDR_LEN 17u
#define PROTO_RAWETH 0xABCD
#define MAX_BUFFER 10u

#include <xdc/std.h>
#include <ti/ndk/inc/netmain.h>
#include <ti/ndk/inc/_stack.h>
#include <ti/sysbios/hal/Cache.h>
#include "remote_task_defs.h"

typedef struct ethrFrameHdr_t
{
    uint8_t cDstMACAddr[6];
    uint8_t cSrcMACAddr[6];
    uint16_t nEthrType;
    uint16_t nPktCnt;
    uint8_t bIsLastChunk;
}ethrFrameHdr_t;

typedef struct qSinkElem_t
{
    Queue_Elem qElem;
    int32_t nChanNum;
    frame_t *pFrame;
} qSinkElem_t;

typedef struct rawEthSink_t
{
    taskCtxt_t          taskContext;
    SOCKET              rawEtherSinkSocket;
    ethrFrameHdr_t      ethrFrmHdr;
    Semaphore_Handle    hMutex;
    Task_Handle         hRawEthSinkTx;
    Queue_Handle        hQueueFrames;  
    qSinkElem_t         qElemObj[MAX_BUFFER];
    uint8_t             nElemCnt;
    uint32_t            nWidth;
    uint32_t            nHeight;
    uint32_t            nFrameSize;
    Bool                bIsRawEthSinkTxStarted;
    eColorFormatType_t  colorFmtType;
} rawEthSink_t;


#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* RAWETHSINK_H */
