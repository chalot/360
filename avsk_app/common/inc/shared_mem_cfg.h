/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  shared_mem_cfg.h
 *
 *   @brief 
 */

#ifndef SHARED_MEM_CFG_H
#define SHARED_MEM_CFG_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#include <stdint.h>
#include "error_codes.h"

typedef enum eSharedRegionType_t
{
    sharedRegionTypeMaster = 0x04000000,
    sharedRegionTypeSlave
} eSharedRegionType_t;

/* MemType */
typedef enum eSharedRegionMemoryType_t
{
    sharedRegionMemoryTypeControl = 0x05000000,
    sharedRegionMemoryTypeData
} eSharedRegionMemoryType_t;

/*--------------------------- macros  ----------------------------------------*/
/** 
 *  MEMCFG_MAXNUMSHAREDREGIONS, provides the Max. no of shared regions 
 *  possible in the system.
 */
#define MEMCFG_MAXNUMSHAREDREGIONS       ((uint32_t) 4)

/** 
 *  MEMCFG_NUMSHAREDREGIONS, used for providing the actual no of shared regions 
 *  used in the system.
 */
#ifndef MEMCFG_NUMSHAREDREGIONS
  #define MEMCFG_NUMSHAREDREGIONS       ((int32_t)0)
#endif

/** 
 *  MEMCFG_SRTYPE0, MEMCFG_SRINDEX0, MEMCFG_SRBASE0, MEMCFG_SRSIZE0 
 *  MEMCFG_SRCACHEENABLE0 MEMCFG_SRMEMTYPE0 provide the default values of shared 
 *  region0
 */
#ifndef MEMCFG_SRTYPE0
  #define MEMCFG_SRTYPE0                  (sharedRegionTypeMaster)//liuxuliuxu, (sharedRegionTypeSlave)
#endif

#ifndef MEMCFG_SRINDEX0
  #define MEMCFG_SRINDEX0                 (0x0u)
#endif

#ifndef MEMCFG_SRBASE0
  #define MEMCFG_SRBASE0                  (0x0u)
#endif            
            
#ifndef MEMCFG_SRSIZE0
  #define MEMCFG_SRSIZE0                  (0x0u)
#endif              

#ifndef MEMCFG_SRCACHEENABLE0
  #define MEMCFG_SRCACHEENABLE0           (0u)
#endif              

#ifndef MEMCFG_SRMEMTYPE0
  #define MEMCFG_SRMEMTYPE0               (sharedRegionMemoryTypeControl)
#endif

/** 
 *  MEMCFG_SRTYPE1, MEMCFG_SRINDEX1, MEMCFG_SRBASE1, MEMCFG_SRSIZE1 
 *  MEMCFG_SRCACHEENABLE1 MEMCFG_SRMEMTYPE1 provide the default values of shared 
 *  region1
 */
#ifndef MEMCFG_SRTYPE1
  #define MEMCFG_SRTYPE1                  (sharedRegionTypeMaster)//liuxuliuxu, 8/22/2013. (sharedRegionTypeSlave)
#endif

#ifndef MEMCFG_SRINDEX1
  #define MEMCFG_SRINDEX1                 (0x0u)
#endif

#ifndef MEMCFG_SRBASE1
  #define MEMCFG_SRBASE1                  (0x0u)
#endif

#ifndef MEMCFG_SRSIZE1
  #define MEMCFG_SRSIZE1                  (0x0u)
#endif

#ifndef MEMCFG_SRCACHEENABLE1
  #define MEMCFG_SRCACHEENABLE1           (0u)
#endif

#ifndef MEMCFG_SRMEMTYPE1
  #define MEMCFG_SRMEMTYPE1               (sharedRegionMemoryTypeControl)
#endif

/** 
 *  MEMCFG_SRTYPE2, MEMCFG_SRINDEX2, MEMCFG_SRBASE2, MEMCFG_SRSIZE2 
 *  MEMCFG_SRCACHEENABLE2 MEMCFG_SRMEMTYPE2 provide the default values of shared 
 *  region2
 */
