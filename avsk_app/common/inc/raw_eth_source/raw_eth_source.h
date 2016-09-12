/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  raw_eth_source.h
 *
 */
 
 
#ifndef RAWETHSOURCE_H
#define RAWETHSOURCE_H

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
#include <ti/sysbios/knl/Event.h>
#include "remote_task_defs.h"

typedef struct ethrFrameHdr_t
{
    uint8_t cDstMACAddr[6];     /* Currently not used */
    uint8_t cSrcMACAddr[6];     /* Currently not used */
    uint16_t nEthrType;
    uint16_t nSeqNum;
    uint8_t bIsLastChunk;
}ethrFrameHdr_t;

typedef struct qSrcElem_t
{
    Queue_Elem qElem;
    int32_t nChanNum;
    frame_t *pFrame;
} qSrcElem_t;

typedef struct rawEthSrc_t
{
    taskCtxt_t      taskContext;
    uint8_t         nElemCnt;
    uint32_t        nWidth;
    uint32_t        nHeight;
    SOCKET          rawEtherSrcSocket;
    qSrcElem_t      qElemObj[MAX_BUFFER];
    Task_Handle     hRawEthSrcRx;
    Queue_Handle    hQueueFrames;
    ethrFrameHdr_t  ethrFrmHdr;
    Bool            bIsRawEthSrcRxStarted;
    Semaphore_Handle hMutex;
    eColorFormatType_t colorFmtType;

} rawEthSrc_t;


#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* RAWETHSOURCE_H */
