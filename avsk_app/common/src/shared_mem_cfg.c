/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  shared_mem_cfg.c
 *
 *   @brief 
 */

#include <stdint.h>


#include <xdc/std.h>
#include <xdc/runtime/Gate.h>
#include <xdc/runtime/System.h>
#include <xdc/runtime/Error.h>
#include <xdc/runtime/Assert.h>
#include <xdc/runtime/Diags.h>
#include <xdc/runtime/Log.h>
#include <xdc/runtime/Types.h>
#include <xdc/runtime/IHeap.h>
#include <xdc/runtime/Memory.h>
#include <xdc/runtime/Timestamp.h>
#include <ti/ipc/SharedRegion.h>
#include <ti/ipc/MultiProc.h>
#include <ti/ipc/HeapMemMP.h>

#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>

#include "shared_mem_cfg.h"
#include "common_defs.h"

#define NULL_VALUE ((void *)0x0)

#define DSP_LITE

/*------------------------ data declarations ---------------------------------*/
extern const sharedRegionConfig_t sharedRegionConfigTable;

/*----------------------- function prototypes --------------------------------*/
static Ptr mapPhyAddr2UsrVirtual(UInt32 phyAddr, UInt32 len);

/** 
 ********************************************************************************
 *  @func        initSharedRegion
 *  @brief       This function performs initialization of shared regions.
 *
 *               This functions gets a virtual address by calling
 *               mapPhyAddr2UsrVirtual(). Checks if the address already
 *               available the table. If not it creates an entry and sets the entry
 *               by calling SharedRegion_setEntry.
 *
 *  @param[in]   None  : None
 *
 *  @returns     ecNone
 *               ecFail
 ********************************************************************************
 */
