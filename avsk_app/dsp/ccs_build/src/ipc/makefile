vpath % I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/ipc_1_25_00_04/packages/ti/sdo/
vpath %.c I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/

XOPTS = -I"I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/" -Dxdc_target_types__=ti/targets/elf/std.h -Dxdc_target_name__=C674

CCOPTS ?= -mv6740 --abi=eabi -q -mi10 -mo -pdr -pden -pds=238 -pds=880 -pds1110  --program_level_compile -o3 -g --optimize_with_debug

XDC_ROOT  = I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/

IPC_ROOT = I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/ipc_1_25_00_04/packages/ti/sdo/

BUILD_DEFS =  -Dti_sdo_ipc_MessageQ_traceFlag__D=FALSE -Dti_sdo_ipc_family_ti81xx_InterruptDucati_videoProcId__D=65535 -Dti_sdo_ipc_family_ti81xx_InterruptDucati_hostProcId__D=65535 -Dti_sdo_ipc_family_ti81xx_InterruptDucati_vpssProcId__D=65535 -Dti_sdo_ipc_family_ti81xx_InterruptDucati_dspProcId__D=65535 -Dti_sdo_ipc_family_ti81xx_InterruptDucati_ducatiCtrlBaseAddr__D=1073745920 -Dti_sdo_ipc_family_ti81xx_InterruptDucati_mailboxBaseAddr__D=1208778752

BIOS_INC  = -I"I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/bios_6_34_02_18/packages"

IPC_INC    = -I"I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/ipc_1_25_00_04/packages"

IO_INC    = -I"I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/ipc_1_25_00_04/packages"

UTILS_INC    = -I"I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/ipc_1_25_00_04/packages"

CC = I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/bin/cl6x -c $(CCOPTS) -I I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include

ASM = I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/bin/cl6x -c $(CCOPTS) -I I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include

AR = I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/bin/ar6x rq

DEL = cmd.exe /q /c del /f
CP = cmd.exe /q /c copy /Y

define RM
	$(if $(wildcard $1),$(DEL) $1,:)
endef

define ASSEMBLE
	@@echo asme674 $< ...
	@$(ASM) $(BUILD_DEFS) $(XOPTS) $(IPC_INC) $<
endef


all: ipc.ae674

gates_GateAAMonitor_asm.obj: ipc/gates/GateAAMonitor_asm.s64P makefile
	@-$(call RM, $@)
	$(ASSEMBLE) --output_file=gates_GateAAMonitor_asm.obj


Ipc.obj: ipc/Ipc.c utils/NameServer.c utils/NameServerRemoteNull.c utils/MultiProc.c utils/List.c ipc/GateMP.c ipc/MessageQ.c ipc/SharedRegion.c ipc/ListMP.c ipc/Notify.c ipc/heaps/HeapBufMP.c ipc/heaps/HeapMemMP.c ipc/gates/GateHWSpinlock.c ipc/gates/GatePeterson.c ipc/gates/GateMPSupportNull.c ipc/notifyDrivers/NotifyDriverShm.c ipc/family/c6a8149/NotifySetup.c ipc/family/c6a8149/InterruptDsp.c ipc/transports/TransportShm.c ipc/transports/TransportShmSetup.c ipc/nsremote/NameServerRemoteNotify.c makefile
	@-$(call RM, $@)
	@echo cle674 $< ...
	@$(CC) $(BUILD_DEFS) $(XOPTS) $(BIOS_INC) \
	$(IPC_INC) $(IO_INC) $(UTILS_INC) \
	$(IPC_ROOT)ipc/Ipc.c \
	$(IPC_ROOT)utils/NameServer.c \
	$(IPC_ROOT)utils/NameServerRemoteNull.c \
	$(IPC_ROOT)utils/MultiProc.c \
	$(IPC_ROOT)utils/List.c \
	$(IPC_ROOT)ipc/GateMP.c \
	$(IPC_ROOT)ipc/MessageQ.c \
	$(IPC_ROOT)ipc/SharedRegion.c \
	$(IPC_ROOT)ipc/ListMP.c \
	$(IPC_ROOT)ipc/Notify.c \
	$(IPC_ROOT)ipc/heaps/HeapBufMP.c \
	$(IPC_ROOT)ipc/heaps/HeapMemMP.c \
	$(IPC_ROOT)ipc/gates/GateHWSpinlock.c \
	$(IPC_ROOT)ipc/gates/GatePeterson.c \
	$(IPC_ROOT)ipc/gates/GateMPSupportNull.c \
	$(IPC_ROOT)ipc/notifyDrivers/NotifyDriverShm.c \
	$(IPC_ROOT)ipc/family/c6a8149/NotifySetup.c \
	$(IPC_ROOT)ipc/family/c6a8149/InterruptDsp.c \
	$(IPC_ROOT)ipc/transports/TransportShm.c \
	$(IPC_ROOT)ipc/transports/TransportShmSetup.c \
	$(IPC_ROOT)ipc/nsremote/NameServerRemoteNotify.c \

ipc.ae674: Ipc.obj gates_GateAAMonitor_asm.obj
	@echo are674 $^ ...
	@-$(call RM, $@)
	@$(AR) $@ $^

clean:
	@-$(call RM, ipc.ae674)
	@-$(call RM, Ipc.obj)
	@-$(call RM, gates_GateAAMonitor_asm.obj)
