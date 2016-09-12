################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := c:/ti/ccsv6/tools/compiler/c6000_7.4.8

ORDERED_OBJS += \
$(GEN_CMDS__FLAG) \
"./utility/remote_debug_server.obj" \
"./src/vlib/dsp_vlib.obj" \
"./src/dsp_app_task.obj" \
"./src/tsc_h.obj" \
"./src/bop/edma_helper_funcs.obj" \
"./drivers/spi/omap3_spi.obj" \
"./drivers/spi/spansion.obj" \
"./drivers/spi/spi_flash.obj" \
"./drivers/spi/winbond.obj" \
"./common/utils/queue.obj" \
"./common/command_queue.obj" \
"./common/logger.obj" \
"./common/shared_mem_cfg.obj" \
"./common/shared_mem_tbl_cfg.obj" \
"./common/sys_info.obj" \
"I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/ti_SRV_LIB/ti_srv_lib.lib" \
-l"rts6740_elf.lib" \
-llink_dsp.cmd \
-lti_srv_lib.lib \
-lvlib_elf.le64p \
-lrvm_for_centaurus_luma.lib \
-lutils_RVM.oe674 \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include utility/subdir_vars.mk
-include ti_SRV_LIB/subdir_vars.mk
-include src/vlib/subdir_vars.mk
-include src/subdir_vars.mk
-include src/bop/subdir_vars.mk
-include drivers/spi/subdir_vars.mk
-include common/utils/subdir_vars.mk
-include common/subdir_vars.mk
-include subdir_rules.mk
-include utility/subdir_rules.mk
-include ti_SRV_LIB/subdir_rules.mk
-include src/vlib/subdir_rules.mk
-include src/subdir_rules.mk
-include src/bop/subdir_rules.mk
-include drivers/spi/subdir_rules.mk
-include common/utils/subdir_rules.mk
-include common/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
avsk_app_dsp_debug.xe674 \

EXE_OUTPUTS__QUOTED += \
"avsk_app_dsp_debug.xe674" \

BIN_OUTPUTS += \
avsk_app_dsp_debug.hex \

BIN_OUTPUTS__QUOTED += \
"avsk_app_dsp_debug.hex" \


# All Target
all: avsk_app_dsp_debug.xe674

# Tool invocations
avsk_app_dsp_debug.xe674: $(OBJS) $(LIB_SRCS) $(GEN_CMDS)
	@echo 'Building target: $@'
	@echo 'Invoking: C6000 Linker'
	"c:/ti/ccsv6/tools/compiler/c6000_7.4.8/bin/cl6x" -mv6740 --abi=eabi -O3 -g --gcc --define=PLATFORM_EVM_SI --define=LOGGER_ENABLE --define=APP_ON_M3 --define=DSP_COMP_TASKS --display_error_number --diag_warning=225 --debug_software_pipeline --optimizer_interlist --opt_for_speed=5 -k -z -m"avsk_app_dsp_debug.map" -i"I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/lib" -i"I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/ti_SRV_LIB" -i -i"I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include" -i"I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/src/bop/" -i"I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/VLIB_2_2/library/c64plus" -i"I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/bop_dsp/lib" -i"../../../" --reread_libs --warn_sections --xml_link_info="avsk_app_dsp_debug_linkInfo.xml" --undef_sym=_c_int00 -o "avsk_app_dsp_debug.xe674" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

avsk_app_dsp_debug.hex: $(EXE_OUTPUTS)
	@echo 'Invoking: C6000 Hex Utility'
	"c:/ti/ccsv6/tools/compiler/c6000_7.4.8/bin/hex6x"  -o "avsk_app_dsp_debug.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(GEN_MISC_FILES__QUOTED)$(EXE_OUTPUTS__QUOTED)$(GEN_FILES__QUOTED)$(BIN_OUTPUTS__QUOTED)$(GEN_OPTS__QUOTED)$(GEN_CMDS__QUOTED)
	-$(RMDIR) $(GEN_MISC_DIRS__QUOTED)
	-$(RM) "utility\remote_debug_server.pp" "src\vlib\dsp_vlib.pp" "src\dsp_app_task.pp" "src\bop\edma_helper_funcs.pp" "drivers\spi\omap3_spi.pp" "drivers\spi\spansion.pp" "drivers\spi\spi_flash.pp" "drivers\spi\winbond.pp" "common\utils\queue.pp" "common\command_queue.pp" "common\logger.pp" "common\shared_mem_cfg.pp" "common\shared_mem_tbl_cfg.pp" "common\sys_info.pp" 
	-$(RM) "utility\remote_debug_server.obj" "src\vlib\dsp_vlib.obj" "src\dsp_app_task.obj" "src\tsc_h.obj" "src\bop\edma_helper_funcs.obj" "drivers\spi\omap3_spi.obj" "drivers\spi\spansion.obj" "drivers\spi\spi_flash.obj" "drivers\spi\winbond.obj" "common\utils\queue.obj" "common\command_queue.obj" "common\logger.obj" "common\shared_mem_cfg.obj" "common\shared_mem_tbl_cfg.obj" "common\sys_info.obj" 
	-$(RM) "src\tsc_h.pp" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

