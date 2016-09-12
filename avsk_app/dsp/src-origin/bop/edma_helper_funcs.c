/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  edma_helper_funcs.c
 *
 *   @brief 
 */
/*******************************************************************************
 *                           Include Files                                     *
 ******************************************************************************/
#include <xdc/std.h>

#include <ti/sysbios/BIOS.h>
#include <xdc/runtime/System.h>
#include <ti/sysbios/knl/Semaphore.h>

#include "edma_helper_funcs.h"

/* OPT Field specific defines */
#define OPT_SYNCDIM_SHIFT                   (0x00000002u)
#define OPT_TCC_MASK                        (0x0003F000u)
#define OPT_TCC_SHIFT                       (0x0000000Cu)
#define OPT_ITCINTEN_SHIFT                  (0x00000015u)
#define OPT_TCINTEN_SHIFT                   (0x00000014u)

/*******************************************************************************
 *                           Global Variables                                  *
 ******************************************************************************/
extern Semaphore_Handle hSemaCpyDone;

extern uint32_t gEdma_ChId, gTcc;

volatile short irqRaised1 = 0;


/* Callback function */
void edmaDoneCb (unsigned int tcc, EDMA3_RM_TccStatus status,
                 void *appData)
{
    (void)tcc;
    (void)appData;

    switch (status)
    {
    case EDMA3_RM_XFER_COMPLETE:
        /* Transfer completed successfully */
        irqRaised1 = 1;
        Semaphore_post(hSemaCpyDone);
        break;
    case EDMA3_RM_E_CC_DMA_EVT_MISS:
        /* Transfer resulted in DMA event miss error. */
        irqRaised1 = -1;
        break;
    case EDMA3_RM_E_CC_QDMA_EVT_MISS:
        /* Transfer resulted in QDMA event miss error. */
        irqRaised1 = -2;
        break;
    default:
        break;
    }
}


void edmaMemcpy(EDMA3_DRV_Handle hEdma, void * dstBuf, void * srcBuf, Uint32 numBytes)
{
    EDMA3_DRV_Result result = (int32_t)EDMA3_DRV_SOK;
    EDMA3_DRV_PaRAMRegs paramSet = {0u,0u,0u,0u,0u,0,0,0u,0u,0,0,0u,0};
    /* EDMA3_DRV_SyncType syncType; */
    int32_t srcbidx = 0, desbidx = 0;
    int32_t srccidx = 0, descidx = 0;
    uint32_t numenabled = 0u, i;
    uint32_t acnt=0u, bcnt=0u, ccnt=0u;


    acnt = numBytes/32u;
    bcnt = 32u;
    ccnt = 1u;
    /*syncType = EDMA3_DRV_SYNC_AB; */

    /* Setting up the SRC/DES Index */
    srcbidx = (int32_t)acnt;
    desbidx = (int32_t)acnt;
    srccidx = (int32_t)1;
    descidx = (int32_t)1;

    /* Fill the PaRAM Set with transfer specific information */
    paramSet.srcAddr    = (uint32_t)(srcBuf);
    paramSet.destAddr   = (uint32_t)(dstBuf);

    paramSet.srcBIdx    = (int16_t)srcbidx;
    paramSet.destBIdx   = (int16_t)desbidx;
    paramSet.srcCIdx    = (int16_t)srccidx;
    paramSet.destCIdx   = (int16_t)descidx;

    paramSet.aCnt       = (uint16_t)acnt;
    paramSet.bCnt       = (uint16_t)bcnt;
    paramSet.cCnt       = (uint16_t)ccnt;

    paramSet.bCntReload = (uint16_t)bcnt;

    paramSet.linkAddr   = 0xFFFFu;

    /* Src & Dest are in INCR modes */
    paramSet.opt &= 0xFFFFFFFCu;
    /* Program the TCC */
    paramSet.opt |= ((gTcc << (uint32_t)OPT_TCC_SHIFT) & (uint32_t)OPT_TCC_MASK);

    /* Enable Intermediate & Final transfer completion interrupt */
    paramSet.opt |= (1 << OPT_ITCINTEN_SHIFT);
    paramSet.opt |= (1 << OPT_TCINTEN_SHIFT);


    paramSet.opt |= (1 << OPT_SYNCDIM_SHIFT);


    /* Now, write the PaRAM Set. */
    result = EDMA3_DRV_setPaRAM(hEdma, gEdma_ChId, &paramSet);

    irqRaised1 = 0;

    if (result == (int32_t)EDMA3_DRV_SOK)
    {
        /* AB Sync Transfer Mode */
        numenabled = ccnt;

        for (i = 0u; i < numenabled; i++)
        {
            /*
             * Now enable the transfer as many times as calculated above.
             */
            result = EDMA3_DRV_enableTransfer (hEdma, gEdma_ChId,
                    EDMA3_DRV_TRIG_MODE_MANUAL);
            if (result != (int32_t)EDMA3_DRV_SOK)
            {

                System_printf ("EDMA3_DRV_enableTransfer " \
                        "Failed, error code: %d\r\n", result);
                break;
            }
#if 1//liuxu, 03/21/2014, revert.//liuxu, 02/14/2014, don't check if finished, RISK...
            Semaphore_pend(hSemaCpyDone, (uint32_t)BIOS_WAIT_FOREVER);

            /* Check the status of the completed transfer */
            if (irqRaised1 < 0)
            {
                /* Some error occured, break from the FOR loop. */
                System_printf ("\r\nEvent Miss Occured!!!\r\n");

                /* Clear the error bits first */
                EDMA3_DRV_clearErrorBits (hEdma, gEdma_ChId);
            }
#endif
        }
    }

}


