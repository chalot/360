/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/
/*
 * @file  raw_ethernet_sink.h
 *
 * This files declares all the data structures and functions used in
 * the Raw Ethernet functions
 *
 * @path $(avsk_PATH)\demos\avsk_app\video_m3\inc
 */
 
#ifndef RAWETHERNET_SINK_H
#define RAWETHERNET_SINK_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

#define USE_NC

#ifdef TI_CAMERA_MODE
#define NO_VLAN_TAG
#define ETH_P_AVBTP 0x88B5 /*0x88B5*/
#else
#define ETH_P_8021Q 0x8100
#define ETH_P_AVBTP 0x22f0
#endif

#ifdef NO_VLAN_TAG
#define ETH_PROTOCOL ETH_P_AVBTP
#else
#define ETH_PROTOCOL ETH_P_8021Q
#endif

#define ETH_DATA_LEN 1500
#define ETH_ALEN 6

#ifdef NO_VLAN_TAG
#define EFRAME_VLANAF dummy_vlanaf
#define VLAN_AF_SIZE 0
#else
#define EFRAME_VLANAF eframe.vlanaf
#define VLAN_AF_SIZE sizeof(struct vlan_af)
#endif

/****************************************************************
*  INCLUDE FILES                                                 
****************************************************************/
/* ----- system and platform files ----------------------------*/
#include <string.h>
#include <xdc/std.h>
#include <stdlib.h>
#include <ti/ndk/inc/netmain.h>
#include <ti/ndk/inc/stkmain.h>
#include <ti/sdo/edma3/drv/edma3_drv.h>
#include <ti/drv/centaurus/inc/csl_emac.h>

/******************************************************************************
* DATA DECLARATIONS
******************************************************************************/
/* MAC address */
typedef uint8_t mac_addr_t[ETH_ALEN];
/* Function pointer to raw ethernet recieve callback function */
typedef int32_t (*raw_ethernet_rcv_cb_t)(uint8_t *data, int32_t size,
				     mac_addr_t s_addr, 
					 void *cbdata);


#ifdef CHIP_DM8148
/* ==========================================================================*/
/**
* VLAN Header
*
* @param  pcv  
*
* @param  proto 
*/
/* ==========================================================================*/
struct vlan_af {
	uint16_t pcv;
	uint16_t proto;
};


/* ==========================================================================*/
/**
* Ethernet Frame Header
*
* @param  hdr : Ethernet header
*
* @param  vlanaf : VLAN header
*
* @param  data : Payload data
*/
/* ==========================================================================*/
typedef struct ether_frame{
    ETHHDR hdr;
#ifndef NO_VLAN_TAG	
	struct vlan_af vlanaf;
#endif
	uint8_t data[ETH_DATA_LEN];
}ether_frame_t;

#endif /* CHIP_DM8148 */


/* ==========================================================================*/
/**
* Raw ethernet handle
*
* @param  sfd : Socket variable
*
* @param  test_mode : Bool to check whether it is test or normal mode
*
* @param  rcv_cb : Recieve call back pointer
*
* @param  cbdata : Call back data
*
* @param  max_datasize : Maximum data size
*
* @param  eframe : Ethernet frame structure variable
*
* @param  rec_thread_running : Bool to check whether reciever thread is
*                              running or not
*
* @param  pipefd : Pipe descriptor
*
* @param  dummy_vlanaf : Dummy VLAN data
*/
/* ==========================================================================*/
struct raw_ethernet_handle {
#ifdef CHIP_DM8148
	SOCKET sfd;
#endif /* CHIP_DM8148 */
	Bool test_mode;
	raw_ethernet_rcv_cb_t rcv_cb;
	void *cbdata;
	int32_t max_datasize;
	ether_frame_t eframe;
	Bool rec_thread_running;
	int32_t pipefd[2];
#ifdef NO_VLAN_TAG
	/* in NO_VLAN_TAG mode, vlanaf field doesn't exist,
	   use dummy data to make dummy accesses */
	struct vlan_af dummy_vlanaf;
#endif /* NO_VLAN_TAG */

};

/* Raw Ethernet Handle structure */
typedef struct raw_ethernet_handle *raw_ethernet_handle_t;

/******************************************************************************
* FUNCTION DECLARATIONS
******************************************************************************/

/* ============================================================ */
/**
*  raw_ethernet_sink_open() Function to open raw ethernet socket, 
*  and start receiver thread
*
*  @param dev       Device's MAC address
*
*  @param dest      Destination MAC address
*
*  @param promisc   Not used
*
*  @param rcv_cb    Callback function pointer which is called when 
*  a packet of data is received.
*
*  @param cbdata    Call back data
*
*  @return Raw Ethernet Handle
*/
/*============================================================= */
raw_ethernet_handle_t raw_ethernet_sink_open(const char *dev, 
										const char *dest,
										Bool promisc,
										raw_ethernet_rcv_cb_t rcv_cb, 
										void *cbdata);


/* ============================================================ */
/**
*  raw_ethernet_sink_close() Function to close the raw ethernet socket
*
*  @param reh  Raw Ethernet Handle
*
*  @return None
*/
/*============================================================= */
void raw_ethernet_sink_close(raw_ethernet_handle_t reh);


/* ============================================================ */
/**
*  raw_ethernet_sink_maxbuf_size() Function which returns maximum
*  buffer size
*
*  @param reh Raw Ethernet Handle
*
*  @return Max Buffer Size
*/
/*============================================================= */
int32_t raw_ethernet_sink_maxbuf_size(raw_ethernet_handle_t reh);


/* ============================================================ */
/**
*  raw_ethernet_sink_write() Function to write data to the ethernet
*
*  @param reh Raw ethernet handle
*
*  @param data Data to be written
*
*  @param size Size of the data
*
*  @return Bytes wrote
*/
/*============================================================= */
int32_t raw_ethernet_sink_write(raw_ethernet_handle_t reh,
					   uint8_t *data, 
					   int32_t size);


#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* RAWETHERNET_SINK_H */
