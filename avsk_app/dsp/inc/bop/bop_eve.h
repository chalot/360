/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  bop_eve.h
 *
 */

#ifndef BOP_EVE_H
#define BOP_EVE_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

/* BOP specific header files. */
#include "GlobalTypes.h"
#include "cram.h"
#include "baseaddress.h"
#include "common_functions.h"

/* --------------------------------------------------------------------- */
/* These are the include files for processor communication and DMA block */
/* size definitions.                                                     */
/* --------------------------------------------------------------------- */
#include "EVE_ss_mailbox_states.h"
#include "BoP_array_dims.h"
#include "img_dims.h"
#include "ABoGPmacros.h"
#include "eden_mbids.h"
#include "mbox.h"


#define ROI_H 320
#define ROI_W 480

#define ROI_X 48
#define ROI_Y 24

#define ROI_h 64
#define ROI_w 32

#define ANGLE_BLOCKW 64
#define ANGLE_BLOCKH 96

#define NumOfAdaBoostClassifiers 51 

#define INTERRUPT_LINE 0
/* Notify event number that the app uses */
#define EVENTID 31

#define NFRAMES_EVE 60

extern uint16_t recip_LUT[RECIP_TLU_SIZE];
extern uint16_t small_BoPAngleLUT[ANGLE_TLU_SIZE];

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* BOP_EVE_H */
