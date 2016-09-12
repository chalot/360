/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  cmd_msg_defs.h
 *
 */

#ifndef CMD_MSG_DEFS_H
#define CMD_MSG_DEFS_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>
#include <ti/ipc/MessageQ.h>

#include "common_defs.h"

/* Data structure declarations */

/*******************************************************************************
 *                           Color format types                                *
 ******************************************************************************/
typedef enum eColorFormatType_t 
{
    colorFormatYCbYCr = 0x10000000,
    colorFormatCbYCrY,
    colorFormatYUV420SemiPlanar,
    colorFormatYUV422SemiPlanar,
    colorFormatUnused,
    colorFormatMonochrome,
    colorFormat8bitRGB332,
    colorFormat12bitRGB444,
    colorFormat16bitARGB4444,
    colorFormat16bitARGB1555,
    colorFormat16bitRGB565,
    colorFormat16bitBGR565,
    colorFormat18bitRGB666,
    colorFormat18bitARGB1665,
    colorFormat19bitARGB1666,
    colorFormat24bitRGB888,
    colorFormat24bitBGR888,
    colorFormat24bitARGB1887,
    colorFormat25bitARGB1888,
    colorFormat32bitBGRA8888,
    colorFormat32bitARGB8888,
    colorFormatYUV411Planar,
    colorFormatYUV411PackedPlanar,
    colorFormatYUV420Planar,
    colorFormatYUV420PackedPlanar,
    colorFormatYUV422Planar,
    colorFormatYUV422PackedPlanar,
    colorFormatYCrYCb,
    colorFormatCrYCbY,
    colorFormatYUV444Interleaved,
    colorFormatRawBayer8bit,
    colorFormatRawBayer10bit,
    colorFormatRawBayer8bitcompressed,
    colorFormatL2,
    colorFormatL4,
    colorFormatL8,
    colorFormatL16,
    colorFormatL24,
    colorFormatL32,
    colorFormatYUV420PackedSemiPlanar,
    colorFormatYUV422PackedSemiPlanar,
    colorFormat18BitBGR666,
    colorFormat24BitARGB6666,
    colorFormat24BitABGR6666
} eColorFormatType_t;

typedef enum scanFormat_t
{
    scanFormatInterlaced = 0x11000000,
    scanFormatProgressive,
    scanFormatNone
} scanFormat_t;


/*******************************************************************************
 *          Commands exchanged between app task and the remote tasks.          *
 ******************************************************************************/
typedef enum eCommand_t
{
    cmdCREATE = 0xc0000000,
    cmdINIT_SHARED_REGION,
    cmdINIT_SHARED_REGION_ACK,
    cmdDEINIT_SHARED_REGION,
    cmdDEINIT_SHARED_REGION_ACK,
    cmdINIT_LOG_CLIENT,
    cmdINIT_LOG_CLIENT_ACK,
    cmdDEINIT_LOG_CLIENT,
    cmdDEINIT_LOG_CLIENT_ACK,
    cmdCREATE_ACK,
    cmdINIT,
    cmdINIT_ACK,
    cmdCHAIN,
    cmdCHAIN_ACK,
    cmdREADY,
    cmdREADY_ACK,
    cmdSTART,
    cmdSTART_ACK,
    cmdPAUSE,
    cmdSTOP,
    cmdSTOP_ACK,
    cmdUNCHAIN,
    cmdUNCHAIN_ACK,
    cmdDEINIT,
    cmdDEINIT_ACK,
    cmdCLOSE,
    cmdCLOSE_ACK,
    cmdQUIT,
    cmdQUIT_ACK,
    cmdDELETE,
    cmdDELETE_ACK,
    cmdFLUSH,
    cmdRECONF,
    cmdDESTROY,
    cmdSTART_PROFILE,
    cmdSTART_PROFILE_ACK,
    cmdSTOP_PROFILE,
    cmdSTOP_PROFILE_ACK,
    cmdPRINT_SYS_LOAD,
    cmdPRINT_SYS_LOAD_ACK,
    cmdSTART_PRF_SYS_LOAD,
    cmdSTART_PRF_SYS_LOAD_ACK,
    cmdSTOP_PRF_SYS_LOAD,
    cmdSTOP_PRF_SYS_LOAD_ACK,
    cmdSTART_LOGS,
    cmdSTART_LOGS_ACK,
    cmdSTOP_LOGS,
    cmdSTOP_LOGS_ACK,
    cmdDO_PLATFORM_INIT,
    cmdDO_PLATFORM_INIT_ACK,
    cmdDO_PLATFORM_DEINIT,
    cmdDO_PLATFORM_DEINIT_ACK,
    cmdSTART_MSRLATENCY,
    cmdSTART_MSRLATENCY_ACK,
    cmdSTOP_MSRLATENCY,
    cmdSTOP_MSRLATENCY_ACK
} eCommand_t;