void edmaYextract(EDMA3_DRV_Handle hEdma, void * srcBuf, void * dstBuf, Uint32 width, Uint32 height)
{
    EDMA3_DRV_Result result = (int32_t)EDMA3_DRV_SOK;
    EDMA3_DRV_PaRAMRegs paramSet = {0u,0u,0u,0u,0u,0,0,0u,0u,0,0,0u,0};
    /* EDMA3_DRV_SyncType syncType; */
    int32_t srcbidx = 0, desbidx = 0;
    int32_t srccidx = 0, descidx = 0;
    uint32_t numenabled = 0u, i;
    uint32_t acnt=0u, bcnt=0u, ccnt=0u;

    acnt = 1u;
    bcnt = width;
    ccnt = height;
    /*syncType = EDMA3_DRV_SYNC_AB;*/

    /* Setting up the SRC/DES Index */
    srcbidx = (int32_t)acnt+1;
    desbidx = (int32_t)acnt;
    srccidx = (int32_t)bcnt * 2;
    descidx = (int32_t)bcnt;


    /* Fill the PaRAM Set with transfer specific information */
    paramSet.srcAddr    = (uint32_t)(srcBuf);
    paramSet.destAddr   = (uint32_t)(dstBuf);


    paramSet.srcBIdx    = (int16_t)srcbidx;
    paramSet.destBIdx   = (int16_t)desbidx;
    paramSet.srcCIdx    = (int16_t)srccidx;
    paramSet.destCIdx   = (int16_t)descidx;


    paramSet.aCnt       = (uint16_t)acnt;
    paramSet.bCnt       = (uint16_t)bcnt;
    paramSet.cCnt       = (uint16_t)ccnt;

    /* For AB-synchronized transfers, BCNTRLD is not used. */
    paramSet.bCntReload = (uint16_t)bcnt;

    paramSet.linkAddr   = 0xFFFFu;

    /* Src & Dest are in INCR modes */
    paramSet.opt &= 0xFFFFFFFCu;
    /* Program the TCC */
    paramSet.opt |= ((gTcc << OPT_TCC_SHIFT) & OPT_TCC_MASK);

    /* Enable Intermediate & Final transfer completion interrupt */
    paramSet.opt |= (1 << OPT_ITCINTEN_SHIFT);
    paramSet.opt |= (1 << OPT_TCINTEN_SHIFT);



    paramSet.opt |= (1 << OPT_SYNCDIM_SHIFT);


    /* Now, write the PaRAM Set. */
    result = EDMA3_DRV_setPaRAM(hEdma, gEdma_ChId, &paramSet);


    irqRaised1 = 0;

    if (result == (int32_t)EDMA3_DRV_SOK)
    {

        /* AB Sync Transfer Mode */
        numenabled = ccnt;

        for (i = 0u; i < numenabled; i++)
        {
            /*
             * Now enable the transfer as many times as calculated above.
             */
            result = EDMA3_DRV_enableTransfer (hEdma, gEdma_ChId,
                    EDMA3_DRV_TRIG_MODE_MANUAL);
            if (result != (int32_t)EDMA3_DRV_SOK)
            {

                System_printf ("EDMA3_DRV_enableTransfer " \
                        "Failed, error code: %d\r\n", result);
                break;
            }

            Semaphore_pend(hSemaCpyDone, (uint32_t)BIOS_WAIT_FOREVER);

            /* Check the status of the completed transfer */
            if (irqRaised1 < 0)
            {
                /* Some error occured, break from the FOR loop. */
                System_printf ("\r\nEvent Miss Occured!!!\r\n");

                /* Clear the error bits first */
                EDMA3_DRV_clearErrorBits (hEdma, gEdma_ChId);
            }
        }
    }

}


