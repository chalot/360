################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
drivers/spi/omap3_spi.obj: I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/omap3_spi.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"c:/ti/ccsv6/tools/compiler/c6000_7.4.8/bin/cl6x" -mv6740 --abi=eabi -O3 -g --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/bop_dsp/include" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/bop_dsp" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/VLIB_2_2/include" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc/pass_through" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc/bop" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc/vlib" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/utils" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/buffer_mgmt" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/ti_SRV_LIB/include" --gcc --define=PLATFORM_EVM_SI --define=LOGGER_ENABLE --define=APP_ON_M3 --define=DSP_COMP_TASKS --display_error_number --diag_warning=225 --debug_software_pipeline --optimizer_interlist --opt_for_speed=5 -k --preproc_with_compile --preproc_dependency="drivers/spi/omap3_spi.pp" --obj_directory="drivers/spi" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

drivers/spi/spansion.obj: I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"c:/ti/ccsv6/tools/compiler/c6000_7.4.8/bin/cl6x" -mv6740 --abi=eabi -O3 -g --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/bop_dsp/include" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/bop_dsp" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/VLIB_2_2/include" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc/pass_through" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc/bop" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc/vlib" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/utils" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/buffer_mgmt" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/ti_SRV_LIB/include" --gcc --define=PLATFORM_EVM_SI --define=LOGGER_ENABLE --define=APP_ON_M3 --define=DSP_COMP_TASKS --display_error_number --diag_warning=225 --debug_software_pipeline --optimizer_interlist --opt_for_speed=5 -k --preproc_with_compile --preproc_dependency="drivers/spi/spansion.pp" --obj_directory="drivers/spi" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

drivers/spi/spi_flash.obj: I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spi_flash.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"c:/ti/ccsv6/tools/compiler/c6000_7.4.8/bin/cl6x" -mv6740 --abi=eabi -O3 -g --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/bop_dsp/include" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/bop_dsp" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/VLIB_2_2/include" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc/pass_through" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc/bop" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc/vlib" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/utils" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/buffer_mgmt" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/ti_SRV_LIB/include" --gcc --define=PLATFORM_EVM_SI --define=LOGGER_ENABLE --define=APP_ON_M3 --define=DSP_COMP_TASKS --display_error_number --diag_warning=225 --debug_software_pipeline --optimizer_interlist --opt_for_speed=5 -k --preproc_with_compile --preproc_dependency="drivers/spi/spi_flash.pp" --obj_directory="drivers/spi" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

drivers/spi/winbond.obj: I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"c:/ti/ccsv6/tools/compiler/c6000_7.4.8/bin/cl6x" -mv6740 --abi=eabi -O3 -g --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/bop_dsp/include" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/bop_dsp" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/VLIB_2_2/include" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc/pass_through" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc/bop" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/inc/vlib" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/utils" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/buffer_mgmt" --include_path="I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/ti_SRV_LIB/include" --gcc --define=PLATFORM_EVM_SI --define=LOGGER_ENABLE --define=APP_ON_M3 --define=DSP_COMP_TASKS --display_error_number --diag_warning=225 --debug_software_pipeline --optimizer_interlist --opt_for_speed=5 -k --preproc_with_compile --preproc_dependency="drivers/spi/winbond.pp" --obj_directory="drivers/spi" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