/* Buffer manager type. */
typedef enum eBufMgrType
{
    bufMgrTypeBios = 0xc1000000,
    bufMgrTypeIpc,
    bufMgrTypeOcmc,
    bufMgrTypeNone
} eBufMgrType_t;

/*processing type */
typedef enum eProcessingType
{
    processingTypeFrm = 0xc2000000u,
    processingTypeSlc,
    processingTypeNone
} eProcessingType_t;
/*******************************************************************************
 *                            CommandQ structures                              *
 ******************************************************************************/
typedef struct cfgCmds_t
{
    MessageQ_MsgHeader msgHdr;
    eCommand_t cmdType;
    void *pCmdData;
} cfgCmds_t;

/* Component configuration structures. */
/*******************************************************************************
 *                            Source Config                                    *
 ******************************************************************************/
typedef enum eCaptureSource_t
{
    captSrcTVP5158 = 0x20000000,
    captSrcOV10630,
    captSrcMT9P031,
    captSrcMT9V022,
    captSrcMT9M024,
    captSrcNone
} eCaptureSource_t;

typedef enum eCaptureType_t
{
    captTypeHdvpss = 0x30000000,
    captTypeIss,
    captTypeNone
} eCaptureType_t;

typedef enum eAptinaFmtParam_t
{
    aptCaptFmtBayer12bit = 0x40000000,
    aptCaptFmtMonochrome,
    aptCaptFmtRaw8bit,
    aptCaptFmtRaw10bit
} eAptinaFmtParam_t;

typedef enum eOVFMTParam_t  
{
    ovCaptFmtYUV4228bit = 0x50000000,
    ovCaptFmtYUV42216bit,
    ovCaptFmtDS8bit,
    ovCaptFmtDS10bit,
    ovCaptFmtDS16bit,
    ovCaptFmtRaw8bit,
    ovCaptFmtRaw10bit,
    ovCaptFmtRaw16bit
} eOVFMTParam_t;

typedef enum eVIPInst_t
{
    hdvpssVIP0PortA = 0,
    issVP0 = 0,
    hdvpssVIP0PortB = 1,
    hdvpssVIP1PortA = 2,
    hdvpssVIP1PortB = 3,
    portNone
} eVIPInst_t;

typedef struct srcOutPortDef_t
{
    int32_t nPortId;
    int32_t nInPortIdx;
    int32_t nNumChans;
    eCaptureSource_t captSrc;
    eCaptureType_t captType;
    eVIPInst_t vipInst;
    uint32_t nWidth;
    uint32_t nHeight;
    eColorFormatType_t colorFmt;
    Bool bOTFRszEnable;
    uint32_t nOTFRszOutWidth;
    uint32_t nOTFRszOutHeight;
    union fmtParams_t
    {
        eAptinaFmtParam_t aptFmtParam;
        eOVFMTParam_t ovFmtParam;
    } fmtParams_t;
    eBufMgrType_t bufMgrType;
    uint32_t nNumBuffers;
} srcOutPortDef_t;

typedef struct srcCfg_t
{    
    uint32_t nNumInputPorts;
    uint32_t nNumOutputPorts;
    srcOutPortDef_t outPortDefs[MAX_PORTS];
    uint32_t  isEnabled;
} srcCfg_t;


/*******************************************************************************
 *                            Scalar Config                                    *
 ******************************************************************************/
typedef enum eScalar_t
{
    scalarHDVPSS = 0x60000000,
    scalarISS,
    scalarNone
} eScalar_t;

typedef struct scalarInPortDef_t
{
    int32_t nPortId;
    int32_t nSrcTskIdx;
    int32_t nSrcPortId;
    eBufMgrType_t bufMgrType;
} scalarInPortDef_t;