void edmaWarpImgCpy(EDMA3_DRV_Handle hEdma, void *srcBuf, void *dstBuf, Uint32 width, Uint32 height)
{
    EDMA3_DRV_Result result = (int32_t)EDMA3_DRV_SOK;
    EDMA3_DRV_PaRAMRegs paramSet = {0u,0u,0u,0u,0u,0,0,0u,0u,0,0,0u,0};
    /* EDMA3_DRV_SyncType syncType; */
    int32_t srcbidx = 0, desbidx = 0;
    int32_t srccidx = 0, descidx = 0;
    uint32_t numenabled = 0u, i;
    uint32_t acnt=0u, bcnt=0u, ccnt=0u;

    acnt = width;
    bcnt = height;
    ccnt = 1u;
    /*syncType = EDMA3_DRV_SYNC_AB; */

    /* Setting up the SRC/DES Index */
    srcbidx = (int32_t)720;
    desbidx = (int32_t)720;
    srccidx = (int32_t)1;
    descidx = (int32_t)1;


    /* Fill the PaRAM Set with transfer specific information */
    paramSet.srcAddr    = (uint32_t)(srcBuf);
    paramSet.destAddr   = (uint32_t)(dstBuf);


    paramSet.srcBIdx    = (int16_t)srcbidx;
    paramSet.destBIdx   = (int16_t)desbidx;
    paramSet.srcCIdx    = (int16_t)srccidx;
    paramSet.destCIdx   = (int16_t)descidx;


    paramSet.aCnt       = (uint16_t)acnt;
    paramSet.bCnt       = (uint16_t)bcnt;
    paramSet.cCnt       = (uint16_t)ccnt;

    /* For AB-synchronized transfers, BCNTRLD is not used. */
    paramSet.bCntReload = (uint16_t)bcnt;

    paramSet.linkAddr   = 0xFFFFu;

    /* Src & Dest are in INCR modes */
    paramSet.opt &= 0xFFFFFFFCu;
    /* Program the TCC */
    paramSet.opt |= ((gTcc << OPT_TCC_SHIFT) & OPT_TCC_MASK);

    /* Enable Intermediate & Final transfer completion interrupt */
    paramSet.opt |= (1 << OPT_ITCINTEN_SHIFT);
    paramSet.opt |= (1 << OPT_TCINTEN_SHIFT);

    paramSet.opt |= (1 << OPT_SYNCDIM_SHIFT);

    /* Now, write the PaRAM Set. */
    result = EDMA3_DRV_setPaRAM(hEdma, gEdma_ChId, &paramSet);


    irqRaised1 = 0;


    if (result == (int32_t)EDMA3_DRV_SOK)
    {
        /* AB Sync Transfer Mode */
        numenabled = ccnt;

        for (i = 0u; i < numenabled; i++)
        {
            /*
             * Now enable the transfer as many times as calculated above.
             */
            result = EDMA3_DRV_enableTransfer (hEdma, gEdma_ChId,
                    EDMA3_DRV_TRIG_MODE_MANUAL);
            if (result != (int32_t)EDMA3_DRV_SOK)
            {

                System_printf ("EDMA3_DRV_enableTransfer " \
                        "Failed, error code: %d\r\n", result);
                break;
            }

            Semaphore_pend(hSemaCpyDone, (uint32_t)BIOS_WAIT_FOREVER);

            /* Check the status of the completed transfer */
            if (irqRaised1 < 0)
            {
                /* Some error occured, break from the FOR loop. */
                System_printf ("\r\nEvent Miss Occured!!!\r\n");

                /* Clear the error bits first */
                EDMA3_DRV_clearErrorBits (hEdma, gEdma_ChId);
            }
        }
    }


}



