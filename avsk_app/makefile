# Makefile for AV BIOS SDK app

APP_ON_M3 := true

APP_NAME = avsk_app

SRCDIR = a8/src a8/src/pcie/pcie_sink a8/src/pcie/pcie_source a8/src/pcie/pcie_common \
         vpss_m3/src vpss_m3/src/capture vpss_m3/src/capture/file vpss_m3/src/capture/tvp5158/hdvpss \
         vpss_m3/src/capture/ov10630/hdvpss vpss_m3/src/capture/ov10630/iss \
         vpss_m3/src/capture/mt9p031/iss \
         vpss_m3/src/capture/mt9v022/iss \
         vpss_m3/src/capture/mt9m024/hdvpss \
         vpss_m3/src/display \
         vpss_m3/src/graphics \
         vpss_m3/src/vicp_warp $(vision_mid_evfw_PATH)/src/src_hw $(vision_mid_evfw_PATH)/src/src_hw4macs $(vision_mid_evfw_PATH)/test/src \
         vpss_m3/src/scalar \
         vpss_m3/src/m2m_dei \
         video_m3/src vpss_m3/src/video_decoder vpss_m3/src/video_decoder/mjpeg_decoder video_m3/src/memory_src common/src/avb_sink video_m3/src/avb_source \
         dsp/src dsp/src/pass_through dsp/src/vlib \
         dsp/src/bop \
         $(bop_dsp_only_PATH) \
		 common/src \
		 common/src/uart_menu \
         common/src/master_app \
         common/src/sensor_config common/src/sensor_config/ov10630 common/src/sensor_config/mt9m024 \
         common/src/ethernet \
         common/src/log_server \
         common/src/crop_frame \
         common/src/raw_eth_source \
         common/src/raw_eth_sink \
         common/src/utils \
         common/src/buffer_mgmt
INCDIR = . \
         a8/inc \
         a8/inc/pcie/pcie_sink a8/inc/pcie/pcie_source a8/inc/pcie/pcie_common $(bios_psp_PATH)/drivers \
         vpss_m3/inc vpss_m3/inc/capture vpss_m3/inc/capture/file vpss_m3/inc/capture/tvp5158/hdvpss \
         vpss_m3/inc/capture/ov10630/hdvpss vpss_m3/inc/capture/ov10630/iss \
         vpss_m3/inc/capture/mt9p031/iss \
         vpss_m3/inc/capture/mt9v022/iss \
         vpss_m3/inc/capture/mt9m024/hdvpss \
         vpss_m3/inc/display \
         vpss_m3/inc/vicp_warp $(vision_mid_evfw_PATH)/inc $(vision_mid_evfw_PATH)/src/inc \
         $(vision_mid_evfw_PATH)/src/src_hw4macs/inc_m3 $(vision_mid_evfw_PATH)/test/inc \
         vpss_m3/inc/scalar \
         vpss_m3/inc/m2m_dei \
         vpss_m3/inc/graphics \
         video_m3/inc vpss_m3/inc/video_decoder vpss_m3/inc/video_decoder/mjpeg_decoder \
         video_m3/inc/memory_src common/inc/avb_sink \
		 video_m3/inc/memory_src video_m3/inc/avb_source \
		 $(avbtp_base_PATH) \
		 dsp/inc dsp/inc/pass_through dsp/inc/vlib $(vlib_PATH)/include \
         dsp/inc/bop \
         $(bop_dsp_only_PATH) $(bop_dsp_only_PATH)/include \
		 common/inc \
		 common/inc/uart_menu \
         common/inc/master_app \
         common/inc/sensor_config common/inc/sensor_config/ov10630 common/inc/sensor_config/mt9m024 \
         common/inc/webdata \
         common/inc/crop_frame \
         common/inc/raw_eth_source \
         common/inc/raw_eth_sink \
         common/inc/utils \
         common/inc/buffer_mgmt \
		 ${edma_PATH}/examples/edma3_driver/src
		 
# List all the external components/interfaces, whose interface header files 
#  need to be included for this component
INCLUDE_EXERNAL_INTERFACES = bios xdc hdvpss ipc edma bios_psp ndk nsp iss fc fctools mjpegdec avbtp

# List all the components required by the application
COMP_LIST_m3vpss = hdvpss iss