typedef struct scalarOutPortDef_t
{
    int32_t nPortId;
    int32_t nInPortIdx;
    int32_t nMaxChans;
    eScalar_t scType;
    uint32_t nInputWidth;
    uint32_t nInputHeight;
    eColorFormatType_t inputColorFmt;
    uint32_t nOutputWidth;
    uint32_t nOutputHeight;
    eColorFormatType_t outputColorFmt;
    eBufMgrType_t bufMgrType;
    uint32_t nNumBuffers;
    eProcessingType_t processType;
    int32_t nNoOfSlices;
} scalarOutPortDef_t;

typedef struct scalarCfg_t
{    
    uint32_t nNumInputPorts;
    uint32_t nNumOutputPorts;
    scalarInPortDef_t inPortDefs[MAX_PORTS];
    scalarOutPortDef_t outPortDefs[MAX_PORTS];
    uint32_t  isEnabled;
} scalarCfg_t;


/*******************************************************************************
 *                            Image Warp Config                                *
 ******************************************************************************/
typedef enum eImgWarp_t
{
    imgWarpVICP = 0x70000000,
    imgWarpNone
} eImgWarp_t;

typedef struct imgWarpInPortDef_t
{
    int32_t nPortId;
    int32_t nSrcTskIdx;
    int32_t nSrcPortId;
    eBufMgrType_t bufMgrType;
} imgWarpInPortDef_t;

typedef struct imgWarpOutPortDef_t
{
    int32_t nPortId;
    int32_t nInPortIdx;
    eImgWarp_t iwType;
    uint32_t nSrcWidth;
    uint32_t nSrcHeight;
    uint32_t nDstWidth;
    uint32_t nDstHeight;
    eColorFormatType_t colorFmt;
    eBufMgrType_t bufMgrType;
    uint32_t nNumBuffers;
} imgWarpOutPortDef_t;

typedef struct imgWarpCfg_t
{
    uint32_t nNumInputPorts;
    uint32_t nNumOutputPorts;
    imgWarpInPortDef_t inPortDefs[MAX_PORTS];
    imgWarpOutPortDef_t outPortDefs[MAX_PORTS];
    uint32_t  isEnabled;
} imgWarpCfg_t;


/*******************************************************************************
 *                             Pass Through Config.                            *
 ******************************************************************************/
typedef enum ePassThrough_t
{
    passThroughDSP = 0x80000000,
    passThroughDSPSrcMT9V022,
    passThroughDSPSrcMT9M024,
    passThroughNone
} ePassThrough_t;

typedef struct passThroughInPortDef_t
{
    int32_t nPortId;
    int32_t nSrcTskIdx;
    int32_t nSrcPortId;
    eBufMgrType_t bufMgrType;
} passThroughInPortDef_t;

typedef struct passThroughOutPortDef_t
{
    int32_t nPortId;
    int32_t nInPortIdx;
    ePassThrough_t ptType;
    uint32_t nWidth;
    uint32_t nHeight;
    eColorFormatType_t colorFmt;
    eBufMgrType_t bufMgrType;
    uint32_t nNumBuffers;
} passThroughOutPortDef_t;

typedef struct passThroughCfg_t
{    
    uint32_t nNumInputPorts;
    uint32_t nNumOutputPorts;
    passThroughInPortDef_t inPortDefs[MAX_PORTS];
    passThroughOutPortDef_t outPortDefs[MAX_PORTS];
    uint32_t  isEnabled;
} passThroughCfg_t;


/*******************************************************************************
 *                             DSP BOP Config                                  *
 ******************************************************************************/
typedef enum eBop_t
{
    bopDSP = 0x81000000,
    bopDSPEVE,
    bopNone
} eBop_t;

typedef struct bopInPortDef_t
{
    int32_t nPortId;
    int32_t nSrcTskIdx;
    int32_t nSrcPortId;
    eBufMgrType_t bufMgrType;
} bopInPortDef_t;

typedef struct bopOutPortDef_t
{
    int32_t nPortId;
    int32_t nInPortIdx;
    eBop_t bopType;
    uint32_t nWidth;
    uint32_t nHeight;
    eColorFormatType_t colorFmt;
    eBufMgrType_t bufMgrType;
    uint32_t nNumBuffers;
} bopOutPortDef_t;