void edmaWarpImgCpy1(EDMA3_DRV_Handle hEdma, void *srcBuf, void *dstBuf, Uint32 width, Uint32 height)
{
    EDMA3_DRV_Result result = (int32_t)EDMA3_DRV_SOK;
    EDMA3_DRV_PaRAMRegs paramSet = {0u,0u,0u,0u,0u,0,0,0u,0u,0,0,0u,0};
    /* EDMA3_DRV_SyncType syncType; */
    int32_t srcbidx = 0, desbidx = 0;
    int32_t srccidx = 0, descidx = 0;
    uint32_t numenabled = 0u, i;
    uint32_t acnt=0u, bcnt=0u, ccnt=0u;

    acnt = width;
    bcnt = height;
    ccnt = 1u;
    /* syncType = EDMA3_DRV_SYNC_AB;*/

    /* Setting up the SRC/DES Index */
    srcbidx = (int32_t)720;
    desbidx = (int32_t)width;
    srccidx = (int32_t)1;
    descidx = (int32_t)1;


    /* Fill the PaRAM Set with transfer specific information */
    paramSet.srcAddr    = (uint32_t)(srcBuf);
    paramSet.destAddr   = (uint32_t)(dstBuf);


    paramSet.srcBIdx    = (int16_t)srcbidx;
    paramSet.destBIdx   = (int16_t)desbidx;
    paramSet.srcCIdx    = (int16_t)srccidx;
    paramSet.destCIdx   = (int16_t)descidx;


    paramSet.aCnt       = (uint16_t)acnt;
    paramSet.bCnt       = (uint16_t)bcnt;
    paramSet.cCnt       = (uint16_t)ccnt;

    /* For AB-synchronized transfers, BCNTRLD is not used. */
    paramSet.bCntReload = (uint16_t)bcnt;

    paramSet.linkAddr   = 0xFFFFu;

    /* Src & Dest are in INCR modes */
    paramSet.opt &= 0xFFFFFFFCu;
    /* Program the TCC */
    paramSet.opt |= ((gTcc << OPT_TCC_SHIFT) & OPT_TCC_MASK);

    /* Enable Intermediate & Final transfer completion interrupt */
    paramSet.opt |= (1 << OPT_ITCINTEN_SHIFT);
    paramSet.opt |= (1 << OPT_TCINTEN_SHIFT);

    paramSet.opt |= (1 << OPT_SYNCDIM_SHIFT);

    /* Now, write the PaRAM Set. */
    result = EDMA3_DRV_setPaRAM(hEdma, gEdma_ChId, &paramSet);


    irqRaised1 = 0;


    if (result == (int32_t)EDMA3_DRV_SOK)
    {
        /* AB Sync Transfer Mode */
        numenabled = ccnt;

        for (i = 0u; i < numenabled; i++)
        {
            /*
             * Now enable the transfer as many times as calculated above.
             */
            result = EDMA3_DRV_enableTransfer (hEdma, gEdma_ChId,
                    EDMA3_DRV_TRIG_MODE_MANUAL);
            if (result != (int32_t)EDMA3_DRV_SOK)
            {

                System_printf ("EDMA3_DRV_enableTransfer " \
                        "Failed, error code: %d\r\n", result);
                break;
            }

            Semaphore_pend(hSemaCpyDone, (uint32_t)BIOS_WAIT_FOREVER);

            /* Check the status of the completed transfer */
            if (irqRaised1 < 0)
            {
                /* Some error occured, break from the FOR loop. */
                System_printf ("\r\nEvent Miss Occured!!!\r\n");

                /* Clear the error bits first */
                EDMA3_DRV_clearErrorBits (hEdma, gEdma_ChId);
            }
        }
    }
}