ERRORTYPE initSharedRegion(void)
{
    ERRORTYPE nRetVal = ecNone;
    int32_t i;
    int32_t nSR_retval;
    SharedRegion_Entry srEntry;
    uint16_t srOwnerProcId;
    uint16_t srIndex;
    int32_t createHeap;
    int32_t srStatus = SharedRegion_S_SUCCESS;
    void* srBaseVirtual = NULL_VALUE;

    /* System_printf("\n%s: %d: Entered shared region init. \n", __FUNCTION__, __LINE__); */

    /*--------------------------------------------------------------------------*/
    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    /* Following are the initialization steps for each of the shared regions:   */
    /* 1. Convert the base address into user space virtual                      */
    /* 2. Derived to Base params with Actual values                             */
    /* 3. Get entry for a specific shared region index                          */
    /* 4. If the shared region is not valid, then set the shared region         */
    /* 5. If the shared region is already there, then check if the values are   */
    /*    correct.                                                                      */
    /*                                                                          */
    /*--------------------------------------------------------------------------*/

    for (i = 0; i < sharedRegionConfigTable.nNumSharedRegions; i++)
    {
        srBaseVirtual = NULL_VALUE;
        /*------------------------------------------------------------------------*/
        /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
        /* Convert the physical address to virtual address.                       */
        /*                                                                        */
        /*------------------------------------------------------------------------*/
        srBaseVirtual =  mapPhyAddr2UsrVirtual(sharedRegionConfigTable.srInfo[i].nBase,
                sharedRegionConfigTable.srInfo[i].nSize);

        /*------------------------------------------------------------------------*/
        /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
        /* Get the entry for the specific shared region index.                    */
        /*                                                                        */
        /*------------------------------------------------------------------------*/
        nSR_retval = SharedRegion_getEntry((UInt16)sharedRegionConfigTable.srInfo[i].nIndex, &srEntry);
        if (nSR_retval == SharedRegion_S_SUCCESS)
        {

            if (TRUE != srEntry.isValid) //liuxuliuxu, bug fix, 2013/4/19.
            {
                /*--------------------------------------------------------------------*/
                /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
                /* If the shared region is not included, then set a new entry.        */
                /*                                                                    */
                /*--------------------------------------------------------------------*/
                SharedRegion_entryInit (&srEntry);

#ifndef APP_ON_M3                
                srOwnerProcId = HOST_CORE_ID;  /* HOST */
#else 

#ifndef DSP_LITE
                srOwnerProcId = VIDEO_M3_CORE_ID;  /* VIDEO_M3 */
#else
                srOwnerProcId = DSP_CORE_ID;  /* VIDEO_M3 */
#endif

#endif                
                createHeap    = 0x1;

                srEntry.base = srBaseVirtual;
                srIndex = (uint16_t)sharedRegionConfigTable.srInfo[i].nIndex;
                srEntry.len = sharedRegionConfigTable.srInfo[i].nSize;
                srEntry.cacheEnable = (uint16_t)sharedRegionConfigTable.srInfo[i].bCacheEnable;
                srEntry.createHeap = (Bool)createHeap;
                srEntry.isValid = (Bool)TRUE;
                srEntry.ownerProcId = srOwnerProcId;
                srEntry.cacheLineSize = 128u;

                System_printf("\n%s: %d: Calling SharedRegion_setEntry (%d, 0x%x)\n", __FUNCTION__, __LINE__, srIndex, &srEntry); //liuxu, 10/17/2013.
                System_printf("\n%s: %d: base : 0x%x, len: 0x%x, ownerProcId: %d\n", __FUNCTION__, __LINE__, srEntry.base, srEntry.len, srEntry.ownerProcId); //liuxu, 10/17/2013.

                do
                {
                    /*------------------------------------------------------------------*/
                    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
                    /* If the shared region is not included, then set a new entry.      */
                    /*                                                                  */
                    /*------------------------------------------------------------------*/
                    if (srIndex == 0u)
                    {
#ifdef ENABLE_CONSOLE_PRINTS
                        System_printf("\n%s: %d: srIndex %d---srEntry->base:0x%x\n", __FUNCTION__, __LINE__, srIndex,srEntry.base);
#endif /* ENABLE_CONSOLE_PRINTS */
                    }

                    srStatus = SharedRegion_setEntry ( srIndex, &srEntry );

                    if (srStatus != SharedRegion_S_SUCCESS)
                    {
                        System_printf("\n%s: %d: SharedRegion_setEntry (%d, 0x%x) Failed, Status %d", __FUNCTION__, __LINE__, srIndex, &srEntry, srStatus);//liuxu, 10/17/2013.
                        Task_yield();
                    }
                } while (srStatus != SharedRegion_S_SUCCESS);
            }
            else
            {
                if ((srEntry.base != srBaseVirtual) ||
                        (srEntry.len  != sharedRegionConfigTable.srInfo[i].nSize))
                {
                    System_printf("\n%s: %d: SharedRegion base (0x%x != 0x%x) or SharedRegions length (0x%x != 0x%x)",
                            __FUNCTION__, __LINE__, srEntry.base, srBaseVirtual, srEntry.len, sharedRegionConfigTable.srInfo[i].nSize);
                    nRetVal = ecFail;
                    break;
                }
            }
        }
        else
        {
            nRetVal = ecFail;
            break;
        }
    }

    /* System_printf("\n%s: %d: Exited shared region init successfully. \n", __FUNCTION__, __LINE__); */

    return nRetVal;
}

/*************************************************************************
 *  @func       mapPhyAddr2UsrVirtual
 * 
 *  @brief      mapPhyAddr2UsrVirtual maps physical address into user 
 *              virtual address
 *
 *  @param[in]  phyAddr  : Physical address to be translated
 *  @param[in]  len      : Length of memory block to be translated
 * 
 *  @returns    
 ************************************************************************/
static Ptr mapPhyAddr2UsrVirtual(UInt32 phyAddr, UInt32 len)
{
    (Void) len; /* kill warnings */
    /* On RTOS side we are using PhyAddr = VirtualAddr */
    return ((Ptr) phyAddr);
}

/** 
 ********************************************************************************
 *  @func        deInitSharedRegion
 *  @brief       This function performs de-initialization of shared regions.
 *
 *               This functions gets a virtual address by calling
 *               mapPhyAddr2UsrVirtual(). Checks if the address already
 *               available the table. If not it creates an entry and sets the entry
 *               by calling SharedRegion_setEntry.
 *
 *  @param[in]   None  : None
 *
 *  @returns     ecNone
 *               ecFail
 ********************************************************************************
 */