typedef struct bopCfg_t
{
    uint32_t nNumInputPorts;
    uint32_t nNumOutputPorts;
    bopInPortDef_t inPortDefs[MAX_PORTS];
    bopOutPortDef_t outPortDefs[MAX_PORTS];
    uint32_t  isEnabled;
} bopCfg_t;


/*******************************************************************************
 *                             DSP VLIB Config.                                *
 ******************************************************************************/
typedef enum eVlib_t
{
    vlibDSP = 0x90000000,
    vlibNone
} eVlib_t;

typedef struct vlibInPortDef_t
{
    int32_t nPortId;
    int32_t nSrcTskIdx;
    int32_t nSrcPortId;
    eBufMgrType_t bufMgrType;
} vlibInPortDef_t;

typedef struct vlibOutPortDef_t
{
    int32_t nPortId;
    int32_t nInPortIdx;
    eVlib_t vlibType;
    uint32_t nWidth;
    uint32_t nHeight;
    eColorFormatType_t colorFmt;
    eBufMgrType_t bufMgrType;
    uint32_t nNumBuffers;
} vlibOutPortDef_t;

typedef struct vlibCfg_t
{        
    uint32_t nNumInputPorts;
    uint32_t nNumOutputPorts;
    vlibInPortDef_t inPortDefs[MAX_PORTS];
    vlibOutPortDef_t outPortDefs[MAX_PORTS];
    uint32_t  isEnabled;
} vlibCfg_t;

typedef struct vidDecInPortDef
{
    int32_t nPortId;
    int32_t nSrcTskIdx;
    int32_t nSrcPortId;
	eBufMgrType_t bufMgrType;
}vidDecInPortDef_t;


typedef struct vidDecOutPortDef
{
	int32_t nPortId;
	int32_t nInPortIdx;
	uint32_t nWidth;
	uint32_t nHeight;
	eColorFormatType_t colorFmt;
	eBufMgrType_t bufMgrType;
    uint32_t nNumBuffers;
	eProcessingType_t processType;
	uint32_t nNoOfSlices;
}vidDecOutPortDef_t;

typedef struct vidDecCfg
{        
    uint32_t nNumInputPorts;
    uint32_t nNumOutputPorts;
    vidDecInPortDef_t inPortDefs[MAX_PORTS];
    vidDecOutPortDef_t outPortDefs[MAX_PORTS];
    uint32_t  isEnabled;
} vidDecCfg_t;

typedef struct memorySrcOutPortDef_t
{
	int32_t nPortId;
	int32_t nInPortIdx;
	uint32_t nWidth;
	uint32_t nHeight;
	eColorFormatType_t colorFmt;
	eBufMgrType_t bufMgrType;
    uint32_t nNumBuffers;
	eProcessingType_t processType;
	uint32_t nNoOfSlices;
}memorySrcOutPortDef_t;

typedef struct memorySrcCfg_t
{	    
    uint32_t nNumInputPorts;
	uint32_t nNumOutputPorts;
    memorySrcOutPortDef_t outPortDefs[MAX_PORTS];
	uint32_t isEnabled;
} memorySrcCfg_t;


/*******************************************************************************
 *                              Crop Frame Config.                             *
 ******************************************************************************/
typedef struct cropFrameInPortDef_t
{
    int32_t nPortId;
    int32_t nSrcTskIdx;
    int32_t nSrcPortId;
    eBufMgrType_t bufMgrType;
} cropFrameInPortDef_t;

typedef struct cropFrameOutPortDef_t
{
    int32_t nPortId;
    int32_t nInPortIdx;
    uint32_t nWidth;
    uint32_t nHeight;
    uint32_t nCropWidth;
    uint32_t nCropHeight;
    eColorFormatType_t colorFmt;
    eBufMgrType_t bufMgrType;
    uint32_t nNumBuffers;
} cropFrameOutPortDef_t;

typedef struct cropFrameCfg_t
{        
    uint32_t nNumInputPorts;
    uint32_t nNumOutputPorts;
    cropFrameInPortDef_t inPortDefs[MAX_PORTS];
    cropFrameOutPortDef_t outPortDefs[MAX_PORTS];
    uint32_t isCropEnabled;
} cropFrameCfg_t;


