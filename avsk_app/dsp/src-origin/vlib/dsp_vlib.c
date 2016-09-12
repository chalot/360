/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  dsp_vlib.c
 *
 *   @brief 
 */

#include <stdlib.h>
#include <string.h>
#include <ti/sysbios/hal/Cache.h>

#include "dsp_vlib.h"


/*************************************************************************
 *  @func       dspVlibCreate
 *
 *  @brief        This function allocates vlib context.
 *
 *    @param[in]        nMaxchannels        :    maximum no of channels
 *    @param[in]        pLoggerInfo            :    pointer to logger info structure
 *     
 *  @returns  pVlibContext
 ************************************************************************/
taskCtxt_t* dspVlibCreate(int nMaxchannels)
{

    vlib_context_t  *pVlibContext   = NULL_VALUE;

    do
    {
        MEM_ALLOC(pVlibContext, vlib_context_t);
        if (NULL == pVlibContext)
        {
            LOG_PRINT("[%s]Error in allocating vlib context,%s,%d\n","DSP_VLIB",__FUNCTION__,__LINE__);
            break;
        }

    } while(0);
    return ((taskCtxt_t*)pVlibContext);
}


/*************************************************************************
 *  @func       dspVlibInit
 *
 *  @brief        
 *    @param[in]        pContext        :    TaskContext handle
 *    @param[in]        nChannum        :    Channel Number
 *    @param[in]        pInitparams        :    parameter structure handle
 *     
 *  @returns  0
 ************************************************************************/
ERRORTYPE dspVlibInit(taskCtxt_t *pContext , int32_t nChannum ,void *pInitparams )
{
    return ecNone;
}

/*************************************************************************
 *  @func       dspVlibControl
 *
 *  @brief        
 *
 *    @param[in]        pContext    :    TaskContext handle
 *    @param[in]        cmd            :    
 *    @param[in]        pControlparams    
 *     
 *  @returns  0
 ************************************************************************/
eTaskCtrlCmdStatus_t dspVlibControl(taskCtxt_t *pContext, eTaskCtrlCmd_t cmd, void *pControlParams )
{
    eTaskCtrlCmdStatus_t nRetVal = taskCtrlCmdStatusSuccess;

    return nRetVal;
}


/*************************************************************************
 *  @func       dspVlibProcess
 *
 *  @brief        This function demonstrates the usage of functions from 
 *              the VLIB package.
 *
 *    @param[in]        pContext        :    TaskContext handle
 *    @param[in]        nChanNum            :    Channel Number
 *    @param[in]        pInFrame        :    input frame pointer
 *    @param[in]        pOutFrame        :    output frame pointer
 *     
 *  @returns  None
 ************************************************************************/
eChFrmStatus_t dspVlibProcess(taskCtxt_t *pContext , int32_t nChanNum ,frame_t* pInFrame, frame_t *pOutFrame)
{

    vlib_context_t *pVlibContext = NULL_VALUE;

    pVlibContext =  (vlib_context_t*) pContext;

    /* Propagate the timestamp. */
    pOutFrame->nTimeStamp = pInFrame->nTimeStamp;
    /* Flush and invalidate cache. */
    Cache_wbInv((Ptr) (pOutFrame), sizeof(frame_t), (UInt16)Cache_Type_ALL, (Bool)TRUE);

    /* Invalidate cache. */
    Cache_inv((Ptr) pOutFrame->pBuffer, (pInFrame->nWidth * pInFrame->nHeight * 2u), (UInt16)Cache_Type_ALL, (Bool)TRUE);

    /* Convert from YUV422I UYVY to YUV422 Planar. */
    VLIB_convertUYVYint_to_YUVpl(pInFrame->pBuffer,             /* input YUV422 image */
                                 pInFrame->nWidth,              /* width of input image */
                                 pInFrame->nWidth,              /* pitch of input image */
                                 pInFrame->nHeight,             /* height of input image */
                                 pVlibContext->cBufLuma,         /* luma output image */
                                 pVlibContext->cBufCr,             /* Cr output image */
                                 pVlibContext->cBufCb);         /* Cb output image */

    /* Convert from YUV422 Planar to YUV422I UYVY. */
    VLIB_convertUYVYpl_to_YUVint(pVlibContext->cBufLuma,        /* luma input image */
                                 pVlibContext->cBufCr,          /* Cr input image */
                                 pVlibContext->cBufCb,          /* Cb input image */
                                 pOutFrame->nWidth,             /* width of input image */
                                 pOutFrame->nWidth,             /* pitch of input image */
                                 pOutFrame->nHeight,           /* height of input image */
                                 pOutFrame->pBuffer);           /* output YUV422 image */

    /* Flush and invalidate cache. */
    Cache_wbInv((Ptr) pOutFrame->pBuffer, (pInFrame->nWidth * pInFrame->nHeight * 2u), (UInt16)Cache_Type_ALL, (Bool)TRUE);

    processDoneCallback(pContext, nChanNum, processStatusOk, pInFrame, pOutFrame);

    return chFrmStatusOk;
}

/*************************************************************************
 *  @func       dspVlibDeinit
 *
 *  @brief        
 *    @param[in]        pCtxt            :    TaskContext handle
 *    @param[in]        nChanNum            :    Channel Number
 *     
 *  @returns  0
 ************************************************************************/
ERRORTYPE dspVlibDeinit(taskCtxt_t *pCtxt, int32_t nChanNum)
{
    return ecNone;
}

/*************************************************************************
 *  @func       dspVlibDestroy
 *
 *  @brief        This function frees memory allocated for vlib context.
 *
 *    @param[in]        pCtxt        :    TaskContext handle
 *     
 *  @returns  0
 ************************************************************************/
ERRORTYPE dspVlibDestroy(taskCtxt_t *pCtxt)
{
    vlib_context_t  *pVlibContext   = NULL_VALUE;

    pVlibContext    = (vlib_context_t *) pCtxt;

    /* Free the context of the particular task. */
    if (NULL != pVlibContext)
    {
        free(pVlibContext);
        pVlibContext = NULL_VALUE;
    }

    return ecNone;
}