ERRORTYPE deInitSharedRegion(void)
{
    ERRORTYPE nRetVal = ecNone;
    int32_t i;
    int32_t nSR_retval;
    SharedRegion_Entry srEntry;

    /* System_printf("\n%s: %d: Entered shared region init. \n", __FUNCTION__, __LINE__); */

    /*--------------------------------------------------------------------------*/
    /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
    /* Following are the initialization steps for each of the shared regions:   */
    /* 1. Convert the base address into user space virtual                      */
    /* 2. Derived to Base params with Actual values                             */
    /* 3. Get entry for a specific shared region index                          */
    /* 4. If the shared region is not valid, then set the shared region         */
    /* 5. If the shared region is already there, then check if the values are   */
    /*    correct.                                                                      */
    /*                                                                          */
    /*--------------------------------------------------------------------------*/

    for (i = 0; i < sharedRegionConfigTable.nNumSharedRegions; i++)
    {
        /*------------------------------------------------------------------------*/
        /*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
        /* Get the entry for the specific shared region index.                    */
        /*                                                                        */
        /*------------------------------------------------------------------------*/
        nSR_retval = SharedRegion_getEntry((UInt16)sharedRegionConfigTable.srInfo[i].nIndex, &srEntry);
        if (nSR_retval == SharedRegion_S_SUCCESS)
        {
            if (i != 0)
            {
				nSR_retval = SharedRegion_clearEntry((UInt16)sharedRegionConfigTable.srInfo[i].nIndex);
				if (nSR_retval != SharedRegion_S_SUCCESS)
				{
					nRetVal = ecFail;
					break;
				}
            }
        }
        else
        {
            nRetVal = ecFail;
            break;
        }
    }

    return nRetVal;
}

/*************************************************************************
 *  @func       sharedMemAlloc
 * 
 *  @brief      Allocate memory from the SHARED_MEM / SHARED_FRAME_BUFFER
 *              segment.
 *
 *  @param[in]  
 * 
 *  @returns    Valid memory address
 *              NULL
 ************************************************************************/
void *sharedMemAlloc(uint16_t nSRId, uint32_t nSize)
{
    void    *hHeap          = NULL_VALUE;
    void    *pAllocHeapMem  = NULL_VALUE;

    do
    {
        hHeap = (IHeap_Handle) SharedRegion_getHeap(nSRId);
        if (NULL == hHeap)
        {
            System_printf("\n%s: %d: No heap associated with shared region having region id %d. \n", __FUNCTION__, __LINE__, nSRId);
            break;
        }

        pAllocHeapMem = Memory_alloc((xdc_runtime_IHeap_Handle) hHeap, ROUNDUP_SIZE(nSize, 128), 128u, NULL_VALUE);
        if (NULL == pAllocHeapMem)
        {
            System_printf("\n%s: %d: Memory alloc from shared region having region id %d failed. \n", __FUNCTION__, __LINE__, nSRId);
            break;
        }

    } while(0);

    return pAllocHeapMem;
}

/*************************************************************************
 *  @func       sharedMemFree
 * 
 *  @brief      Free memory allocated from the SHARED_MEM / SHARED_FRAME_BUFFER
 *              segment.
 *
 *  @param[in]  
 * 
 *  @returns    
 ************************************************************************/
void sharedMemFree(uint16_t nSRId, void *pMem, uint32_t nSize)
{
    void *hHeap = NULL_VALUE;
    do
    {
        if (NULL == pMem)
        {
            break;
        }

        hHeap = (IHeap_Handle) SharedRegion_getHeap(nSRId);
        if (NULL == hHeap)
        {
            System_printf("\n%s: %d: No heap associated with shared region having region id %d. \n", __FUNCTION__, __LINE__, nSRId);
            break;
        }

        if (hHeap != NULL)
        {
            Memory_free((xdc_runtime_IHeap_Handle) hHeap, pMem, ROUNDUP_SIZE(nSize, 128));
        }

    } while(0);

    return;
}