/*******************************************************************************
 *                             M2M DEI Config                                  *
 ******************************************************************************/
typedef enum eDeIM2M_t
{
    deIM2M = 0x99000000,
    deINone
} eDeIM2M_t;

typedef struct deIM2MInPortDef_t
{
    int32_t nPortId;
    int32_t nSrcTskIdx;
    int32_t nSrcPortId;
    eBufMgrType_t bufMgrType;
} deIM2MInPortDef_t;

typedef struct deIM2MOutPortDef_t
{
    int32_t nPortId;
    int32_t nInPortIdx;
    int32_t nNumChans;
    eDeIM2M_t deIType;
    uint32_t nInputWidth;
    uint32_t nInputHeight;
    eColorFormatType_t inputColorFmt;
    scanFormat_t inputScanFmt;
    uint32_t nOutputWidth;
    uint32_t nOutputHeight;
    eColorFormatType_t outputColorFmt;
    scanFormat_t outputScanFmt;
    Bool bUpsample;
    eBufMgrType_t bufMgrType;
    uint32_t nNumBuffers;
} deIM2MOutPortDef_t;

typedef struct deIM2MCfg_t
{
    uint32_t nNumInputPorts;
    uint32_t nNumOutputPorts;
    deIM2MInPortDef_t inPortDefs[MAX_PORTS];
    deIM2MOutPortDef_t outPortDefs[MAX_PORTS];
    uint32_t  isEnabled;
} deIM2MCfg_t;


/*******************************************************************************
 *                           PCIE Config                                       *
 ******************************************************************************/
typedef enum ePcie_t
{
    ePcieSink = 0xd0000000,
    ePcieSource,
    ePcieNone
} ePcie_t;

typedef struct pcieInPortDef_t
{
    int32_t nPortId;
    int32_t nSrcTskIdx;
    int32_t nSrcPortId;
    int32_t nNumChans;
    ePcie_t pcieType;
    uint32_t nWidth;
    uint32_t nHeight;
    eColorFormatType_t colorFmt;
    eBufMgrType_t bufMgrType;
} pcieInPortDef_t;

typedef struct pcieOutPortDef_t
{
    int32_t nPortId;
    int32_t nInPortIdx;
    int32_t nNumChans;
    ePcie_t pcieType;
    uint32_t nWidth;
    uint32_t nHeight;
    eColorFormatType_t colorFmt;
    eBufMgrType_t bufMgrType;
    uint32_t nNumBuffers;
} pcieOutPortDef_t;

typedef struct pcieCfg_t
{
    uint32_t  isSourceEnabled;
    uint32_t  isSinkEnabled;
    uint32_t nNumInputPorts;
    uint32_t nNumOutputPorts;
    union portDefs_t
    {
        pcieInPortDef_t   inPortDefs[MAX_PORTS];
        pcieOutPortDef_t  outPortDefs[MAX_PORTS];
    } portDefs_t;

} pcieCfg_t;


/*******************************************************************************
 *                           Raw Ethernet Config                               *
 ******************************************************************************/

typedef enum eRawEth_t
{
    eRawEthSink = 0xc0000000,
    eRawEthSource,
    eRawEthNone
} eRawEth_t;

typedef struct rawEthInPortDef_t
{
    int32_t nPortId;
    int32_t nInPortIdx;
    int32_t nNumChans;
    int32_t nSrcTskIdx;
    int32_t nSrcPortId;
    eRawEth_t rawEthType;
    uint32_t nWidth;
    uint32_t nHeight;
    int8_t cDstMACAddr[18];
    int8_t cSrcMACAddr[18];
    eColorFormatType_t colorFmt;
    eBufMgrType_t bufMgrType;
} rawEthInPortDef_t;

typedef struct rawEthOutPortDef_t
{
    int32_t nPortId;
    int32_t nInPortIdx;
    int32_t nNumChans;
    eRawEth_t rawEthType;
    uint32_t nWidth;
    uint32_t nHeight;
    int8_t cDstMACAddr[18];
    int8_t cSrcMACAddr[18];
    eColorFormatType_t colorFmt;
    eBufMgrType_t bufMgrType;
    uint32_t nNumBuffers;
} rawEthOutPortDef_t;