void edmaWarpImgCpy2(EDMA3_DRV_Handle hEdma, void *srcBuf, void *dstBuf, Uint32 width, Uint32 height)//liuxuliuxu
{
    EDMA3_DRV_Result result = (int32_t)EDMA3_DRV_SOK;
    EDMA3_DRV_PaRAMRegs paramSet = {0u,0u,0u,0u,0u,0,0,0u,0u,0,0,0u,0};
    /* EDMA3_DRV_SyncType syncType; */
    int32_t srcbidx = 0, desbidx = 0;
    int32_t srccidx = 0, descidx = 0;
    uint32_t numenabled = 0u, i;
    uint32_t acnt=0u, bcnt=0u, ccnt=0u;

    acnt = width*2;
    bcnt = height;
    ccnt = 1u;
    /*syncType = EDMA3_DRV_SYNC_AB; */

    /* Setting up the SRC/DES Index */
    srcbidx = (int32_t)width*2;
    desbidx = (int32_t)736*2;
    srccidx = (int32_t)1;
    descidx = (int32_t)1;


    /* Fill the PaRAM Set with transfer specific information */
    paramSet.srcAddr    = (uint32_t)(srcBuf);
    paramSet.destAddr   = (uint32_t)(dstBuf);


    paramSet.srcBIdx    = (int16_t)srcbidx;
    paramSet.destBIdx   = (int16_t)desbidx;
    paramSet.srcCIdx    = (int16_t)srccidx;
    paramSet.destCIdx   = (int16_t)descidx;


    paramSet.aCnt       = (uint16_t)acnt;
    paramSet.bCnt       = (uint16_t)bcnt;
    paramSet.cCnt       = (uint16_t)ccnt;

    /* For AB-synchronized transfers, BCNTRLD is not used. */
    paramSet.bCntReload = (uint16_t)bcnt;

    paramSet.linkAddr   = 0xFFFFu;

    /* Src & Dest are in INCR modes */
    paramSet.opt &= 0xFFFFFFFCu;
    /* Program the TCC */
    paramSet.opt |= ((gTcc << OPT_TCC_SHIFT) & OPT_TCC_MASK);

    /* Enable Intermediate & Final transfer completion interrupt */
    paramSet.opt |= (1 << OPT_ITCINTEN_SHIFT);
    paramSet.opt |= (1 << OPT_TCINTEN_SHIFT);

    paramSet.opt |= (1 << OPT_SYNCDIM_SHIFT);

    /* Now, write the PaRAM Set. */
    result = EDMA3_DRV_setPaRAM(hEdma, gEdma_ChId, &paramSet);


    irqRaised1 = 0;


    if (result == (int32_t)EDMA3_DRV_SOK)
    {
        /* AB Sync Transfer Mode */
        numenabled = ccnt;

        for (i = 0u; i < numenabled; i++)
        {
            /*
             * Now enable the transfer as many times as calculated above.
             */
            result = EDMA3_DRV_enableTransfer (hEdma, gEdma_ChId,
                    EDMA3_DRV_TRIG_MODE_MANUAL);
            if (result != (int32_t)EDMA3_DRV_SOK)
            {

                System_printf ("EDMA3_DRV_enableTransfer " \
                        "Failed, error code: %d\r\n", result);
                break;
            }

            Semaphore_pend(hSemaCpyDone, (uint32_t)BIOS_WAIT_FOREVER);

            /* Check the status of the completed transfer */
            if (irqRaised1 < 0)
            {
                /* Some error occured, break from the FOR loop. */
                System_printf ("\r\nEvent Miss Occured!!!\r\n");

                /* Clear the error bits first */
                EDMA3_DRV_clearErrorBits (hEdma, gEdma_ChId);
            }
        }
    }


}


