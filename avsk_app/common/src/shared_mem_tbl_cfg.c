/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  shared_mem_tbl_cfg.c
 *
 *   @brief 
 */

#include <stdint.h>

#include "app_cfg.h"            /* Note: The order of inclusion is important   */
#include "shared_mem_cfg.h"     /* Some of definitions not defined in app_cfg.h get
                                   default values from the shared_mem_cfg.h */


/** 
 *  sharedRegionConfigTable, is the shared region configuration table. 
 *  The initial values are provided here. In the app_cfg.h, system integrator
 *  can override the macros.
 *
 *
*/
sharedRegionConfig_t sharedRegionConfigTable =
{
    MEMCFG_NUMSHAREDREGIONS,  /* numFQSharedRegions */
    {
        {
            MEMCFG_SRTYPE0,         /* srType */
            MEMCFG_SRINDEX0,        /* srIndex */
            MEMCFG_SRBASE0,         /* srBase */
            MEMCFG_SRSIZE0,         /* srSize */
            MEMCFG_SRCACHEENABLE0,  /* srCacheEnable */
            MEMCFG_SRMEMTYPE0       /* memType */
        },  /* [0] */
        {
            MEMCFG_SRTYPE1,         /* srType */
            MEMCFG_SRINDEX1,        /* srIndex */
            MEMCFG_SRBASE1,         /* srBase */
            MEMCFG_SRSIZE1,         /* srSize */
            MEMCFG_SRCACHEENABLE1,  /* srCacheEnable */
            MEMCFG_SRMEMTYPE1       /* memType */
        },  /* [1] */
        {
            MEMCFG_SRTYPE2,         /* srType */
            MEMCFG_SRINDEX2,        /* srIndex */
            MEMCFG_SRBASE2,         /* srBase */
            MEMCFG_SRSIZE2,         /* srSize */
            MEMCFG_SRCACHEENABLE2,  /* srCacheEnable */
            MEMCFG_SRMEMTYPE2       /* memType */
        },  /* [2] */
        {
            MEMCFG_SRTYPE3,         /* srType */
            MEMCFG_SRINDEX3,        /* srIndex */
            MEMCFG_SRBASE3,         /* srBase */
            MEMCFG_SRSIZE3,         /* srSize */
            MEMCFG_SRCACHEENABLE3,  /* srCacheEnable */
            MEMCFG_SRMEMTYPE3       /* memType */
        },  /* [3] */
    }  /* srInfo */
};
