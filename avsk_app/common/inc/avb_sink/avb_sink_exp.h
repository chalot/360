/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/
/*
 * @file  avb_sink_exp.h
 *
 * This files declares all the dfunctions used in
 * the AVB SINK component
 *
 * @path $(avsk_PATH)\demos\avsk_app\video_m3\inc
 */


#ifndef AVBSINK_EXP_H
#define AVBSINK_EXP_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <string.h>
#include <xdc/std.h>

#include "remote_task_defs.h"

#if 0
/* ===========================================================  */
/**
*  avbSinkTx() Task which sends the AVB packet for all channels
*
*  @param arg0		Task Context handle
*
*  @param arg1		Not used
*
*  @return None
*/
/*============================================================= */
void avbSinkTx(UArg arg0, 
               UArg arg1);
#endif

/* ===========================================================  */
/**
*  avbSinkCreate() This function create handle of Task context 
*  and returns the handle. And also create semaphore & Queue 
*  for queuing buffer from avbSinkProcess to avbSinkTx Task. 
*  Its also create avbSinkTx Task.
*
*  @param nMaxChannels	Maximum channels
*
*  @return Task Context structure pointer
*/
/*============================================================= */
taskCtxt_t* avbSinkCreate(int32_t nMaxChannels);


/* ===========================================================  */
/**
*  avbSinkInit() This function assigns width, height and color 
*  format to avbSink Context
*
*  @param pTaskCtxt	   Task Context Handle
*
*  @param nChanNum	   Channel Number
*
*  @param pInitParams  Holds Channel configuration
*
*  @return Success Code
*/
/*============================================================= */
ERRORTYPE avbSinkInit(taskCtxt_t *pTaskCtxt,
					  int32_t nChanNum,
					  void *pInitParams );


/* ===========================================================  */
/**
*  avbSinkControl() Function to control the commands
*  from remotetask.
*
*  @param pTaskCtxt	      Task Context Handle
*
*  @param cmd	          Control command
*
*  @param pControlParams  Pointer to control Parameters
*
*  @return Success Code
*/
/*============================================================= */
eTaskCtrlCmdStatus_t avbSinkControl(taskCtxt_t *pTaskCtxt,
									eTaskCtrlCmd_t cmd,
									void *pControlParams);


/* ===========================================================  */
/**
*  avbSinkProcess() This function Queues the frame to RawEthSrcRX 
*  tast and indicates new frame availability.
*
*  @param pTaskCtxt	  Task Context Handle
*
*  @param nChanNum	  Channel Number
*
*  @param pInFrame    Input frame pointer
*
*  @param pOutFrame   Output frame pointer
*
*  @return Success Code
*/
/*============================================================= */
eChFrmStatus_t avbSinkProcess(taskCtxt_t *pTaskCtxt,
							  int32_t nChanNum,
							  frame_t *pInFrame,
							  frame_t *pOutFrame);


/* ===========================================================  */
/**
*  avbSinkDeinit() Close the Raw Ethernet Handle
*
*  @param pTaskCtxt	  Task Context Handle
*
*  @param nChanNum	  Channel Number
*
*  @return Success Code
*/
/*============================================================= */
ERRORTYPE avbSinkDeinit(taskCtxt_t *pTaskCtxt,
						int32_t nChanNum);


/* ===========================================================  */
/**
*  avbSinkDestroy() This function deletes Semphore, Queue,
*  Task and TaskContext Handle
*
*  @param pTaskCtxt	  Task Context Handle
*
*  @return Success Code
*/
/*============================================================= */
ERRORTYPE avbSinkDestroy(taskCtxt_t *pTaskCtxt );

void subtype_set_bit_field(uint16_t *sd1,
                           uint16_t avb_type);
void mr_set_bit_field(uint16_t *sd1,
                      uint8_t value);
void tu_set_bit_field(uint16_t *sd2,
                      uint8_t value);
void sv_set_bit_field(uint16_t *sd1,
                      uint16_t value);
void set_protocol_specific_bits(uint16_t *ptclHdr,
                                uint16_t tag,
                                uint16_t channel,
                                uint16_t tCode,
                                uint16_t spCtrl);
void seqn_set_bit_field(uint16_t *sd2);
void convMACStrToArry(uint32_t *cConvertedMACAddr, 
					  int8_t *cMACAddrString);

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* AVBSINK_EXP_H */