# XDC CFG File
XDC_CFG_FILE_m3vpss = vpssm3_app.cfg
XDC_CFG_FILE_m3video = videom3_app.cfg
XDC_CFG_FILE_dsp = dsp_app.cfg
XDC_CFG_FILE_a8host = a8_app.cfg

# Common source files and CFLAGS across all platforms and cores
SRCS_COMMON = shared_mem_cfg.c shared_mem_tbl_cfg.c command_queue.c logger.c sys_info.c queue.c \
              buffer_mgmt_if.c buffer_mgmt_ipc.c buffer_mgmt_bios.c buffer_mgmt_utils.c
CFLAGS_LOCAL_COMMON =

# Common source files for the slave cores (vpss-m3, video-m3 and dsp)
SRCS_COMMON_SLAVE = remote_task_defs.c slave_task_mgr.c profile_task_defs.c

# Source files common between video-m3 and a8 (Main application related).
SRCS_COMMON_MASTER_APP = master_app_task.c master_task_mgr.c \
                         uart_menu.c \
                         centaurus_init.c netHooks.c udpHello.c webpage.c \
                         sensor_i2c_config.c ov10630_sensor_config.c mt9m024_sensor_config.c \
                         log_server.c raw_eth_sink.c raw_eth_source.c avb_sink.c raw_ethernet_sink.c

SRCS_m3vpss = vpssm3_app_task.c vpssm3_platform_init.c \
              capture.c captureTvp5158Hdvpss.c captureOv10630Hdvpss.c captureOv10630Iss.c captureMt9p031Iss.c captureMt9v022Iss.c captureMt9m024Hdvpss.c captureFileBased.c \
              display.c \
              graphics.c \
              vicp_img_warp.c \
              platform_supportM3bios.c remapCoordBig.c remapCoordSmall.c vicp_edma3_M3_cfg.c \
              scalar.c \
              m2m_dei.c iresman_apis.c video_decoder.c mjpeg_decoder.c \
              $(SRCS_COMMON_SLAVE)

CFLAGS_LOCAL_m3vpss = 
LNKFLAGS_LOCAL_m3vpss = -i"$(edma_PATH)/packages/ti/sdo/edma3/drv/lib/m3/$(PROFILE_$(CORE))" -l edma3_lld_drv.aem3 \
            -i"$(edma_PATH)/packages/ti/sdo/edma3/rm/lib/ti816x-evm/m3/$(PROFILE_$(CORE))" -l edma3_lld_rm.aem3 \
            -i"$(vision_mid_evfw_PATH)/lib/CENTAURUS" -l imx_op.aem3 \
            -i"$(vision_mid_evfw_PATH)/lib/CENTAURUS" -l cpis_vision.aem3 \
            -i"$(vision_mid_evfw_PATH)/lib/CENTAURUS" -l cpis_imgproc.aem3 \
            -i"$(vision_mid_evfw_PATH)/lib/CENTAURUS" -l cpis_core.aem3 \
            -i"$(vision_mid_evfw_PATH)/lib/CENTAURUS" -l compu.aem3 \
            -i"$(vision_mid_evfw_PATH)/lib/CENTAURUS" -l csl_bios.aem3 \
            -i"$(vision_mid_evfw_PATH)/lib/CENTAURUS" -l DucatiMMSW.platform.osal.aem3 \
            -i"$(vision_mid_evfw_PATH)/lib/CENTAURUS" -l IP_run.aem3 \
            -i"$(vision_mid_evfw_PATH)/lib/CENTAURUS" -l IP_run_bios.aem3 \
            -i"$(vision_mid_evfw_PATH)/lib/CENTAURUS" -l sched.aem3 \
            -i"$(vision_mid_evfw_PATH)/lib/CENTAURUS" -l sched_bios.aem3\
            -i"${DEST_ROOT}/avsk_app/obj/ti814x-evm/m3vpss/$(PROFILE_$(CORE))/avsk_app_configuro/package/cfg/vpssm3_app_pem3.src/ipc" -l ipc.aem3 \
            -i"${DEST_ROOT}/avsk_app/obj/ti814x-evm/m3vpss/$(PROFILE_$(CORE))/avsk_app_configuro/package/cfg/vpssm3_app_pem3.src/sysbios" -l sysbios.aem3

