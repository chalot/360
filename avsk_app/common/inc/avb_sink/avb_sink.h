/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/
/*
 * @file  avb_sink.h
 *
 * This files declares all the data structures and functions used in
 * the AVB SINK component
 *
 * @path $(avsk_PATH)\demos\avsk_app\video_m3\inc
 */
 
#ifndef AVBSINK_H
#define AVBSINK_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#define ETH_MAXIM_PAYLOAD 1500

/* this is defined in IEEE 1722, 
the whole packet size never exceeds 1500 */
#define AVB_MAX_PAYLOAD_SIZE 1476

/* AVB protocol specific values */
#ifdef TI_CAMERA_MODE
#define AVBTP_SUBTYPE_VALUE 2
#define AVBTP_TAG_VALUE	    0
#define AVBTP_CHNL_VALUE    0
#define AVBTP_TCODE_VALUE   0
#define AVBTP_SY_VALUE      4
#define ETH_P_AVBTP         0x88B5
#else
#define AVBTP_SUBTYPE_VALUE 0
#define AVBTP_TAG_VALUE	    1
#define AVBTP_CHNL_VALUE    31
#define AVBTP_TCODE_VALUE   10  /*0x0a*/
#define AVBTP_SY_VALUE      0
#define ETH_P_AVBTP         0x22f0
#endif

#define MAX_BUFFER 10

/****************************************************************
*  INCLUDE FILES                                                 
****************************************************************/
/* ----- system and platform files ----------------------------*/
#include <xdc/std.h>
#include <ti/ndk/inc/netmain.h>
#include <ti/ndk/inc/_stack.h>
#include <ti/sysbios/hal/Cache.h>
/*-------program files ----------------------------------------*/
#include "remote_task_defs.h"
#include "cmd_msg_defs.h"
#include "raw_ethernet_sink.h"

/******************************************************************************
* DATA DECLARATIONS
******************************************************************************/

/* ==========================================================================*/
/**
* Ethernet Header
*
* @param  cDstMACAddr : Destination MAC address
*
* @param  cSrcMACAddr : Source MAC address
*
* @param  nEthrType : Ethernet protocol type
*/
/* ==========================================================================*/
typedef struct ETH_FRAME_HDR
{
    uint8_t cDstMACAddr[6];
    uint8_t cSrcMACAddr[6];
    uint16_t nEthrType;
}ETH_FRAME_HDR_;


/* ==========================================================================*/
/**
* AVB Common Header
*
* @param  sd1 : First 16 bits of AVB header
*
* @param  sd2 : Second 16 bits of AVB header
*
* @param  stream_id : Stream ID
*/
/* ==========================================================================*/
typedef struct AVB_COMMON_HEADER
{
	uint16_t sd1;
	uint16_t sd2;
	uint8_t stream_id[8];
}AVB_CM_HEADER_;


/* ==========================================================================*/
/**
* AVB Common Stream Header
*
* @param  cmHdr        : AVB Common Header structure variable
*
* @param  nTimestamp   : Timestamp Value
*
* @param  nGateWayInfo : Gate way information
*
* @param  nPktLength   : Packaet data length
*
* @param  nProtoHdr    : Protocol specific header
*/
/* ==========================================================================*/
typedef struct AVB_PART_FRAME_HDR
{
	AVB_CM_HEADER_ cmHdr;
	uint32_t nTimestamp;
	uint32_t nGateWayInfo;
	uint16_t nPktLength; 
	uint16_t nProtoHdr; 
}AVB_PART_FRAME_HDR_;


/* ==========================================================================*/
/**
* AVB Common Stream Packet
*
* @param  cmHdr        : AVB Common Stream Header structure variable
*
* @param  nPayLoad     : Data
*/
/* ==========================================================================*/
typedef struct AVB_STREAM_PACKET
{
    AVB_PART_FRAME_HDR_ avb_hdr;
	uint8_t nPayLoad[AVB_MAX_PAYLOAD_SIZE];
}AVB_STREAM_PKT_;


/* ==========================================================================*/
/**
* AVB Sink Task Queue Element
*
* @param  qElem        : SYS/BIOS queue element structure varuable
*
* @param  nChanNum     : Channel Number
*
* @param  pFrame       : Pointer to a frame buffer
*/
/* ==========================================================================*/
typedef struct qSinkElem_t
{
    Queue_Elem qElem;
    int32_t nChanNum;
    frame_t *pFrame;
} qSinkElem_t;


/* ==========================================================================*/
/**
* AVB Sink Task Context Structure
*
* @param  taskContext : Base Class Context
*
* @param  ethrFrmHdr : Raw Ethernet Header
*
* @param  hMutex : Semaphore Handle used between avbSinkTx & avbSinkProcess
*
* @param  hAvbSinkTx : Handle to the task avbSinkTx
*
* @param  hQueueFrames : Handle to the queue
*
* @param  qElemObj : AVB Sink task queue structure variable
*
* @param  nElemCnt : Count of Queue elements
*
* @param  bIsAvbSinkTxStarted : Bool variable to indicate 
*								that the Sink task is started
*
* @param  rawEthernetHandle : Raw ethernet handle for max channels
*/
/* ========================================================================== */
typedef struct AVB_SINK_CTXT
{
    taskCtxt_t          taskContext;
    ETH_FRAME_HDR_      ethrFrmHdr;
    Semaphore_Handle    hMutex;
    Task_Handle         hAvbSinkTx;
    Queue_Handle        hQueueFrames;  
    qSinkElem_t         qElemObj[MAX_BUFFER];
    uint8_t             nElemCnt;
    Bool                bIsAvbSinkTxStarted;
	raw_ethernet_handle_t rawEthernetHandle[MAX_PORTS];
} AVB_SINK_CTXT_;


#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* AVBSINK_H */