void edmaWarpImgCpy3(EDMA3_DRV_Handle hEdma, void *srcBuf, void *dstBuf, Uint32 width, Uint32 height)//liuxuliuxu, 8/8/2013, YUV420SP.
{
    EDMA3_DRV_Result result = (int32_t)EDMA3_DRV_SOK;
    EDMA3_DRV_PaRAMRegs paramSet = {0u,0u,0u,0u,0u,0,0,0u,0u,0,0,0u,0};
    /* EDMA3_DRV_SyncType syncType; */
    int32_t srcbidx = 0, desbidx = 0;
    int32_t srccidx = 0, descidx = 0;
    uint32_t numenabled = 0u, i;
    uint32_t acnt=0u, bcnt=0u, ccnt=0u;

    acnt = width;
    bcnt = height;
    ccnt = 1u;
    /*syncType = EDMA3_DRV_SYNC_AB; */

    /* Setting up the SRC/DES Index */
    srcbidx = (int32_t)736;
    desbidx = (int32_t)736;
    srccidx = (int32_t)1;
    descidx = (int32_t)1;


    /* Fill the PaRAM Set with transfer specific information */
    paramSet.srcAddr    = (uint32_t)(srcBuf);
    paramSet.destAddr   = (uint32_t)(dstBuf);


    paramSet.srcBIdx    = (int16_t)srcbidx;
    paramSet.destBIdx   = (int16_t)desbidx;
    paramSet.srcCIdx    = (int16_t)srccidx;
    paramSet.destCIdx   = (int16_t)descidx;


    paramSet.aCnt       = (uint16_t)acnt;
    paramSet.bCnt       = (uint16_t)bcnt;
    paramSet.cCnt       = (uint16_t)ccnt;

    /* For AB-synchronized transfers, BCNTRLD is not used. */
    paramSet.bCntReload = (uint16_t)bcnt;

    paramSet.linkAddr   = 0xFFFFu;

    /* Src & Dest are in INCR modes */
    paramSet.opt &= 0xFFFFFFFCu;
    /* Program the TCC */
    paramSet.opt |= ((gTcc << OPT_TCC_SHIFT) & OPT_TCC_MASK);

    /* Enable Intermediate & Final transfer completion interrupt */
    paramSet.opt |= (1 << OPT_ITCINTEN_SHIFT);
    paramSet.opt |= (1 << OPT_TCINTEN_SHIFT);

    paramSet.opt |= (1 << OPT_SYNCDIM_SHIFT);

    /* Now, write the PaRAM Set. */
    result = EDMA3_DRV_setPaRAM(hEdma, gEdma_ChId, &paramSet);


    irqRaised1 = 0;


    if (result == (int32_t)EDMA3_DRV_SOK)
    {
        /* AB Sync Transfer Mode */
        numenabled = ccnt;

        for (i = 0u; i < numenabled; i++)
        {
            /*
             * Now enable the transfer as many times as calculated above.
             */
            result = EDMA3_DRV_enableTransfer (hEdma, gEdma_ChId,
                    EDMA3_DRV_TRIG_MODE_MANUAL);
            if (result != (int32_t)EDMA3_DRV_SOK)
            {

                System_printf ("EDMA3_DRV_enableTransfer " \
                        "Failed, error code: %d\r\n", result);
                break;
            }

            Semaphore_pend(hSemaCpyDone, (uint32_t)BIOS_WAIT_FOREVER);

            /* Check the status of the completed transfer */
            if (irqRaised1 < 0)
            {
                /* Some error occured, break from the FOR loop. */
                System_printf ("\r\nEvent Miss Occured!!!\r\n");

                /* Clear the error bits first */
                EDMA3_DRV_clearErrorBits (hEdma, gEdma_ChId);
            }
        }
    }


}