ifeq ($(APP_ON_M3),true)
SRCS_m3video = videom3_app_task.c \
               memory_src.c mjpeg_frames.c mjpeg_slices.c avb_source.c \
               $(SRCS_COMMON_SLAVE) \
               $(SRCS_COMMON_MASTER_APP)
else
SRCS_m3video = videom3_app_task.c crop_frame.c \
               memory_src.c mjpeg_frames.c mjpeg_slices.c avb_source.c \
               $(SRCS_COMMON_SLAVE)
endif

CFLAGS_LOCAL_m3video = 

ifeq ($(APP_ON_M3),true)
LNKFLAGS_LOCAL_m3video = -i"$(bios_psp_PATH)/drivers/i2c/lib/ti814x-evm/m3/$(PROFILE_$(CORE))" -l bios_psp_i2c.aem3 \
-i"$(bios_psp_PATH)/drivers/prcm/lib/ti814x-evm/m3/$(PROFILE_$(CORE))" -l bios_psp_prcm.aem3 \
-i"$(bios_psp_PATH)/drivers/uart/lib/ti814x-evm/m3/$(PROFILE_$(CORE))" -l bios_psp_uart.aem3 \
-i"$(bios_psp_PATH)/platforms/evmDM814x/lib/ti814x-evm/m3/$(PROFILE_$(CORE))" -l bios_psp_platform_evmDM814x.aem3 \
-i"$(edma_PATH)/packages/ti/sdo/edma3/drv/lib/m3/$(PROFILE_$(CORE))" -l edma3_lld_drv.aem3 \
-i"$(nsp_PATH)/packages/ti/drv/centaurus/lib/$(PROFILE_$(CORE))" -l ti.drv.centaurus.aem3 \
-i"${DEST_ROOT}/avsk_app/obj/ti814x-evm/m3video/$(PROFILE_$(CORE))/avsk_app_configuro/package/cfg/videom3_app_pem3.src/ipc" -l ipc.aem3 \
-i"${DEST_ROOT}/avsk_app/obj/ti814x-evm/m3video/$(PROFILE_$(CORE))/avsk_app_configuro/package/cfg/videom3_app_pem3.src/sysbios" -l sysbios.aem3 \
-i"${avbtp_base_PATH}/ieee1722/build/lib" -l avbtpBase.lib \
-i"${edma_PATH}/packages/ti/sdo/edma3/rm/lib/${PLATFORM}/m3/$(PROFILE_$(CORE))" -l edma3_lld_rm.aem3 \
-i"${edma_PATH}/packages/ti/sdo/edma3/drv/sample/lib/${PLATFORM}/m3/$(PROFILE_$(CORE))" -l edma3_lld_drv_sample.aem3
else
LNKFLAGS_LOCAL_m3video = -i"${DEST_ROOT}/avsk_app/obj/ti814x-evm/m3video/$(PROFILE_$(CORE))/avsk_app_configuro/package/cfg/videom3_app_pem3.src/ipc" -l ipc.aem3 \
             -i"${DEST_ROOT}/avsk_app/obj/ti814x-evm/m3video/$(PROFILE_$(CORE))/avsk_app_configuro/package/cfg/videom3_app_pem3.src/sysbios" -l sysbios.aem3
endif

SRCS_dsp = dsp_app_task.c \
           dsp_pass_through.c bayer_to_yuyv.c \
           dsp_vlib.c \
           bop.c grpx_layout_720x480.c grpx_layout_blank_720x480.c \
           vision.c \
		   edma_helper_funcs.c \
           $(SRCS_COMMON_SLAVE)
CFLAGS_LOCAL_dsp = 
LNKFLAGS_LOCAL_dsp = -i"$(avsk_PATH)/demos/avsk_app" -l link_dsp.cmd \
                     -i"$(avsk_PATH)/demos/avsk_app" -l link_dsp_bop.cmd \
                     -i"$(vlib_PATH)/library/c64plus" -l vlib_elf.le64p \
                     -i"$(bop_dsp_only_PATH)/lib" -l rvm_for_centaurus_luma.lib \
                     -i"$(bop_dsp_only_PATH)/lib" -l utils_RVM.oe674 \
                     -i"$(avsk_PATH)/demos/avsk_app/dsp/src/bop" -l VLIB_extractLumaFromYUYV_int.oe674 \
                     -i"${DEST_ROOT}/avsk_app/obj/ti814x-evm/dsp/$(PROFILE_$(CORE))/avsk_app_configuro/package/cfg/dsp_app_pe674.src/ipc" -l ipc.ae674 \
                     -i"${DEST_ROOT}/avsk_app/obj/ti814x-evm/dsp/$(PROFILE_$(CORE))/avsk_app_configuro/package/cfg/dsp_app_pe674.src/sysbios" -l sysbios.ae674
					 
