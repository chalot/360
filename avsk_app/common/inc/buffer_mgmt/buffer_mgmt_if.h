/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  buffer_mgmt_if.h
 *
 */

#ifndef BUFFER_MGMT_IF_H
#define BUFFER_MGMT_IF_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>

#include "cmd_msg_defs.h"
#include "shared_frame_buffers.h"


extern const char *cCaptDispGate[MAX_PORTS];
extern const char *cCaptDeIGate[MAX_PORTS];
extern const char *cCaptCropFrameGate[MAX_PORTS];
extern const char *cCaptDspPTGate[MAX_PORTS];
extern const char *cCaptScaleGate[MAX_PORTS];
extern const char *cCaptVlibGate[MAX_PORTS];
extern const char *cCaptPcieSinkGate[MAX_PORTS];
extern const char *cCaptRawEthSinkGate[MAX_PORTS];
extern const char *cMemSrcVidDecGate[MAX_PORTS];
extern const char *cMemSrcAvbSinkGate[MAX_PORTS];
extern const char *cAvbSourceVidDecGate[MAX_PORTS];

extern const char *cDspPTVicpWarpGate[MAX_PORTS];
extern const char *cDspPTDispGate[MAX_PORTS];
extern const char *cVicpWarpDispGate[MAX_PORTS];
extern const char *cScaleDispGate[MAX_PORTS];
extern const char *cVlibDispGate[MAX_PORTS];
extern const char *cPcieSourceDispGate[MAX_PORTS];
extern const char *cPcieSourceScaleGate[MAX_PORTS];
extern const char *cRawEthSourceDispGate[MAX_PORTS];

extern const char *cCropFrameDispGate[MAX_PORTS];
extern const char *cDeIDispGate[MAX_PORTS];
extern const char *cScaleVicpWarpGate[MAX_PORTS];
extern const char *cDeIBopGate[MAX_PORTS];
extern const char *cBopDispGate[MAX_PORTS];
extern const char *cBopGrpxGate[MAX_PORTS];
extern const char *cBoPScaleGate[MAX_PORTS];
extern const char *cVidDecScalarGate[MAX_PORTS];


/* Functions */
ERRORTYPE setBufMgrInterface(bufMgmtIfFxns_t *pBufMgmtIfFxns,
                             eBufMgrType_t bufMgrType);
ERRORTYPE checkBufMgr(frameBufMgr_t *pFrameBufMgr,
                      eBufMgrType_t bufMgrType);

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* BUFFER_MGMT_IF_H */