typedef struct rawEthCfg_t
{
    uint32_t  isSourceEnabled;
    uint32_t  isSinkEnabled;
    uint32_t nNumInputPorts;
    uint32_t nNumOutputPorts;
    union portDefsEth_t
    {
        rawEthInPortDef_t   inPortDefs[MAX_PORTS];
        rawEthOutPortDef_t  outPortDefs[MAX_PORTS];
    } portDefsEth_t;

} rawEthCfg_t;

/* ========================================================================== */
/** AVB_AvbTaskType        AVB Task Type  
*
* @param    AVB_Sink        Sink task
*
* @param    AVB_Source      Source task
*
* @param    AVB_None        None
*/
/* ========================================================================== */
typedef enum
{
    AVB_Sink = 0xe0000000,
    AVB_Source,
    AVB_None
}AVB_AvbTaskType;

/* ========================================================================== */
/** AVB_OUT_PORT_DEF         Video Decoder input port definition
*
* @param    nPortId             Port Id
*
* @param    nInPortIdx          Input port index
*
* @param    avbType             Source or Sink task
*
* @param    nWidth              Width
*
* @param    nHeight             Height
*
* @param    DstMACAddr          Array to hold destination MAC Address
*
* @param    SrcMACAddr          Array to hold source MAC Address
*
* @param    colorFmt            Color format
*
* @param    nMaxChans           Max channels
*
* @param    bufMgrType          Buffer manager type
*
* @param    nNumBuffers         Number of buffers in the buffer manager
*/
/* ========================================================================== */
typedef struct
{
    int32_t nPortId;
    int32_t nInPortIdx;
    AVB_AvbTaskType avbType;
    uint32_t nWidth;
    uint32_t nHeight;
    int8_t DstMACAddr[18];
    int8_t SrcMACAddr[18];
    eColorFormatType_t colorFmt;
    int32_t nMaxChans;
    eBufMgrType_t bufMgrType;
    uint32_t nNumBuffers;
    uint8_t stream_Id[8];
} AVB_OUT_PORT_DEF;

/* ========================================================================== */
/** AVB_IN_PORT_DEF         Video Decoder input port definition
*
* @param    nPortId             Port Id
*
* @param    nInPortIdx          Input port index
*
* @param    avbType             Source or Sink task
*
* @param    nWidth              Width
*
* @param    nHeight             Height
*
* @param    DstMACAddr          Array to hold destination MAC Address
*
* @param    SrcMACAddr          Array to hold source MAC Address
*
* @param    colorFmt            Color format
*
* @param    nMaxChans           Max channels
*
* @param    nSrcTskIdx          Source task index to which AVB Task is connected
*
* @param    nSrcPortId          Port Id of source task index to which AVB Task is connected
*
* @param    bufMgrType          Buffer manager type
*/
/* ========================================================================== */
typedef struct
{
    int32_t nPortId;
    int32_t nInPortIdx;
    AVB_AvbTaskType avbType;
    uint32_t nWidth;
    uint32_t nHeight;
    int8_t DstMACAddr[18];
    int8_t SrcMACAddr[18];
    eColorFormatType_t colorFmt;
    int32_t nMaxChans;
    int32_t nSrcTskIdx;
    int32_t nSrcPortId;
    eBufMgrType_t bufMgrType;    
} AVB_IN_PORT_DEF;

/* ========================================================================== */
/** AVB_TASK_CFG     AVB Task  configuration
*
* @param    nIsSourceEnabled    Indicates if AVB Source Task is enabled
*
* @param    nIsSinkEnabled      Indicates if AVB Sink Task is enabled
*
* @param    nNumInputPorts      Number of input ports
*
* @param    nNumOutputPorts     Number of output ports
*
* @param    portDefsAvb_t       Union containing input port/output port definition.
*/
/* ========================================================================== */
typedef struct 
{
    uint32_t  nIsSourceEnabled;
    uint32_t  nIsSinkEnabled;
    uint32_t nNumInputPorts;
    uint32_t nNumOutputPorts;
	int8_t DstMACAddr[18];
    int8_t SrcMACAddr[18];
    union portDefsAvb_t
    {
        AVB_IN_PORT_DEF   inPortDefs[MAX_PORTS];
        AVB_OUT_PORT_DEF  outPortDefs[MAX_PORTS];
    } portDefsAvb_t;
} AVB_TASK_CFG;