void edmaWarpImgCpy4(EDMA3_DRV_Handle hEdma, void *srcBuf, void *dstBuf, Uint32 width, Uint32 height, Uint32 user_srcbidx, Uint32 user_desbidx)//liuxu, 02/13/2014. 
{
    EDMA3_DRV_Result result = (int32_t)EDMA3_DRV_SOK;
    EDMA3_DRV_PaRAMRegs paramSet = {0u,0u,0u,0u,0u,0,0,0u,0u,0,0,0u,0};
    /* EDMA3_DRV_SyncType syncType; */
    int32_t srcbidx = 0, desbidx = 0;
    int32_t srccidx = 0, descidx = 0;
    uint32_t numenabled = 0u, i;
    uint32_t acnt=0u, bcnt=0u, ccnt=0u;

    acnt = width;
    bcnt = height;
    ccnt = 1u;
    /*syncType = EDMA3_DRV_SYNC_AB; */

    /* Setting up the SRC/DES Index */
    srcbidx = (int32_t)user_srcbidx;//liuxu, 02/13/2014.
    desbidx = (int32_t)user_desbidx;//liuxu, 02/13/2014. 
    srccidx = (int32_t)1;
    descidx = (int32_t)1;


    /* Fill the PaRAM Set with transfer specific information */
    paramSet.srcAddr    = (uint32_t)(srcBuf);
    paramSet.destAddr   = (uint32_t)(dstBuf);


    paramSet.srcBIdx    = (int16_t)srcbidx;
    paramSet.destBIdx   = (int16_t)desbidx;
    paramSet.srcCIdx    = (int16_t)srccidx;
    paramSet.destCIdx   = (int16_t)descidx;


    paramSet.aCnt       = (uint16_t)acnt;
    paramSet.bCnt       = (uint16_t)bcnt;
    paramSet.cCnt       = (uint16_t)ccnt;

    /* For AB-synchronized transfers, BCNTRLD is not used. */
    paramSet.bCntReload = (uint16_t)bcnt;

    paramSet.linkAddr   = 0xFFFFu;

    /* Src & Dest are in INCR modes */
    paramSet.opt &= 0xFFFFFFFCu;
    /* Program the TCC */
    paramSet.opt |= ((gTcc << OPT_TCC_SHIFT) & OPT_TCC_MASK);

    /* Enable Intermediate & Final transfer completion interrupt */
    paramSet.opt |= (1 << OPT_ITCINTEN_SHIFT);
    paramSet.opt |= (1 << OPT_TCINTEN_SHIFT);

    paramSet.opt |= (1 << OPT_SYNCDIM_SHIFT);

    /* Now, write the PaRAM Set. */
    result = EDMA3_DRV_setPaRAM(hEdma, gEdma_ChId, &paramSet);


    irqRaised1 = 0;


    if (result == (int32_t)EDMA3_DRV_SOK)
    {
        /* AB Sync Transfer Mode */
        numenabled = ccnt;

        for (i = 0u; i < numenabled; i++)
        {
            /*
             * Now enable the transfer as many times as calculated above.
             */
            result = EDMA3_DRV_enableTransfer (hEdma, gEdma_ChId,
                    EDMA3_DRV_TRIG_MODE_MANUAL);
            if (result != (int32_t)EDMA3_DRV_SOK)
            {

                System_printf ("EDMA3_DRV_enableTransfer " \
                        "Failed, error code: %d\r\n", result);
                break;
            }
#if 1//liuxu, 03/21/2014, revert.//liuxu, 02/14/2014, don't check if finished, RISK...
            Semaphore_pend(hSemaCpyDone, (uint32_t)BIOS_WAIT_FOREVER);

            /* Check the status of the completed transfer */
            if (irqRaised1 < 0)
            {
                /* Some error occured, break from the FOR loop. */
                System_printf ("\r\nEvent Miss Occured!!!\r\n");

                /* Clear the error bits first */
                EDMA3_DRV_clearErrorBits (hEdma, gEdma_ChId);
            }
#endif 
        }
    }


}