#ifndef MEMCFG_SRTYPE2
  #define MEMCFG_SRTYPE2                  (sharedRegionTypeSlave)
#endif

#ifndef MEMCFG_SRINDEX2
  #define MEMCFG_SRINDEX2                 (0x0u)
#endif

#ifndef MEMCFG_SRBASE2
  #define MEMCFG_SRBASE2                  (0x0u)
#endif

#ifndef MEMCFG_SRSIZE2
  #define MEMCFG_SRSIZE2                  (0x0u)
#endif

#ifndef MEMCFG_SRCACHEENABLE2
  #define MEMCFG_SRCACHEENABLE2           (0u)
#endif

#ifndef MEMCFG_SRMEMTYPE2
  #define MEMCFG_SRMEMTYPE2               (sharedRegionMemoryTypeControl)
#endif

/** 
 *  MEMCFG_SRTYPE3, MEMCFG_SRINDEX3, MEMCFG_SRBASE3, MEMCFG_SRSIZE3 
 *  MEMCFG_SRCACHEENABLE3 MEMCFG_SRMEMTYPE3 provide the default values of shared 
 *  region3
 */
#ifndef MEMCFG_SRTYPE3
  #define MEMCFG_SRTYPE3                  (sharedRegionTypeSlave)
#endif

#ifndef MEMCFG_SRINDEX3
  #define MEMCFG_SRINDEX3                 ((uint32_t)0x0)
#endif

#ifndef MEMCFG_SRBASE3
  #define MEMCFG_SRBASE3                  ((uint32_t)0x0)
#endif

#ifndef MEMCFG_SRSIZE3
  #define MEMCFG_SRSIZE3                  ((uint32_t)0x0)
#endif

#ifndef MEMCFG_SRCACHEENABLE3
  #define MEMCFG_SRCACHEENABLE3           ((uint32_t)0)
#endif

#ifndef MEMCFG_SRMEMTYPE3
  #define MEMCFG_SRMEMTYPE3               (sharedRegionMemoryTypeControl)
#endif

/*------------------------- Strutures ----------------------------------------*/
/**
 *******************************************************************************
 *  @struct  sharedRegionInfo_t - 
 *  @brief   Structure Per Shared region
 *
 *  @ param srType          : Shared region type
 *  @ param uIndex          : Index of the shared region
 *  @ param uBase           : Base address of the shared region
 *  @ param uSize           : Size of the shared in MAU(bytes)
 *  @ param bCacheEnable    : Bool specifying if cache is enabled
 *  @ param memType         : Shared region memory type
 *******************************************************************************
 */
typedef struct sharedRegionInfo_t
{
    eSharedRegionType_t srType;
    uint32_t nIndex;
    uint32_t nBase;
    uint32_t nSize;
    uint32_t bCacheEnable;
    eSharedRegionMemoryType_t srMemType;
} sharedRegionInfo_t;

/**
 *******************************************************************************
 *  @struct  sharedRegionConfig_t - 
 *  @brief   Structure specifying shared region of the whole system
 *
 *  @ param nNumSharedRegions  : Total no. of shared regions
 *  @ param aSRInfo            : Array of shared region informations
 *******************************************************************************
 */
typedef struct sharedRegionConfig_t
{
    int32_t nNumSharedRegions;
    sharedRegionInfo_t srInfo[MEMCFG_MAXNUMSHAREDREGIONS];
} sharedRegionConfig_t;


ERRORTYPE initSharedRegion(void);
ERRORTYPE deInitSharedRegion(void);
void *sharedMemAlloc(uint16_t nSRId, uint32_t nSize);
void sharedMemFree(uint16_t nSRId, void *pMem, uint32_t nSize);

#ifdef _cplusplus
}
#endif/* __cplusplus */

#endif /* SHARED_MEM_CFG_H */ 