/*******************************************************************************
 *                       Display Config                                        *
 ******************************************************************************/
typedef enum eDisplay_t
{
    displayOnChipHDMI = 0xa0000000,
    displaySD,
    displayNone
} eDisplay_t;


typedef struct dstInPortDef_t
{
    int32_t nPortId;
    int32_t nInPortIdx;
    eDisplay_t displayType;
    uint32_t nWidth;
    uint32_t nHeight;
    eColorFormatType_t colorFmt;
    int32_t nMaxChans;
    int32_t nSrcTskIdx;
    int32_t nSrcPortId;
    eBufMgrType_t bufMgrType;
    eProcessingType_t processType;
    int32_t nNoOfSlices;    
} dstInPortDef_t;

typedef struct dstCfg_t
{
    uint32_t nNumInputPorts;
    uint32_t nNumOutputPorts;
    dstInPortDef_t inPortDefs[MAX_PORTS];
    uint32_t  isEnabled;
} dstCfg_t;

/*******************************************************************************
 *                            Graphics Config                                    *
 ******************************************************************************/
typedef struct grpxInPortDef_t
{
    int32_t nPortId;
    int32_t nInPortIdx;
    eDisplay_t displayType;
    uint32_t nWidth;
    uint32_t nHeight;
    eColorFormatType_t colorFmt;
    int32_t nSrcTskIdx;
    int32_t nSrcPortId;
    eBufMgrType_t bufMgrType;
} grpxInPortDef_t;

typedef struct grpxCfg_t
{        
    uint32_t nNumInputPorts;
    uint32_t nNumOutputPorts;
    grpxInPortDef_t inPortDefs[MAX_PORTS];

    uint32_t  isEnabled;
} grpxCfg_t;

typedef enum eMode_t
{
    modeReader = 0xb0000000,
    modeWriter
} eMode_t;

typedef struct chainParamCfg_t
{
    eMode_t mode;
    int32_t nChanNum;
    eBufMgrType_t bufMgrType;
    void *pFrameBufMgr;
} chainParamCfg_t;

typedef struct controlParamCfg_t
{
    int32_t nChanNum;
} controlParamCfg_t;

typedef struct primeParamCfg_t
{
    int32_t nChanNum;
    int32_t nBufIdx;
    void *pFrame;
} primeParamCfg_t;

typedef union inCfg_t
{
    srcCfg_t srcConfig;
    deIM2MCfg_t deIConfig;
    cropFrameCfg_t cfConfig;
    scalarCfg_t scalarConfig;
	memorySrcCfg_t memSrcConfig;
	AVB_TASK_CFG avbSrcConfig;
    vlibCfg_t vlibConfig;
    passThroughCfg_t ptConfig;
    bopCfg_t bopConfig;
	vidDecCfg_t vidDecConfig;
    imgWarpCfg_t iwConfig;
    pcieCfg_t pcieConfig;
    rawEthCfg_t rawEthConfig;
	AVB_TASK_CFG avbConfig;
    dstCfg_t dstConfig;
    grpxCfg_t grpxConfig;
    chainParamCfg_t chainConfig;
    controlParamCfg_t startConfig;
    controlParamCfg_t stopConfig;
} inCfg_t;

typedef struct chanConfig_t
{
    srcCfg_t srcConfig;
    deIM2MCfg_t deIConfig;
    cropFrameCfg_t cfConfig;
    scalarCfg_t scalarConfig;
	memorySrcCfg_t memSrcConfig;
	AVB_TASK_CFG avbSrcConfig;
    vlibCfg_t vlibConfig;
    passThroughCfg_t ptConfig;
    bopCfg_t bopConfig;
	vidDecCfg_t vidDecConfig;
    imgWarpCfg_t iwConfig;
    pcieCfg_t pcieConfig;
    rawEthCfg_t rawEthConfig;
	AVB_TASK_CFG avbConfig;
    dstCfg_t dstConfig;
    grpxCfg_t grpxConfig;
} chanConfig_t;


/* Function prototypes */


#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* CMD_MSG_DEFS_H */