ifneq ($(APP_ON_M3),true)
SRCS_a8host = a8_main.c pcie_sink.c pcie_source.c pcieApp.c \
			  $(SRCS_COMMON_SLAVE) \
              $(SRCS_COMMON_MASTER_APP)
else
SRCS_a8host = a8_main.c crop_frame.c pcie_sink.c pcie_source.c pcieApp.c \
              $(SRCS_COMMON_SLAVE)
endif

CFLAGS_LOCAL_a8host = 

ifneq ($(APP_ON_M3),true)
LNKFLAGS_LOCAL_a8host = -i $(bios_psp_PATH)/drivers/blkmedia/lib/ti814x-evm/a8/$(PROFILE_$(CORE)) -l bios_psp_blkmedia.aea8f\
            -i $(bios_psp_PATH)/drivers/i2c/lib/ti814x-evm/a8/$(PROFILE_$(CORE)) -l bios_psp_i2c.aea8f\
            -i $(bios_psp_PATH)/drivers/mmcsd/lib/ti814x-evm/a8/$(PROFILE_$(CORE)) -l bios_psp_mmcsd.aea8f\
            -i $(bios_psp_PATH)/drivers/prcm/lib/ti814x-evm/a8/$(PROFILE_$(CORE)) -l bios_psp_prcm.aea8f\
            -i $(bios_psp_PATH)/drivers/uart/lib/ti814x-evm/a8/$(PROFILE_$(CORE)) -l bios_psp_uart.aea8f\
            -i $(bios_psp_PATH)/platforms/evmDM814x/lib/ti814x-evm/a8/$(PROFILE_$(CORE)) -l bios_psp_platform_evmDM814x.aea8f\
            -i $(bios_psp_PATH)/drivers/pcie/lib/ti814x-evm/a8/$(PROFILE_$(CORE)) -l bios_psp_pcie.aea8f \
            -l link.cmd -l $(nsp_PATH)/packages/ti/drv/centaurus/lib/$(PROFILE_$(CORE))/ti.drv.centaurus.aea8f \
            -l ${DEST_ROOT}/avsk_app/obj/ti814x-evm/a8host/$(PROFILE_$(CORE))/avsk_app_configuro/package/cfg/a8_app_pea8f.src/ipc/ipc.aea8f \
            -l ${DEST_ROOT}/avsk_app/obj/ti814x-evm/a8host/$(PROFILE_$(CORE))/avsk_app_configuro/package/cfg/a8_app_pea8f.src/sysbios/sysbios.aea8f \
			-l a8/src/performance_unit.obj
else
LNKFLAGS_LOCAL_a8host = -l ${DEST_ROOT}/avsk_app/obj/ti814x-evm/a8host/$(PROFILE_$(CORE))/avsk_app_configuro/package/cfg/a8_app_pea8f.src/ipc/ipc.aea8f \
            -i $(bios_psp_PATH)/platforms/evmDM814x/lib/ti814x-evm/a8/$(PROFILE_$(CORE)) -l bios_psp_platform_evmDM814x.aea8f\
            -i $(bios_psp_PATH)/drivers/pcie/lib/ti814x-evm/a8/$(PROFILE_$(CORE)) -l bios_psp_pcie.aea8f \
            -l ${DEST_ROOT}/avsk_app/obj/ti814x-evm/a8host/$(PROFILE_$(CORE))/avsk_app_configuro/package/cfg/a8_app_pea8f.src/sysbios/sysbios.aea8f
endif


# Core/SoC/platform specific source files and CFLAGS
# Example: 
#   SRCS_<core/SoC/platform-name> = 
#   CFLAGS_LOCAL_<core/SoC/platform-name> =

# Include common make files
include $(ROOTDIR)/makerules/common.mk

# OBJs and libraries are built by using rule defined in rules_<target>.mk 
#     and need not be explicitly specified here

# Nothing beyond this point
