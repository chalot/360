;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v7.4.8 *
;* Date/Time created: Mon Sep 12 07:22:32 2016                                *
;******************************************************************************
	.compiler_opts --abi=eabi --c64p_l1d_workaround=off --endian=little --hll_source=on --long_precision_bits=32 --mem_model:code=near --mem_model:const=data --mem_model:data=far_aggregates --object_format=elf --silicon_version=6740 --symdebug:dwarf --symdebug:dwarf_version=3 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C674x                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o3, no -ms                        *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far Aggregate Data                                   *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Enabled with threshold = 0                           *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug                                          *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C6x C/C++ Codegen PC v7.4.8 Copyright (c) 1996-2014 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\ccs_build\M3-Master")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("spi_claim_bus")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("spi_claim_bus")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x70)
	.dwattr $C$DW$1, DW_AT_decl_column(0x05)
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$265)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("spi_release_bus")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("spi_release_bus")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$3, DW_AT_decl_column(0x06)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$265)
	.dwendtag $C$DW$3


$C$DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("spi_xfer")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("spi_xfer")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x93)
	.dwattr $C$DW$5, DW_AT_decl_column(0x06)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$265)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$11)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$133)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$3)
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$5


$C$DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x101)
	.dwattr $C$DW$11, DW_AT_decl_column(0x12)
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$104)
$C$DW$13	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag $C$DW$11


$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("spi_flash_cmd")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("spi_flash_cmd")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash_internal.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x18)
	.dwattr $C$DW$14, DW_AT_decl_column(0x05)
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$265)
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$6)
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$3)
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$14


$C$DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("spi_flash_cmd_write")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("spi_flash_cmd_write")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash_internal.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0x25)
	.dwattr $C$DW$19, DW_AT_decl_column(0x05)
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$265)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$428)
$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$11)
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$133)
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$19


$C$DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("spi_flash_read_common")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("spi_flash_read_common")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash_internal.h")
	.dwattr $C$DW$25, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$25, DW_AT_decl_column(0x05)
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$266)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$428)
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$11)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$3)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$25


$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("spi_claim_bus_write_fast")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("spi_claim_bus_write_fast")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0x144)
	.dwattr $C$DW$31, DW_AT_decl_column(0x09)

$C$DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("spi_xfer_write_fast")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("spi_xfer_write_fast")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$32, DW_AT_declaration
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$32, DW_AT_decl_line(0x145)
	.dwattr $C$DW$32, DW_AT_decl_column(0x09)

$C$DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("spi_claim_bus_back")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("spi_claim_bus_back")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$33, DW_AT_decl_line(0x146)
	.dwattr $C$DW$33, DW_AT_decl_column(0x09)

$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("malloc")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("malloc")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$34, DW_AT_declaration
	.dwattr $C$DW$34, DW_AT_external
	.dwattr $C$DW$34, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$34, DW_AT_decl_line(0x1ca)
	.dwattr $C$DW$34, DW_AT_decl_column(0x09)
	.sect	".const:spansion_spi_flash_table"
	.clink
	.align	8
	.elfsym	spansion_spi_flash_table,SYM_SIZE(128)
spansion_spi_flash_table:
	.bits	531,16			; spansion_spi_flash_table[0].idcode1 @ 0
	.bits	0,16			; spansion_spi_flash_table[0].idcode2 @ 16
	.bits	256,16			; spansion_spi_flash_table[0].page_size @ 32
	.bits	256,16			; spansion_spi_flash_table[0].pages_per_sector @ 48
	.bits	16,16			; spansion_spi_flash_table[0].nr_sectors @ 64
	.bits	0,16
	.bits	$C$SL1,32		; spansion_spi_flash_table[0].name @ 96
	.bits	532,16			; spansion_spi_flash_table[1].idcode1 @ 128
	.bits	0,16			; spansion_spi_flash_table[1].idcode2 @ 144
	.bits	256,16			; spansion_spi_flash_table[1].page_size @ 160
	.bits	256,16			; spansion_spi_flash_table[1].pages_per_sector @ 176
	.bits	32,16			; spansion_spi_flash_table[1].nr_sectors @ 192
	.bits	0,16
	.bits	$C$SL2,32		; spansion_spi_flash_table[1].name @ 224
	.bits	533,16			; spansion_spi_flash_table[2].idcode1 @ 256
	.bits	0,16			; spansion_spi_flash_table[2].idcode2 @ 272
	.bits	256,16			; spansion_spi_flash_table[2].page_size @ 288
	.bits	256,16			; spansion_spi_flash_table[2].pages_per_sector @ 304
	.bits	64,16			; spansion_spi_flash_table[2].nr_sectors @ 320
	.bits	0,16
	.bits	$C$SL3,32		; spansion_spi_flash_table[2].name @ 352
	.bits	534,16			; spansion_spi_flash_table[3].idcode1 @ 384
	.bits	0,16			; spansion_spi_flash_table[3].idcode2 @ 400
	.bits	256,16			; spansion_spi_flash_table[3].page_size @ 416
	.bits	256,16			; spansion_spi_flash_table[3].pages_per_sector @ 432
	.bits	128,16			; spansion_spi_flash_table[3].nr_sectors @ 448
	.bits	0,16
	.bits	$C$SL4,32		; spansion_spi_flash_table[3].name @ 480
	.bits	8216,16			; spansion_spi_flash_table[4].idcode1 @ 512
	.bits	769,16			; spansion_spi_flash_table[4].idcode2 @ 528
	.bits	256,16			; spansion_spi_flash_table[4].page_size @ 544
	.bits	256,16			; spansion_spi_flash_table[4].pages_per_sector @ 560
	.bits	256,16			; spansion_spi_flash_table[4].nr_sectors @ 576
	.bits	0,16
	.bits	$C$SL5,32		; spansion_spi_flash_table[4].name @ 608
	.bits	8216,16			; spansion_spi_flash_table[5].idcode1 @ 640
	.bits	768,16			; spansion_spi_flash_table[5].idcode2 @ 656
	.bits	256,16			; spansion_spi_flash_table[5].page_size @ 672
	.bits	1024,16			; spansion_spi_flash_table[5].pages_per_sector @ 688
	.bits	64,16			; spansion_spi_flash_table[5].nr_sectors @ 704
	.bits	0,16
	.bits	$C$SL6,32		; spansion_spi_flash_table[5].name @ 736
	.bits	8216,16			; spansion_spi_flash_table[6].idcode1 @ 768
	.bits	19713,16			; spansion_spi_flash_table[6].idcode2 @ 784
	.bits	256,16			; spansion_spi_flash_table[6].page_size @ 800
	.bits	256,16			; spansion_spi_flash_table[6].pages_per_sector @ 816
	.bits	256,16			; spansion_spi_flash_table[6].nr_sectors @ 832
	.bits	0,16
	.bits	$C$SL7,32		; spansion_spi_flash_table[6].name @ 864
	.bits	537,16			; spansion_spi_flash_table[7].idcode1 @ 896
	.bits	19713,16			; spansion_spi_flash_table[7].idcode2 @ 912
	.bits	256,16			; spansion_spi_flash_table[7].page_size @ 928
	.bits	256,16			; spansion_spi_flash_table[7].pages_per_sector @ 944
	.bits	512,16			; spansion_spi_flash_table[7].nr_sectors @ 960
	.bits	0,16
	.bits	$C$SL8,32		; spansion_spi_flash_table[7].name @ 992

$C$DW$35	.dwtag  DW_TAG_variable, DW_AT_name("spansion_spi_flash_table")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("spansion_spi_flash_table")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$879)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_addr spansion_spi_flash_table]
	.dwattr $C$DW$35, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$35, DW_AT_decl_line(0x63)
	.dwattr $C$DW$35, DW_AT_decl_column(0x2f)
;	c:\ti\ccsv6\tools\compiler\c6000_7.4.8\bin\opt6x.exe C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\052002 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\052004 
	.sect	".text"
	.clink
	.global	spi_flash_probe_spansion

$C$DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("spi_flash_probe_spansion")
	.dwattr $C$DW$36, DW_AT_low_pc(spi_flash_probe_spansion)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("spi_flash_probe_spansion")
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$266)
	.dwattr $C$DW$36, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0x1b3)
	.dwattr $C$DW$36, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$36, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$36, DW_AT_decl_line(0x1b3)
	.dwattr $C$DW$36, DW_AT_decl_column(0x13)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(0x28)
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 436,column 1,is_stmt,address spi_flash_probe_spansion,isa 0

	.dwfde $C$DW$CIE, spi_flash_probe_spansion
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("spi")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$265)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg4]
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("idcode")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("idcode")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$429)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: spi_flash_probe_spansion                                    *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B10,SP,A16,A17,A18,A19,A20,A21,A22,  *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,B10,DP,SP,A16,A17,A18,A19,A20,A21,   *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Local Frame Size  : 16 Args + 0 Auto + 24 Save = 40 byte                 *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
spi_flash_probe_spansion:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 30
;** 442	-----------------------    jedec = (int)idcode[1]<<8|idcode[2];
;** 443	-----------------------    ext_jedec = (int)idcode[3]<<8|idcode[4];
;** 445	-----------------------    L$1 = 8;
;**  	-----------------------    U$27 = &spansion_spi_flash_table[0];
;** 445	-----------------------    i = 0u;
;**  	-----------------------    #pragma MUST_ITERATE(1, 8, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;**	-----------------------g2:
;** 446	-----------------------    params = U$27;
;** 447	-----------------------    if ( (*params).idcode1 != jedec ) goto g4;
;** 449	-----------------------    if ( (*params).idcode2 == ext_jedec ) goto g5;
;**	-----------------------g4:
;** 445	-----------------------    U$27 += 16;
;** 445	-----------------------    ++i;
;** 445	-----------------------    if ( L$1 = L$1-1 ) goto g2;
	.dwcfi	cfa_offset, 0
           STW     .D2T2   B10,*SP--(8)      ; |436| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 26, 0
           STW     .D2T2   B3,*SP--(8)       ; |436| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 19, -8
           STW     .D2T1   A10,*SP--(24)     ; |436| 
	.dwcfi	cfa_offset, 40
	.dwcfi	save_reg_to_mem, 10, -16
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("$O$C10")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("$O$C10")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$421)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg22]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("$O$C11")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("$O$C11")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg21]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("idcode")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("idcode")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$430)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg20]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("spi")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$882)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg10]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("params")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("params")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$260)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg26]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("spsn")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("spsn")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$877)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg0]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg8]
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("jedec")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("jedec")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg7]
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("ext_jedec")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("ext_jedec")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg6]
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("$O$L1")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("$O$L1")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg20]
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("$O$U27")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("$O$U27")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$260)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg5]
           MV      .L1     A4,A10            ; |436| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 442,column 2,is_stmt,isa 0
           LDBU    .D2T2   *+B4(1),B5        ; |442| 
           LDBU    .D2T2   *+B4(2),B6        ; |442| 
           NOP             3
           SHL     .S1X    B5,8,A3           ; |442| 
           OR      .L1X    B6,A3,A3          ; |442| 
           EXTU    .S1     A3,16,16,A7       ; |442| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 443,column 2,is_stmt,isa 0
           LDBU    .D2T2   *+B4(3),B5        ; |443| 
           LDBU    .D2T1   *+B4(4),A3        ; |443| 
           NOP             3
           SHL     .S2     B5,8,B4           ; |443| 
           NOP             1
           OR      .L1X    A3,B4,A3          ; |443| 
           EXTU    .S1     A3,16,16,A6       ; |443| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 445,column 14,is_stmt,isa 0
           MVKL    .S1     spansion_spi_flash_table,A5

           MVKH    .S1     spansion_spi_flash_table,A5
||         MVK     .L2     0x8,B4            ; |445| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 445,column 7,is_stmt,isa 0
           MV      .L1     A5,A16            ; |446| 
           LDHU    .D1T1   *A16,A9           ; |447| (P) <0,1>  ^ 
           DINT                              ; interrupts off
           MV      .L1     A5,A3             ; |446| 
           ZERO    .L1     A8                ; |445| 
           NOP             1
           CMPEQ   .L1     A9,A7,A0          ; |447| (P) <0,6>  ^ 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c
;*      Loop source line                 : 445
;*      Loop opening brace source line   : 445
;*      Loop closing brace source line   : 451
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 8                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 15
;*      Unpartitioned Resource Bound     : 3
;*      Partitioned Resource Bound(*)    : 4
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        1     
;*      .S units                     1        1     
;*      .D units                     0        2     
;*      .M units                     0        0     
;*      .X cross paths               0        0     
;*      .T address paths             1        1     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          9        3     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        1     
;*      Bound(.L .S .D .LS .LSD)     4*       3     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 15 Unsafe schedule for irregular loop
;*         ii = 15 Unsafe schedule for irregular loop
;*         ii = 15 Unsafe schedule for irregular loop
;*         ii = 15 Did not find schedule
;*         ii = 16 Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |*  * *****      *               |    *                           |
;*       1: |*    *****                      |    *                           |
;*       2: |*    *****                      |    *                           |
;*       3: |*    *****                      |    *                           |
;*       4: |**   *****                      |    *                           |
;*       5: |** * *****                      |    *                           |
;*       6: |**   *****                      |    *                           |
;*       7: | *   *****                      |    *                           |
;*       8: | *   *****                      |    *                           |
;*       9: | *   *****                      |*   *                           |
;*      10: |     *****      *               |*   *                           |
;*      11: |     *****      *               |    *                           |
;*      12: |     *****      *               |    *                           |
;*      13: |     *****      *               |    *                           |
;*      14: |     *****      *               |    *                           |
;*      15: |   * *****      *               |    *                           |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Collapsed epilog stages       : 1
;*      Prolog not removed
;*      Collapsed prolog stages       : 0
;*
;*      Minimum required memory pad   : 0 bytes
;*
;*      For further improvement on this loop, try option -mh224
;*
;*      Minimum safe trip count       : 1
;*      Min. prof. trip count  (est.) : 3
;*
;*      Mem bank conflicts/iter(est.) : { min 0.000, est 0.000, max 0.000 }
;*      Mem bank perf. penalty (est.) : 0.0%
;*
;*
;*      Total cycles (est.)         : 7 + trip_cnt * 16 = Between 23 and 135        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MVK             0x1,B0
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C44:
;*   0              MV      .L1     A5,A16            ; |446|  ^ 
;*   1      [ B0]   LDHU    .D1T1   *A16,A9           ; |447|  ^ 
;*   2              NOP             3
;*   5              MV      .L1     A16,A3            ; |446| Split a long life(pre-sched)
;*   6              CMPEQ   .L1     A9,A7,A0          ; |447|  ^ 
;*   7      [ A0]   LDHU    .D1T1   *+A3(2),A3        ; |449|  ^ 
;*     ||           MVD     .M1     A16,A4            ; |445| Collapse epilog
;*   8              NOP             2
;*  10              MV      .L1     A0,A1             ; |447| Split a long life(pre-sched)
;*  11              NOP             1
;*  12      [ A1]   CMPEQ   .L1     A3,A6,A1          ; |449|  ^ 
;*  13      [!A0]   ZERO    .L1     A1                ; |449|  ^ Define a twin register
;*  14      [!A1]   ADD     .L1     1,A8,A8           ; |445| 
;*     ||   [!A1]   SUB     .L2     B4,1,B4           ; |445| 
;*  15      [!A1]   ADDK    .S1     16,A5             ; |445|  ^ Define a twin register
;*     ||           MV      .L2     B4,B0             ; |445| 
;*  16      [ A1]   ZERO    .L2     B0                ; |445| 
;*  17      [ B0]   B       .S2     $C$C44            ; |445| 
;*  18              NOP             5
;*  23              ; BRANCHCC OCCURS {$C$C44}        ; |445| 
;*
;*       RESTORE CODE
;*
;*                  MV              A4,A16
;*----------------------------------------------------------------------------*
$C$L1:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
$C$L2:    ; PIPED LOOP KERNEL
$C$DW$L$spi_flash_probe_spansion$3$B:
;          EXCLUSIVE CPU CYCLES: 16

           MVD     .M1     A16,A4            ; |445| <0,7> Collapse epilog
|| [ A0]   LDHU    .D1T1   *+A3(2),A3        ; |449| <0,7>  ^ 

           NOP             2
           MV      .L1     A0,A1             ; |447| <0,10> Split a long life(pre-sched)
           NOP             1
   [ A1]   CMPEQ   .L1     A3,A6,A1          ; |449| <0,12>  ^ 
   [!A0]   ZERO    .L1     A1                ; |449| <0,13>  ^ Define a twin register

   [!A1]   ADD     .L1     1,A8,A8           ; |445| <0,14> 
|| [!A1]   SUB     .L2     B4,1,B4           ; |445| <0,14> 

   [!A1]   ADDK    .S1     16,A5             ; |445| <0,15>  ^ Define a twin register
||         MV      .L2     B4,B0             ; |445| <0,15> 

   [ A1]   ZERO    .L2     B0                ; |445| <0,16> 
||         MV      .L1     A5,A16            ; |446| <1,0>  ^ 

   [ B0]   BNOP    .S2     $C$L2,3           ; |445| <0,17> 
|| [ B0]   LDHU    .D1T1   *A16,A9           ; |447| <1,1>  ^ 

           MV      .L1     A16,A3            ; |446| <1,5> Split a long life(pre-sched)
           CMPEQ   .L1     A9,A7,A0          ; |447| <1,6>  ^ 
$C$DW$L$spi_flash_probe_spansion$3$E:
;** --------------------------------------------------------------------------*
$C$L3:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8
;**	-----------------------g5:
;** 453	-----------------------    if ( i != 8u ) goto g7;

           MV      .L2X    A4,B10
||         RINT                              ; interrupts on

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 453,column 2,is_stmt,isa 0
           CMPEQ   .L1     A8,8,A0           ; |453| 
   [!A0]   BNOP    .S1     $C$L4,5           ; |453| 
           ; BRANCHCC OCCURS {$C$L4}         ; |453| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
;** 454	-----------------------    xdc_runtime_System_printf__E("SF: Unsupported SPANSION ID %04x %04x\n", (int)jedec, (int)ext_jedec);
;** 455	-----------------------    return NULL;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 454,column 3,is_stmt,isa 0
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$50, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |454| 
           MVKL    .S2     $C$SL9+0,B4
           STW     .D2T1   A6,*+SP(12)       ; |454| 
           MVKH    .S2     $C$SL9+0,B4
           STW     .D2T1   A7,*+SP(8)        ; |454| 

           STW     .D2T2   B4,*+SP(4)        ; |454| 
||         ADDKPC  .S2     $C$RL0,B3,0       ; |454| 

$C$RL0:    ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |454| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 455,column 3,is_stmt,isa 0

           BNOP    .S1     $C$L6,5           ; |455| 
||         ZERO    .L1     A4                ; |455| 

           ; BRANCH OCCURS {$C$L6}           ; |455| 
;** --------------------------------------------------------------------------*
$C$L4:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g7:
;** 458	-----------------------    spsn = (struct pansion_spi_flash *)malloc(32u);
;** 459	-----------------------    if ( spsn == NULL ) goto g9;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 458,column 2,is_stmt,isa 0
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("malloc")
	.dwattr $C$DW$51, DW_AT_TI_call
           CALL    .S1     malloc            ; |458| 
           ADDKPC  .S2     $C$RL1,B3,3       ; |458| 
           MVK     .S1     0x20,A4           ; |458| 
$C$RL1:    ; CALL OCCURS {malloc} {0}        ; |458| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A4,A0             ; |458| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 459,column 2,is_stmt,isa 0
   [!A0]   BNOP    .S1     $C$L5,5           ; |459| 
           ; BRANCHCC OCCURS {$C$L5}         ; |459| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 37
;** 464	-----------------------    (*spsn).params = params;
;** 465	-----------------------    (*spsn).flash.spi = spi;
;** 466	-----------------------    (*spsn).flash.name = C$10 = (*params).name;
;** 468	-----------------------    (*spsn).flash.write = &spansion_write;
;** 469	-----------------------    (*spsn).flash.erase = &spansion_erase;
;** 470	-----------------------    (*spsn).flash.read = &spansion_read_fast;
;** 471	-----------------------    C$11 = (*params).page_size;
;** 471	-----------------------    (*spsn).flash.size = _mpyu(C$11, (*params).pages_per_sector)*(*params).nr_sectors;
;** 474	-----------------------    xdc_runtime_System_printf__E("SF: Detected %s with page size %u, total %u bytes\n", C$10, (int)C$11, (*spsn).flash.size);
;** 477	-----------------------    return (struct pi_flash *)spsn;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 464,column 2,is_stmt,isa 0
           STW     .D1T2   B10,*+A4(28)      ; |464| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 465,column 2,is_stmt,isa 0
           STW     .D1T1   A10,*A4           ; |465| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 466,column 2,is_stmt,isa 0
           LDW     .D2T2   *+B10(12),B6      ; |466| 
           NOP             4
           STW     .D1T2   B6,*+A4(4)        ; |466| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 468,column 2,is_stmt,isa 0
           MVKL    .S1     spansion_write,A3
           MVKH    .S1     spansion_write,A3
           STW     .D1T1   A3,*+A4(20)       ; |468| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 469,column 2,is_stmt,isa 0
           MVKL    .S1     spansion_erase,A3
           MVKH    .S1     spansion_erase,A3
           STW     .D1T1   A3,*+A4(24)       ; |469| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 470,column 2,is_stmt,isa 0
           MVKL    .S1     spansion_read_fast,A3
           MVKH    .S1     spansion_read_fast,A3
           STW     .D1T1   A3,*+A4(16)       ; |470| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 471,column 2,is_stmt,isa 0
           LDHU    .D2T2   *+B10(6),B4       ; |471| 
           LDHU    .D2T2   *+B10(4),B5       ; |471| 
           LDHU    .D2T2   *+B10(8),B7       ; |471| 
           NOP             3
           MPYU    .M2     B5,B4,B4          ; |471| 
           NOP             1
           MPY32   .M2     B7,B4,B4          ; |471| 
           NOP             3
           STW     .D1T2   B4,*+A4(8)        ; |471| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 474,column 2,is_stmt,isa 0

           STW     .D2T2   B6,*+SP(8)        ; |474| 
||         MV      .L1     A4,A10            ; |474| 

$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x04)
	.dwattr $C$DW$52, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$52, DW_AT_TI_call

           LDW     .D1T1   *+A10(8),A3       ; |474| 
||         CALL    .S1     xdc_runtime_System_printf__E ; |474| 

           MVKL    .S2     $C$SL10+0,B4
           STW     .D2T2   B5,*+SP(12)       ; |474| 
           MVKH    .S2     $C$SL10+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |474| 

           STW     .D2T1   A3,*+SP(16)       ; |474| 
||         ADDKPC  .S2     $C$RL2,B3,0       ; |474| 

$C$RL2:    ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |474| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 477,column 2,is_stmt,isa 0

           BNOP    .S1     $C$L6,5           ; |477| 
||         MV      .L1     A10,A4

           ; BRANCH OCCURS {$C$L6}           ; |477| 
;** --------------------------------------------------------------------------*
$C$L5:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g9:
;** 460	-----------------------    xdc_runtime_System_printf__E("SF: Failed to allocate memory\n");
;** 461	-----------------------    return NULL;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 460,column 3,is_stmt,isa 0
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$53, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |460| 
           MVKL    .S2     $C$SL11+0,B4
           MVKH    .S2     $C$SL11+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |460| 
           ADDKPC  .S2     $C$RL3,B3,1       ; |460| 
$C$RL3:    ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |460| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 461,column 3,is_stmt,isa 0
           ZERO    .L1     A4                ; |461| 
;** --------------------------------------------------------------------------*
$C$L6:    
;          EXCLUSIVE CPU CYCLES: 12
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 478,column 1,is_stmt,isa 0
           LDW     .D2T1   *++SP(24),A10     ; |478| 
	.dwcfi	cfa_offset, 16
	.dwcfi	restore_reg, 10
           LDW     .D2T2   *++SP(8),B3
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 19
           LDW     .D2T2   *++SP(8),B10      ; |478| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 26
	.dwcfi	cfa_offset, 0
           NOP             3
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3}  

$C$DW$55	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$55, DW_AT_name("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\ccs_build\M3-Master\spansion.asm:$C$L2:1:1473636152")
	.dwattr $C$DW$55, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0x1bd)
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x1c3)
$C$DW$56	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$56, DW_AT_low_pc($C$DW$L$spi_flash_probe_spansion$3$B)
	.dwattr $C$DW$56, DW_AT_high_pc($C$DW$L$spi_flash_probe_spansion$3$E)
	.dwendtag $C$DW$55

	.dwattr $C$DW$36, DW_AT_TI_end_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0x1de)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

	.sect	".text"
	.clink

$C$DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("spansion_write")
	.dwattr $C$DW$57, DW_AT_low_pc(spansion_write)
	.dwattr $C$DW$57, DW_AT_high_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("spansion_write")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$57, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$57, DW_AT_TI_begin_line(0x10c)
	.dwattr $C$DW$57, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$57, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$57, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$57, DW_AT_decl_column(0x0c)
	.dwattr $C$DW$57, DW_AT_TI_max_frame_size(0x78)
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 270,column 1,is_stmt,address spansion_write,isa 0

	.dwfde $C$DW$CIE, spansion_write
$C$DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("flash")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("flash")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$266)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg4]
$C$DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("offset")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("offset")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg20]
$C$DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg6]
$C$DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_reg22]

;******************************************************************************
;* FUNCTION NAME: spansion_write                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,   *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Local Frame Size  : 32 Args + 32 Auto + 56 Save = 120 byte               *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
spansion_write:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 25
;** 281	-----------------------    page_size = (*(*(struct pansion_spi_flash *)flash).params).page_size;
;** 282	-----------------------    page_addr = offset/(unsigned)page_size;
;** 283	-----------------------    byte_addr = offset%(unsigned)page_size;
;** 194	-----------------------    spi = (*flash).spi;  // [9]
;** 198	-----------------------    cmd[0] = K$19 = 23;  // [9]
;** 199	-----------------------    *(C$33 = &cmd[1]) = 128;  // [9]
;** 201	-----------------------    spi_claim_bus(spi);  // [9]
;** 202	-----------------------    ret = spi_flash_cmd_write(spi, &cmd, 1u, (const void *)C$33, 1u);  // [9]
;** 203	-----------------------    spi_release_bus(spi);  // [9]
;** 286	-----------------------    if ( ret >= 0 ) goto g3;
	.dwcfi	cfa_offset, 0
           STW     .D2T1   A15,*SP--(8)      ; |270| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 15, 0
           STDW    .D2T2   B13:B12,*SP--     ; |270| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 29, -4
	.dwcfi	save_reg_to_mem, 28, -8
           STDW    .D2T2   B11:B10,*SP--     ; |270| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 27, -12
	.dwcfi	save_reg_to_mem, 26, -16
           STW     .D2T2   B3,*SP--(8)       ; |270| 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 19, -24
           STW     .D2T1   A14,*SP--(8)      ; |270| 
	.dwcfi	cfa_offset, 40
	.dwcfi	save_reg_to_mem, 14, -32
           STDW    .D2T1   A13:A12,*SP--     ; |270| 
	.dwcfi	cfa_offset, 48
	.dwcfi	save_reg_to_mem, 13, -36
	.dwcfi	save_reg_to_mem, 12, -40
           STDW    .D2T1   A11:A10,*SP--     ; |270| 
	.dwcfi	cfa_offset, 56
	.dwcfi	save_reg_to_mem, 11, -44
	.dwcfi	save_reg_to_mem, 10, -48
           ADDK    .S2     -64,SP            ; |270| 
	.dwcfi	cfa_offset, 120
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("$O$C28")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("$O$C28")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$429)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg26]
$C$DW$63	.dwtag  DW_TAG_variable, DW_AT_name("$O$C29")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("$O$C29")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg4]
$C$DW$64	.dwtag  DW_TAG_variable, DW_AT_name("$O$C30")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("$O$C30")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_regx 0x34]
$C$DW$65	.dwtag  DW_TAG_variable, DW_AT_name("$O$C31")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("$O$C31")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg26]
$C$DW$66	.dwtag  DW_TAG_variable, DW_AT_name("$O$C32")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("$O$C32")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg3]
$C$DW$67	.dwtag  DW_TAG_variable, DW_AT_name("$O$C33")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("$O$C33")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$429)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg26]
$C$DW$68	.dwtag  DW_TAG_variable, DW_AT_name("$O$K47")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("$O$K47")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg20]
$C$DW$69	.dwtag  DW_TAG_variable, DW_AT_name("$O$K76")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("$O$K76")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg20]
$C$DW$70	.dwtag  DW_TAG_variable, DW_AT_name("$O$U70")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("$O$U70")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg11]
$C$DW$71	.dwtag  DW_TAG_variable, DW_AT_name("$O$K19")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("$O$K19")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg20]
$C$DW$72	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$325)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg15]
$C$DW$73	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$568)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_breg31 64]
$C$DW$74	.dwtag  DW_TAG_variable, DW_AT_name("offset")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("offset")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$568)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg28]
$C$DW$75	.dwtag  DW_TAG_variable, DW_AT_name("flash")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("flash")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$881)
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg13]
$C$DW$76	.dwtag  DW_TAG_variable, DW_AT_name("page_addr")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("page_addr")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg10]
$C$DW$77	.dwtag  DW_TAG_variable, DW_AT_name("byte_addr")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("byte_addr")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg11]
$C$DW$78	.dwtag  DW_TAG_variable, DW_AT_name("page_size")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("page_size")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg12]
$C$DW$79	.dwtag  DW_TAG_variable, DW_AT_name("chunk_len")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("chunk_len")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg26]
$C$DW$80	.dwtag  DW_TAG_variable, DW_AT_name("actual")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("actual")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg29]
$C$DW$81	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg10]
$C$DW$82	.dwtag  DW_TAG_variable, DW_AT_name("spi")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$265)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg11]
$C$DW$83	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("status")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_breg31 36]
$C$DW$84	.dwtag  DW_TAG_variable, DW_AT_name("spi")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$265)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg11]
$C$DW$85	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg26]
$C$DW$86	.dwtag  DW_TAG_variable, DW_AT_name("spi")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$265)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg14]
$C$DW$87	.dwtag  DW_TAG_variable, DW_AT_name("$O$v1")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("$O$v1")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg20]
$C$DW$88	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg14]
$C$DW$89	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg0]
$C$DW$90	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg11]
$C$DW$91	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg27]
$C$DW$92	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg10]
$C$DW$93	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("cmd")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$433)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_breg31 40]
$C$DW$94	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("cmd")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$431)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_breg31 48]
$C$DW$95	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("cmd")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$431)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_breg31 56]

           MV      .L1X    B6,A15            ; |270| 
||         STW     .D2T1   A6,*+SP(64)       ; |270| 
||         MV      .L2     B4,B12            ; |270| 
||         MV      .S1     A4,A13            ; |270| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 281,column 5,is_stmt,isa 0
           LDW     .D1T1   *+A13(28),A3      ; |281| 
           NOP             4
           LDHU    .D1T1   *+A3(4),A12       ; |281| 
           NOP             4
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 282,column 5,is_stmt,isa 0
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("__c6xabi_divu")
	.dwattr $C$DW$96, DW_AT_TI_call

           CALLP   .S2     __c6xabi_divu,B3
||         MV      .L2X    A12,B4            ; |282| 
||         MV      .L1X    B12,A4            ; |282| 

$C$RL4:    ; CALL OCCURS {__c6xabi_divu} {0}  ; |282| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 33
           MV      .L1     A4,A10            ; |282| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 283,column 5,is_stmt,isa 0
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("__c6xabi_remu")
	.dwattr $C$DW$97, DW_AT_TI_call

           CALLP   .S2     __c6xabi_remu,B3
||         MV      .L1X    B12,A4            ; |283| 
||         MV      .L2X    A12,B4            ; |283| 

$C$RL5:    ; CALL OCCURS {__c6xabi_remu} {0}  ; |283| 
           MV      .L1     A4,A11            ; |283| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 194,column 20,is_stmt,isa 0
           LDW     .D1T1   *A13,A14          ; |194| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 198,column 5,is_stmt,isa 0
           MVK     .S2     0x17,B4           ; |198| 
           STB     .D2T2   B4,*+SP(56)       ; |198| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 199,column 5,is_stmt,isa 0

           ADDAB   .D2     SP,57,B10         ; |199| 
||         MVK     .S2     128,B4            ; |199| 

           STB     .D2T2   B4,*B10           ; |199| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 201,column 2,is_stmt,isa 0
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("spi_claim_bus")
	.dwattr $C$DW$98, DW_AT_TI_call

           CALLP   .S2     spi_claim_bus,B3
||         MV      .L1     A14,A4            ; |201| 

$C$RL6:    ; CALL OCCURS {spi_claim_bus} {0}  ; |201| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 202,column 2,is_stmt,isa 0
           MVK     .L1     0x1,A6            ; |202| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("spi_flash_cmd_write")
	.dwattr $C$DW$99, DW_AT_TI_call

           CALLP   .S2     spi_flash_cmd_write,B3
||         MV      .L1     A6,A8             ; |202| 
||         MV      .S1     A14,A4            ; |202| 
||         MV      .L2     B10,B6            ; |202| 
||         ADDAW   .D2     SP,14,B4          ; |202| 

$C$RL7:    ; CALL OCCURS {spi_flash_cmd_write} {0}  ; |202| 
           MV      .L2X    A4,B10            ; |202| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 203,column 2,is_stmt,isa 0
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("spi_release_bus")
	.dwattr $C$DW$100, DW_AT_TI_call

           CALLP   .S2     spi_release_bus,B3
||         MV      .L1     A14,A4            ; |203| 

$C$RL8:    ; CALL OCCURS {spi_release_bus} {0}  ; |203| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 286,column 5,is_stmt,isa 0
           CMPLT   .L1X    B10,0,A0          ; |286| 
   [!A0]   BNOP    .S1     $C$L7,5           ; |286| 
           ; BRANCHCC OCCURS {$C$L7}         ; |286| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
;** 288	-----------------------    xdc_runtime_System_printf__E("SF: Unable to set bar extadd\n");
;** 289	-----------------------    return ret;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 288,column 9,is_stmt,isa 0
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$101, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |288| 
           MVKL    .S2     $C$SL12+0,B4
           MVKH    .S2     $C$SL12+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |288| 
           ADDKPC  .S2     $C$RL9,B3,1       ; |288| 
$C$RL9:    ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |288| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 289,column 9,is_stmt,isa 0

           BNOP    .S1     $C$L19,5          ; |289| 
||         MV      .L1X    B10,A4

           ; BRANCH OCCURS {$C$L19}          ; |289| 
;** --------------------------------------------------------------------------*
$C$L7:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g3:
;** 292	-----------------------    if ( !(ret = spi_claim_bus((*flash).spi)) ) goto g5;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 292,column 5,is_stmt,isa 0
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("spi_claim_bus")
	.dwattr $C$DW$102, DW_AT_TI_call
           CALL    .S1     spi_claim_bus     ; |292| 
           LDW     .D1T1   *A13,A4           ; |292| 
           ADDKPC  .S2     $C$RL10,B3,3      ; |292| 
$C$RL10:   ; CALL OCCURS {spi_claim_bus} {0}  ; |292| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MV      .L1     A4,A0             ; |292| 
||         MV      .S1     A4,A14            ; |292| 

   [!A0]   BNOP    .S1     $C$L8,5           ; |292| 
           ; BRANCHCC OCCURS {$C$L8}         ; |292| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
;** 294	-----------------------    xdc_runtime_System_printf__E("SF: Unable to claim SPI bus\n");
;** 295	-----------------------    return ret;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 294,column 9,is_stmt,isa 0
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$103, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |294| 
           MVKL    .S2     $C$SL13+0,B4
           MVKH    .S2     $C$SL13+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |294| 
           ADDKPC  .S2     $C$RL11,B3,1      ; |294| 
$C$RL11:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |294| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 295,column 9,is_stmt,isa 0

           BNOP    .S1     $C$L19,5          ; |295| 
||         MV      .L1     A14,A4

           ; BRANCH OCCURS {$C$L19}          ; |295| 
;** --------------------------------------------------------------------------*
$C$L8:    
;          EXCLUSIVE CPU CYCLES: 11
;**	-----------------------g5:
;** 298	-----------------------    if ( !len ) goto g22;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 298,column 22,is_stmt,isa 0
           LDW     .D2T1   *+SP(64),A0
           NOP             4
   [!A0]   BNOP    .S1     $C$L17,5          ; |298| 
           ; BRANCHCC OCCURS {$C$L17}        ; |298| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
;**  	-----------------------    K$76 = 40u;
;**  	-----------------------    K$47 = 18;
;** 298	-----------------------    actual = 0u;
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 298,column 10,is_stmt,isa 0
           ZERO    .L2     B13               ; |298| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L9
;** --------------------------------------------------------------------------*
$C$L9:    
$C$DW$L$spansion_write$12$B:
;          EXCLUSIVE CPU CYCLES: 25
;**	-----------------------g7:
;** 299	-----------------------    C$32 = (unsigned)page_size-byte_addr;
;** 299	-----------------------    C$31 = len-actual;
;** 299	-----------------------    (C$31 < C$32) ? (chunk_len = C$31) : (chunk_len = C$32);
;** 301	-----------------------    cmd[0] = K$47;
;** 302	-----------------------    cmd[1] = C$29 = (unsigned char)(page_addr>>16);
;** 303	-----------------------    cmd[2] = C$30 = (unsigned char)(page_addr>>8);
;** 304	-----------------------    cmd[3] = page_addr;
;** 305	-----------------------    cmd[4] = byte_addr;
;** 307	-----------------------    U$70 = actual+buf;
;** 307	-----------------------    xdc_runtime_System_printf__E("PP: 0x%p => cmd = { 0x%02x 0x%02x%02x%02x } chunk_len = %d\n", U$70, (int)(unsigned char)K$47, (int)C$29, (int)C$30, (int)(unsigned char)page_addr, chunk_len);
;** 311	-----------------------    if ( spi_flash_cmd((*flash).spi, 6u, NULL, 0u) < 0 ) goto g21;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 299,column 9,is_stmt,isa 0
           LDW     .D2T2   *+SP(64),B4
           SUB     .L1     A12,A11,A3        ; |299| 
           NOP             3
           SUB     .L2     B4,B13,B10        ; |299| 
           NOP             1
           CMPLTU  .L1X    B10,A3,A0         ; |299| 
   [!A0]   MV      .L2X    A3,B10            ; |299| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 301,column 9,is_stmt,isa 0
           MVK     .S2     0x12,B4
           STB     .D2T2   B4,*+SP(40)       ; |301| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 302,column 9,is_stmt,isa 0

           SHRU    .S2X    A10,16,B4         ; |302| 
||         EXTU    .S1     A10,8,24,A4       ; |302| 

           STB     .D2T2   B4,*+SP(41)       ; |302| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 303,column 9,is_stmt,isa 0
           SHRU    .S1     A10,8,A3          ; |303| 

           STB     .D2T1   A3,*+SP(42)       ; |303| 
||         EXTU    .S1     A10,16,24,A31     ; |303| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 304,column 9,is_stmt,isa 0
           STB     .D2T1   A10,*+SP(43)      ; |304| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 305,column 9,is_stmt,isa 0
           STB     .D2T1   A11,*+SP(44)      ; |305| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 307,column 9,is_stmt,isa 0

           MVK     .S2     0x12,B4
||         STW     .D2T2   B10,*+SP(28)      ; |307| 

           EXTU    .S2     B4,24,24,B4       ; |307| 
||         EXTU    .S1     A10,24,24,A3      ; |307| 
||         STW     .D2T1   A4,*+SP(16)       ; |307| 

$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$104, DW_AT_TI_call

           CALL    .S1     xdc_runtime_System_printf__E ; |307| 
||         STW     .D2T2   B4,*+SP(12)       ; |307| 

           MVKL    .S2     $C$SL14+0,B5
||         STW     .D2T1   A3,*+SP(24)       ; |307| 

           MVKH    .S2     $C$SL14+0,B5
||         ADD     .L1X    A15,B13,A11       ; |307| 
||         STW     .D2T1   A31,*+SP(20)      ; |307| 

           STW     .D2T2   B5,*+SP(4)        ; |307| 
||         ADDKPC  .S2     $C$RL12,B3,1      ; |307| 

           STW     .D2T1   A11,*+SP(8)       ; |307| 
$C$RL12:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |307| 
$C$DW$L$spansion_write$12$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_write$13$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 311,column 9,is_stmt,isa 0
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("spi_flash_cmd")
	.dwattr $C$DW$105, DW_AT_TI_call

           CALLP   .S2     spi_flash_cmd,B3
||         LDW     .D1T1   *A13,A4           ; |311| 
||         MVK     .L2     0x6,B4            ; |311| 
||         ZERO    .L1     A6                ; |311| 
||         ZERO    .D2     B6                ; |311| 

$C$RL13:   ; CALL OCCURS {spi_flash_cmd} {0}  ; |311| 
$C$DW$L$spansion_write$13$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_write$14$B:
;          EXCLUSIVE CPU CYCLES: 7
           CMPLT   .L1     A4,0,A0           ; |311| 
   [ A0]   BNOP    .S1     $C$L16,5          ; |311| 
           ; BRANCHCC OCCURS {$C$L16}        ; |311| 
$C$DW$L$spansion_write$14$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_write$15$B:
;          EXCLUSIVE CPU CYCLES: 6
;** 318	-----------------------    if ( !(ret = spi_xfer((*flash).spi, K$76, &cmd, NULL, 1u)) ) goto g10;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 318,column 9,is_stmt,isa 0
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("spi_xfer")
	.dwattr $C$DW$106, DW_AT_TI_call
           CALL    .S1     spi_xfer          ; |318| 
           LDW     .D1T1   *A13,A4           ; |318| 
           MVK     .S2     0x28,B4
           ADDKPC  .S2     $C$RL14,B3,1      ; |318| 

           ZERO    .L2     B6                ; |318| 
||         MVK     .L1     0x1,A8            ; |318| 
||         ADDAW   .D1X    SP,10,A6          ; |318| 

$C$RL14:   ; CALL OCCURS {spi_xfer} {0}      ; |318| 
$C$DW$L$spansion_write$15$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_write$16$B:
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A4,A0             ; |318| 
   [!A0]   BNOP    .S1     $C$L10,5          ; |318| 
           ; BRANCHCC OCCURS {$C$L10}        ; |318| 
$C$DW$L$spansion_write$16$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_write$17$B:
;          EXCLUSIVE CPU CYCLES: 7
;** 320	-----------------------    xdc_runtime_System_printf__E("SF: Failed to send read command (%zu bytes): %d\n", 5u, ret);
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 320,column 7,is_stmt,isa 0
           MVKL    .S2     $C$SL15+0,B5
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$107, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |320| 
           MVKH    .S2     $C$SL15+0,B5
           MVK     .L2     5,B4              ; |320| 
           STW     .D2T1   A0,*+SP(12)       ; |320| 

           STW     .D2T2   B5,*+SP(4)        ; |320| 
||         ADDKPC  .S2     $C$RL15,B3,0      ; |320| 

           STW     .D2T2   B4,*+SP(8)        ; |320| 
$C$RL15:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |320| 
$C$DW$L$spansion_write$17$E:
;** --------------------------------------------------------------------------*
$C$L10:    
$C$DW$L$spansion_write$18$B:
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g10:
;** 324	-----------------------    spi_claim_bus_write_fast((*flash).spi);
;** 325	-----------------------    ret = spi_xfer_write_fast((*flash).spi, chunk_len<<3, U$70, 0, 2);
;** 326	-----------------------    spi_claim_bus_back((*flash).spi);
;** 328	-----------------------    if ( ret < 0 ) goto g20;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 324,column 9,is_stmt,isa 0
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("spi_claim_bus_write_fast")
	.dwattr $C$DW$108, DW_AT_TI_call

           CALLP   .S2     spi_claim_bus_write_fast,B3
||         LDW     .D1T1   *A13,A4           ; |324| 

$C$RL16:   ; CALL OCCURS {spi_claim_bus_write_fast} {0}  ; |324| 
$C$DW$L$spansion_write$18$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_write$19$B:
;          EXCLUSIVE CPU CYCLES: 14
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 325,column 3,is_stmt,isa 0
           SHL     .S2     B10,3,B4          ; |325| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("spi_xfer_write_fast")
	.dwattr $C$DW$109, DW_AT_TI_call

           CALLP   .S2     spi_xfer_write_fast,B3
||         LDW     .D1T1   *A13,A4           ; |325| 
||         MV      .L1     A11,A6            ; |325| 
||         ZERO    .L2     B6                ; |325| 
||         MVK     .S1     0x2,A8            ; |325| 

$C$RL17:   ; CALL OCCURS {spi_xfer_write_fast} {0}  ; |325| 
           MV      .L1     A4,A11            ; |325| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 326,column 9,is_stmt,isa 0
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("spi_claim_bus_back")
	.dwattr $C$DW$110, DW_AT_TI_call

           CALLP   .S2     spi_claim_bus_back,B3
||         LDW     .D1T1   *A13,A4           ; |326| 

$C$RL18:   ; CALL OCCURS {spi_claim_bus_back} {0}  ; |326| 
$C$DW$L$spansion_write$19$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_write$20$B:
;          EXCLUSIVE CPU CYCLES: 7
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 328,column 9,is_stmt,isa 0
           CMPLT   .L1     A11,0,A0          ; |328| 
   [ A0]   BNOP    .S1     $C$L15,5          ; |328| 
           ; BRANCHCC OCCURS {$C$L15}        ; |328| 
$C$DW$L$spansion_write$20$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_write$21$B:
;          EXCLUSIVE CPU CYCLES: 1
;** 168	-----------------------    spi = (*flash).spi;  // [8]
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 168,column 20,is_stmt,isa 0
           LDW     .D1T1   *A13,A11          ; |168| 
$C$DW$L$spansion_write$21$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L11:    
$C$DW$L$spansion_write$22$B:
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g12:
;** 174	-----------------------    if ( spi_flash_cmd(spi, 5u, &status, 1u) ) goto g16;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 174,column 3,is_stmt,isa 0
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("spi_flash_cmd")
	.dwattr $C$DW$111, DW_AT_TI_call
           CALL    .S1     spi_flash_cmd     ; |174| 
           ADDAW   .D2     SP,9,B5
           ADDKPC  .S2     $C$RL19,B3,2      ; |174| 

           MVK     .L2     0x1,B6            ; |174| 
||         MVK     .S2     0x5,B4            ; |174| 
||         MV      .L1     A11,A4            ; |174| 
||         MV      .S1X    B5,A6             ; |174| 

$C$RL19:   ; CALL OCCURS {spi_flash_cmd} {0}  ; |174| 
$C$DW$L$spansion_write$22$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_write$23$B:
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A4,A0             ; |174| 
   [ A0]   BNOP    .S1     $C$L12,5          ; |174| 
           ; BRANCHCC OCCURS {$C$L12}        ; |174| 
$C$DW$L$spansion_write$23$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_write$24$B:
;          EXCLUSIVE CPU CYCLES: 12
;** 179	-----------------------    v$1 = (int)status;  // [8]
;** 179	-----------------------    if ( status&1 ) goto g12;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 179,column 4,is_stmt,isa 0
           LDBU    .D2T2   *+SP(36),B4       ; |179| 
           NOP             4

           AND     .L2     1,B4,B0           ; |179| 
||         LDBU    .D2T2   *+SP(36),B4       ; |179| 

   [ B0]   BNOP    .S1     $C$L11,5          ; |179| 
           ; BRANCHCC OCCURS {$C$L11}        ; |179| 
$C$DW$L$spansion_write$24$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_write$25$B:
;          EXCLUSIVE CPU CYCLES: 7
;** 184	-----------------------    if ( v$1&1 ) goto g16;  // [8]
;** 185	-----------------------    ret = 0;  // [8]
;** 185	-----------------------    goto g17;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 184,column 2,is_stmt,isa 0
           AND     .L2     1,B4,B0           ; |184| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 185,column 3,is_stmt,isa 0

   [!B0]   BNOP    .S1     $C$L13,5          ; |185| 
|| [!B0]   ZERO    .L2     B11               ; |185| 

           ; BRANCHCC OCCURS {$C$L13}        ; |185| 
$C$DW$L$spansion_write$25$E:
;** --------------------------------------------------------------------------*
$C$L12:    
$C$DW$L$spansion_write$26$B:
;          EXCLUSIVE CPU CYCLES: 1
;**	-----------------------g16:
;** 176	-----------------------    ret = (-1);  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 176,column 4,is_stmt,isa 0
           MVK     .L2     0xffffffff,B11    ; |176| 
$C$DW$L$spansion_write$26$E:
;** --------------------------------------------------------------------------*
$C$L13:    
$C$DW$L$spansion_write$27$B:
;          EXCLUSIVE CPU CYCLES: 7
;**	-----------------------g17:
;** 334	-----------------------    if ( ret < 0 ) goto g19;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 334,column 9,is_stmt,isa 0
           CMPLT   .L2     B11,0,B0          ; |334| 
   [ B0]   BNOP    .S1     $C$L14,5          ; |334| 
           ; BRANCHCC OCCURS {$C$L14}        ; |334| 
$C$DW$L$spansion_write$27$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_write$28$B:
;          EXCLUSIVE CPU CYCLES: 15
;** 298	-----------------------    actual += chunk_len;
;** 339	-----------------------    ++page_addr;
;** 340	-----------------------    byte_addr = 0u;
;** 298	-----------------------    if ( actual < len ) goto g7;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 298,column 36,is_stmt,isa 0
           ADD     .L2     B10,B13,B13       ; |298| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 339,column 9,is_stmt,isa 0
           ADD     .L1     1,A10,A10         ; |339| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 340,column 9,is_stmt,isa 0
           ZERO    .L1     A11               ; |340| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 298,column 22,is_stmt,isa 0
           LDW     .D2T2   *+SP(64),B4
           NOP             4
           CMPLTU  .L2     B13,B4,B0         ; |298| 
   [ B0]   B       .S1     $C$L9             ; |298| 
   [!B0]   BNOP    .S1     $C$L17,4          ; |298| 
           ; BRANCHCC OCCURS {$C$L9}         ; |298| 
$C$DW$L$spansion_write$28$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
;** 298	-----------------------    goto g22;
           NOP             1
           ; BRANCH OCCURS {$C$L17}          ; |298| 
;** --------------------------------------------------------------------------*
$C$L14:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g19:
;** 335	-----------------------    xdc_runtime_System_printf__E("SF: SPANSION page programming timed out\n");
;** 336	-----------------------    goto g22;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 335,column 13,is_stmt,isa 0
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$112, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |335| 
           MVKL    .S2     $C$SL16+0,B4
           MVKH    .S2     $C$SL16+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |335| 
           ADDKPC  .S2     $C$RL20,B3,1      ; |335| 
$C$RL20:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |335| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 336,column 13,is_stmt,isa 0
           BNOP    .S1     $C$L17,5          ; |336| 
           ; BRANCH OCCURS {$C$L17}          ; |336| 
;** --------------------------------------------------------------------------*
$C$L15:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g20:
;** 329	-----------------------    xdc_runtime_System_printf__E("SF: SPANSION Page Program failed\n");
;** 330	-----------------------    goto g22;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 329,column 13,is_stmt,isa 0
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$113, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |329| 
           MVKL    .S2     $C$SL17+0,B4
           MVKH    .S2     $C$SL17+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |329| 
           ADDKPC  .S2     $C$RL21,B3,1      ; |329| 
$C$RL21:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |329| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 330,column 13,is_stmt,isa 0
           BNOP    .S1     $C$L17,5          ; |330| 
           ; BRANCH OCCURS {$C$L17}          ; |330| 
;** --------------------------------------------------------------------------*
$C$L16:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g21:
;** 313	-----------------------    xdc_runtime_System_printf__E("SF: Enabling Write failed\n");
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 313,column 13,is_stmt,isa 0
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$114, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |313| 
           MVKL    .S2     $C$SL18+0,B4
           MVKH    .S2     $C$SL18+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |313| 
           ADDKPC  .S2     $C$RL22,B3,1      ; |313| 
$C$RL22:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |313| 
;** --------------------------------------------------------------------------*
$C$L17:    
;          EXCLUSIVE CPU CYCLES: 7
;**	-----------------------g22:
;** 343	-----------------------    xdc_runtime_System_printf__E("SF: SPANSION: Successfully programmed %u bytes @ 0x%x\n", len, offset);
;** 346	-----------------------    spi_release_bus((*flash).spi);
;** 210	-----------------------    spi = (*flash).spi;  // [10]
;** 214	-----------------------    cmd[0] = K$19;  // [10]
;** 215	-----------------------    *(C$28 = &cmd[1]) = 0;  // [10]
;** 217	-----------------------    spi_claim_bus(spi);  // [10]
;** 218	-----------------------    ret = spi_flash_cmd_write(spi, &cmd, 1u, (const void *)C$28, 1u);  // [10]
;** 219	-----------------------    spi_release_bus(spi);  // [10]
;** 221	-----------------------    if ( (ret = ret) >= 0 ) goto g24;  // [10]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 343,column 5,is_stmt,isa 0
           LDW     .D2T2   *+SP(64),B5       ; |343| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$115, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |343| 
           MVKL    .S2     $C$SL19+0,B4
           MVKH    .S2     $C$SL19+0,B4
           STW     .D2T2   B12,*+SP(12)      ; |343| 
           STW     .D2T2   B5,*+SP(8)        ; |343| 

           STW     .D2T2   B4,*+SP(4)        ; |343| 
||         ADDKPC  .S2     $C$RL23,B3,0      ; |343| 

$C$RL23:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |343| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 31
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 346,column 5,is_stmt,isa 0
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("spi_release_bus")
	.dwattr $C$DW$116, DW_AT_TI_call

           CALLP   .S2     spi_release_bus,B3
||         LDW     .D1T1   *A13,A4           ; |346| 

$C$RL24:   ; CALL OCCURS {spi_release_bus} {0}  ; |346| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 210,column 20,is_stmt,isa 0
           LDW     .D1T1   *A13,A11          ; |210| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 214,column 5,is_stmt,isa 0
           MVK     .S2     0x17,B4           ; |198| 
           STB     .D2T2   B4,*+SP(48)       ; |214| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 215,column 5,is_stmt,isa 0

           ADDAB   .D2     SP,49,B10         ; |215| 
||         ZERO    .L2     B4                ; |215| 

           STB     .D2T2   B4,*B10           ; |215| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 217,column 2,is_stmt,isa 0
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("spi_claim_bus")
	.dwattr $C$DW$117, DW_AT_TI_call

           CALLP   .S2     spi_claim_bus,B3
||         MV      .L1     A11,A4            ; |217| 

$C$RL25:   ; CALL OCCURS {spi_claim_bus} {0}  ; |217| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 218,column 2,is_stmt,isa 0
           MVK     .L1     0x1,A8            ; |218| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("spi_flash_cmd_write")
	.dwattr $C$DW$118, DW_AT_TI_call

           CALLP   .S2     spi_flash_cmd_write,B3
||         MV      .L1     A8,A6             ; |218| 
||         MV      .L2     B10,B6            ; |218| 
||         MV      .S1     A11,A4            ; |218| 
||         ADDAW   .D2     SP,12,B4          ; |218| 

$C$RL26:   ; CALL OCCURS {spi_flash_cmd_write} {0}  ; |218| 
           MV      .L1     A4,A10            ; |218| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 219,column 2,is_stmt,isa 0
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("spi_release_bus")
	.dwattr $C$DW$119, DW_AT_TI_call

           CALLP   .S2     spi_release_bus,B3
||         MV      .L1     A11,A4            ; |219| 

$C$RL27:   ; CALL OCCURS {spi_release_bus} {0}  ; |219| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 221,column 2,is_stmt,isa 0
           CMPLT   .L1     A10,0,A0          ; |221| 
   [!A0]   BNOP    .S1     $C$L18,5          ; |221| 
           ; BRANCHCC OCCURS {$C$L18}        ; |221| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
;** 351	-----------------------    xdc_runtime_System_printf__E("SF: Unable to clear bar extadd\n");
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 351,column 9,is_stmt,isa 0
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$120, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |351| 
           MVKL    .S2     $C$SL20+0,B4
           MVKH    .S2     $C$SL20+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |351| 
           ADDKPC  .S2     $C$RL28,B3,1      ; |351| 
$C$RL28:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |351| 
;** --------------------------------------------------------------------------*
$C$L18:    
;          EXCLUSIVE CPU CYCLES: 1
;**	-----------------------g24:
;** 354	-----------------------    return ret;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 354,column 2,is_stmt,isa 0
           MV      .L1     A10,A4            ; |354| 
;** --------------------------------------------------------------------------*
$C$L19:    
;          EXCLUSIVE CPU CYCLES: 15
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 355,column 1,is_stmt,isa 0
           ADDK    .S2     64,SP             ; |355| 
	.dwcfi	cfa_offset, 56
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 48
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDDW    .D2T1   *++SP,A13:A12
	.dwcfi	cfa_offset, 40
	.dwcfi	restore_reg, 13
	.dwcfi	restore_reg, 12
           LDW     .D2T1   *++SP(8),A14
	.dwcfi	cfa_offset, 32
	.dwcfi	restore_reg, 14
           LDW     .D2T2   *++SP(8),B3
	.dwcfi	cfa_offset, 24
	.dwcfi	restore_reg, 19
           LDDW    .D2T2   *++SP,B11:B10
	.dwcfi	cfa_offset, 16
	.dwcfi	restore_reg, 27
	.dwcfi	restore_reg, 26
           LDDW    .D2T2   *++SP,B13:B12
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 29
	.dwcfi	restore_reg, 28
           LDW     .D2T1   *++SP(8),A15      ; |355| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 15
	.dwcfi	cfa_offset, 0
           NOP             1
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_TI_return
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3}  

$C$DW$122	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$122, DW_AT_name("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\ccs_build\M3-Master\spansion.asm:$C$L9:1:1473636152")
	.dwattr $C$DW$122, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$122, DW_AT_TI_begin_line(0x12a)
	.dwattr $C$DW$122, DW_AT_TI_end_line(0x155)
$C$DW$123	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$123, DW_AT_low_pc($C$DW$L$spansion_write$12$B)
	.dwattr $C$DW$123, DW_AT_high_pc($C$DW$L$spansion_write$12$E)
$C$DW$124	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$124, DW_AT_low_pc($C$DW$L$spansion_write$13$B)
	.dwattr $C$DW$124, DW_AT_high_pc($C$DW$L$spansion_write$13$E)
$C$DW$125	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$125, DW_AT_low_pc($C$DW$L$spansion_write$14$B)
	.dwattr $C$DW$125, DW_AT_high_pc($C$DW$L$spansion_write$14$E)
$C$DW$126	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$126, DW_AT_low_pc($C$DW$L$spansion_write$15$B)
	.dwattr $C$DW$126, DW_AT_high_pc($C$DW$L$spansion_write$15$E)
$C$DW$127	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$127, DW_AT_low_pc($C$DW$L$spansion_write$16$B)
	.dwattr $C$DW$127, DW_AT_high_pc($C$DW$L$spansion_write$16$E)
$C$DW$128	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$128, DW_AT_low_pc($C$DW$L$spansion_write$17$B)
	.dwattr $C$DW$128, DW_AT_high_pc($C$DW$L$spansion_write$17$E)
$C$DW$129	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$129, DW_AT_low_pc($C$DW$L$spansion_write$18$B)
	.dwattr $C$DW$129, DW_AT_high_pc($C$DW$L$spansion_write$18$E)
$C$DW$130	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$130, DW_AT_low_pc($C$DW$L$spansion_write$19$B)
	.dwattr $C$DW$130, DW_AT_high_pc($C$DW$L$spansion_write$19$E)
$C$DW$131	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$131, DW_AT_low_pc($C$DW$L$spansion_write$20$B)
	.dwattr $C$DW$131, DW_AT_high_pc($C$DW$L$spansion_write$20$E)
$C$DW$132	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$132, DW_AT_low_pc($C$DW$L$spansion_write$21$B)
	.dwattr $C$DW$132, DW_AT_high_pc($C$DW$L$spansion_write$21$E)
$C$DW$133	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$133, DW_AT_low_pc($C$DW$L$spansion_write$25$B)
	.dwattr $C$DW$133, DW_AT_high_pc($C$DW$L$spansion_write$25$E)
$C$DW$134	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$134, DW_AT_low_pc($C$DW$L$spansion_write$26$B)
	.dwattr $C$DW$134, DW_AT_high_pc($C$DW$L$spansion_write$26$E)
$C$DW$135	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$135, DW_AT_low_pc($C$DW$L$spansion_write$27$B)
	.dwattr $C$DW$135, DW_AT_high_pc($C$DW$L$spansion_write$27$E)
$C$DW$136	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$136, DW_AT_low_pc($C$DW$L$spansion_write$28$B)
	.dwattr $C$DW$136, DW_AT_high_pc($C$DW$L$spansion_write$28$E)

$C$DW$137	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$137, DW_AT_name("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\ccs_build\M3-Master\spansion.asm:$C$L11:2:1473636152")
	.dwattr $C$DW$137, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$137, DW_AT_TI_begin_line(0xad)
	.dwattr $C$DW$137, DW_AT_TI_end_line(0xb5)
$C$DW$138	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$138, DW_AT_low_pc($C$DW$L$spansion_write$22$B)
	.dwattr $C$DW$138, DW_AT_high_pc($C$DW$L$spansion_write$22$E)
$C$DW$139	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$139, DW_AT_low_pc($C$DW$L$spansion_write$23$B)
	.dwattr $C$DW$139, DW_AT_high_pc($C$DW$L$spansion_write$23$E)
$C$DW$140	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$140, DW_AT_low_pc($C$DW$L$spansion_write$24$B)
	.dwattr $C$DW$140, DW_AT_high_pc($C$DW$L$spansion_write$24$E)
	.dwendtag $C$DW$137

	.dwendtag $C$DW$122

	.dwattr $C$DW$57, DW_AT_TI_end_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$57, DW_AT_TI_end_line(0x163)
	.dwattr $C$DW$57, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$57

	.sect	".text"
	.clink

$C$DW$141	.dwtag  DW_TAG_subprogram, DW_AT_name("spansion_read_fast")
	.dwattr $C$DW$141, DW_AT_low_pc(spansion_read_fast)
	.dwattr $C$DW$141, DW_AT_high_pc(0x00)
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("spansion_read_fast")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$141, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$141, DW_AT_TI_begin_line(0xe0)
	.dwattr $C$DW$141, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$141, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$141, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$141, DW_AT_decl_column(0x0c)
	.dwattr $C$DW$141, DW_AT_TI_max_frame_size(0x70)
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 226,column 1,is_stmt,address spansion_read_fast,isa 0

	.dwfde $C$DW$CIE, spansion_read_fast
$C$DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_name("flash")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("flash")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$266)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg4]
$C$DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_name("offset")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("offset")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg20]
$C$DW$144	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_reg6]
$C$DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg22]

;******************************************************************************
;* FUNCTION NAME: spansion_read_fast                                          *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,SP,A16,*
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,DP,SP, *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Local Frame Size  : 32 Args + 28 Auto + 48 Save = 108 byte               *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
spansion_read_fast:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 20
;** 194	-----------------------    spi = (*flash).spi;  // [9]
;** 198	-----------------------    cmd[0] = K$8 = 23;  // [9]
;** 199	-----------------------    *(C$32 = &cmd[1]) = 128;  // [9]
;** 201	-----------------------    spi_claim_bus(spi);  // [9]
;** 202	-----------------------    ret = spi_flash_cmd_write(spi, &cmd, 1u, (const void *)C$32, 1u);  // [9]
;** 203	-----------------------    spi_release_bus(spi);  // [9]
;** 231	-----------------------    if ( ret >= 0 ) goto g3;
	.dwcfi	cfa_offset, 0
           STW     .D2T1   A15,*SP--(8)      ; |226| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 15, 0
           STDW    .D2T2   B11:B10,*SP--     ; |226| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 27, -4
	.dwcfi	save_reg_to_mem, 26, -8
           STW     .D2T2   B3,*SP--(8)       ; |226| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 19, -16
           STW     .D2T1   A14,*SP--(8)      ; |226| 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 14, -24
           STDW    .D2T1   A13:A12,*SP--     ; |226| 
	.dwcfi	cfa_offset, 40
	.dwcfi	save_reg_to_mem, 13, -28
	.dwcfi	save_reg_to_mem, 12, -32
           STDW    .D2T1   A11:A10,*SP--     ; |226| 
	.dwcfi	cfa_offset, 48
	.dwcfi	save_reg_to_mem, 11, -36
	.dwcfi	save_reg_to_mem, 10, -40
           ADDK    .S2     -64,SP            ; |226| 
	.dwcfi	cfa_offset, 112
$C$DW$146	.dwtag  DW_TAG_variable, DW_AT_name("$O$C28")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("$O$C28")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$429)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg27]
$C$DW$147	.dwtag  DW_TAG_variable, DW_AT_name("$O$C29")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("$O$C29")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg20]
$C$DW$148	.dwtag  DW_TAG_variable, DW_AT_name("$O$C30")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("$O$C30")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x34]
$C$DW$149	.dwtag  DW_TAG_variable, DW_AT_name("$O$C31")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("$O$C31")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg4]
$C$DW$150	.dwtag  DW_TAG_variable, DW_AT_name("$O$C32")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("$O$C32")
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$429)
	.dwattr $C$DW$150, DW_AT_location[DW_OP_reg26]
$C$DW$151	.dwtag  DW_TAG_variable, DW_AT_name("$O$Y0")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("$O$Y0")
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$151, DW_AT_location[DW_OP_reg22]
$C$DW$152	.dwtag  DW_TAG_variable, DW_AT_name("$O$K8")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("$O$K8")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg27]
$C$DW$153	.dwtag  DW_TAG_variable, DW_AT_name("$O$K48")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("$O$K48")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg26]
$C$DW$154	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$276)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg13]
$C$DW$155	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$568)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg12]
$C$DW$156	.dwtag  DW_TAG_variable, DW_AT_name("offset")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("offset")
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$568)
	.dwattr $C$DW$156, DW_AT_location[DW_OP_reg14]
$C$DW$157	.dwtag  DW_TAG_variable, DW_AT_name("flash")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("flash")
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$881)
	.dwattr $C$DW$157, DW_AT_location[DW_OP_reg11]
$C$DW$158	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg10]
$C$DW$159	.dwtag  DW_TAG_variable, DW_AT_name("spi")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$265)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg11]
$C$DW$160	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg10]
$C$DW$161	.dwtag  DW_TAG_variable, DW_AT_name("spi")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$265)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg15]
$C$DW$162	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg10]
$C$DW$163	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg10]
$C$DW$164	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("cmd")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$432)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_breg31 40]
$C$DW$165	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("cmd")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$431)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_breg31 48]
$C$DW$166	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("cmd")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$431)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_breg31 56]
           MV      .L1X    B6,A13            ; |226| 

           MV      .L1X    B4,A14            ; |226| 
||         MV      .S1     A6,A12            ; |226| 
||         MV      .D1     A4,A11            ; |226| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 194,column 20,is_stmt,isa 0
           LDW     .D1T1   *A11,A15          ; |194| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 198,column 5,is_stmt,isa 0
           MVK     .S2     0x17,B11          ; |198| 
           STB     .D2T2   B11,*+SP(56)      ; |198| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 199,column 5,is_stmt,isa 0

           ADDAB   .D2     SP,57,B10         ; |199| 
||         MVK     .S2     128,B4            ; |199| 

           STB     .D2T2   B4,*B10           ; |199| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 201,column 2,is_stmt,isa 0
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("spi_claim_bus")
	.dwattr $C$DW$167, DW_AT_TI_call

           CALLP   .S2     spi_claim_bus,B3
||         MV      .L1     A15,A4            ; |201| 

$C$RL29:   ; CALL OCCURS {spi_claim_bus} {0}  ; |201| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 202,column 2,is_stmt,isa 0
           MVK     .L1     0x1,A6            ; |202| 
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("spi_flash_cmd_write")
	.dwattr $C$DW$168, DW_AT_TI_call

           CALLP   .S2     spi_flash_cmd_write,B3
||         MV      .L1     A6,A8             ; |202| 
||         MV      .S1     A15,A4            ; |202| 
||         ADDAW   .D2     SP,14,B4          ; |202| 
||         MV      .L2     B10,B6            ; |202| 

$C$RL30:   ; CALL OCCURS {spi_flash_cmd_write} {0}  ; |202| 
           MV      .L1     A4,A10            ; |202| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 203,column 2,is_stmt,isa 0
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("spi_release_bus")
	.dwattr $C$DW$169, DW_AT_TI_call

           CALLP   .S2     spi_release_bus,B3
||         MV      .L1     A15,A4            ; |203| 

$C$RL31:   ; CALL OCCURS {spi_release_bus} {0}  ; |203| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 231,column 5,is_stmt,isa 0
           CMPLT   .L1     A10,0,A0          ; |231| 
   [!A0]   BNOP    .S1     $C$L20,5          ; |231| 
           ; BRANCHCC OCCURS {$C$L20}        ; |231| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
;** 233	-----------------------    xdc_runtime_System_printf__E("SF: Unable to set bar extadd\n");
;** 234	-----------------------    return ret;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 233,column 9,is_stmt,isa 0
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$170, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |233| 
           MVKL    .S2     $C$SL12+0,B4
           MVKH    .S2     $C$SL12+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |233| 
           ADDKPC  .S2     $C$RL32,B3,1      ; |233| 
$C$RL32:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |233| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 234,column 9,is_stmt,isa 0

           BNOP    .S1     $C$L23,5          ; |234| 
||         MV      .L1     A10,A4            ; |234| 

           ; BRANCH OCCURS {$C$L23}          ; |234| 
;** --------------------------------------------------------------------------*
$C$L20:    
;          EXCLUSIVE CPU CYCLES: 19
;**	-----------------------g3:
;** 237	-----------------------    cmd[0] = Y$0 = (unsigned char)12;
;** 238	-----------------------    cmd[1] = C$29 = (unsigned char)(offset>>24);
;** 239	-----------------------    cmd[2] = C$30 = (unsigned char)(offset>>16);
;** 240	-----------------------    cmd[3] = C$31 = (unsigned char)(offset>>8);
;** 241	-----------------------    cmd[4] = offset;
;** 242	-----------------------    cmd[5] = K$48 = 0;
;** 244	-----------------------    xdc_runtime_System_printf__E("READ: 0x%x => cmd = { 0x%02x 0x%02x%02x%02x%02x } len = 0x%x\n", offset, (int)Y$0, (int)C$29, (int)C$30, (int)C$31, (int)(unsigned char)offset, len);
;** 248	-----------------------    if ( (ret = spi_flash_read_common(flash, &cmd, 6u, buf, len)) >= 0 ) goto g5;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 237,column 5,is_stmt,isa 0
           MVK     .L2     0xc,B6            ; |237| 
           STB     .D2T2   B6,*+SP(40)       ; |237| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 238,column 5,is_stmt,isa 0
           SHRU    .S2X    A14,24,B4         ; |238| 

           STB     .D2T2   B4,*+SP(41)       ; |238| 
||         SHRU    .S2X    A14,24,B4         ; |238| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 239,column 5,is_stmt,isa 0
           SHRU    .S1     A14,16,A3         ; |239| 

           STB     .D2T1   A3,*+SP(42)       ; |239| 
||         EXTU    .S1     A14,8,24,A31      ; |239| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 240,column 5,is_stmt,isa 0

           SHRU    .S2X    A14,8,B5          ; |240| 
||         EXTU    .S1     A14,16,24,A4      ; |240| 

           STB     .D2T2   B5,*+SP(43)       ; |240| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 241,column 5,is_stmt,isa 0
           STB     .D2T1   A14,*+SP(44)      ; |241| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 242,column 5,is_stmt,isa 0
           ZERO    .L2     B10               ; |242| 
           STB     .D2T2   B10,*+SP(45)      ; |242| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 244,column 5,is_stmt,isa 0

           MVKL    .S2     $C$SL21+0,B5
||         STW     .D2T2   B6,*+SP(12)       ; |244| 

           MVKH    .S2     $C$SL21+0,B5
||         EXTU    .S1     A14,24,24,A3      ; |244| 
||         STW     .D2T2   B4,*+SP(16)       ; |244| 

$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x04)
	.dwattr $C$DW$171, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$171, DW_AT_TI_call

           STW     .D2T2   B5,*+SP(4)        ; |244| 
||         CALL    .S1     xdc_runtime_System_printf__E ; |244| 

           STW     .D2T1   A3,*+SP(28)       ; |244| 
           STW     .D2T1   A31,*+SP(20)      ; |244| 

           ADDKPC  .S2     $C$RL33,B3,0      ; |244| 
||         STW     .D2T1   A4,*+SP(24)       ; |244| 

           STW     .D2T1   A14,*+SP(8)       ; |244| 
           STW     .D2T1   A12,*+SP(32)      ; |244| 
$C$RL33:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |244| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 248,column 5,is_stmt,isa 0
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("spi_flash_read_common")
	.dwattr $C$DW$172, DW_AT_TI_call

           CALLP   .S2     spi_flash_read_common,B3
||         MV      .L1     A11,A4            ; |248| 
||         ADDAW   .D2     SP,10,B4          ; |248| 
||         MVK     .S1     0x6,A6            ; |248| 
||         MV      .L2X    A13,B6            ; |248| 
||         MV      .D1     A12,A8            ; |248| 

$C$RL34:   ; CALL OCCURS {spi_flash_read_common} {0}  ; |248| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           CMPLT   .L1     A4,0,A0           ; |248| 
||         MV      .S1     A4,A10            ; |248| 

   [!A0]   BNOP    .S1     $C$L21,5          ; |248| 
           ; BRANCHCC OCCURS {$C$L21}        ; |248| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
;** 251	-----------------------    xdc_runtime_System_printf__E("SF: read data error %d\n", ret);
;** 252	-----------------------    return ret;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 251,column 9,is_stmt,isa 0
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$173, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |251| 
           MVKL    .S2     $C$SL22+0,B4
           MVKH    .S2     $C$SL22+0,B4
           STW     .D2T1   A10,*+SP(8)       ; |251| 
           STW     .D2T2   B4,*+SP(4)        ; |251| 
           ADDKPC  .S2     $C$RL35,B3,0      ; |251| 
$C$RL35:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |251| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 252,column 3,is_stmt,isa 0

           BNOP    .S1     $C$L23,5          ; |252| 
||         MV      .L1     A10,A4            ; |252| 

           ; BRANCH OCCURS {$C$L23}          ; |252| 
;** --------------------------------------------------------------------------*
$C$L21:    
;          EXCLUSIVE CPU CYCLES: 10
;**	-----------------------g5:
;** 210	-----------------------    spi = (*flash).spi;  // [10]
;** 214	-----------------------    cmd[0] = K$8;  // [10]
;** 215	-----------------------    *(C$28 = &cmd[1]) = K$48;  // [10]
;** 217	-----------------------    spi_claim_bus(spi);  // [10]
;** 218	-----------------------    ret = spi_flash_cmd_write(spi, &cmd, 1u, (const void *)C$28, 1u);  // [10]
;** 219	-----------------------    spi_release_bus(spi);  // [10]
;** 221	-----------------------    if ( (ret = ret) >= 0 ) goto g7;  // [10]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 210,column 20,is_stmt,isa 0
           LDW     .D1T1   *A11,A11          ; |210| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 214,column 5,is_stmt,isa 0
           STB     .D2T2   B11,*+SP(48)      ; |214| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 215,column 5,is_stmt,isa 0
           ADDAB   .D2     SP,49,B11         ; |215| 
           STB     .D2T2   B10,*B11          ; |215| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 217,column 2,is_stmt,isa 0
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("spi_claim_bus")
	.dwattr $C$DW$174, DW_AT_TI_call
           CALL    .S1     spi_claim_bus     ; |217| 
           MV      .L1     A11,A4            ; |217| 
           ADDKPC  .S2     $C$RL36,B3,3      ; |217| 
$C$RL36:   ; CALL OCCURS {spi_claim_bus} {0}  ; |217| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 218,column 2,is_stmt,isa 0
           MVK     .L1     0x1,A8            ; |218| 
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("spi_flash_cmd_write")
	.dwattr $C$DW$175, DW_AT_TI_call

           CALLP   .S2     spi_flash_cmd_write,B3
||         MV      .L1     A8,A6             ; |218| 
||         MV      .S1     A11,A4            ; |218| 
||         ADDAW   .D2     SP,12,B4          ; |218| 
||         MV      .L2     B11,B6            ; |218| 

$C$RL37:   ; CALL OCCURS {spi_flash_cmd_write} {0}  ; |218| 
           MV      .L1     A4,A10            ; |218| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 219,column 2,is_stmt,isa 0
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("spi_release_bus")
	.dwattr $C$DW$176, DW_AT_TI_call

           CALLP   .S2     spi_release_bus,B3
||         MV      .L1     A11,A4            ; |219| 

$C$RL38:   ; CALL OCCURS {spi_release_bus} {0}  ; |219| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 221,column 2,is_stmt,isa 0
           CMPLT   .L1     A10,0,A0          ; |221| 
   [!A0]   BNOP    .S1     $C$L22,5          ; |221| 
           ; BRANCHCC OCCURS {$C$L22}        ; |221| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
;** 258	-----------------------    xdc_runtime_System_printf__E("SF: Unable to clear bar extadd\n");
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 258,column 9,is_stmt,isa 0
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$177, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |258| 
           MVKL    .S2     $C$SL20+0,B4
           MVKH    .S2     $C$SL20+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |258| 
           ADDKPC  .S2     $C$RL39,B3,1      ; |258| 
$C$RL39:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |258| 
;** --------------------------------------------------------------------------*
$C$L22:    
;          EXCLUSIVE CPU CYCLES: 1
;**	-----------------------g7:
;** 261	-----------------------    return ret;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 261,column 5,is_stmt,isa 0
           MV      .L1     A10,A4            ; |261| 
;** --------------------------------------------------------------------------*
$C$L23:    
;          EXCLUSIVE CPU CYCLES: 15
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 262,column 1,is_stmt,isa 0
           ADDK    .S2     64,SP             ; |262| 
	.dwcfi	cfa_offset, 48
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 40
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDDW    .D2T1   *++SP,A13:A12
	.dwcfi	cfa_offset, 32
	.dwcfi	restore_reg, 13
	.dwcfi	restore_reg, 12
           LDW     .D2T1   *++SP(8),A14
	.dwcfi	cfa_offset, 24
	.dwcfi	restore_reg, 14
           LDW     .D2T2   *++SP(8),B3
	.dwcfi	cfa_offset, 16
	.dwcfi	restore_reg, 19
           LDDW    .D2T2   *++SP,B11:B10
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 27
	.dwcfi	restore_reg, 26
           LDW     .D2T1   *++SP(8),A15      ; |262| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 15
	.dwcfi	cfa_offset, 0
           NOP             2
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_TI_return
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3}  
	.dwattr $C$DW$141, DW_AT_TI_end_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$141, DW_AT_TI_end_line(0x106)
	.dwattr $C$DW$141, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$141

	.sect	".text"
	.clink
	.global	spansion_erase

$C$DW$179	.dwtag  DW_TAG_subprogram, DW_AT_name("spansion_erase")
	.dwattr $C$DW$179, DW_AT_low_pc(spansion_erase)
	.dwattr $C$DW$179, DW_AT_high_pc(0x00)
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("spansion_erase")
	.dwattr $C$DW$179, DW_AT_external
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$179, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$179, DW_AT_TI_begin_line(0x165)
	.dwattr $C$DW$179, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$179, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$179, DW_AT_decl_line(0x165)
	.dwattr $C$DW$179, DW_AT_decl_column(0x05)
	.dwattr $C$DW$179, DW_AT_TI_max_frame_size(0x60)
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 358,column 1,is_stmt,address spansion_erase,isa 0

	.dwfde $C$DW$CIE, spansion_erase
$C$DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_name("flash")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("flash")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$266)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg4]
$C$DW$181	.dwtag  DW_TAG_formal_parameter, DW_AT_name("offset")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("offset")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg20]
$C$DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: spansion_erase                                              *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,SP,   *
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,B0,*
;*                           B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,B13,DP,SP,*
;*                           A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27, *
;*                           A28,A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23, *
;*                           B24,B25,B26,B27,B28,B29,B30,B31                  *
;*   Local Frame Size  : 16 Args + 28 Auto + 48 Save = 92 byte                *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
spansion_erase:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 29
;** 358	-----------------------    len = len;
;** 371	-----------------------    C$31 = (*(struct pansion_spi_flash *)flash).params;
;** 371	-----------------------    sector_size = _mpyu((*C$31).page_size, (*C$31).pages_per_sector);
;** 373	-----------------------    if ( !(offset%sector_size || len%sector_size) ) goto g3;
	.dwcfi	cfa_offset, 0
           STW     .D2T2   B13,*SP--(8)      ; |358| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 29, 0
           STW     .D2T2   B12,*SP--(8)      ; |358| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 28, -8
           STDW    .D2T2   B11:B10,*SP--     ; |358| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 27, -12
	.dwcfi	save_reg_to_mem, 26, -16
           STW     .D2T2   B3,*SP--(8)       ; |358| 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 19, -24
           STW     .D2T1   A14,*SP--(8)      ; |358| 
	.dwcfi	cfa_offset, 40
	.dwcfi	save_reg_to_mem, 14, -32
           STDW    .D2T1   A13:A12,*SP--     ; |358| 
	.dwcfi	cfa_offset, 48
	.dwcfi	save_reg_to_mem, 13, -36
	.dwcfi	save_reg_to_mem, 12, -40
           STDW    .D2T1   A11:A10,*SP--     ; |358| 
	.dwcfi	cfa_offset, 56
	.dwcfi	save_reg_to_mem, 11, -44
	.dwcfi	save_reg_to_mem, 10, -48
           ADDK    .S2     -48,SP            ; |358| 
	.dwcfi	cfa_offset, 104
$C$DW$183	.dwtag  DW_TAG_variable, DW_AT_name("$O$C28")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("$O$C28")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$429)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg26]
$C$DW$184	.dwtag  DW_TAG_variable, DW_AT_name("$O$C29")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("$O$C29")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg20]
$C$DW$185	.dwtag  DW_TAG_variable, DW_AT_name("$O$C30")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("$O$C30")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$429)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg26]
$C$DW$186	.dwtag  DW_TAG_variable, DW_AT_name("$O$C31")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("$O$C31")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$260)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg3]
$C$DW$187	.dwtag  DW_TAG_variable, DW_AT_name("$O$U58")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("$O$U58")
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$187, DW_AT_location[DW_OP_reg29]
$C$DW$188	.dwtag  DW_TAG_variable, DW_AT_name("$O$K25")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("$O$K25")
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$188, DW_AT_location[DW_OP_reg20]
$C$DW$189	.dwtag  DW_TAG_variable, DW_AT_name("$O$K44")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("$O$K44")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg20]
$C$DW$190	.dwtag  DW_TAG_variable, DW_AT_name("$O$L1")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("$O$L1")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg14]
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("offset")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("offset")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$568)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg28]
$C$DW$192	.dwtag  DW_TAG_variable, DW_AT_name("flash")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("flash")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$881)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg12]
$C$DW$193	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg10]
$C$DW$194	.dwtag  DW_TAG_variable, DW_AT_name("sector_size")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("sector_size")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg13]
$C$DW$195	.dwtag  DW_TAG_variable, DW_AT_name("actual")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("actual")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg26]
$C$DW$196	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg10]
$C$DW$197	.dwtag  DW_TAG_variable, DW_AT_name("spi")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$265)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg11]
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("status")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_breg31 20]
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("spi")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$265)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg11]
$C$DW$200	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg11]
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("spi")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$265)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg14]
$C$DW$202	.dwtag  DW_TAG_variable, DW_AT_name("$O$v1")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("$O$v1")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg20]
$C$DW$203	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg11]
$C$DW$204	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg27]
$C$DW$205	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg10]
$C$DW$206	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("cmd")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$433)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_breg31 24]
$C$DW$207	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("cmd")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$431)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_breg31 32]
$C$DW$208	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("cmd")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$431)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_breg31 40]

           MV      .L2     B4,B12            ; |358| 
||         MV      .L1     A4,A12            ; |358| 
||         MV      .S1     A6,A10            ; |358| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 371,column 5,is_stmt,isa 0
           LDW     .D1T1   *+A12(28),A3      ; |371| 
           NOP             4
           LDHU    .D1T1   *+A3(6),A4        ; |371| 
           LDHU    .D1T1   *+A3(4),A3        ; |371| 
           NOP             4
           MPYU    .M1     A3,A4,A13         ; |371| 
           NOP             2
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 373,column 5,is_stmt,isa 0
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("__c6xabi_remu")
	.dwattr $C$DW$209, DW_AT_TI_call

           CALLP   .S2     __c6xabi_remu,B3
||         MV      .L2X    A13,B4            ; |373| 
||         MV      .L1X    B12,A4            ; |373| 

$C$RL40:   ; CALL OCCURS {__c6xabi_remu} {0}  ; |373| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A4,A0             ; |373| 
   [ A0]   B       .S1     $C$L24            ; |373| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("__c6xabi_remu")
	.dwattr $C$DW$210, DW_AT_TI_call
   [!A0]   CALL    .S1     __c6xabi_remu     ; |373| 
           MV      .L1     A6,A4             ; |373| 
           MV      .L2X    A13,B4            ; |373| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L24}        ; |373| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
           ADDKPC  .S2     $C$RL41,B3,0      ; |373| 
$C$RL41:   ; CALL OCCURS {__c6xabi_remu} {0}  ; |373| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A4,A0             ; |373| 
   [!A0]   BNOP    .S1     $C$L25,5          ; |373| 
           ; BRANCHCC OCCURS {$C$L25}        ; |373| 
;** --------------------------------------------------------------------------*
$C$L24:    
;          EXCLUSIVE CPU CYCLES: 8
;** 374	-----------------------    xdc_runtime_System_printf__E("SF: Erase offset/length not multiple of sector size\n");
;** 375	-----------------------    return (-1);
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 374,column 9,is_stmt,isa 0
           MVKL    .S2     $C$SL23+0,B4
           MVKH    .S2     $C$SL23+0,B4
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$211, DW_AT_TI_call

           CALLP   .S2     xdc_runtime_System_printf__E,B3
||         STW     .D2T2   B4,*+SP(4)        ; |374| 

$C$RL42:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |374| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 375,column 9,is_stmt,isa 0

           BNOP    .S1     $C$L37,5          ; |375| 
||         MVK     .L1     0xffffffff,A4     ; |375| 

           ; BRANCH OCCURS {$C$L37}          ; |375| 
;** --------------------------------------------------------------------------*
$C$L25:    
;          EXCLUSIVE CPU CYCLES: 11
;**	-----------------------g3:
;** 194	-----------------------    spi = (*flash).spi;  // [9]
;** 198	-----------------------    cmd[0] = K$25 = 23;  // [9]
;** 199	-----------------------    *(C$30 = &cmd[1]) = 128;  // [9]
;** 201	-----------------------    spi_claim_bus(spi);  // [9]
;** 202	-----------------------    ret = spi_flash_cmd_write(spi, &cmd, 1u, (const void *)C$30, 1u);  // [9]
;** 203	-----------------------    spi_release_bus(spi);  // [9]
;** 379	-----------------------    if ( ret >= 0 ) goto g5;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 194,column 20,is_stmt,isa 0
           LDW     .D1T1   *A12,A14          ; |194| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 198,column 5,is_stmt,isa 0
           MVK     .S2     0x17,B4           ; |198| 
           STB     .D2T2   B4,*+SP(40)       ; |198| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 199,column 5,is_stmt,isa 0

           MVK     .S2     128,B4            ; |199| 
||         ADDAB   .D2     SP,41,B10         ; |199| 

           STB     .D2T2   B4,*B10           ; |199| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 201,column 2,is_stmt,isa 0
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("spi_claim_bus")
	.dwattr $C$DW$212, DW_AT_TI_call
           CALL    .S1     spi_claim_bus     ; |201| 
           MV      .L1     A14,A4            ; |201| 
           ADDKPC  .S2     $C$RL43,B3,3      ; |201| 
$C$RL43:   ; CALL OCCURS {spi_claim_bus} {0}  ; |201| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 202,column 2,is_stmt,isa 0
           MVK     .L1     0x1,A8            ; |202| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("spi_flash_cmd_write")
	.dwattr $C$DW$213, DW_AT_TI_call

           CALLP   .S2     spi_flash_cmd_write,B3
||         MV      .L1     A8,A6             ; |202| 
||         MV      .S1     A14,A4            ; |202| 
||         ADDAW   .D2     SP,10,B4          ; |202| 
||         MV      .L2     B10,B6            ; |202| 

$C$RL44:   ; CALL OCCURS {spi_flash_cmd_write} {0}  ; |202| 
           MV      .L1     A4,A11            ; |202| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 203,column 2,is_stmt,isa 0
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("spi_release_bus")
	.dwattr $C$DW$214, DW_AT_TI_call

           CALLP   .S2     spi_release_bus,B3
||         MV      .L1     A14,A4            ; |203| 

$C$RL45:   ; CALL OCCURS {spi_release_bus} {0}  ; |203| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 379,column 5,is_stmt,isa 0
           CMPLT   .L1     A11,0,A0          ; |379| 
   [!A0]   BNOP    .S1     $C$L26,5          ; |379| 
           ; BRANCHCC OCCURS {$C$L26}        ; |379| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
;** 381	-----------------------    xdc_runtime_System_printf__E("SF: Unable to set bar extadd\n");
;** 382	-----------------------    return ret;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 381,column 9,is_stmt,isa 0
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$215, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |381| 
           MVKL    .S2     $C$SL12+0,B4
           MVKH    .S2     $C$SL12+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |381| 
           ADDKPC  .S2     $C$RL46,B3,1      ; |381| 
$C$RL46:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |381| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 382,column 3,is_stmt,isa 0

           BNOP    .S1     $C$L37,5          ; |382| 
||         MV      .L1     A11,A4            ; |382| 

           ; BRANCH OCCURS {$C$L37}          ; |382| 
;** --------------------------------------------------------------------------*
$C$L26:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g5:
;** 385	-----------------------    len /= sector_size;
;** 386	-----------------------    cmd[0] = 220;
;** 387	-----------------------    cmd[3] = K$44 = 0;
;** 388	-----------------------    cmd[4] = K$44;
;** 390	-----------------------    if ( !(ret = spi_claim_bus((*flash).spi)) ) goto g7;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 385,column 5,is_stmt,isa 0
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("__c6xabi_divu")
	.dwattr $C$DW$216, DW_AT_TI_call
           CALL    .S1     __c6xabi_divu     ; |385| 
           ADDKPC  .S2     $C$RL47,B3,3      ; |385| 

           MV      .L1     A10,A4            ; |385| 
||         MV      .L2X    A13,B4            ; |385| 

$C$RL47:   ; CALL OCCURS {__c6xabi_divu} {0}  ; |385| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 12
           MV      .L1     A4,A10            ; |385| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 386,column 5,is_stmt,isa 0
           MVK     .S2     220,B4            ; |386| 
           STB     .D2T2   B4,*+SP(24)       ; |386| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 387,column 5,is_stmt,isa 0
           ZERO    .L2     B4                ; |387| 
           STB     .D2T2   B4,*+SP(27)       ; |387| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 388,column 5,is_stmt,isa 0
           STB     .D2T2   B4,*+SP(28)       ; |388| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 390,column 5,is_stmt,isa 0
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("spi_claim_bus")
	.dwattr $C$DW$217, DW_AT_TI_call

           CALLP   .S2     spi_claim_bus,B3
||         LDW     .D1T1   *A12,A4           ; |390| 

$C$RL48:   ; CALL OCCURS {spi_claim_bus} {0}  ; |390| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MV      .L1     A4,A0             ; |390| 
||         MV      .S1     A4,A11            ; |390| 

   [!A0]   BNOP    .S1     $C$L27,5          ; |390| 
           ; BRANCHCC OCCURS {$C$L27}        ; |390| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
;** 392	-----------------------    xdc_runtime_System_printf__E("SF: Unable to claim SPI bus\n");
;** 393	-----------------------    return ret;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 392,column 9,is_stmt,isa 0
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$218, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |392| 
           MVKL    .S2     $C$SL13+0,B4
           MVKH    .S2     $C$SL13+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |392| 
           ADDKPC  .S2     $C$RL49,B3,1      ; |392| 
$C$RL49:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |392| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 393,column 9,is_stmt,isa 0

           BNOP    .S1     $C$L37,5          ; |393| 
||         MV      .L1     A11,A4

           ; BRANCH OCCURS {$C$L37}          ; |393| 
;** --------------------------------------------------------------------------*
$C$L27:    
;          EXCLUSIVE CPU CYCLES: 7
;**	-----------------------g7:
;** 397	-----------------------    if ( !len ) goto g22;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 397,column 22,is_stmt,isa 0
           MV      .L1     A10,A0
   [!A0]   B       .S1     $C$L35            ; |397| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("__c6xabi_divu")
	.dwattr $C$DW$219, DW_AT_TI_call
   [ A0]   CALL    .S1     __c6xabi_divu
           NOP             4
           ; BRANCHCC OCCURS {$C$L35}        ; |397| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
;**  	-----------------------    U$58 = offset/sector_size;
;** 398	-----------------------    L$1 = len;
;** 397	-----------------------    actual = 0u;
;**  	-----------------------    #pragma MUST_ITERATE(1, 4294967295, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)

           MV      .L2X    A13,B4
||         MV      .L1X    B12,A4
||         ADDKPC  .S2     $C$RL50,B3,0

$C$RL50:   ; CALL OCCURS {__c6xabi_divu} {0} 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 3
           MV      .L2X    A4,B13
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 398,column 9,is_stmt,isa 0
           MV      .L1     A10,A14           ; |398| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 397,column 10,is_stmt,isa 0
           ZERO    .L2     B10               ; |397| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L28
;** --------------------------------------------------------------------------*
$C$L28:    
$C$DW$L$spansion_erase$20$B:
;          EXCLUSIVE CPU CYCLES: 10
;**	-----------------------g9:
;** 398	-----------------------    C$29 = U$58+actual;
;** 398	-----------------------    cmd[1] = C$29>>8;
;** 399	-----------------------    cmd[2] = C$29;
;** 401	-----------------------    if ( spi_flash_cmd((*flash).spi, 6u, NULL, 0u) < 0 ) goto g21;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 398,column 9,is_stmt,isa 0
           ADD     .L2     B10,B13,B4        ; |398| 
           SHRU    .S2     B4,8,B5           ; |398| 
           STB     .D2T2   B5,*+SP(25)       ; |398| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 399,column 9,is_stmt,isa 0
           STB     .D2T2   B4,*+SP(26)       ; |399| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 401,column 9,is_stmt,isa 0
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("spi_flash_cmd")
	.dwattr $C$DW$220, DW_AT_TI_call
           CALL    .S1     spi_flash_cmd     ; |401| 
           LDW     .D1T1   *A12,A4           ; |401| 
           MVK     .L2     0x6,B4            ; |401| 
           ADDKPC  .S2     $C$RL51,B3,1      ; |401| 

           ZERO    .L1     A6                ; |401| 
||         ZERO    .L2     B6                ; |401| 

$C$RL51:   ; CALL OCCURS {spi_flash_cmd} {0}  ; |401| 
$C$DW$L$spansion_erase$20$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_erase$21$B:
;          EXCLUSIVE CPU CYCLES: 7
           CMPLT   .L1     A4,0,A0           ; |401| 
   [ A0]   BNOP    .S1     $C$L34,5          ; |401| 
           ; BRANCHCC OCCURS {$C$L34}        ; |401| 
$C$DW$L$spansion_erase$21$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_erase$22$B:
;          EXCLUSIVE CPU CYCLES: 6
;** 407	-----------------------    if ( spi_flash_cmd_write((*flash).spi, &cmd, 5u, NULL, 0u) < 0 ) goto g20;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 407,column 9,is_stmt,isa 0
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("spi_flash_cmd_write")
	.dwattr $C$DW$221, DW_AT_TI_call
           CALL    .S1     spi_flash_cmd_write ; |407| 
           LDW     .D1T1   *A12,A4           ; |407| 
           ADDKPC  .S2     $C$RL52,B3,2      ; |407| 

           MVK     .L1     0x5,A6            ; |407| 
||         ZERO    .L2     B6                ; |407| 
||         ZERO    .S1     A8                ; |407| 
||         ADDAW   .D2     SP,6,B4           ; |407| 

$C$RL52:   ; CALL OCCURS {spi_flash_cmd_write} {0}  ; |407| 
$C$DW$L$spansion_erase$22$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_erase$23$B:
;          EXCLUSIVE CPU CYCLES: 7
           CMPLT   .L1     A4,0,A0           ; |407| 
   [ A0]   BNOP    .S1     $C$L33,5          ; |407| 
           ; BRANCHCC OCCURS {$C$L33}        ; |407| 
$C$DW$L$spansion_erase$23$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_erase$24$B:
;          EXCLUSIVE CPU CYCLES: 1
;** 168	-----------------------    spi = (*flash).spi;  // [8]
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 168,column 20,is_stmt,isa 0
           LDW     .D1T1   *A12,A11          ; |168| 
$C$DW$L$spansion_erase$24$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L29:    
$C$DW$L$spansion_erase$25$B:
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g12:
;** 174	-----------------------    if ( spi_flash_cmd(spi, 5u, &status, 1u) ) goto g16;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 174,column 3,is_stmt,isa 0
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("spi_flash_cmd")
	.dwattr $C$DW$222, DW_AT_TI_call
           CALL    .S1     spi_flash_cmd     ; |174| 
           ADDAW   .D2     SP,5,B5
           ADDKPC  .S2     $C$RL53,B3,2      ; |174| 

           MVK     .L2     0x1,B6            ; |174| 
||         MVK     .S2     0x5,B4            ; |174| 
||         MV      .L1     A11,A4            ; |174| 
||         MV      .S1X    B5,A6             ; |174| 

$C$RL53:   ; CALL OCCURS {spi_flash_cmd} {0}  ; |174| 
$C$DW$L$spansion_erase$25$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_erase$26$B:
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A4,A0             ; |174| 
   [ A0]   BNOP    .S1     $C$L30,5          ; |174| 
           ; BRANCHCC OCCURS {$C$L30}        ; |174| 
$C$DW$L$spansion_erase$26$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_erase$27$B:
;          EXCLUSIVE CPU CYCLES: 12
;** 179	-----------------------    v$1 = (int)status;  // [8]
;** 179	-----------------------    if ( status&1 ) goto g12;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 179,column 4,is_stmt,isa 0
           LDBU    .D2T2   *+SP(20),B4       ; |179| 
           NOP             4

           AND     .L2     1,B4,B0           ; |179| 
||         LDBU    .D2T2   *+SP(20),B4       ; |179| 

   [ B0]   BNOP    .S1     $C$L29,5          ; |179| 
           ; BRANCHCC OCCURS {$C$L29}        ; |179| 
$C$DW$L$spansion_erase$27$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_erase$28$B:
;          EXCLUSIVE CPU CYCLES: 7
;** 184	-----------------------    if ( v$1&1 ) goto g16;  // [8]
;** 185	-----------------------    ret = 0;  // [8]
;** 185	-----------------------    goto g17;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 184,column 2,is_stmt,isa 0
           AND     .L2     1,B4,B0           ; |184| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 185,column 3,is_stmt,isa 0

   [!B0]   BNOP    .S1     $C$L31,5          ; |185| 
|| [!B0]   ZERO    .L2     B11               ; |185| 

           ; BRANCHCC OCCURS {$C$L31}        ; |185| 
$C$DW$L$spansion_erase$28$E:
;** --------------------------------------------------------------------------*
$C$L30:    
$C$DW$L$spansion_erase$29$B:
;          EXCLUSIVE CPU CYCLES: 1
;**	-----------------------g16:
;** 176	-----------------------    ret = (-1);  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 176,column 4,is_stmt,isa 0
           MVK     .L2     0xffffffff,B11    ; |176| 
$C$DW$L$spansion_erase$29$E:
;** --------------------------------------------------------------------------*
$C$L31:    
$C$DW$L$spansion_erase$30$B:
;          EXCLUSIVE CPU CYCLES: 7
;**	-----------------------g17:
;** 415	-----------------------    if ( ret < 0 ) goto g19;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 415,column 9,is_stmt,isa 0
           CMPLT   .L2     B11,0,B0          ; |415| 
   [ B0]   BNOP    .S1     $C$L32,5          ; |415| 
           ; BRANCHCC OCCURS {$C$L32}        ; |415| 
$C$DW$L$spansion_erase$30$E:
;** --------------------------------------------------------------------------*
$C$DW$L$spansion_erase$31$B:
;          EXCLUSIVE CPU CYCLES: 7
;** 397	-----------------------    ++actual;
;** 397	-----------------------    if ( L$1 = L$1-1 ) goto g9;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 397,column 22,is_stmt,isa 0

           SUB     .L1     A14,1,A0          ; |397| 
||         ADD     .L2     1,B10,B10         ; |397| 
||         SUB     .S1     A14,1,A14         ; |397| 

   [ A0]   B       .S1     $C$L28            ; |397| 
   [!A0]   BNOP    .S1     $C$L35,4          ; |397| 
           ; BRANCHCC OCCURS {$C$L28}        ; |397| 
$C$DW$L$spansion_erase$31$E:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
;** 397	-----------------------    goto g22;
           NOP             1
           ; BRANCH OCCURS {$C$L35}          ; |397| 
;** --------------------------------------------------------------------------*
$C$L32:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g19:
;** 416	-----------------------    xdc_runtime_System_printf__E("SF: SPANSION page erase timed out\n");
;** 417	-----------------------    goto g22;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 416,column 13,is_stmt,isa 0
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$223, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |416| 
           MVKL    .S2     $C$SL24+0,B4
           MVKH    .S2     $C$SL24+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |416| 
           ADDKPC  .S2     $C$RL54,B3,1      ; |416| 
$C$RL54:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |416| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 417,column 13,is_stmt,isa 0
           BNOP    .S1     $C$L35,5          ; |417| 
           ; BRANCH OCCURS {$C$L35}          ; |417| 
;** --------------------------------------------------------------------------*
$C$L33:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g20:
;** 409	-----------------------    xdc_runtime_System_printf__E("SF: SPANSION page erase failed\n");
;** 410	-----------------------    goto g22;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 409,column 13,is_stmt,isa 0
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$224, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |409| 
           MVKL    .S2     $C$SL25+0,B4
           MVKH    .S2     $C$SL25+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |409| 
           ADDKPC  .S2     $C$RL55,B3,1      ; |409| 
$C$RL55:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |409| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 410,column 13,is_stmt,isa 0
           BNOP    .S1     $C$L35,5          ; |410| 
           ; BRANCH OCCURS {$C$L35}          ; |410| 
;** --------------------------------------------------------------------------*
$C$L34:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g21:
;** 403	-----------------------    xdc_runtime_System_printf__E("SF: Enabling Write failed\n");
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 403,column 13,is_stmt,isa 0
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$225, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |403| 
           MVKL    .S2     $C$SL18+0,B4
           MVKH    .S2     $C$SL18+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |403| 
           ADDKPC  .S2     $C$RL56,B3,1      ; |403| 
$C$RL56:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |403| 
;** --------------------------------------------------------------------------*
$C$L35:    
;          EXCLUSIVE CPU CYCLES: 7
;**	-----------------------g22:
;** 421	-----------------------    xdc_runtime_System_printf__E("SF: SPANSION: Successfully erased %u bytes @ 0x%x\n", len*sector_size, offset);
;** 424	-----------------------    spi_release_bus((*flash).spi);
;** 210	-----------------------    spi = (*flash).spi;  // [10]
;** 214	-----------------------    cmd[0] = K$25;  // [10]
;** 215	-----------------------    *(C$28 = &cmd[1]) = K$44;  // [10]
;** 217	-----------------------    spi_claim_bus(spi);  // [10]
;** 218	-----------------------    ret = spi_flash_cmd_write(spi, &cmd, 1u, (const void *)C$28, 1u);  // [10]
;** 219	-----------------------    spi_release_bus(spi);  // [10]
;** 221	-----------------------    if ( (ret = ret) >= 0 ) goto g24;  // [10]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 421,column 5,is_stmt,isa 0
           MPY32   .M1     A13,A10,A3        ; |421| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$226, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |421| 
           MVKL    .S2     $C$SL26+0,B4
           MVKH    .S2     $C$SL26+0,B4
           STW     .D2T2   B12,*+SP(12)      ; |421| 
           STW     .D2T1   A3,*+SP(8)        ; |421| 

           STW     .D2T2   B4,*+SP(4)        ; |421| 
||         ADDKPC  .S2     $C$RL57,B3,0      ; |421| 

$C$RL57:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |421| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 31
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 424,column 5,is_stmt,isa 0
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("spi_release_bus")
	.dwattr $C$DW$227, DW_AT_TI_call

           CALLP   .S2     spi_release_bus,B3
||         LDW     .D1T1   *A12,A4           ; |424| 

$C$RL58:   ; CALL OCCURS {spi_release_bus} {0}  ; |424| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 210,column 20,is_stmt,isa 0
           LDW     .D1T1   *A12,A11          ; |210| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 214,column 5,is_stmt,isa 0
           MVK     .S2     0x17,B4           ; |198| 
           STB     .D2T2   B4,*+SP(32)       ; |214| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 215,column 5,is_stmt,isa 0

           ADDAB   .D2     SP,33,B10         ; |215| 
||         ZERO    .L2     B4                ; |387| 

           STB     .D2T2   B4,*B10           ; |215| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 217,column 2,is_stmt,isa 0
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("spi_claim_bus")
	.dwattr $C$DW$228, DW_AT_TI_call

           CALLP   .S2     spi_claim_bus,B3
||         MV      .L1     A11,A4            ; |217| 

$C$RL59:   ; CALL OCCURS {spi_claim_bus} {0}  ; |217| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 218,column 2,is_stmt,isa 0
           MVK     .L1     0x1,A8            ; |218| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("spi_flash_cmd_write")
	.dwattr $C$DW$229, DW_AT_TI_call

           CALLP   .S2     spi_flash_cmd_write,B3
||         MV      .L1     A8,A6             ; |218| 
||         MV      .L2     B10,B6            ; |218| 
||         MV      .S1     A11,A4            ; |218| 
||         ADDAW   .D2     SP,8,B4           ; |218| 

$C$RL60:   ; CALL OCCURS {spi_flash_cmd_write} {0}  ; |218| 
           MV      .L1     A4,A10            ; |218| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 219,column 2,is_stmt,isa 0
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("spi_release_bus")
	.dwattr $C$DW$230, DW_AT_TI_call

           CALLP   .S2     spi_release_bus,B3
||         MV      .L1     A11,A4            ; |219| 

$C$RL61:   ; CALL OCCURS {spi_release_bus} {0}  ; |219| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 221,column 2,is_stmt,isa 0
           CMPLT   .L1     A10,0,A0          ; |221| 
   [!A0]   BNOP    .S1     $C$L36,5          ; |221| 
           ; BRANCHCC OCCURS {$C$L36}        ; |221| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
;** 429	-----------------------    xdc_runtime_System_printf__E("SF: Unable to clear bar extadd\n");
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 429,column 9,is_stmt,isa 0
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$231, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |429| 
           MVKL    .S2     $C$SL20+0,B4
           MVKH    .S2     $C$SL20+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |429| 
           ADDKPC  .S2     $C$RL62,B3,1      ; |429| 
$C$RL62:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |429| 
;** --------------------------------------------------------------------------*
$C$L36:    
;          EXCLUSIVE CPU CYCLES: 1
;**	-----------------------g24:
;** 432	-----------------------    return ret;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 432,column 2,is_stmt,isa 0
           MV      .L1     A10,A4            ; |432| 
;** --------------------------------------------------------------------------*
$C$L37:    
;          EXCLUSIVE CPU CYCLES: 15
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c",line 433,column 1,is_stmt,isa 0
           ADDK    .S2     48,SP             ; |433| 
	.dwcfi	cfa_offset, 56
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 48
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDDW    .D2T1   *++SP,A13:A12
	.dwcfi	cfa_offset, 40
	.dwcfi	restore_reg, 13
	.dwcfi	restore_reg, 12
           LDW     .D2T1   *++SP(8),A14
	.dwcfi	cfa_offset, 32
	.dwcfi	restore_reg, 14
           LDW     .D2T2   *++SP(8),B3
	.dwcfi	cfa_offset, 24
	.dwcfi	restore_reg, 19
           LDDW    .D2T2   *++SP,B11:B10
	.dwcfi	cfa_offset, 16
	.dwcfi	restore_reg, 27
	.dwcfi	restore_reg, 26
           LDW     .D2T2   *++SP(8),B12
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 28
           LDW     .D2T2   *++SP(8),B13      ; |433| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 29
	.dwcfi	cfa_offset, 0
           NOP             1
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_TI_return
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3}  

$C$DW$233	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$233, DW_AT_name("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\ccs_build\M3-Master\spansion.asm:$C$L28:1:1473636152")
	.dwattr $C$DW$233, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$233, DW_AT_TI_begin_line(0x18d)
	.dwattr $C$DW$233, DW_AT_TI_end_line(0x1a3)
$C$DW$234	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$234, DW_AT_low_pc($C$DW$L$spansion_erase$20$B)
	.dwattr $C$DW$234, DW_AT_high_pc($C$DW$L$spansion_erase$20$E)
$C$DW$235	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$235, DW_AT_low_pc($C$DW$L$spansion_erase$21$B)
	.dwattr $C$DW$235, DW_AT_high_pc($C$DW$L$spansion_erase$21$E)
$C$DW$236	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$236, DW_AT_low_pc($C$DW$L$spansion_erase$22$B)
	.dwattr $C$DW$236, DW_AT_high_pc($C$DW$L$spansion_erase$22$E)
$C$DW$237	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$237, DW_AT_low_pc($C$DW$L$spansion_erase$23$B)
	.dwattr $C$DW$237, DW_AT_high_pc($C$DW$L$spansion_erase$23$E)
$C$DW$238	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$238, DW_AT_low_pc($C$DW$L$spansion_erase$24$B)
	.dwattr $C$DW$238, DW_AT_high_pc($C$DW$L$spansion_erase$24$E)
$C$DW$239	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$239, DW_AT_low_pc($C$DW$L$spansion_erase$28$B)
	.dwattr $C$DW$239, DW_AT_high_pc($C$DW$L$spansion_erase$28$E)
$C$DW$240	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$240, DW_AT_low_pc($C$DW$L$spansion_erase$29$B)
	.dwattr $C$DW$240, DW_AT_high_pc($C$DW$L$spansion_erase$29$E)
$C$DW$241	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$241, DW_AT_low_pc($C$DW$L$spansion_erase$30$B)
	.dwattr $C$DW$241, DW_AT_high_pc($C$DW$L$spansion_erase$30$E)
$C$DW$242	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$242, DW_AT_low_pc($C$DW$L$spansion_erase$31$B)
	.dwattr $C$DW$242, DW_AT_high_pc($C$DW$L$spansion_erase$31$E)

$C$DW$243	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$243, DW_AT_name("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\ccs_build\M3-Master\spansion.asm:$C$L29:2:1473636152")
	.dwattr $C$DW$243, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$243, DW_AT_TI_begin_line(0xad)
	.dwattr $C$DW$243, DW_AT_TI_end_line(0xb5)
$C$DW$244	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$244, DW_AT_low_pc($C$DW$L$spansion_erase$25$B)
	.dwattr $C$DW$244, DW_AT_high_pc($C$DW$L$spansion_erase$25$E)
$C$DW$245	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$245, DW_AT_low_pc($C$DW$L$spansion_erase$26$B)
	.dwattr $C$DW$245, DW_AT_high_pc($C$DW$L$spansion_erase$26$E)
$C$DW$246	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$246, DW_AT_low_pc($C$DW$L$spansion_erase$27$B)
	.dwattr $C$DW$246, DW_AT_high_pc($C$DW$L$spansion_erase$27$E)
	.dwendtag $C$DW$243

	.dwendtag $C$DW$233

	.dwattr $C$DW$179, DW_AT_TI_end_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$179, DW_AT_TI_end_line(0x1b1)
	.dwattr $C$DW$179, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$179

;; Inlined function references:
;; [  8] spansion_wait_ready
;; [  9] spansion_set_bar_extadd
;; [ 10] spansion_clear_bar_extadd
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const:.string"
$C$SL1:	.string	"S25FL008A",0
$C$SL2:	.string	"S25FL016A",0
$C$SL3:	.string	"S25FL032A",0
$C$SL4:	.string	"S25FL064A",0
$C$SL5:	.string	"S25FL128P_64K",0
$C$SL6:	.string	"S25FL128P_256K",0
$C$SL7:	.string	"S25FL128S_64K",0
$C$SL8:	.string	"S25FL256S_64K",0
$C$SL9:	.string	"SF: Unsupported SPANSION ID %04x %04x",10,0
$C$SL10:	.string	"SF: Detected %s with page size %u, total %u bytes",10,0
$C$SL11:	.string	"SF: Failed to allocate memory",10,0
$C$SL12:	.string	"SF: Unable to set bar extadd",10,0
$C$SL13:	.string	"SF: Unable to claim SPI bus",10,0
$C$SL14:	.string	"PP: 0x%p => cmd = { 0x%02x 0x%02x%02x%02x } chunk_len = %d",10
	.string	0
$C$SL15:	.string	"SF: Failed to send read command (%zu bytes): %d",10,0
$C$SL16:	.string	"SF: SPANSION page programming timed out",10,0
$C$SL17:	.string	"SF: SPANSION Page Program failed",10,0
$C$SL18:	.string	"SF: Enabling Write failed",10,0
$C$SL19:	.string	"SF: SPANSION: Successfully programmed %u bytes @ 0x%x",10,0
$C$SL20:	.string	"SF: Unable to clear bar extadd",10,0
$C$SL21:	.string	"READ: 0x%x => cmd = { 0x%02x 0x%02x%02x%02x%02x } len = 0x%"
	.string	"x",10,0
$C$SL22:	.string	"SF: read data error %d",10,0
$C$SL23:	.string	"SF: Erase offset/length not multiple of sector size",10,0
$C$SL24:	.string	"SF: SPANSION page erase timed out",10,0
$C$SL25:	.string	"SF: SPANSION page erase failed",10,0
$C$SL26:	.string	"SF: SPANSION: Successfully erased %u bytes @ 0x%x",10,0
;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	spi_claim_bus
	.global	spi_release_bus
	.global	spi_xfer
	.global	xdc_runtime_System_printf__E
	.global	spi_flash_cmd
	.global	spi_flash_cmd_write
	.global	spi_flash_read_common
	.global	spi_claim_bus_write_fast
	.global	spi_xfer_write_fast
	.global	spi_claim_bus_back
	.global	malloc
	.global	__c6xabi_divu
	.global	__c6xabi_remu

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_Long_Precision_Bits(2)
	.battr "TI", Tag_File, 1, Tag_Bitfield_layout(2)
	.battr "TI", Tag_File, 1, Tag_ABI_enum_size(2)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_wchar_t(1)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_array_object_alignment(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_array_object_align_expected(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_PIC(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_PID(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_DSBT(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_stack_align_needed(0)
	.battr "c6xabi", Tag_File, 1, Tag_ABI_stack_align_preserved(0)
	.battr "TI", Tag_File, 1, Tag_Tramps_Use_SOC(1)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$276	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$276, DW_AT_type(*$C$DW$T$3)
$C$DW$T$277	.dwtag  DW_TAG_typedef, DW_AT_name("__builtin_va_list")
	.dwattr $C$DW$T$277, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$277, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$277, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$T$277, DW_AT_decl_line(0x1de)
	.dwattr $C$DW$T$277, DW_AT_decl_column(0x01)
$C$DW$T$140	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Ptr")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$140, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$140, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x1a)
$C$DW$T$278	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__gateObj")
	.dwattr $C$DW$T$278, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$278, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$278, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$278, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$278, DW_AT_decl_column(0x11)
$C$DW$T$279	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__gatePrms")
	.dwattr $C$DW$T$279, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$279, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$279, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$279, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$279, DW_AT_decl_column(0x11)
$C$DW$T$280	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__loggerObj")
	.dwattr $C$DW$T$280, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$280, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$280, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$280, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$280, DW_AT_decl_column(0x11)
$C$DW$T$281	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Object__table")
	.dwattr $C$DW$T$281, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$281, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$281, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$281, DW_AT_decl_line(0x94)
	.dwattr $C$DW$T$281, DW_AT_decl_column(0x11)
$C$DW$T$282	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__gateObj")
	.dwattr $C$DW$T$282, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$282, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$282, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$282, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$282, DW_AT_decl_column(0x11)
$C$DW$T$283	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__gatePrms")
	.dwattr $C$DW$T$283, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$283, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$283, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$283, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$283, DW_AT_decl_column(0x11)
$C$DW$T$284	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__loggerObj")
	.dwattr $C$DW$T$284, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$284, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$284, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$284, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$T$284, DW_AT_decl_column(0x11)
$C$DW$T$285	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Object__table")
	.dwattr $C$DW$T$285, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$285, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$285, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$285, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$T$285, DW_AT_decl_column(0x11)
$C$DW$T$286	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__gateObj")
	.dwattr $C$DW$T$286, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$286, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$286, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$286, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$286, DW_AT_decl_column(0x11)
$C$DW$T$287	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__gatePrms")
	.dwattr $C$DW$T$287, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$287, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$287, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$287, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$287, DW_AT_decl_column(0x11)
$C$DW$T$288	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__loggerObj")
	.dwattr $C$DW$T$288, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$288, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$288, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$288, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$288, DW_AT_decl_column(0x11)
$C$DW$T$289	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Object__table")
	.dwattr $C$DW$T$289, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$289, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$289, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$289, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$289, DW_AT_decl_column(0x11)
$C$DW$T$290	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__gateObj")
	.dwattr $C$DW$T$290, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$290, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$290, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$290, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$290, DW_AT_decl_column(0x11)
$C$DW$T$291	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__gatePrms")
	.dwattr $C$DW$T$291, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$291, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$291, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$291, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$291, DW_AT_decl_column(0x11)
$C$DW$T$292	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__loggerObj")
	.dwattr $C$DW$T$292, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$292, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$292, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$292, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$292, DW_AT_decl_column(0x11)
$C$DW$T$293	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Object__table")
	.dwattr $C$DW$T$293, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$293, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$293, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$293, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$293, DW_AT_decl_column(0x11)
$C$DW$T$294	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__gateObj")
	.dwattr $C$DW$T$294, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$294, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$294, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$294, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$294, DW_AT_decl_column(0x11)
$C$DW$T$295	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__gatePrms")
	.dwattr $C$DW$T$295, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$295, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$295, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$295, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$295, DW_AT_decl_column(0x11)
$C$DW$T$296	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__loggerObj")
	.dwattr $C$DW$T$296, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$296, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$296, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$296, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$296, DW_AT_decl_column(0x11)
$C$DW$T$297	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Object__table")
	.dwattr $C$DW$T$297, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$297, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$297, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$297, DW_AT_decl_line(0x90)
	.dwattr $C$DW$T$297, DW_AT_decl_column(0x11)
$C$DW$T$298	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__gateObj")
	.dwattr $C$DW$T$298, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$298, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$298, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$298, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$298, DW_AT_decl_column(0x11)
$C$DW$T$299	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__gatePrms")
	.dwattr $C$DW$T$299, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$299, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$299, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$299, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$299, DW_AT_decl_column(0x11)
$C$DW$T$300	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__loggerObj")
	.dwattr $C$DW$T$300, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$300, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$300, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$300, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$300, DW_AT_decl_column(0x11)
$C$DW$T$301	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Object__table")
	.dwattr $C$DW$T$301, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$301, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$301, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$301, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$301, DW_AT_decl_column(0x11)
$C$DW$T$302	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__gateObj")
	.dwattr $C$DW$T$302, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$302, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$302, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$302, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$302, DW_AT_decl_column(0x11)
$C$DW$T$303	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__gatePrms")
	.dwattr $C$DW$T$303, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$303, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$303, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$303, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$303, DW_AT_decl_column(0x11)
$C$DW$T$304	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__loggerObj")
	.dwattr $C$DW$T$304, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$304, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$304, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$304, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$304, DW_AT_decl_column(0x11)
$C$DW$T$305	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Object__table")
	.dwattr $C$DW$T$305, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$305, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$305, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$305, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$T$305, DW_AT_decl_column(0x11)
$C$DW$T$306	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__gateObj")
	.dwattr $C$DW$T$306, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$306, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$306, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$306, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$306, DW_AT_decl_column(0x11)
$C$DW$T$307	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__gatePrms")
	.dwattr $C$DW$T$307, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$307, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$307, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$307, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$307, DW_AT_decl_column(0x11)
$C$DW$T$308	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__loggerObj")
	.dwattr $C$DW$T$308, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$308, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$308, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$308, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$308, DW_AT_decl_column(0x11)
$C$DW$T$309	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Object__table")
	.dwattr $C$DW$T$309, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$309, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$309, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$309, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$309, DW_AT_decl_column(0x11)
$C$DW$T$310	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__gateObj")
	.dwattr $C$DW$T$310, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$310, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$310, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$310, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$310, DW_AT_decl_column(0x11)
$C$DW$T$311	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__gatePrms")
	.dwattr $C$DW$T$311, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$311, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$311, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$311, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$311, DW_AT_decl_column(0x11)
$C$DW$T$312	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__loggerObj")
	.dwattr $C$DW$T$312, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$312, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$312, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$312, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$312, DW_AT_decl_column(0x11)
$C$DW$T$313	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Object__table")
	.dwattr $C$DW$T$313, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$313, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$313, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$313, DW_AT_decl_line(0xae)
	.dwattr $C$DW$T$313, DW_AT_decl_column(0x11)
$C$DW$T$314	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__gateObj")
	.dwattr $C$DW$T$314, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$314, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$314, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$314, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$314, DW_AT_decl_column(0x11)
$C$DW$T$315	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__gatePrms")
	.dwattr $C$DW$T$315, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$315, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$315, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$315, DW_AT_decl_line(0x55)
	.dwattr $C$DW$T$315, DW_AT_decl_column(0x11)
$C$DW$T$316	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__loggerObj")
	.dwattr $C$DW$T$316, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$316, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$316, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$316, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$316, DW_AT_decl_column(0x11)
$C$DW$T$317	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Object__table")
	.dwattr $C$DW$T$317, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$317, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$317, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$317, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$317, DW_AT_decl_column(0x11)
$C$DW$T$318	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__gateObj")
	.dwattr $C$DW$T$318, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$318, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$318, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$318, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$318, DW_AT_decl_column(0x11)
$C$DW$T$319	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__gatePrms")
	.dwattr $C$DW$T$319, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$319, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$319, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$319, DW_AT_decl_line(0xde)
	.dwattr $C$DW$T$319, DW_AT_decl_column(0x11)
$C$DW$T$320	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__loggerObj")
	.dwattr $C$DW$T$320, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$320, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$320, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$320, DW_AT_decl_line(0xea)
	.dwattr $C$DW$T$320, DW_AT_decl_column(0x11)
$C$DW$T$321	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Object__table")
	.dwattr $C$DW$T$321, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$321, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$321, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$321, DW_AT_decl_line(0x112)
	.dwattr $C$DW$T$321, DW_AT_decl_column(0x11)
$C$DW$T$324	.dwtag  DW_TAG_typedef, DW_AT_name("Ptr")
	.dwattr $C$DW$T$324, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$324, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$324, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$324, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$T$324, DW_AT_decl_column(0x19)

$C$DW$T$144	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$144, DW_AT_language(DW_LANG_C)
$C$DW$247	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$3)
$C$DW$248	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$141)
$C$DW$249	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$141)
$C$DW$250	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$143)
	.dwendtag $C$DW$T$144

$C$DW$T$145	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$T$145, DW_AT_address_class(0x20)
$C$DW$T$322	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IHeap_alloc_FxnT")
	.dwattr $C$DW$T$322, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$T$322, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$322, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$T$322, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$T$322, DW_AT_decl_column(0x13)
$C$DW$T$323	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_HeapProxy_alloc_FxnT")
	.dwattr $C$DW$T$323, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$T$323, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$323, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$323, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$T$323, DW_AT_decl_column(0x13)

$C$DW$T$197	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$197, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$197, DW_AT_language(DW_LANG_C)
$C$DW$251	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$196)
$C$DW$252	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$141)
$C$DW$253	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$141)
$C$DW$254	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$143)
	.dwendtag $C$DW$T$197

$C$DW$T$198	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$198, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$T$198, DW_AT_address_class(0x20)

$C$DW$T$242	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$242, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$242, DW_AT_language(DW_LANG_C)
$C$DW$255	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$140)
$C$DW$256	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$141)
$C$DW$257	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$241)
$C$DW$258	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$241)
$C$DW$259	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$141)
$C$DW$260	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$143)
	.dwendtag $C$DW$T$242

$C$DW$T$243	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$243, DW_AT_type(*$C$DW$T$242)
	.dwattr $C$DW$T$243, DW_AT_address_class(0x20)

$C$DW$T$254	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$254, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$254, DW_AT_language(DW_LANG_C)
$C$DW$261	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$140)
$C$DW$262	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$141)
$C$DW$263	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$241)
$C$DW$264	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$253)
$C$DW$265	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$141)
$C$DW$266	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$143)
	.dwendtag $C$DW$T$254

$C$DW$T$255	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$255, DW_AT_type(*$C$DW$T$254)
	.dwattr $C$DW$T$255, DW_AT_address_class(0x20)
$C$DW$T$241	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$241, DW_AT_type(*$C$DW$T$140)

$C$DW$T$128	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
$C$DW$267	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$3)
$C$DW$268	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$T$128

$C$DW$T$129	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$129, DW_AT_address_class(0x20)
$C$DW$T$326	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IGateProvider_leave_FxnT")
	.dwattr $C$DW$T$326, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$326, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$326, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$T$326, DW_AT_decl_line(0xad)
	.dwattr $C$DW$T$326, DW_AT_decl_column(0x14)
$C$DW$T$327	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Main_Module_GateProxy_leave_FxnT")
	.dwattr $C$DW$T$327, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$327, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$327, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$327, DW_AT_decl_line(0x111)
	.dwattr $C$DW$T$327, DW_AT_decl_column(0x14)
$C$DW$T$328	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_Module_GateProxy_leave_FxnT")
	.dwattr $C$DW$T$328, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$328, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$328, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$328, DW_AT_decl_line(0x111)
	.dwattr $C$DW$T$328, DW_AT_decl_column(0x14)
$C$DW$T$132	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$2)
$C$DW$T$133	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$133, DW_AT_address_class(0x20)
$C$DW$T$325	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$325, DW_AT_type(*$C$DW$T$133)

$C$DW$T$146	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$146, DW_AT_language(DW_LANG_C)
$C$DW$269	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$3)
$C$DW$270	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$140)
$C$DW$271	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$141)
	.dwendtag $C$DW$T$146

$C$DW$T$147	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$147, DW_AT_address_class(0x20)
$C$DW$T$329	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IHeap_free_FxnT")
	.dwattr $C$DW$T$329, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$329, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$329, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$T$329, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$T$329, DW_AT_decl_column(0x14)
$C$DW$T$330	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_HeapProxy_free_FxnT")
	.dwattr $C$DW$T$330, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$330, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$330, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$330, DW_AT_decl_line(0x113)
	.dwattr $C$DW$T$330, DW_AT_decl_column(0x14)

$C$DW$T$152	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)
$C$DW$272	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$3)
$C$DW$273	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$151)
	.dwendtag $C$DW$T$152

$C$DW$T$153	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$T$153, DW_AT_address_class(0x20)
$C$DW$T$331	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IHeap_getStats_FxnT")
	.dwattr $C$DW$T$331, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$T$331, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$331, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$T$331, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$T$331, DW_AT_decl_column(0x14)
$C$DW$T$332	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_HeapProxy_getStats_FxnT")
	.dwattr $C$DW$T$332, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$T$332, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$332, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$332, DW_AT_decl_line(0x121)
	.dwattr $C$DW$T$332, DW_AT_decl_column(0x14)

$C$DW$T$168	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$168, DW_AT_language(DW_LANG_C)
$C$DW$274	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$104)
	.dwendtag $C$DW$T$168

$C$DW$T$169	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$169, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$T$169, DW_AT_address_class(0x20)
$C$DW$T$333	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ISystemSupport_abort_FxnT")
	.dwattr $C$DW$T$333, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$T$333, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$333, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$T$333, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$333, DW_AT_decl_column(0x14)

$C$DW$T$170	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$170, DW_AT_language(DW_LANG_C)
$C$DW$275	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$123)
	.dwendtag $C$DW$T$170

$C$DW$T$171	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$171, DW_AT_type(*$C$DW$T$170)
	.dwattr $C$DW$T$171, DW_AT_address_class(0x20)
$C$DW$T$334	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ISystemSupport_exit_FxnT")
	.dwattr $C$DW$T$334, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$T$334, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$334, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$T$334, DW_AT_decl_line(0x87)
	.dwattr $C$DW$T$334, DW_AT_decl_column(0x14)
$C$DW$T$335	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_AtexitHandler")
	.dwattr $C$DW$T$335, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$T$335, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$335, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$335, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$335, DW_AT_decl_column(0x14)
$C$DW$T$336	.dwtag  DW_TAG_typedef, DW_AT_name("__T1_xdc_runtime_System_Module_State__atexitHandlers")
	.dwattr $C$DW$T$336, DW_AT_type(*$C$DW$T$335)
	.dwattr $C$DW$T$336, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$336, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$336, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$336, DW_AT_decl_column(0x2a)
$C$DW$T$337	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$337, DW_AT_type(*$C$DW$T$335)
	.dwattr $C$DW$T$337, DW_AT_address_class(0x20)
$C$DW$T$338	.dwtag  DW_TAG_typedef, DW_AT_name("__ARRAY1_xdc_runtime_System_Module_State__atexitHandlers")
	.dwattr $C$DW$T$338, DW_AT_type(*$C$DW$T$337)
	.dwattr $C$DW$T$338, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$338, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$338, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$338, DW_AT_decl_column(0x2b)
$C$DW$T$339	.dwtag  DW_TAG_typedef, DW_AT_name("__TA_xdc_runtime_System_Module_State__atexitHandlers")
	.dwattr $C$DW$T$339, DW_AT_type(*$C$DW$T$338)
	.dwattr $C$DW$T$339, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$339, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$339, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$339, DW_AT_decl_column(0x42)

$C$DW$T$172	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$172, DW_AT_language(DW_LANG_C)
$C$DW$T$173	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$T$173, DW_AT_address_class(0x20)
$C$DW$T$340	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ISystemSupport_flush_FxnT")
	.dwattr $C$DW$T$340, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$T$340, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$340, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$T$340, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$T$340, DW_AT_decl_column(0x14)

$C$DW$T$175	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$175, DW_AT_language(DW_LANG_C)
$C$DW$276	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$174)
	.dwendtag $C$DW$T$175

$C$DW$T$176	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$176, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$T$176, DW_AT_address_class(0x20)
$C$DW$T$341	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ISystemSupport_putch_FxnT")
	.dwattr $C$DW$T$341, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$T$341, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$341, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$T$341, DW_AT_decl_line(0x95)
	.dwattr $C$DW$T$341, DW_AT_decl_column(0x14)

$C$DW$T$184	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$184, DW_AT_language(DW_LANG_C)
$C$DW$277	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$181)
$C$DW$278	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$T$184

$C$DW$T$185	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$185, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$T$185, DW_AT_address_class(0x20)

$C$DW$T$199	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$199, DW_AT_language(DW_LANG_C)
$C$DW$279	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$196)
$C$DW$280	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$140)
$C$DW$281	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$141)
	.dwendtag $C$DW$T$199

$C$DW$T$200	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$200, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$T$200, DW_AT_address_class(0x20)

$C$DW$T$203	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$203, DW_AT_language(DW_LANG_C)
$C$DW$282	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$196)
$C$DW$283	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$151)
	.dwendtag $C$DW$T$203

$C$DW$T$204	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$204, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$T$204, DW_AT_address_class(0x20)

$C$DW$T$218	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$218, DW_AT_language(DW_LANG_C)
$C$DW$284	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$215)
$C$DW$285	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$T$218

$C$DW$T$219	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$219, DW_AT_type(*$C$DW$T$218)
	.dwattr $C$DW$T$219, DW_AT_address_class(0x20)

$C$DW$T$244	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$244, DW_AT_language(DW_LANG_C)
$C$DW$286	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$140)
	.dwendtag $C$DW$T$244

$C$DW$T$245	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$245, DW_AT_type(*$C$DW$T$244)
	.dwattr $C$DW$T$245, DW_AT_address_class(0x20)

$C$DW$T$345	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$345, DW_AT_language(DW_LANG_C)
$C$DW$287	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$140)
$C$DW$288	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$344)
$C$DW$289	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$91)
	.dwendtag $C$DW$T$345

$C$DW$T$346	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$346, DW_AT_type(*$C$DW$T$345)
	.dwattr $C$DW$T$346, DW_AT_address_class(0x20)
$C$DW$T$347	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_LoggerFxn0")
	.dwattr $C$DW$T$347, DW_AT_type(*$C$DW$T$346)
	.dwattr $C$DW$T$347, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$347, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$347, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$347, DW_AT_decl_column(0x14)
$C$DW$T$348	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__loggerFxn0")
	.dwattr $C$DW$T$348, DW_AT_type(*$C$DW$T$347)
	.dwattr $C$DW$T$348, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$348, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$348, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$348, DW_AT_decl_column(0x26)
$C$DW$T$349	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__loggerFxn0")
	.dwattr $C$DW$T$349, DW_AT_type(*$C$DW$T$347)
	.dwattr $C$DW$T$349, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$349, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$349, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$T$349, DW_AT_decl_column(0x26)
$C$DW$T$350	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__loggerFxn0")
	.dwattr $C$DW$T$350, DW_AT_type(*$C$DW$T$347)
	.dwattr $C$DW$T$350, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$350, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$350, DW_AT_decl_line(0x90)
	.dwattr $C$DW$T$350, DW_AT_decl_column(0x26)
$C$DW$T$351	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn0")
	.dwattr $C$DW$T$351, DW_AT_type(*$C$DW$T$347)
	.dwattr $C$DW$T$351, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$351, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$351, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$351, DW_AT_decl_column(0x26)
$C$DW$T$352	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__loggerFxn0")
	.dwattr $C$DW$T$352, DW_AT_type(*$C$DW$T$347)
	.dwattr $C$DW$T$352, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$352, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$352, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$352, DW_AT_decl_column(0x26)
$C$DW$T$353	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn0")
	.dwattr $C$DW$T$353, DW_AT_type(*$C$DW$T$347)
	.dwattr $C$DW$T$353, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$353, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$353, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$353, DW_AT_decl_column(0x26)
$C$DW$T$354	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__loggerFxn0")
	.dwattr $C$DW$T$354, DW_AT_type(*$C$DW$T$347)
	.dwattr $C$DW$T$354, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$354, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$354, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$354, DW_AT_decl_column(0x26)
$C$DW$T$355	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn0")
	.dwattr $C$DW$T$355, DW_AT_type(*$C$DW$T$347)
	.dwattr $C$DW$T$355, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$355, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$355, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$355, DW_AT_decl_column(0x26)
$C$DW$T$356	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__loggerFxn0")
	.dwattr $C$DW$T$356, DW_AT_type(*$C$DW$T$347)
	.dwattr $C$DW$T$356, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$356, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$356, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$356, DW_AT_decl_column(0x26)
$C$DW$T$357	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__loggerFxn0")
	.dwattr $C$DW$T$357, DW_AT_type(*$C$DW$T$347)
	.dwattr $C$DW$T$357, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$357, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$357, DW_AT_decl_line(0x65)
	.dwattr $C$DW$T$357, DW_AT_decl_column(0x26)
$C$DW$T$358	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__loggerFxn0")
	.dwattr $C$DW$T$358, DW_AT_type(*$C$DW$T$347)
	.dwattr $C$DW$T$358, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$358, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$358, DW_AT_decl_line(0xee)
	.dwattr $C$DW$T$358, DW_AT_decl_column(0x26)

$C$DW$T$359	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$359, DW_AT_language(DW_LANG_C)
$C$DW$290	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$140)
$C$DW$291	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$344)
$C$DW$292	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$91)
$C$DW$293	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$T$359

$C$DW$T$360	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$360, DW_AT_type(*$C$DW$T$359)
	.dwattr $C$DW$T$360, DW_AT_address_class(0x20)
$C$DW$T$361	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_LoggerFxn1")
	.dwattr $C$DW$T$361, DW_AT_type(*$C$DW$T$360)
	.dwattr $C$DW$T$361, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$361, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$361, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$T$361, DW_AT_decl_column(0x14)
$C$DW$T$362	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__loggerFxn1")
	.dwattr $C$DW$T$362, DW_AT_type(*$C$DW$T$361)
	.dwattr $C$DW$T$362, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$362, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$362, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$362, DW_AT_decl_column(0x26)
$C$DW$T$363	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__loggerFxn1")
	.dwattr $C$DW$T$363, DW_AT_type(*$C$DW$T$361)
	.dwattr $C$DW$T$363, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$363, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$363, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$T$363, DW_AT_decl_column(0x26)
$C$DW$T$364	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__loggerFxn1")
	.dwattr $C$DW$T$364, DW_AT_type(*$C$DW$T$361)
	.dwattr $C$DW$T$364, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$364, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$364, DW_AT_decl_line(0x94)
	.dwattr $C$DW$T$364, DW_AT_decl_column(0x26)
$C$DW$T$365	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn1")
	.dwattr $C$DW$T$365, DW_AT_type(*$C$DW$T$361)
	.dwattr $C$DW$T$365, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$365, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$365, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$365, DW_AT_decl_column(0x26)
$C$DW$T$366	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__loggerFxn1")
	.dwattr $C$DW$T$366, DW_AT_type(*$C$DW$T$361)
	.dwattr $C$DW$T$366, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$366, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$366, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$366, DW_AT_decl_column(0x26)
$C$DW$T$367	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn1")
	.dwattr $C$DW$T$367, DW_AT_type(*$C$DW$T$361)
	.dwattr $C$DW$T$367, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$367, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$367, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$367, DW_AT_decl_column(0x26)
$C$DW$T$368	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__loggerFxn1")
	.dwattr $C$DW$T$368, DW_AT_type(*$C$DW$T$361)
	.dwattr $C$DW$T$368, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$368, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$368, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$368, DW_AT_decl_column(0x26)
$C$DW$T$369	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn1")
	.dwattr $C$DW$T$369, DW_AT_type(*$C$DW$T$361)
	.dwattr $C$DW$T$369, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$369, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$369, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$369, DW_AT_decl_column(0x26)
$C$DW$T$370	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__loggerFxn1")
	.dwattr $C$DW$T$370, DW_AT_type(*$C$DW$T$361)
	.dwattr $C$DW$T$370, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$370, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$370, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$T$370, DW_AT_decl_column(0x26)
$C$DW$T$371	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__loggerFxn1")
	.dwattr $C$DW$T$371, DW_AT_type(*$C$DW$T$361)
	.dwattr $C$DW$T$371, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$371, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$371, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$371, DW_AT_decl_column(0x26)
$C$DW$T$372	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__loggerFxn1")
	.dwattr $C$DW$T$372, DW_AT_type(*$C$DW$T$361)
	.dwattr $C$DW$T$372, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$372, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$372, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$T$372, DW_AT_decl_column(0x26)

$C$DW$T$373	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$373, DW_AT_language(DW_LANG_C)
$C$DW$294	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$140)
$C$DW$295	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$344)
$C$DW$296	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$91)
$C$DW$297	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$87)
$C$DW$298	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$T$373

$C$DW$T$374	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$374, DW_AT_type(*$C$DW$T$373)
	.dwattr $C$DW$T$374, DW_AT_address_class(0x20)
$C$DW$T$375	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_LoggerFxn2")
	.dwattr $C$DW$T$375, DW_AT_type(*$C$DW$T$374)
	.dwattr $C$DW$T$375, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$375, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$375, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$375, DW_AT_decl_column(0x14)
$C$DW$T$376	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__loggerFxn2")
	.dwattr $C$DW$T$376, DW_AT_type(*$C$DW$T$375)
	.dwattr $C$DW$T$376, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$376, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$376, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$376, DW_AT_decl_column(0x26)
$C$DW$T$377	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__loggerFxn2")
	.dwattr $C$DW$T$377, DW_AT_type(*$C$DW$T$375)
	.dwattr $C$DW$T$377, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$377, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$377, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$T$377, DW_AT_decl_column(0x26)
$C$DW$T$378	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__loggerFxn2")
	.dwattr $C$DW$T$378, DW_AT_type(*$C$DW$T$375)
	.dwattr $C$DW$T$378, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$378, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$378, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$378, DW_AT_decl_column(0x26)
$C$DW$T$379	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn2")
	.dwattr $C$DW$T$379, DW_AT_type(*$C$DW$T$375)
	.dwattr $C$DW$T$379, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$379, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$379, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$379, DW_AT_decl_column(0x26)
$C$DW$T$380	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__loggerFxn2")
	.dwattr $C$DW$T$380, DW_AT_type(*$C$DW$T$375)
	.dwattr $C$DW$T$380, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$380, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$380, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$380, DW_AT_decl_column(0x26)
$C$DW$T$381	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn2")
	.dwattr $C$DW$T$381, DW_AT_type(*$C$DW$T$375)
	.dwattr $C$DW$T$381, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$381, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$381, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$381, DW_AT_decl_column(0x26)
$C$DW$T$382	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__loggerFxn2")
	.dwattr $C$DW$T$382, DW_AT_type(*$C$DW$T$375)
	.dwattr $C$DW$T$382, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$382, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$382, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$382, DW_AT_decl_column(0x26)
$C$DW$T$383	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn2")
	.dwattr $C$DW$T$383, DW_AT_type(*$C$DW$T$375)
	.dwattr $C$DW$T$383, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$383, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$383, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$383, DW_AT_decl_column(0x26)
$C$DW$T$384	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__loggerFxn2")
	.dwattr $C$DW$T$384, DW_AT_type(*$C$DW$T$375)
	.dwattr $C$DW$T$384, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$384, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$384, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$384, DW_AT_decl_column(0x26)
$C$DW$T$385	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__loggerFxn2")
	.dwattr $C$DW$T$385, DW_AT_type(*$C$DW$T$375)
	.dwattr $C$DW$T$385, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$385, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$385, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$385, DW_AT_decl_column(0x26)
$C$DW$T$386	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__loggerFxn2")
	.dwattr $C$DW$T$386, DW_AT_type(*$C$DW$T$375)
	.dwattr $C$DW$T$386, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$386, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$386, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$T$386, DW_AT_decl_column(0x26)

$C$DW$T$387	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$387, DW_AT_language(DW_LANG_C)
$C$DW$299	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$140)
$C$DW$300	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$344)
$C$DW$301	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$91)
$C$DW$302	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$87)
$C$DW$303	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$87)
$C$DW$304	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$87)
$C$DW$305	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$T$387

$C$DW$T$388	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$388, DW_AT_type(*$C$DW$T$387)
	.dwattr $C$DW$T$388, DW_AT_address_class(0x20)
$C$DW$T$389	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_LoggerFxn4")
	.dwattr $C$DW$T$389, DW_AT_type(*$C$DW$T$388)
	.dwattr $C$DW$T$389, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$389, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$389, DW_AT_decl_line(0x95)
	.dwattr $C$DW$T$389, DW_AT_decl_column(0x14)
$C$DW$T$390	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__loggerFxn4")
	.dwattr $C$DW$T$390, DW_AT_type(*$C$DW$T$389)
	.dwattr $C$DW$T$390, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$390, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$390, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$390, DW_AT_decl_column(0x26)
$C$DW$T$391	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__loggerFxn4")
	.dwattr $C$DW$T$391, DW_AT_type(*$C$DW$T$389)
	.dwattr $C$DW$T$391, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$391, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$391, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$T$391, DW_AT_decl_column(0x26)
$C$DW$T$392	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__loggerFxn4")
	.dwattr $C$DW$T$392, DW_AT_type(*$C$DW$T$389)
	.dwattr $C$DW$T$392, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$392, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$392, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$T$392, DW_AT_decl_column(0x26)
$C$DW$T$393	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn4")
	.dwattr $C$DW$T$393, DW_AT_type(*$C$DW$T$389)
	.dwattr $C$DW$T$393, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$393, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$393, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$393, DW_AT_decl_column(0x26)
$C$DW$T$394	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__loggerFxn4")
	.dwattr $C$DW$T$394, DW_AT_type(*$C$DW$T$389)
	.dwattr $C$DW$T$394, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$394, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$394, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$394, DW_AT_decl_column(0x26)
$C$DW$T$395	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn4")
	.dwattr $C$DW$T$395, DW_AT_type(*$C$DW$T$389)
	.dwattr $C$DW$T$395, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$395, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$395, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$395, DW_AT_decl_column(0x26)
$C$DW$T$396	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__loggerFxn4")
	.dwattr $C$DW$T$396, DW_AT_type(*$C$DW$T$389)
	.dwattr $C$DW$T$396, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$396, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$396, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$396, DW_AT_decl_column(0x26)
$C$DW$T$397	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn4")
	.dwattr $C$DW$T$397, DW_AT_type(*$C$DW$T$389)
	.dwattr $C$DW$T$397, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$397, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$397, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$397, DW_AT_decl_column(0x26)
$C$DW$T$398	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__loggerFxn4")
	.dwattr $C$DW$T$398, DW_AT_type(*$C$DW$T$389)
	.dwattr $C$DW$T$398, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$398, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$398, DW_AT_decl_line(0x96)
	.dwattr $C$DW$T$398, DW_AT_decl_column(0x26)
$C$DW$T$399	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__loggerFxn4")
	.dwattr $C$DW$T$399, DW_AT_type(*$C$DW$T$389)
	.dwattr $C$DW$T$399, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$399, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$399, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$399, DW_AT_decl_column(0x26)
$C$DW$T$400	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__loggerFxn4")
	.dwattr $C$DW$T$400, DW_AT_type(*$C$DW$T$389)
	.dwattr $C$DW$T$400, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$400, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$400, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$T$400, DW_AT_decl_column(0x26)

$C$DW$T$401	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$401, DW_AT_language(DW_LANG_C)
$C$DW$306	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$140)
$C$DW$307	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$344)
$C$DW$308	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$91)
$C$DW$309	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$87)
$C$DW$310	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$87)
$C$DW$311	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$87)
$C$DW$312	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$87)
$C$DW$313	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$87)
$C$DW$314	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$87)
$C$DW$315	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$87)
$C$DW$316	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$T$401

$C$DW$T$402	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$402, DW_AT_type(*$C$DW$T$401)
	.dwattr $C$DW$T$402, DW_AT_address_class(0x20)
$C$DW$T$403	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_LoggerFxn8")
	.dwattr $C$DW$T$403, DW_AT_type(*$C$DW$T$402)
	.dwattr $C$DW$T$403, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$403, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$403, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$403, DW_AT_decl_column(0x14)
$C$DW$T$404	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__loggerFxn8")
	.dwattr $C$DW$T$404, DW_AT_type(*$C$DW$T$403)
	.dwattr $C$DW$T$404, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$404, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$404, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$404, DW_AT_decl_column(0x26)
$C$DW$T$405	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__loggerFxn8")
	.dwattr $C$DW$T$405, DW_AT_type(*$C$DW$T$403)
	.dwattr $C$DW$T$405, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$405, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$405, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$405, DW_AT_decl_column(0x26)
$C$DW$T$406	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__loggerFxn8")
	.dwattr $C$DW$T$406, DW_AT_type(*$C$DW$T$403)
	.dwattr $C$DW$T$406, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$406, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$406, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$T$406, DW_AT_decl_column(0x26)
$C$DW$T$407	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn8")
	.dwattr $C$DW$T$407, DW_AT_type(*$C$DW$T$403)
	.dwattr $C$DW$T$407, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$407, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$407, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$407, DW_AT_decl_column(0x26)
$C$DW$T$408	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__loggerFxn8")
	.dwattr $C$DW$T$408, DW_AT_type(*$C$DW$T$403)
	.dwattr $C$DW$T$408, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$408, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$408, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$408, DW_AT_decl_column(0x26)
$C$DW$T$409	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn8")
	.dwattr $C$DW$T$409, DW_AT_type(*$C$DW$T$403)
	.dwattr $C$DW$T$409, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$409, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$409, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$409, DW_AT_decl_column(0x26)
$C$DW$T$410	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__loggerFxn8")
	.dwattr $C$DW$T$410, DW_AT_type(*$C$DW$T$403)
	.dwattr $C$DW$T$410, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$410, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$410, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$410, DW_AT_decl_column(0x26)
$C$DW$T$411	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn8")
	.dwattr $C$DW$T$411, DW_AT_type(*$C$DW$T$403)
	.dwattr $C$DW$T$411, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$411, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$411, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$411, DW_AT_decl_column(0x26)
$C$DW$T$412	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__loggerFxn8")
	.dwattr $C$DW$T$412, DW_AT_type(*$C$DW$T$403)
	.dwattr $C$DW$T$412, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$412, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$412, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$412, DW_AT_decl_column(0x26)
$C$DW$T$413	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__loggerFxn8")
	.dwattr $C$DW$T$413, DW_AT_type(*$C$DW$T$403)
	.dwattr $C$DW$T$413, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$413, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$413, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$413, DW_AT_decl_column(0x26)
$C$DW$T$414	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__loggerFxn8")
	.dwattr $C$DW$T$414, DW_AT_type(*$C$DW$T$403)
	.dwattr $C$DW$T$414, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$414, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$414, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$T$414, DW_AT_decl_column(0x26)

$C$DW$T$415	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$415, DW_AT_language(DW_LANG_C)
$C$DW$317	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$143)
	.dwendtag $C$DW$T$415

$C$DW$T$416	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$416, DW_AT_type(*$C$DW$T$415)
	.dwattr $C$DW$T$416, DW_AT_address_class(0x20)
$C$DW$T$417	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Error_HookFxn")
	.dwattr $C$DW$T$417, DW_AT_type(*$C$DW$T$416)
	.dwattr $C$DW$T$417, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$417, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$417, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$417, DW_AT_decl_column(0x14)
$C$DW$T$418	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_raiseHook")
	.dwattr $C$DW$T$418, DW_AT_type(*$C$DW$T$417)
	.dwattr $C$DW$T$418, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$418, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$418, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$T$418, DW_AT_decl_column(0x23)
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$420	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$420, DW_AT_type(*$C$DW$T$5)
$C$DW$T$421	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$421, DW_AT_type(*$C$DW$T$420)
	.dwattr $C$DW$T$421, DW_AT_address_class(0x20)
$C$DW$T$423	.dwtag  DW_TAG_typedef, DW_AT_name("int8_t")
	.dwattr $C$DW$T$423, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$423, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$423, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$423, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$423, DW_AT_decl_column(0x1d)
$C$DW$T$424	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$424, DW_AT_type(*$C$DW$T$423)
	.dwattr $C$DW$T$424, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$424, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$424, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$424, DW_AT_decl_column(0x17)
$C$DW$T$425	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Int8")
	.dwattr $C$DW$T$425, DW_AT_type(*$C$DW$T$424)
	.dwattr $C$DW$T$425, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$425, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$425, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$425, DW_AT_decl_column(0x19)
$C$DW$T$426	.dwtag  DW_TAG_typedef, DW_AT_name("Int8")
	.dwattr $C$DW$T$426, DW_AT_type(*$C$DW$T$425)
	.dwattr $C$DW$T$426, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$426, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$426, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$T$426, DW_AT_decl_column(0x19)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$427	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$427, DW_AT_type(*$C$DW$T$6)
$C$DW$T$428	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$428, DW_AT_type(*$C$DW$T$427)
	.dwattr $C$DW$T$428, DW_AT_address_class(0x20)
$C$DW$T$429	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$429, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$429, DW_AT_address_class(0x20)
$C$DW$T$430	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$430, DW_AT_type(*$C$DW$T$429)

$C$DW$T$431	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$431, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$431, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$431, DW_AT_byte_size(0x02)
$C$DW$318	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$318, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$431


$C$DW$T$432	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$432, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$432, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$432, DW_AT_byte_size(0x06)
$C$DW$319	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$319, DW_AT_upper_bound(0x05)
	.dwendtag $C$DW$T$432


$C$DW$T$433	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$433, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$433, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$433, DW_AT_byte_size(0x05)
$C$DW$320	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$320, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$433

$C$DW$T$435	.dwtag  DW_TAG_typedef, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$435, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$435, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$435, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$435, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$435, DW_AT_decl_column(0x1c)
$C$DW$T$438	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$438, DW_AT_type(*$C$DW$T$435)
	.dwattr $C$DW$T$438, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$438, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$438, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$438, DW_AT_decl_column(0x16)
$C$DW$T$439	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UInt8")
	.dwattr $C$DW$T$439, DW_AT_type(*$C$DW$T$438)
	.dwattr $C$DW$T$439, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$439, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$439, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$439, DW_AT_decl_column(0x19)
$C$DW$T$440	.dwtag  DW_TAG_typedef, DW_AT_name("UInt8")
	.dwattr $C$DW$T$440, DW_AT_type(*$C$DW$T$439)
	.dwattr $C$DW$T$440, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$440, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$440, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$T$440, DW_AT_decl_column(0x19)
$C$DW$T$441	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$441, DW_AT_type(*$C$DW$T$439)
	.dwattr $C$DW$T$441, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$441, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$441, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$T$441, DW_AT_decl_column(0x19)
$C$DW$T$436	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Bits8")
	.dwattr $C$DW$T$436, DW_AT_type(*$C$DW$T$435)
	.dwattr $C$DW$T$436, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$436, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$436, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$436, DW_AT_decl_column(0x19)
$C$DW$T$437	.dwtag  DW_TAG_typedef, DW_AT_name("Bits8")
	.dwattr $C$DW$T$437, DW_AT_type(*$C$DW$T$436)
	.dwattr $C$DW$T$437, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$437, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$437, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$T$437, DW_AT_decl_column(0x19)
$C$DW$T$251	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UChar")
	.dwattr $C$DW$T$251, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$251, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$251, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$251, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$T$251, DW_AT_decl_column(0x19)
$C$DW$T$434	.dwtag  DW_TAG_typedef, DW_AT_name("UChar")
	.dwattr $C$DW$T$434, DW_AT_type(*$C$DW$T$251)
	.dwattr $C$DW$T$434, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$434, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$434, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$T$434, DW_AT_decl_column(0x19)
$C$DW$T$252	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$252, DW_AT_type(*$C$DW$T$251)
$C$DW$T$253	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$253, DW_AT_type(*$C$DW$T$252)
	.dwattr $C$DW$T$253, DW_AT_address_class(0x20)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$444	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$444, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$444, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$444, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$444, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$444, DW_AT_decl_column(0x1d)
$C$DW$T$445	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$445, DW_AT_type(*$C$DW$T$444)
	.dwattr $C$DW$T$445, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$445, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$445, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$445, DW_AT_decl_column(0x17)
$C$DW$T$446	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Int16")
	.dwattr $C$DW$T$446, DW_AT_type(*$C$DW$T$445)
	.dwattr $C$DW$T$446, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$446, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$446, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$446, DW_AT_decl_column(0x19)
$C$DW$T$447	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$447, DW_AT_type(*$C$DW$T$446)
	.dwattr $C$DW$T$447, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$447, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$447, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$447, DW_AT_decl_column(0x19)
$C$DW$T$442	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Short")
	.dwattr $C$DW$T$442, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$442, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$442, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$442, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$T$442, DW_AT_decl_column(0x19)
$C$DW$T$443	.dwtag  DW_TAG_typedef, DW_AT_name("Short")
	.dwattr $C$DW$T$443, DW_AT_type(*$C$DW$T$442)
	.dwattr $C$DW$T$443, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$443, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$443, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$T$443, DW_AT_decl_column(0x19)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$89	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$89, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$89, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$89, DW_AT_decl_column(0x1c)
$C$DW$T$96	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$96, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$96, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$96, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$96, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$96, DW_AT_decl_column(0x16)
$C$DW$T$97	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UInt16")
	.dwattr $C$DW$T$97, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$T$97, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$97, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$97, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$97, DW_AT_decl_column(0x19)
$C$DW$T$506	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_maxDepth")
	.dwattr $C$DW$T$506, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$506, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$506, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$506, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$506, DW_AT_decl_column(0x14)
$C$DW$T$505	.dwtag  DW_TAG_typedef, DW_AT_name("UInt16")
	.dwattr $C$DW$T$505, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$505, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$505, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$505, DW_AT_decl_line(0xea)
	.dwattr $C$DW$T$505, DW_AT_decl_column(0x19)
$C$DW$T$507	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$507, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$507, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$507, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$507, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$T$507, DW_AT_decl_column(0x19)
$C$DW$T$90	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Bits16")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$90, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x19)
$C$DW$T$504	.dwtag  DW_TAG_typedef, DW_AT_name("Bits16")
	.dwattr $C$DW$T$504, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$504, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$504, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$504, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$T$504, DW_AT_decl_column(0x19)
$C$DW$T$480	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$480, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$480, DW_AT_address_class(0x20)
$C$DW$T$481	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__diagsMask")
	.dwattr $C$DW$T$481, DW_AT_type(*$C$DW$T$480)
	.dwattr $C$DW$T$481, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$481, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$481, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$481, DW_AT_decl_column(0x15)
$C$DW$T$482	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__diagsMask")
	.dwattr $C$DW$T$482, DW_AT_type(*$C$DW$T$480)
	.dwattr $C$DW$T$482, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$482, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$482, DW_AT_decl_line(0xab)
	.dwattr $C$DW$T$482, DW_AT_decl_column(0x15)
$C$DW$T$483	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__diagsMask")
	.dwattr $C$DW$T$483, DW_AT_type(*$C$DW$T$480)
	.dwattr $C$DW$T$483, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$483, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$483, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$483, DW_AT_decl_column(0x15)
$C$DW$T$484	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__diagsMask")
	.dwattr $C$DW$T$484, DW_AT_type(*$C$DW$T$480)
	.dwattr $C$DW$T$484, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$484, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$484, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$484, DW_AT_decl_column(0x15)
$C$DW$T$485	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__diagsMask")
	.dwattr $C$DW$T$485, DW_AT_type(*$C$DW$T$480)
	.dwattr $C$DW$T$485, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$485, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$485, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$485, DW_AT_decl_column(0x15)
$C$DW$T$486	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__diagsMask")
	.dwattr $C$DW$T$486, DW_AT_type(*$C$DW$T$480)
	.dwattr $C$DW$T$486, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$486, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$486, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$486, DW_AT_decl_column(0x15)
$C$DW$T$487	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__diagsMask")
	.dwattr $C$DW$T$487, DW_AT_type(*$C$DW$T$480)
	.dwattr $C$DW$T$487, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$487, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$487, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$487, DW_AT_decl_column(0x15)
$C$DW$T$488	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__diagsMask")
	.dwattr $C$DW$T$488, DW_AT_type(*$C$DW$T$480)
	.dwattr $C$DW$T$488, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$488, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$488, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$488, DW_AT_decl_column(0x15)
$C$DW$T$489	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__diagsMask")
	.dwattr $C$DW$T$489, DW_AT_type(*$C$DW$T$480)
	.dwattr $C$DW$T$489, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$489, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$489, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$489, DW_AT_decl_column(0x15)
$C$DW$T$490	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__diagsMask")
	.dwattr $C$DW$T$490, DW_AT_type(*$C$DW$T$480)
	.dwattr $C$DW$T$490, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$490, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$490, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$490, DW_AT_decl_column(0x15)
$C$DW$T$491	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__diagsMask")
	.dwattr $C$DW$T$491, DW_AT_type(*$C$DW$T$480)
	.dwattr $C$DW$T$491, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$491, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$491, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$T$491, DW_AT_decl_column(0x15)
$C$DW$T$92	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_DiagsMask")
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$92, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$92, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$92, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$92, DW_AT_decl_column(0x14)
$C$DW$T$93	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Diags_Mask")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$93, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$93, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$93, DW_AT_decl_column(0x25)
$C$DW$T$94	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$T$94, DW_AT_address_class(0x20)
$C$DW$T$91	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_ModuleId")
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$91, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$91, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$91, DW_AT_decl_column(0x14)
$C$DW$T$492	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__id")
	.dwattr $C$DW$T$492, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$492, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$492, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$492, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$492, DW_AT_decl_column(0x24)
$C$DW$T$493	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__id")
	.dwattr $C$DW$T$493, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$493, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$493, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$493, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$T$493, DW_AT_decl_column(0x24)
$C$DW$T$494	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__id")
	.dwattr $C$DW$T$494, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$494, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$494, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$494, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$494, DW_AT_decl_column(0x24)
$C$DW$T$495	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__id")
	.dwattr $C$DW$T$495, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$495, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$495, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$495, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$495, DW_AT_decl_column(0x24)
$C$DW$T$496	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__id")
	.dwattr $C$DW$T$496, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$496, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$496, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$496, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$496, DW_AT_decl_column(0x24)
$C$DW$T$497	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__id")
	.dwattr $C$DW$T$497, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$497, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$497, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$497, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$497, DW_AT_decl_column(0x24)
$C$DW$T$498	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__id")
	.dwattr $C$DW$T$498, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$498, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$498, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$498, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$498, DW_AT_decl_column(0x24)
$C$DW$T$499	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__id")
	.dwattr $C$DW$T$499, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$499, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$499, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$499, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$499, DW_AT_decl_column(0x24)
$C$DW$T$500	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__id")
	.dwattr $C$DW$T$500, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$500, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$500, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$500, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$500, DW_AT_decl_column(0x24)
$C$DW$T$501	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__id")
	.dwattr $C$DW$T$501, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$501, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$501, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$501, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$501, DW_AT_decl_column(0x24)
$C$DW$T$502	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__id")
	.dwattr $C$DW$T$502, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$502, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$502, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$502, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$T$502, DW_AT_decl_column(0x24)
$C$DW$T$503	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_RopeId")
	.dwattr $C$DW$T$503, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$503, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$503, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$503, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$503, DW_AT_decl_column(0x14)
$C$DW$T$449	.dwtag  DW_TAG_typedef, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$449, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$449, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$449, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stddef.h")
	.dwattr $C$DW$T$449, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$449, DW_AT_decl_column(0x1a)
$C$DW$T$122	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Bool")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x19)
$C$DW$T$477	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$477, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$477, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$477, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$477, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$T$477, DW_AT_decl_column(0x19)
$C$DW$T$450	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__loggerDefined")
	.dwattr $C$DW$T$450, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$450, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$450, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$450, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$450, DW_AT_decl_column(0x12)
$C$DW$T$451	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__loggerDefined")
	.dwattr $C$DW$T$451, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$451, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$451, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$451, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$T$451, DW_AT_decl_column(0x12)
$C$DW$T$452	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_setMaskEnabled")
	.dwattr $C$DW$T$452, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$452, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$452, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$452, DW_AT_decl_line(0xef)
	.dwattr $C$DW$T$452, DW_AT_decl_column(0x12)
$C$DW$T$453	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__loggerDefined")
	.dwattr $C$DW$T$453, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$453, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$453, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$453, DW_AT_decl_line(0x88)
	.dwattr $C$DW$T$453, DW_AT_decl_column(0x12)
$C$DW$T$454	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__loggerDefined")
	.dwattr $C$DW$T$454, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$454, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$454, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$454, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$454, DW_AT_decl_column(0x12)
$C$DW$T$455	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__loggerDefined")
	.dwattr $C$DW$T$455, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$455, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$455, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$455, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$455, DW_AT_decl_column(0x12)
$C$DW$T$456	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__loggerDefined")
	.dwattr $C$DW$T$456, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$456, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$456, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$456, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$456, DW_AT_decl_column(0x12)
$C$DW$T$457	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__loggerDefined")
	.dwattr $C$DW$T$457, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$457, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$457, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$457, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$457, DW_AT_decl_column(0x12)
$C$DW$T$458	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__loggerDefined")
	.dwattr $C$DW$T$458, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$458, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$458, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$458, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$458, DW_AT_decl_column(0x12)
$C$DW$T$459	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__loggerDefined")
	.dwattr $C$DW$T$459, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$459, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$459, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$459, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$459, DW_AT_decl_column(0x12)
$C$DW$T$460	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__loggerDefined")
	.dwattr $C$DW$T$460, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$460, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$460, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$460, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$460, DW_AT_decl_column(0x12)
$C$DW$T$461	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__loggerDefined")
	.dwattr $C$DW$T$461, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$461, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$461, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$461, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$T$461, DW_AT_decl_column(0x12)

$C$DW$T$124	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
$C$DW$321	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$123)
	.dwendtag $C$DW$T$124

$C$DW$T$125	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$T$125, DW_AT_address_class(0x20)
$C$DW$T$462	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IGateProvider_query_FxnT")
	.dwattr $C$DW$T$462, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$462, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$462, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$T$462, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$T$462, DW_AT_decl_column(0x14)

$C$DW$T$148	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)
$C$DW$322	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$148

$C$DW$T$149	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$T$149, DW_AT_address_class(0x20)
$C$DW$T$463	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IHeap_isBlocking_FxnT")
	.dwattr $C$DW$T$463, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$T$463, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$463, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$T$463, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$463, DW_AT_decl_column(0x14)
$C$DW$T$464	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_HeapProxy_isBlocking_FxnT")
	.dwattr $C$DW$T$464, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$T$464, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$464, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$464, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$T$464, DW_AT_decl_column(0x14)

$C$DW$T$177	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$177, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$177, DW_AT_language(DW_LANG_C)
$C$DW$T$178	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$178, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$T$178, DW_AT_address_class(0x20)
$C$DW$T$465	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__startupDoneFxn")
	.dwattr $C$DW$T$465, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$465, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$465, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$465, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$465, DW_AT_decl_column(0x14)
$C$DW$T$466	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__startupDoneFxn")
	.dwattr $C$DW$T$466, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$466, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$466, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$466, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$T$466, DW_AT_decl_column(0x14)
$C$DW$T$467	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__startupDoneFxn")
	.dwattr $C$DW$T$467, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$467, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$467, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$467, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$T$467, DW_AT_decl_column(0x14)
$C$DW$T$468	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__startupDoneFxn")
	.dwattr $C$DW$T$468, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$468, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$468, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$468, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$468, DW_AT_decl_column(0x14)
$C$DW$T$469	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__startupDoneFxn")
	.dwattr $C$DW$T$469, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$469, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$469, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$469, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$469, DW_AT_decl_column(0x14)
$C$DW$T$470	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__startupDoneFxn")
	.dwattr $C$DW$T$470, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$470, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$470, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$470, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$470, DW_AT_decl_column(0x14)
$C$DW$T$471	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__startupDoneFxn")
	.dwattr $C$DW$T$471, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$471, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$471, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$471, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$T$471, DW_AT_decl_column(0x14)
$C$DW$T$472	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__startupDoneFxn")
	.dwattr $C$DW$T$472, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$472, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$472, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$472, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$472, DW_AT_decl_column(0x14)
$C$DW$T$473	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__startupDoneFxn")
	.dwattr $C$DW$T$473, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$473, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$473, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$473, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$T$473, DW_AT_decl_column(0x14)
$C$DW$T$474	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__startupDoneFxn")
	.dwattr $C$DW$T$474, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$474, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$474, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$474, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$474, DW_AT_decl_column(0x14)
$C$DW$T$475	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__startupDoneFxn")
	.dwattr $C$DW$T$475, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$475, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$475, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$475, DW_AT_decl_line(0x102)
	.dwattr $C$DW$T$475, DW_AT_decl_column(0x14)
$C$DW$T$476	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ISystemSupport_ready_FxnT")
	.dwattr $C$DW$T$476, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$476, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$476, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$T$476, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$T$476, DW_AT_decl_column(0x14)

$C$DW$T$201	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$201, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$201, DW_AT_language(DW_LANG_C)
$C$DW$323	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$196)
	.dwendtag $C$DW$T$201

$C$DW$T$202	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$202, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$T$202, DW_AT_address_class(0x20)
$C$DW$T$478	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UShort")
	.dwattr $C$DW$T$478, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$478, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$478, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$478, DW_AT_decl_line(0x20)
	.dwattr $C$DW$T$478, DW_AT_decl_column(0x19)
$C$DW$T$479	.dwtag  DW_TAG_typedef, DW_AT_name("UShort")
	.dwattr $C$DW$T$479, DW_AT_type(*$C$DW$T$478)
	.dwattr $C$DW$T$479, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$479, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$479, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$T$479, DW_AT_decl_column(0x19)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)

$C$DW$T$267	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$267, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$267, DW_AT_language(DW_LANG_C)
$C$DW$324	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$266)
$C$DW$325	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$11)
$C$DW$326	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$11)
$C$DW$327	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$267

$C$DW$T$268	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$268, DW_AT_type(*$C$DW$T$267)
	.dwattr $C$DW$T$268, DW_AT_address_class(0x20)

$C$DW$T$269	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$269, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$269, DW_AT_language(DW_LANG_C)
$C$DW$328	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$266)
$C$DW$329	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$11)
$C$DW$330	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$11)
$C$DW$331	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$133)
	.dwendtag $C$DW$T$269

$C$DW$T$270	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$270, DW_AT_type(*$C$DW$T$269)
	.dwattr $C$DW$T$270, DW_AT_address_class(0x20)

$C$DW$T$271	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$271, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$271, DW_AT_language(DW_LANG_C)
$C$DW$332	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$266)
$C$DW$333	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$11)
$C$DW$334	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$T$271

$C$DW$T$272	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$272, DW_AT_type(*$C$DW$T$271)
	.dwattr $C$DW$T$272, DW_AT_address_class(0x20)

$C$DW$T$520	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$520, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$520, DW_AT_language(DW_LANG_C)
$C$DW$T$521	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$521, DW_AT_type(*$C$DW$T$520)
	.dwattr $C$DW$T$521, DW_AT_address_class(0x20)
$C$DW$T$522	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Fxn")
	.dwattr $C$DW$T$522, DW_AT_type(*$C$DW$T$521)
	.dwattr $C$DW$T$522, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$522, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$522, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$522, DW_AT_decl_column(0x1f)
$C$DW$T$523	.dwtag  DW_TAG_typedef, DW_AT_name("Fxn")
	.dwattr $C$DW$T$523, DW_AT_type(*$C$DW$T$522)
	.dwattr $C$DW$T$523, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$523, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$523, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$T$523, DW_AT_decl_column(0x19)
$C$DW$T$554	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$554, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$554, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$554, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$554, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$554, DW_AT_decl_column(0x1d)
$C$DW$T$555	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$555, DW_AT_type(*$C$DW$T$554)
	.dwattr $C$DW$T$555, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$555, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$555, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$555, DW_AT_decl_column(0x17)
$C$DW$T$556	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$556, DW_AT_type(*$C$DW$T$554)
	.dwattr $C$DW$T$556, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$556, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$556, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$556, DW_AT_decl_column(0x17)
$C$DW$T$557	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$557, DW_AT_type(*$C$DW$T$554)
	.dwattr $C$DW$T$557, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$557, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$557, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$557, DW_AT_decl_column(0x17)
$C$DW$T$558	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$558, DW_AT_type(*$C$DW$T$554)
	.dwattr $C$DW$T$558, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$558, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$558, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$558, DW_AT_decl_column(0x17)
$C$DW$T$559	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Int32")
	.dwattr $C$DW$T$559, DW_AT_type(*$C$DW$T$558)
	.dwattr $C$DW$T$559, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$559, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$559, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$559, DW_AT_decl_column(0x19)
$C$DW$T$560	.dwtag  DW_TAG_typedef, DW_AT_name("Int32")
	.dwattr $C$DW$T$560, DW_AT_type(*$C$DW$T$559)
	.dwattr $C$DW$T$560, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$560, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$560, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$T$560, DW_AT_decl_column(0x19)
$C$DW$T$86	.dwtag  DW_TAG_typedef, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$86, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$86, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$86, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$86, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$86, DW_AT_decl_column(0x1a)
$C$DW$T$87	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_IArg")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$87, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$87, DW_AT_decl_line(0x99)
	.dwattr $C$DW$T$87, DW_AT_decl_column(0x19)
$C$DW$T$561	.dwtag  DW_TAG_typedef, DW_AT_name("IArg")
	.dwattr $C$DW$T$561, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$561, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$561, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$561, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$T$561, DW_AT_decl_column(0x19)
$C$DW$T$562	.dwtag  DW_TAG_typedef, DW_AT_name("__T1_xdc_runtime_Error_Block__xtra")
	.dwattr $C$DW$T$562, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$562, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$562, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$562, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$562, DW_AT_decl_column(0x12)
$C$DW$T$563	.dwtag  DW_TAG_typedef, DW_AT_name("__T1_xdc_runtime_Error_Data__arg")
	.dwattr $C$DW$T$563, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$563, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$563, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$563, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$563, DW_AT_decl_column(0x12)

$C$DW$T$106	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x10)
$C$DW$335	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$335, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$106

$C$DW$T$107	.dwtag  DW_TAG_typedef, DW_AT_name("__ARRAY1_xdc_runtime_Error_Block__xtra")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$107, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$107, DW_AT_decl_column(0x12)
$C$DW$T$108	.dwtag  DW_TAG_typedef, DW_AT_name("__TA_xdc_runtime_Error_Block__xtra")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$108, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$108, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$T$108, DW_AT_decl_column(0x30)

$C$DW$T$110	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x08)
$C$DW$336	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$336, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$110

$C$DW$T$111	.dwtag  DW_TAG_typedef, DW_AT_name("__ARRAY1_xdc_runtime_Error_Data__arg")
	.dwattr $C$DW$T$111, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$T$111, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$111, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$111, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$111, DW_AT_decl_column(0x12)
$C$DW$T$112	.dwtag  DW_TAG_typedef, DW_AT_name("__TA_xdc_runtime_Error_Data__arg")
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$112, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$112, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$112, DW_AT_decl_column(0x2e)

$C$DW$T$126	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
$C$DW$337	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$126

$C$DW$T$127	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$127, DW_AT_address_class(0x20)
$C$DW$T$564	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IGateProvider_enter_FxnT")
	.dwattr $C$DW$T$564, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$564, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$564, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$T$564, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$T$564, DW_AT_decl_column(0x14)
$C$DW$T$565	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Main_Module_GateProxy_enter_FxnT")
	.dwattr $C$DW$T$565, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$565, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$565, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$565, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$T$565, DW_AT_decl_column(0x14)
$C$DW$T$566	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_Module_GateProxy_enter_FxnT")
	.dwattr $C$DW$T$566, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$566, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$566, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$566, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$T$566, DW_AT_decl_column(0x14)

$C$DW$T$182	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$182, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$182, DW_AT_language(DW_LANG_C)
$C$DW$338	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$181)
	.dwendtag $C$DW$T$182

$C$DW$T$183	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$183, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$T$183, DW_AT_address_class(0x20)

$C$DW$T$216	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$216, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$216, DW_AT_language(DW_LANG_C)
$C$DW$339	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$215)
	.dwendtag $C$DW$T$216

$C$DW$T$217	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$217, DW_AT_type(*$C$DW$T$216)
	.dwattr $C$DW$T$217, DW_AT_address_class(0x20)
$C$DW$T$567	.dwtag  DW_TAG_typedef, DW_AT_name("ptrdiff_t")
	.dwattr $C$DW$T$567, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$567, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$567, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stddef.h")
	.dwattr $C$DW$T$567, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$567, DW_AT_decl_column(0x1c)
$C$DW$T$526	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Arg")
	.dwattr $C$DW$T$526, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$526, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$526, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$526, DW_AT_decl_line(0x23)
	.dwattr $C$DW$T$526, DW_AT_decl_column(0x15)
$C$DW$T$527	.dwtag  DW_TAG_typedef, DW_AT_name("Arg")
	.dwattr $C$DW$T$527, DW_AT_type(*$C$DW$T$526)
	.dwattr $C$DW$T$527, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$527, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$527, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$T$527, DW_AT_decl_column(0x19)
$C$DW$T$123	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Int")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$123, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x21)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x19)
$C$DW$T$528	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Object__count")
	.dwattr $C$DW$T$528, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$528, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$528, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$528, DW_AT_decl_line(0x88)
	.dwattr $C$DW$T$528, DW_AT_decl_column(0x11)
$C$DW$T$529	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Object__count")
	.dwattr $C$DW$T$529, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$529, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$529, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$529, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$T$529, DW_AT_decl_column(0x11)
$C$DW$T$530	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Object__count")
	.dwattr $C$DW$T$530, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$530, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$530, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$530, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$T$530, DW_AT_decl_column(0x11)
$C$DW$T$531	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Object__count")
	.dwattr $C$DW$T$531, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$531, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$531, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$531, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$531, DW_AT_decl_column(0x11)
$C$DW$T$532	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Object__count")
	.dwattr $C$DW$T$532, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$532, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$532, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$532, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$532, DW_AT_decl_column(0x11)
$C$DW$T$533	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Object__count")
	.dwattr $C$DW$T$533, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$533, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$533, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$533, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$533, DW_AT_decl_column(0x11)
$C$DW$T$534	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Object__count")
	.dwattr $C$DW$T$534, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$534, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$534, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$534, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$534, DW_AT_decl_column(0x11)
$C$DW$T$535	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Object__count")
	.dwattr $C$DW$T$535, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$535, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$535, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$535, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$535, DW_AT_decl_column(0x11)
$C$DW$T$536	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Object__count")
	.dwattr $C$DW$T$536, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$536, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$536, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$536, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$T$536, DW_AT_decl_column(0x11)
$C$DW$T$537	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Object__count")
	.dwattr $C$DW$T$537, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$537, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$537, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$537, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$537, DW_AT_decl_column(0x11)
$C$DW$T$538	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_maxAtexitHandlers")
	.dwattr $C$DW$T$538, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$538, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$538, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$538, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$T$538, DW_AT_decl_column(0x11)
$C$DW$T$539	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Object__count")
	.dwattr $C$DW$T$539, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$539, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$539, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$539, DW_AT_decl_line(0x106)
	.dwattr $C$DW$T$539, DW_AT_decl_column(0x11)
$C$DW$T$551	.dwtag  DW_TAG_typedef, DW_AT_name("Int")
	.dwattr $C$DW$T$551, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$551, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$551, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$551, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$551, DW_AT_decl_column(0x19)

$C$DW$T$547	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$547, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$547, DW_AT_language(DW_LANG_C)
$C$DW$340	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$541)
$C$DW$341	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$541)
$C$DW$342	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$544)
$C$DW$343	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$546)
	.dwendtag $C$DW$T$547

$C$DW$T$548	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$548, DW_AT_type(*$C$DW$T$547)
	.dwattr $C$DW$T$548, DW_AT_address_class(0x20)
$C$DW$T$549	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_ExtendFxn")
	.dwattr $C$DW$T$549, DW_AT_type(*$C$DW$T$548)
	.dwattr $C$DW$T$549, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$549, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$549, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$549, DW_AT_decl_column(0x13)
$C$DW$T$550	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_extendFxn")
	.dwattr $C$DW$T$550, DW_AT_type(*$C$DW$T$549)
	.dwattr $C$DW$T$550, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$550, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$550, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$T$550, DW_AT_decl_column(0x26)
$C$DW$T$552	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Long")
	.dwattr $C$DW$T$552, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$552, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$552, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$552, DW_AT_decl_line(0x23)
	.dwattr $C$DW$T$552, DW_AT_decl_column(0x19)
$C$DW$T$553	.dwtag  DW_TAG_typedef, DW_AT_name("Long")
	.dwattr $C$DW$T$553, DW_AT_type(*$C$DW$T$552)
	.dwattr $C$DW$T$553, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$553, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$553, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$553, DW_AT_decl_column(0x19)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$568	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$568, DW_AT_type(*$C$DW$T$11)
$C$DW$T$131	.dwtag  DW_TAG_typedef, DW_AT_name("size_t")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$131, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stddef.h")
	.dwattr $C$DW$T$131, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$131, DW_AT_decl_column(0x19)
$C$DW$T$141	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_SizeT")
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$T$141, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$141, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$141, DW_AT_decl_line(0x28)
	.dwattr $C$DW$T$141, DW_AT_decl_column(0x19)
$C$DW$T$613	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Object__sizeof")
	.dwattr $C$DW$T$613, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$613, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$613, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$613, DW_AT_decl_line(0x90)
	.dwattr $C$DW$T$613, DW_AT_decl_column(0x13)
$C$DW$T$614	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Object__sizeof")
	.dwattr $C$DW$T$614, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$614, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$614, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$614, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$614, DW_AT_decl_column(0x13)
$C$DW$T$615	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Object__sizeof")
	.dwattr $C$DW$T$615, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$615, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$615, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$615, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$615, DW_AT_decl_column(0x13)
$C$DW$T$616	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Object__sizeof")
	.dwattr $C$DW$T$616, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$616, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$616, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$616, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$T$616, DW_AT_decl_column(0x13)
$C$DW$T$617	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Object__sizeof")
	.dwattr $C$DW$T$617, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$617, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$617, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$617, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$617, DW_AT_decl_column(0x13)
$C$DW$T$618	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Object__sizeof")
	.dwattr $C$DW$T$618, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$618, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$618, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$618, DW_AT_decl_line(0x88)
	.dwattr $C$DW$T$618, DW_AT_decl_column(0x13)
$C$DW$T$619	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Object__sizeof")
	.dwattr $C$DW$T$619, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$619, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$619, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$619, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$619, DW_AT_decl_column(0x13)
$C$DW$T$620	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Object__sizeof")
	.dwattr $C$DW$T$620, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$620, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$620, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$620, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$T$620, DW_AT_decl_column(0x13)
$C$DW$T$621	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Object__sizeof")
	.dwattr $C$DW$T$621, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$621, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$621, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$621, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$T$621, DW_AT_decl_column(0x13)
$C$DW$T$622	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Object__sizeof")
	.dwattr $C$DW$T$622, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$622, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$622, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$622, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$622, DW_AT_decl_column(0x13)
$C$DW$T$623	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Object__sizeof")
	.dwattr $C$DW$T$623, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$623, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$623, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$623, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$T$623, DW_AT_decl_column(0x13)
$C$DW$T$624	.dwtag  DW_TAG_typedef, DW_AT_name("SizeT")
	.dwattr $C$DW$T$624, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$624, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$624, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$624, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$T$624, DW_AT_decl_column(0x19)
$C$DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x1c)
$C$DW$T$605	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$605, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$605, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$605, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$605, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$605, DW_AT_decl_column(0x16)
$C$DW$T$606	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$606, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$606, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$606, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$606, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$606, DW_AT_decl_column(0x16)
$C$DW$T$607	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$607, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$607, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$607, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$607, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$607, DW_AT_decl_column(0x16)
$C$DW$T$608	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$608, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$608, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$608, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$608, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$608, DW_AT_decl_column(0x16)
$C$DW$T$609	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UInt32")
	.dwattr $C$DW$T$609, DW_AT_type(*$C$DW$T$608)
	.dwattr $C$DW$T$609, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$609, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$609, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$609, DW_AT_decl_column(0x19)
$C$DW$T$610	.dwtag  DW_TAG_typedef, DW_AT_name("UInt32")
	.dwattr $C$DW$T$610, DW_AT_type(*$C$DW$T$609)
	.dwattr $C$DW$T$610, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$610, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$610, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$T$610, DW_AT_decl_column(0x19)
$C$DW$T$611	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$611, DW_AT_type(*$C$DW$T$609)
	.dwattr $C$DW$T$611, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$611, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$611, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$T$611, DW_AT_decl_column(0x19)
$C$DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Bits32")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$100, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x90)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x19)
$C$DW$T$604	.dwtag  DW_TAG_typedef, DW_AT_name("Bits32")
	.dwattr $C$DW$T$604, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$604, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$604, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$604, DW_AT_decl_line(0x112)
	.dwattr $C$DW$T$604, DW_AT_decl_column(0x19)
$C$DW$T$574	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__diagsEnabled")
	.dwattr $C$DW$T$574, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$574, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$574, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$574, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$574, DW_AT_decl_column(0x14)
$C$DW$T$575	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__diagsIncluded")
	.dwattr $C$DW$T$575, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$575, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$575, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$575, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$575, DW_AT_decl_column(0x14)
$C$DW$T$576	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__diagsEnabled")
	.dwattr $C$DW$T$576, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$576, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$576, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$576, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$T$576, DW_AT_decl_column(0x14)
$C$DW$T$577	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__diagsIncluded")
	.dwattr $C$DW$T$577, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$577, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$577, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$577, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$577, DW_AT_decl_column(0x14)
$C$DW$T$578	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__diagsEnabled")
	.dwattr $C$DW$T$578, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$578, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$578, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$578, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$578, DW_AT_decl_column(0x14)
$C$DW$T$579	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__diagsIncluded")
	.dwattr $C$DW$T$579, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$579, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$579, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$579, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$579, DW_AT_decl_column(0x14)
$C$DW$T$580	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__diagsEnabled")
	.dwattr $C$DW$T$580, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$580, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$580, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$580, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$580, DW_AT_decl_column(0x14)
$C$DW$T$581	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__diagsIncluded")
	.dwattr $C$DW$T$581, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$581, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$581, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$581, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$581, DW_AT_decl_column(0x14)
$C$DW$T$582	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__diagsEnabled")
	.dwattr $C$DW$T$582, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$582, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$582, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$582, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$582, DW_AT_decl_column(0x14)
$C$DW$T$583	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__diagsIncluded")
	.dwattr $C$DW$T$583, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$583, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$583, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$583, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$583, DW_AT_decl_column(0x14)
$C$DW$T$584	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__diagsEnabled")
	.dwattr $C$DW$T$584, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$584, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$584, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$584, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$584, DW_AT_decl_column(0x14)
$C$DW$T$585	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__diagsIncluded")
	.dwattr $C$DW$T$585, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$585, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$585, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$585, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$585, DW_AT_decl_column(0x14)
$C$DW$T$586	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__diagsEnabled")
	.dwattr $C$DW$T$586, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$586, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$586, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$586, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$586, DW_AT_decl_column(0x14)
$C$DW$T$587	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__diagsIncluded")
	.dwattr $C$DW$T$587, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$587, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$587, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$587, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$587, DW_AT_decl_column(0x14)
$C$DW$T$588	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__diagsEnabled")
	.dwattr $C$DW$T$588, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$588, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$588, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$588, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$588, DW_AT_decl_column(0x14)
$C$DW$T$589	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__diagsIncluded")
	.dwattr $C$DW$T$589, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$589, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$589, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$589, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$589, DW_AT_decl_column(0x14)
$C$DW$T$590	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__diagsEnabled")
	.dwattr $C$DW$T$590, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$590, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$590, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$590, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$590, DW_AT_decl_column(0x14)
$C$DW$T$591	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__diagsIncluded")
	.dwattr $C$DW$T$591, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$591, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$591, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$591, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$591, DW_AT_decl_column(0x14)
$C$DW$T$592	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__diagsEnabled")
	.dwattr $C$DW$T$592, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$592, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$592, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$592, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$592, DW_AT_decl_column(0x14)
$C$DW$T$593	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__diagsIncluded")
	.dwattr $C$DW$T$593, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$593, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$593, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$593, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$593, DW_AT_decl_column(0x14)
$C$DW$T$594	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__diagsEnabled")
	.dwattr $C$DW$T$594, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$594, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$594, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$594, DW_AT_decl_line(0xce)
	.dwattr $C$DW$T$594, DW_AT_decl_column(0x14)
$C$DW$T$595	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__diagsIncluded")
	.dwattr $C$DW$T$595, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$595, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$595, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$595, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$T$595, DW_AT_decl_column(0x14)
$C$DW$T$596	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Assert_Id")
	.dwattr $C$DW$T$596, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$596, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$596, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert__prologue.h")
	.dwattr $C$DW$T$596, DW_AT_decl_line(0x16)
	.dwattr $C$DW$T$596, DW_AT_decl_column(0x14)
$C$DW$T$597	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_A_cannotFitIntoArg")
	.dwattr $C$DW$T$597, DW_AT_type(*$C$DW$T$596)
	.dwattr $C$DW$T$597, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$597, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$597, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$597, DW_AT_decl_column(0x1f)
$C$DW$T$101	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Error_Id")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$101, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error__prologue.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x12)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x14)
$C$DW$T$598	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_E_assertFailed")
	.dwattr $C$DW$T$598, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$598, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$598, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$598, DW_AT_decl_line(0x99)
	.dwattr $C$DW$T$598, DW_AT_decl_column(0x1e)
$C$DW$T$599	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_E_generic")
	.dwattr $C$DW$T$599, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$599, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$599, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$599, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$T$599, DW_AT_decl_column(0x1e)
$C$DW$T$600	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_E_memory")
	.dwattr $C$DW$T$600, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$600, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$600, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$600, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$T$600, DW_AT_decl_column(0x1e)
$C$DW$T$601	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_E_msgCode")
	.dwattr $C$DW$T$601, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$601, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$601, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$601, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$T$601, DW_AT_decl_column(0x1e)
$C$DW$T$602	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_Event")
	.dwattr $C$DW$T$602, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$602, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$602, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$602, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$602, DW_AT_decl_column(0x14)
$C$DW$T$603	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_EventId")
	.dwattr $C$DW$T$603, DW_AT_type(*$C$DW$T$602)
	.dwattr $C$DW$T$603, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$603, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$603, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$603, DW_AT_decl_column(0x21)
$C$DW$T$344	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_LogEvent")
	.dwattr $C$DW$T$344, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$344, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$344, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$344, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$344, DW_AT_decl_column(0x14)
$C$DW$T$211	.dwtag  DW_TAG_typedef, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$211, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$211, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$211, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$211, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$211, DW_AT_decl_column(0x1a)
$C$DW$T$212	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UArg")
	.dwattr $C$DW$T$212, DW_AT_type(*$C$DW$T$211)
	.dwattr $C$DW$T$212, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$212, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$212, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$212, DW_AT_decl_column(0x19)
$C$DW$T$612	.dwtag  DW_TAG_typedef, DW_AT_name("UArg")
	.dwattr $C$DW$T$612, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$T$612, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$612, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$612, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$T$612, DW_AT_decl_column(0x19)
$C$DW$T$213	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_Size")
	.dwattr $C$DW$T$213, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$T$213, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$213, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$213, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$213, DW_AT_decl_column(0x12)
$C$DW$T$569	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UInt")
	.dwattr $C$DW$T$569, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$569, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$569, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$569, DW_AT_decl_line(0x22)
	.dwattr $C$DW$T$569, DW_AT_decl_column(0x19)
$C$DW$T$570	.dwtag  DW_TAG_typedef, DW_AT_name("UInt")
	.dwattr $C$DW$T$570, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$T$570, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$570, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$570, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$T$570, DW_AT_decl_column(0x19)
$C$DW$T$571	.dwtag  DW_TAG_typedef, DW_AT_name("Uns")
	.dwattr $C$DW$T$571, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$T$571, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$571, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$571, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$T$571, DW_AT_decl_column(0x19)
$C$DW$T$572	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_ULong")
	.dwattr $C$DW$T$572, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$572, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$572, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$572, DW_AT_decl_line(0x24)
	.dwattr $C$DW$T$572, DW_AT_decl_column(0x19)
$C$DW$T$573	.dwtag  DW_TAG_typedef, DW_AT_name("ULong")
	.dwattr $C$DW$T$573, DW_AT_type(*$C$DW$T$572)
	.dwattr $C$DW$T$573, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$573, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$573, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$T$573, DW_AT_decl_column(0x19)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("__int40_t")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)
$C$DW$T$625	.dwtag  DW_TAG_typedef, DW_AT_name("int40_t")
	.dwattr $C$DW$T$625, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$625, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$625, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$625, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$625, DW_AT_decl_column(0x21)
$C$DW$T$626	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast40_t")
	.dwattr $C$DW$T$626, DW_AT_type(*$C$DW$T$625)
	.dwattr $C$DW$T$626, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$626, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$626, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$626, DW_AT_decl_column(0x17)
$C$DW$T$627	.dwtag  DW_TAG_typedef, DW_AT_name("int_least40_t")
	.dwattr $C$DW$T$627, DW_AT_type(*$C$DW$T$625)
	.dwattr $C$DW$T$627, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$627, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$627, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$627, DW_AT_decl_column(0x17)
$C$DW$T$628	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Int40")
	.dwattr $C$DW$T$628, DW_AT_type(*$C$DW$T$627)
	.dwattr $C$DW$T$628, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$628, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$628, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$628, DW_AT_decl_column(0x1d)
$C$DW$T$629	.dwtag  DW_TAG_typedef, DW_AT_name("Int40")
	.dwattr $C$DW$T$629, DW_AT_type(*$C$DW$T$628)
	.dwattr $C$DW$T$629, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$629, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$629, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$629, DW_AT_decl_column(0x1d)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned __int40_t")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)
$C$DW$T$630	.dwtag  DW_TAG_typedef, DW_AT_name("uint40_t")
	.dwattr $C$DW$T$630, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$630, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$630, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$630, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$630, DW_AT_decl_column(0x20)
$C$DW$T$631	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast40_t")
	.dwattr $C$DW$T$631, DW_AT_type(*$C$DW$T$630)
	.dwattr $C$DW$T$631, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$631, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$631, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$631, DW_AT_decl_column(0x16)
$C$DW$T$632	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least40_t")
	.dwattr $C$DW$T$632, DW_AT_type(*$C$DW$T$630)
	.dwattr $C$DW$T$632, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$632, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$632, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$632, DW_AT_decl_column(0x16)
$C$DW$T$633	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UInt40")
	.dwattr $C$DW$T$633, DW_AT_type(*$C$DW$T$632)
	.dwattr $C$DW$T$633, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$633, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$633, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$633, DW_AT_decl_column(0x1d)
$C$DW$T$634	.dwtag  DW_TAG_typedef, DW_AT_name("UInt40")
	.dwattr $C$DW$T$634, DW_AT_type(*$C$DW$T$633)
	.dwattr $C$DW$T$634, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$634, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$634, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$634, DW_AT_decl_column(0x1d)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$637	.dwtag  DW_TAG_typedef, DW_AT_name("int64_t")
	.dwattr $C$DW$T$637, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$637, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$637, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$637, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$637, DW_AT_decl_column(0x21)
$C$DW$T$638	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$638, DW_AT_type(*$C$DW$T$637)
	.dwattr $C$DW$T$638, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$638, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$638, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$638, DW_AT_decl_column(0x17)
$C$DW$T$639	.dwtag  DW_TAG_typedef, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$639, DW_AT_type(*$C$DW$T$637)
	.dwattr $C$DW$T$639, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$639, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$639, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$639, DW_AT_decl_column(0x17)
$C$DW$T$640	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Int64")
	.dwattr $C$DW$T$640, DW_AT_type(*$C$DW$T$639)
	.dwattr $C$DW$T$640, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$640, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$640, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$640, DW_AT_decl_column(0x1d)
$C$DW$T$641	.dwtag  DW_TAG_typedef, DW_AT_name("Int64")
	.dwattr $C$DW$T$641, DW_AT_type(*$C$DW$T$640)
	.dwattr $C$DW$T$641, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$641, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$641, DW_AT_decl_line(0x101)
	.dwattr $C$DW$T$641, DW_AT_decl_column(0x19)
$C$DW$T$642	.dwtag  DW_TAG_typedef, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$642, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$642, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$642, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$642, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$642, DW_AT_decl_column(0x20)
$C$DW$T$635	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_LLong")
	.dwattr $C$DW$T$635, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$635, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$635, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$635, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$635, DW_AT_decl_column(0x21)
$C$DW$T$636	.dwtag  DW_TAG_typedef, DW_AT_name("LLong")
	.dwattr $C$DW$T$636, DW_AT_type(*$C$DW$T$635)
	.dwattr $C$DW$T$636, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$636, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$636, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$T$636, DW_AT_decl_column(0x19)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$645	.dwtag  DW_TAG_typedef, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$645, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$645, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$645, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$645, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$645, DW_AT_decl_column(0x20)
$C$DW$T$648	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$648, DW_AT_type(*$C$DW$T$645)
	.dwattr $C$DW$T$648, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$648, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$648, DW_AT_decl_line(0x55)
	.dwattr $C$DW$T$648, DW_AT_decl_column(0x16)
$C$DW$T$649	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$649, DW_AT_type(*$C$DW$T$645)
	.dwattr $C$DW$T$649, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$649, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$649, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$649, DW_AT_decl_column(0x16)
$C$DW$T$650	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UInt64")
	.dwattr $C$DW$T$650, DW_AT_type(*$C$DW$T$649)
	.dwattr $C$DW$T$650, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$650, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$650, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$650, DW_AT_decl_column(0x1e)
$C$DW$T$651	.dwtag  DW_TAG_typedef, DW_AT_name("UInt64")
	.dwattr $C$DW$T$651, DW_AT_type(*$C$DW$T$650)
	.dwattr $C$DW$T$651, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$651, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$651, DW_AT_decl_line(0x102)
	.dwattr $C$DW$T$651, DW_AT_decl_column(0x19)
$C$DW$T$646	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Bits64")
	.dwattr $C$DW$T$646, DW_AT_type(*$C$DW$T$645)
	.dwattr $C$DW$T$646, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$646, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$646, DW_AT_decl_line(0x93)
	.dwattr $C$DW$T$646, DW_AT_decl_column(0x19)
$C$DW$T$647	.dwtag  DW_TAG_typedef, DW_AT_name("Bits64")
	.dwattr $C$DW$T$647, DW_AT_type(*$C$DW$T$646)
	.dwattr $C$DW$T$647, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$647, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$647, DW_AT_decl_line(0x116)
	.dwattr $C$DW$T$647, DW_AT_decl_column(0x19)
$C$DW$T$652	.dwtag  DW_TAG_typedef, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$652, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$652, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$652, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$652, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$652, DW_AT_decl_column(0x20)
$C$DW$T$643	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_ULLong")
	.dwattr $C$DW$T$643, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$643, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$643, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$643, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$643, DW_AT_decl_column(0x21)
$C$DW$T$644	.dwtag  DW_TAG_typedef, DW_AT_name("ULLong")
	.dwattr $C$DW$T$644, DW_AT_type(*$C$DW$T$643)
	.dwattr $C$DW$T$644, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$644, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$644, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$T$644, DW_AT_decl_column(0x19)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$85	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Float")
	.dwattr $C$DW$T$85, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$T$85, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$85, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$85, DW_AT_decl_line(0x25)
	.dwattr $C$DW$T$85, DW_AT_decl_column(0x19)
$C$DW$T$653	.dwtag  DW_TAG_typedef, DW_AT_name("Float")
	.dwattr $C$DW$T$653, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$653, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$653, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$653, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$T$653, DW_AT_decl_column(0x19)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$654	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Double")
	.dwattr $C$DW$T$654, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$654, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$654, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$654, DW_AT_decl_line(0x26)
	.dwattr $C$DW$T$654, DW_AT_decl_column(0x19)
$C$DW$T$655	.dwtag  DW_TAG_typedef, DW_AT_name("Double")
	.dwattr $C$DW$T$655, DW_AT_type(*$C$DW$T$654)
	.dwattr $C$DW$T$655, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$655, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$655, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$655, DW_AT_decl_column(0x19)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)
$C$DW$T$656	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_LDouble")
	.dwattr $C$DW$T$656, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$656, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$656, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$656, DW_AT_decl_line(0x27)
	.dwattr $C$DW$T$656, DW_AT_decl_column(0x19)
$C$DW$T$657	.dwtag  DW_TAG_typedef, DW_AT_name("LDouble")
	.dwattr $C$DW$T$657, DW_AT_type(*$C$DW$T$656)
	.dwattr $C$DW$T$657, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$657, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$657, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$T$657, DW_AT_decl_column(0x19)
$C$DW$T$102	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$102, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$102, DW_AT_name("signed char")
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x01)
$C$DW$T$103	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$103, DW_AT_address_class(0x20)
$C$DW$T$542	.dwtag  DW_TAG_typedef, DW_AT_name("va_list")
	.dwattr $C$DW$T$542, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$542, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$542, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdarg.h")
	.dwattr $C$DW$T$542, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$542, DW_AT_decl_column(0x12)
$C$DW$T$543	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_VaList")
	.dwattr $C$DW$T$543, DW_AT_type(*$C$DW$T$542)
	.dwattr $C$DW$T$543, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$543, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$543, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$543, DW_AT_decl_column(0x19)
$C$DW$T$658	.dwtag  DW_TAG_typedef, DW_AT_name("VaList")
	.dwattr $C$DW$T$658, DW_AT_type(*$C$DW$T$543)
	.dwattr $C$DW$T$658, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$658, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$658, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$T$658, DW_AT_decl_column(0x19)
$C$DW$T$544	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$544, DW_AT_type(*$C$DW$T$543)
	.dwattr $C$DW$T$544, DW_AT_address_class(0x20)
$C$DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_String")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$104, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x1a)
$C$DW$T$659	.dwtag  DW_TAG_typedef, DW_AT_name("String")
	.dwattr $C$DW$T$659, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$T$659, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$659, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$659, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$T$659, DW_AT_decl_column(0x19)
$C$DW$T$262	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$262, DW_AT_type(*$C$DW$T$102)
$C$DW$T$263	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$263, DW_AT_type(*$C$DW$T$262)
	.dwattr $C$DW$T$263, DW_AT_address_class(0x20)
$C$DW$T$174	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Char")
	.dwattr $C$DW$T$174, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$174, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$174, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$174, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$T$174, DW_AT_decl_column(0x19)
$C$DW$T$666	.dwtag  DW_TAG_typedef, DW_AT_name("Char")
	.dwattr $C$DW$T$666, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$T$666, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$666, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$666, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$T$666, DW_AT_decl_column(0x19)
$C$DW$T$226	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$226, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$T$226, DW_AT_address_class(0x20)
$C$DW$T$541	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$541, DW_AT_type(*$C$DW$T$226)
	.dwattr $C$DW$T$541, DW_AT_address_class(0x20)

$C$DW$T$261	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$261, DW_AT_name("spansion_spi_flash")
	.dwattr $C$DW$T$261, DW_AT_byte_size(0x20)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$273)
	.dwattr $C$DW$344, DW_AT_name("flash")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("flash")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$344, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$344, DW_AT_decl_line(0x53)
	.dwattr $C$DW$344, DW_AT_decl_column(0x13)
$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$260)
	.dwattr $C$DW$345, DW_AT_name("params")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("params")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$345, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$345, DW_AT_decl_line(0x54)
	.dwattr $C$DW$345, DW_AT_decl_column(0x2a)
	.dwendtag $C$DW$T$261

	.dwattr $C$DW$T$261, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$T$261, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$261, DW_AT_decl_column(0x08)
$C$DW$T$877	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$877, DW_AT_type(*$C$DW$T$261)
	.dwattr $C$DW$T$877, DW_AT_address_class(0x20)

$C$DW$T$264	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$264, DW_AT_name("spansion_spi_flash_params")
	.dwattr $C$DW$T$264, DW_AT_byte_size(0x10)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$346, DW_AT_name("idcode1")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("idcode1")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$346, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$346, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$346, DW_AT_decl_column(0x11)
$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$347, DW_AT_name("idcode2")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("idcode2")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$347, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$347, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$347, DW_AT_decl_column(0x11)
$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$348, DW_AT_name("page_size")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("page_size")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$348, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$348, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$348, DW_AT_decl_column(0x11)
$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$349, DW_AT_name("pages_per_sector")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("pages_per_sector")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$349, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$349, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$349, DW_AT_decl_column(0x11)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$350, DW_AT_name("nr_sectors")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("nr_sectors")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$350, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$350, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$350, DW_AT_decl_column(0x11)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$263)
	.dwattr $C$DW$351, DW_AT_name("name")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("name")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$351, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$351, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$351, DW_AT_decl_column(0x0e)
	.dwendtag $C$DW$T$264

	.dwattr $C$DW$T$264, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/spansion.c")
	.dwattr $C$DW$T$264, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$264, DW_AT_decl_column(0x08)
$C$DW$T$259	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$259, DW_AT_type(*$C$DW$T$264)
$C$DW$T$260	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$260, DW_AT_type(*$C$DW$T$259)
	.dwattr $C$DW$T$260, DW_AT_address_class(0x20)

$C$DW$T$879	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$879, DW_AT_type(*$C$DW$T$259)
	.dwattr $C$DW$T$879, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$879, DW_AT_byte_size(0x80)
$C$DW$352	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$352, DW_AT_upper_bound(0x07)
	.dwendtag $C$DW$T$879


$C$DW$T$273	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$273, DW_AT_name("spi_flash")
	.dwattr $C$DW$T$273, DW_AT_byte_size(0x1c)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$265)
	.dwattr $C$DW$353, DW_AT_name("spi")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$353, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0x22)
	.dwattr $C$DW$353, DW_AT_decl_column(0x14)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$263)
	.dwattr $C$DW$354, DW_AT_name("name")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("name")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$354, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0x24)
	.dwattr $C$DW$354, DW_AT_decl_column(0x0e)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$355, DW_AT_name("size")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("size")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$355, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0x26)
	.dwattr $C$DW$355, DW_AT_decl_column(0x10)
$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$356, DW_AT_name("type")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("type")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$356, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0x27)
	.dwattr $C$DW$356, DW_AT_decl_column(0x10)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$268)
	.dwattr $C$DW$357, DW_AT_name("read")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("read")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$357, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0x29)
	.dwattr $C$DW$357, DW_AT_decl_column(0x09)
$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$270)
	.dwattr $C$DW$358, DW_AT_name("write")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("write")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$358, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$358, DW_AT_decl_column(0x09)
$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$272)
	.dwattr $C$DW$359, DW_AT_name("erase")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("erase")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$359, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$359, DW_AT_decl_column(0x09)
	.dwendtag $C$DW$T$273

	.dwattr $C$DW$T$273, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$T$273, DW_AT_decl_line(0x21)
	.dwattr $C$DW$T$273, DW_AT_decl_column(0x08)
$C$DW$T$266	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$266, DW_AT_type(*$C$DW$T$273)
	.dwattr $C$DW$T$266, DW_AT_address_class(0x20)
$C$DW$T$881	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$881, DW_AT_type(*$C$DW$T$266)

$C$DW$T$274	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$274, DW_AT_name("spi_flash_region")
	.dwattr $C$DW$T$274, DW_AT_byte_size(0x08)
$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$360, DW_AT_name("count")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("count")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$360, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$360, DW_AT_decl_column(0x0f)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$361, DW_AT_name("size")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("size")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$361, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$361, DW_AT_decl_column(0x0f)
	.dwendtag $C$DW$T$274

	.dwattr $C$DW$T$274, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$T$274, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$T$274, DW_AT_decl_column(0x08)

$C$DW$T$275	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$275, DW_AT_name("spi_slave")
	.dwattr $C$DW$T$275, DW_AT_byte_size(0x08)
$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$362, DW_AT_name("bus")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("bus")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$362, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$362, DW_AT_decl_column(0x0f)
$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$363, DW_AT_name("cs")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("cs")
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$363, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$363, DW_AT_decl_column(0x0f)
	.dwendtag $C$DW$T$275

	.dwattr $C$DW$T$275, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi.h")
	.dwattr $C$DW$T$275, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$275, DW_AT_decl_column(0x08)
$C$DW$T$265	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$265, DW_AT_type(*$C$DW$T$275)
	.dwattr $C$DW$T$265, DW_AT_address_class(0x20)
$C$DW$T$882	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$882, DW_AT_type(*$C$DW$T$265)

$C$DW$T$88	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$88, DW_AT_name("xdc_FloatData")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x04)
$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$364, DW_AT_name("f")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$364, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$364, DW_AT_decl_column(0x0f)
$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$365, DW_AT_name("a")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("a")
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$365, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$365, DW_AT_decl_column(0x0f)
	.dwendtag $C$DW$T$88

	.dwattr $C$DW$T$88, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x0f)
$C$DW$T$667	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_FloatData")
	.dwattr $C$DW$T$667, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$667, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$667, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$667, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$T$667, DW_AT_decl_column(0x03)

$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_name("xdc_runtime_Core_ObjDesc")
	.dwattr $C$DW$T$19, DW_AT_declaration
	.dwendtag $C$DW$T$19

	.dwattr $C$DW$T$19, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
$C$DW$T$668	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Core_ObjDesc")
	.dwattr $C$DW$T$668, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$668, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$668, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$668, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$T$668, DW_AT_decl_column(0x29)

$C$DW$T$95	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$95, DW_AT_name("xdc_runtime_Diags_DictElem")
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x08)
$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$366, DW_AT_name("modId")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("modId")
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$366, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0x99)
	.dwattr $C$DW$366, DW_AT_decl_column(0x20)
$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$367, DW_AT_name("maskAddr")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("maskAddr")
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$367, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$367, DW_AT_decl_column(0x1d)
	.dwendtag $C$DW$T$95

	.dwattr $C$DW$T$95, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x08)
$C$DW$T$669	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Diags_DictElem")
	.dwattr $C$DW$T$669, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$669, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$669, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$669, DW_AT_decl_line(0x27)
	.dwattr $C$DW$T$669, DW_AT_decl_column(0x2b)
$C$DW$T$670	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$670, DW_AT_type(*$C$DW$T$669)
	.dwattr $C$DW$T$670, DW_AT_address_class(0x20)
$C$DW$T$671	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_dictBase")
	.dwattr $C$DW$T$671, DW_AT_type(*$C$DW$T$670)
	.dwattr $C$DW$T$671, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$671, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$671, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$T$671, DW_AT_decl_column(0x25)

$C$DW$T$672	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$672, DW_AT_name("xdc_runtime_Diags_EventLevel")
	.dwattr $C$DW$T$672, DW_AT_byte_size(0x04)
$C$DW$368	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Diags_LEVEL1"), DW_AT_const_value(0x00)
	.dwattr $C$DW$368, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$368, DW_AT_decl_column(0x05)
$C$DW$369	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Diags_LEVEL2"), DW_AT_const_value(0x20)
	.dwattr $C$DW$369, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0x80)
	.dwattr $C$DW$369, DW_AT_decl_column(0x05)
$C$DW$370	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Diags_LEVEL3"), DW_AT_const_value(0x40)
	.dwattr $C$DW$370, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0x81)
	.dwattr $C$DW$370, DW_AT_decl_column(0x05)
$C$DW$371	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Diags_LEVEL4"), DW_AT_const_value(0x60)
	.dwattr $C$DW$371, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0x82)
	.dwattr $C$DW$371, DW_AT_decl_column(0x05)
	.dwendtag $C$DW$T$672

	.dwattr $C$DW$T$672, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$672, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$672, DW_AT_decl_column(0x06)
$C$DW$T$673	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Diags_EventLevel")
	.dwattr $C$DW$T$673, DW_AT_type(*$C$DW$T$672)
	.dwattr $C$DW$T$673, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$673, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$673, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$673, DW_AT_decl_column(0x2b)

$C$DW$T$109	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$109, DW_AT_name("xdc_runtime_Error_Block")
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x30)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$372, DW_AT_name("unused")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("unused")
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$372, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$372, DW_AT_decl_column(0x10)
$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$373, DW_AT_name("data")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$373, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$373, DW_AT_decl_column(0x1c)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$374, DW_AT_name("id")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("id")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$374, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$374, DW_AT_decl_column(0x1a)
$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$375, DW_AT_name("msg")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("msg")
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$375, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0x60)
	.dwattr $C$DW$375, DW_AT_decl_column(0x10)
$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$376, DW_AT_name("site")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("site")
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$376, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0x61)
	.dwattr $C$DW$376, DW_AT_decl_column(0x1c)
$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$377, DW_AT_name("xtra")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("xtra")
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$377, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0x62)
	.dwattr $C$DW$377, DW_AT_decl_column(0x28)
	.dwendtag $C$DW$T$109

	.dwattr $C$DW$T$109, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$109, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$109, DW_AT_decl_column(0x08)
$C$DW$T$142	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Error_Block")
	.dwattr $C$DW$T$142, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$142, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$142, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$142, DW_AT_decl_column(0x28)
$C$DW$T$143	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$T$143, DW_AT_address_class(0x20)

$C$DW$T$113	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$113, DW_AT_name("xdc_runtime_Error_Data")
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x08)
$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$378, DW_AT_name("arg")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("arg")
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$378, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0x55)
	.dwattr $C$DW$378, DW_AT_decl_column(0x26)
	.dwendtag $C$DW$T$113

	.dwattr $C$DW$T$113, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$113, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$113, DW_AT_decl_column(0x08)
$C$DW$T$98	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Error_Data")
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$T$98, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$98, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$98, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$98, DW_AT_decl_column(0x27)

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("xdc_runtime_Error_Module_State")
	.dwattr $C$DW$T$20, DW_AT_declaration
	.dwendtag $C$DW$T$20

	.dwattr $C$DW$T$20, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x10)
$C$DW$T$674	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Error_Module_State")
	.dwattr $C$DW$T$674, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$674, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$674, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$674, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$674, DW_AT_decl_column(0x2f)

$C$DW$T$675	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$675, DW_AT_name("xdc_runtime_Error_Policy")
	.dwattr $C$DW$T$675, DW_AT_byte_size(0x04)
$C$DW$379	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Error_TERMINATE"), DW_AT_const_value(0x00)
	.dwattr $C$DW$379, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0x43)
	.dwattr $C$DW$379, DW_AT_decl_column(0x05)
$C$DW$380	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Error_UNWIND"), DW_AT_const_value(0x01)
	.dwattr $C$DW$380, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0x44)
	.dwattr $C$DW$380, DW_AT_decl_column(0x05)
	.dwendtag $C$DW$T$675

	.dwattr $C$DW$T$675, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$675, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$675, DW_AT_decl_column(0x06)
$C$DW$T$676	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Error_Policy")
	.dwattr $C$DW$T$676, DW_AT_type(*$C$DW$T$675)
	.dwattr $C$DW$T$676, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$676, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$676, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$676, DW_AT_decl_column(0x27)
$C$DW$T$677	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_policy")
	.dwattr $C$DW$T$677, DW_AT_type(*$C$DW$T$676)
	.dwattr $C$DW$T$677, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$677, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$677, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$T$677, DW_AT_decl_column(0x22)

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_name("xdc_runtime_GateNull_Fxns__")
	.dwattr $C$DW$T$21, DW_AT_declaration
	.dwendtag $C$DW$T$21

	.dwattr $C$DW$T$21, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
$C$DW$T$678	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Fxns__")
	.dwattr $C$DW$T$678, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$678, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$678, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$678, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$678, DW_AT_decl_column(0x2c)
$C$DW$T$679	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$679, DW_AT_type(*$C$DW$T$678)
$C$DW$T$680	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$680, DW_AT_type(*$C$DW$T$679)
	.dwattr $C$DW$T$680, DW_AT_address_class(0x20)
$C$DW$T$681	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Module")
	.dwattr $C$DW$T$681, DW_AT_type(*$C$DW$T$680)
	.dwattr $C$DW$T$681, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$681, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$681, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$681, DW_AT_decl_column(0x2c)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("xdc_runtime_GateNull_Object")
	.dwattr $C$DW$T$22, DW_AT_declaration
	.dwendtag $C$DW$T$22

	.dwattr $C$DW$T$22, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
$C$DW$T$682	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Object")
	.dwattr $C$DW$T$682, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$682, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$682, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$682, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$682, DW_AT_decl_column(0x2c)
$C$DW$T$683	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$683, DW_AT_type(*$C$DW$T$682)
	.dwattr $C$DW$T$683, DW_AT_address_class(0x20)
$C$DW$T$684	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Handle")
	.dwattr $C$DW$T$684, DW_AT_type(*$C$DW$T$683)
	.dwattr $C$DW$T$684, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$684, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$684, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$684, DW_AT_decl_column(0x26)
$C$DW$T$685	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Instance")
	.dwattr $C$DW$T$685, DW_AT_type(*$C$DW$T$683)
	.dwattr $C$DW$T$685, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$685, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$685, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$685, DW_AT_decl_column(0x26)

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("xdc_runtime_GateNull_Object__")
	.dwattr $C$DW$T$23, DW_AT_declaration
	.dwendtag $C$DW$T$23

	.dwattr $C$DW$T$23, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x10)
$C$DW$T$686	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Instance_State")
	.dwattr $C$DW$T$686, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$686, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$686, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$686, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$686, DW_AT_decl_column(0x2e)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("xdc_runtime_GateNull_Params")
	.dwattr $C$DW$T$24, DW_AT_declaration
	.dwendtag $C$DW$T$24

	.dwattr $C$DW$T$24, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x10)
$C$DW$T$687	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Params")
	.dwattr $C$DW$T$687, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$687, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$687, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$687, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$687, DW_AT_decl_column(0x2c)

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("xdc_runtime_GateNull_Struct")
	.dwattr $C$DW$T$25, DW_AT_declaration
	.dwendtag $C$DW$T$25

	.dwattr $C$DW$T$25, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x10)
$C$DW$T$688	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Struct")
	.dwattr $C$DW$T$688, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$688, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$688, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$688, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$688, DW_AT_decl_column(0x2c)

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("xdc_runtime_HeapMin_Fxns__")
	.dwattr $C$DW$T$26, DW_AT_declaration
	.dwendtag $C$DW$T$26

	.dwattr $C$DW$T$26, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x10)
$C$DW$T$689	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Fxns__")
	.dwattr $C$DW$T$689, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$689, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$689, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$689, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$T$689, DW_AT_decl_column(0x2b)
$C$DW$T$690	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$690, DW_AT_type(*$C$DW$T$689)
$C$DW$T$691	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$691, DW_AT_type(*$C$DW$T$690)
	.dwattr $C$DW$T$691, DW_AT_address_class(0x20)
$C$DW$T$692	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Module")
	.dwattr $C$DW$T$692, DW_AT_type(*$C$DW$T$691)
	.dwattr $C$DW$T$692, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$692, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$692, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$692, DW_AT_decl_column(0x2b)

$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_name("xdc_runtime_HeapMin_Object")
	.dwattr $C$DW$T$27, DW_AT_declaration
	.dwendtag $C$DW$T$27

	.dwattr $C$DW$T$27, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x10)
$C$DW$T$693	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Object")
	.dwattr $C$DW$T$693, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$693, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$693, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$693, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$T$693, DW_AT_decl_column(0x2b)
$C$DW$T$694	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$694, DW_AT_type(*$C$DW$T$693)
	.dwattr $C$DW$T$694, DW_AT_address_class(0x20)
$C$DW$T$695	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Handle")
	.dwattr $C$DW$T$695, DW_AT_type(*$C$DW$T$694)
	.dwattr $C$DW$T$695, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$695, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$695, DW_AT_decl_line(0xab)
	.dwattr $C$DW$T$695, DW_AT_decl_column(0x25)
$C$DW$T$696	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Instance")
	.dwattr $C$DW$T$696, DW_AT_type(*$C$DW$T$694)
	.dwattr $C$DW$T$696, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$696, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$696, DW_AT_decl_line(0xad)
	.dwattr $C$DW$T$696, DW_AT_decl_column(0x25)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("xdc_runtime_HeapMin_Object__")
	.dwattr $C$DW$T$28, DW_AT_declaration
	.dwendtag $C$DW$T$28

	.dwattr $C$DW$T$28, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0xac)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x10)
$C$DW$T$697	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Instance_State")
	.dwattr $C$DW$T$697, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$697, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$697, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$697, DW_AT_decl_line(0xac)
	.dwattr $C$DW$T$697, DW_AT_decl_column(0x2d)

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("xdc_runtime_HeapMin_Params")
	.dwattr $C$DW$T$29, DW_AT_declaration
	.dwendtag $C$DW$T$29

	.dwattr $C$DW$T$29, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x10)
$C$DW$T$698	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Params")
	.dwattr $C$DW$T$698, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$698, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$698, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$698, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$T$698, DW_AT_decl_column(0x2b)

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("xdc_runtime_HeapMin_Struct")
	.dwattr $C$DW$T$30, DW_AT_declaration
	.dwendtag $C$DW$T$30

	.dwattr $C$DW$T$30, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x10)
$C$DW$T$699	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Struct")
	.dwattr $C$DW$T$699, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$699, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$699, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$699, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$T$699, DW_AT_decl_column(0x2b)

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("xdc_runtime_HeapStd_Fxns__")
	.dwattr $C$DW$T$31, DW_AT_declaration
	.dwendtag $C$DW$T$31

	.dwattr $C$DW$T$31, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x10)
$C$DW$T$700	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Fxns__")
	.dwattr $C$DW$T$700, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$700, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$700, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$700, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$700, DW_AT_decl_column(0x2b)
$C$DW$T$701	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$701, DW_AT_type(*$C$DW$T$700)
$C$DW$T$702	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$702, DW_AT_type(*$C$DW$T$701)
	.dwattr $C$DW$T$702, DW_AT_address_class(0x20)
$C$DW$T$703	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Module")
	.dwattr $C$DW$T$703, DW_AT_type(*$C$DW$T$702)
	.dwattr $C$DW$T$703, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$703, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$703, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$T$703, DW_AT_decl_column(0x2b)

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("xdc_runtime_HeapStd_Module_State")
	.dwattr $C$DW$T$32, DW_AT_declaration
	.dwendtag $C$DW$T$32

	.dwattr $C$DW$T$32, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x10)
$C$DW$T$704	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Module_State")
	.dwattr $C$DW$T$704, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$704, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$704, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$704, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$704, DW_AT_decl_column(0x31)

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("xdc_runtime_HeapStd_Object")
	.dwattr $C$DW$T$33, DW_AT_declaration
	.dwendtag $C$DW$T$33

	.dwattr $C$DW$T$33, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x10)
$C$DW$T$705	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Object")
	.dwattr $C$DW$T$705, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$705, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$705, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$705, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$T$705, DW_AT_decl_column(0x2b)
$C$DW$T$706	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$706, DW_AT_type(*$C$DW$T$705)
	.dwattr $C$DW$T$706, DW_AT_address_class(0x20)
$C$DW$T$707	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Handle")
	.dwattr $C$DW$T$707, DW_AT_type(*$C$DW$T$706)
	.dwattr $C$DW$T$707, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$707, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$707, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$T$707, DW_AT_decl_column(0x25)
$C$DW$T$708	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Instance")
	.dwattr $C$DW$T$708, DW_AT_type(*$C$DW$T$706)
	.dwattr $C$DW$T$708, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$708, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$708, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$T$708, DW_AT_decl_column(0x25)

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("xdc_runtime_HeapStd_Object__")
	.dwattr $C$DW$T$34, DW_AT_declaration
	.dwendtag $C$DW$T$34

	.dwattr $C$DW$T$34, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0xba)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x10)
$C$DW$T$709	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Instance_State")
	.dwattr $C$DW$T$709, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$709, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$709, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$709, DW_AT_decl_line(0xba)
	.dwattr $C$DW$T$709, DW_AT_decl_column(0x2d)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("xdc_runtime_HeapStd_Params")
	.dwattr $C$DW$T$35, DW_AT_declaration
	.dwendtag $C$DW$T$35

	.dwattr $C$DW$T$35, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x10)
$C$DW$T$710	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Params")
	.dwattr $C$DW$T$710, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$710, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$710, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$710, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$T$710, DW_AT_decl_column(0x2b)

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("xdc_runtime_HeapStd_Struct")
	.dwattr $C$DW$T$36, DW_AT_declaration
	.dwendtag $C$DW$T$36

	.dwattr $C$DW$T$36, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x10)
$C$DW$T$711	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Struct")
	.dwattr $C$DW$T$711, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$711, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$711, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$711, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$T$711, DW_AT_decl_column(0x2b)

$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("xdc_runtime_IFilterLogger_Fxns__")
	.dwattr $C$DW$T$37, DW_AT_declaration
	.dwendtag $C$DW$T$37

	.dwattr $C$DW$T$37, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x10)
$C$DW$T$114	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IFilterLogger_Fxns__")
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$114, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$T$114, DW_AT_decl_column(0x31)
$C$DW$T$115	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$T$115, DW_AT_address_class(0x20)
$C$DW$T$712	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$712, DW_AT_type(*$C$DW$T$114)
$C$DW$T$713	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$713, DW_AT_type(*$C$DW$T$712)
	.dwattr $C$DW$T$713, DW_AT_address_class(0x20)
$C$DW$T$714	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IFilterLogger_Module")
	.dwattr $C$DW$T$714, DW_AT_type(*$C$DW$T$713)
	.dwattr $C$DW$T$714, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$714, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$714, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$714, DW_AT_decl_column(0x31)

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("xdc_runtime_IFilterLogger_Params")
	.dwattr $C$DW$T$38, DW_AT_declaration
	.dwendtag $C$DW$T$38

	.dwattr $C$DW$T$38, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x10)
$C$DW$T$715	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IFilterLogger_Params")
	.dwattr $C$DW$T$715, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$715, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$715, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$715, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$715, DW_AT_decl_column(0x31)

$C$DW$T$116	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$116, DW_AT_name("xdc_runtime_IFilterLogger___Object")
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x08)
$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$381, DW_AT_name("__fxns")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$381, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0x62)
	.dwattr $C$DW$381, DW_AT_decl_column(0x57)
$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$382, DW_AT_name("__label")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("__label")
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$382, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0x62)
	.dwattr $C$DW$382, DW_AT_decl_column(0x6a)
	.dwendtag $C$DW$T$116

	.dwattr $C$DW$T$116, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x10)
$C$DW$T$716	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$716, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$716, DW_AT_address_class(0x20)
$C$DW$T$717	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IFilterLogger_Handle")
	.dwattr $C$DW$T$717, DW_AT_type(*$C$DW$T$716)
	.dwattr $C$DW$T$717, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$717, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$717, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$717, DW_AT_decl_column(0x76)

$C$DW$T$130	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$130, DW_AT_name("xdc_runtime_IGateProvider_Fxns__")
	.dwattr $C$DW$T$130, DW_AT_byte_size(0x24)
$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$383, DW_AT_name("__base")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$383, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0x59)
	.dwattr $C$DW$383, DW_AT_decl_column(0x1d)
$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$384, DW_AT_name("__sysp")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$384, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$384, DW_AT_decl_column(0x27)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$385, DW_AT_name("query")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("query")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$385, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$385, DW_AT_decl_column(0x10)
$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$386, DW_AT_name("enter")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("enter")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$386, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$386, DW_AT_decl_column(0x10)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$387, DW_AT_name("leave")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("leave")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$387, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$387, DW_AT_decl_column(0x10)
$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$388, DW_AT_name("__sfxns")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$388, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$388, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$130

	.dwattr $C$DW$T$130, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$T$130, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$130, DW_AT_decl_column(0x08)
$C$DW$T$137	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IGateProvider_Fxns__")
	.dwattr $C$DW$T$137, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$T$137, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$137, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$137, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$137, DW_AT_decl_column(0x31)
$C$DW$T$138	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$138, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$T$138, DW_AT_address_class(0x20)
$C$DW$T$718	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$718, DW_AT_type(*$C$DW$T$137)
$C$DW$T$719	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$719, DW_AT_type(*$C$DW$T$718)
	.dwattr $C$DW$T$719, DW_AT_address_class(0x20)
$C$DW$T$720	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IGateProvider_Module")
	.dwattr $C$DW$T$720, DW_AT_type(*$C$DW$T$719)
	.dwattr $C$DW$T$720, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$720, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$720, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$720, DW_AT_decl_column(0x31)

$C$DW$T$136	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$136, DW_AT_name("xdc_runtime_IGateProvider_Params")
	.dwattr $C$DW$T$136, DW_AT_byte_size(0x10)
$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$389, DW_AT_name("__size")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("__size")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$389, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$389, DW_AT_decl_column(0x0c)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$390, DW_AT_name("__self")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("__self")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$390, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$390, DW_AT_decl_column(0x11)
$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$391, DW_AT_name("__fxns")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$391, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$391, DW_AT_decl_column(0x0b)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$392, DW_AT_name("instance")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("instance")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$392, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$392, DW_AT_decl_column(0x23)
	.dwendtag $C$DW$T$136

	.dwattr $C$DW$T$136, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x08)
$C$DW$T$721	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IGateProvider_Params")
	.dwattr $C$DW$T$721, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$721, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$721, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$721, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$721, DW_AT_decl_column(0x31)

$C$DW$T$139	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$139, DW_AT_name("xdc_runtime_IGateProvider___Object")
	.dwattr $C$DW$T$139, DW_AT_byte_size(0x08)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$393, DW_AT_name("__fxns")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$393, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$393, DW_AT_decl_column(0x57)
$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$394, DW_AT_name("__label")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("__label")
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$394, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$394, DW_AT_decl_column(0x6a)
	.dwendtag $C$DW$T$139

	.dwattr $C$DW$T$139, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x10)
$C$DW$T$180	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$180, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$T$180, DW_AT_address_class(0x20)
$C$DW$T$722	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IGateProvider_Handle")
	.dwattr $C$DW$T$722, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$T$722, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$722, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$722, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$722, DW_AT_decl_column(0x76)
$C$DW$T$723	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Module_GateProxy_Handle")
	.dwattr $C$DW$T$723, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$T$723, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$723, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$723, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$T$723, DW_AT_decl_column(0x34)
$C$DW$T$181	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Main_Module_GateProxy_Handle")
	.dwattr $C$DW$T$181, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$T$181, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$181, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$181, DW_AT_decl_line(0x15a)
	.dwattr $C$DW$T$181, DW_AT_decl_column(0x34)
$C$DW$T$215	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_Module_GateProxy_Handle")
	.dwattr $C$DW$T$215, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$T$215, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$215, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$215, DW_AT_decl_line(0x173)
	.dwattr $C$DW$T$215, DW_AT_decl_column(0x34)

$C$DW$T$154	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$154, DW_AT_name("xdc_runtime_IHeap_Fxns__")
	.dwattr $C$DW$T$154, DW_AT_byte_size(0x28)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$395, DW_AT_name("__base")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$395, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0x55)
	.dwattr $C$DW$395, DW_AT_decl_column(0x1d)
$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$396, DW_AT_name("__sysp")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$396, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x56)
	.dwattr $C$DW$396, DW_AT_decl_column(0x27)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$397, DW_AT_name("alloc")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("alloc")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$397, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x57)
	.dwattr $C$DW$397, DW_AT_decl_column(0x0f)
$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$398, DW_AT_name("free")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("free")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$398, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x58)
	.dwattr $C$DW$398, DW_AT_decl_column(0x10)
$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$399, DW_AT_name("isBlocking")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("isBlocking")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$399, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x59)
	.dwattr $C$DW$399, DW_AT_decl_column(0x10)
$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$400, DW_AT_name("getStats")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("getStats")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$400, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$400, DW_AT_decl_column(0x10)
$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$401, DW_AT_name("__sfxns")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$401, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$401, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$154

	.dwattr $C$DW$T$154, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$T$154, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$154, DW_AT_decl_column(0x08)
$C$DW$T$156	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IHeap_Fxns__")
	.dwattr $C$DW$T$156, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$T$156, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$156, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$156, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$T$156, DW_AT_decl_column(0x29)
$C$DW$T$157	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$T$157, DW_AT_address_class(0x20)
$C$DW$T$724	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$724, DW_AT_type(*$C$DW$T$156)
$C$DW$T$725	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$725, DW_AT_type(*$C$DW$T$724)
	.dwattr $C$DW$T$725, DW_AT_address_class(0x20)
$C$DW$T$726	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IHeap_Module")
	.dwattr $C$DW$T$726, DW_AT_type(*$C$DW$T$725)
	.dwattr $C$DW$T$726, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$726, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$726, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$T$726, DW_AT_decl_column(0x29)

$C$DW$T$155	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$155, DW_AT_name("xdc_runtime_IHeap_Params")
	.dwattr $C$DW$T$155, DW_AT_byte_size(0x10)
$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$402, DW_AT_name("__size")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("__size")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$402, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0x48)
	.dwattr $C$DW$402, DW_AT_decl_column(0x0c)
$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$403, DW_AT_name("__self")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("__self")
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$403, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0x49)
	.dwattr $C$DW$403, DW_AT_decl_column(0x11)
$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$404, DW_AT_name("__fxns")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$404, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$404, DW_AT_decl_column(0x0b)
$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$405, DW_AT_name("instance")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("instance")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$405, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$405, DW_AT_decl_column(0x23)
	.dwendtag $C$DW$T$155

	.dwattr $C$DW$T$155, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$T$155, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$155, DW_AT_decl_column(0x08)
$C$DW$T$727	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IHeap_Params")
	.dwattr $C$DW$T$727, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$T$727, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$727, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$727, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$T$727, DW_AT_decl_column(0x29)

$C$DW$T$158	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$158, DW_AT_name("xdc_runtime_IHeap___Object")
	.dwattr $C$DW$T$158, DW_AT_byte_size(0x08)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$406, DW_AT_name("__fxns")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$406, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$406, DW_AT_decl_column(0x47)
$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$407, DW_AT_name("__label")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("__label")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$407, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$407, DW_AT_decl_column(0x5a)
	.dwendtag $C$DW$T$158

	.dwattr $C$DW$T$158, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$158, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$T$158, DW_AT_decl_column(0x10)
$C$DW$T$195	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$195, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$195, DW_AT_address_class(0x20)
$C$DW$T$728	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IHeap_Handle")
	.dwattr $C$DW$T$728, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$T$728, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$728, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$728, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$T$728, DW_AT_decl_column(0x66)
$C$DW$T$729	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Object__heap")
	.dwattr $C$DW$T$729, DW_AT_type(*$C$DW$T$728)
	.dwattr $C$DW$T$729, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$729, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$729, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$729, DW_AT_decl_column(0x22)
$C$DW$T$730	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Object__heap")
	.dwattr $C$DW$T$730, DW_AT_type(*$C$DW$T$728)
	.dwattr $C$DW$T$730, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$730, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$730, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$T$730, DW_AT_decl_column(0x22)
$C$DW$T$731	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Object__heap")
	.dwattr $C$DW$T$731, DW_AT_type(*$C$DW$T$728)
	.dwattr $C$DW$T$731, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$731, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$731, DW_AT_decl_line(0xac)
	.dwattr $C$DW$T$731, DW_AT_decl_column(0x22)
$C$DW$T$732	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Object__heap")
	.dwattr $C$DW$T$732, DW_AT_type(*$C$DW$T$728)
	.dwattr $C$DW$T$732, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$732, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$732, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$732, DW_AT_decl_column(0x22)
$C$DW$T$733	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Object__heap")
	.dwattr $C$DW$T$733, DW_AT_type(*$C$DW$T$728)
	.dwattr $C$DW$T$733, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$733, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$733, DW_AT_decl_line(0x88)
	.dwattr $C$DW$T$733, DW_AT_decl_column(0x22)
$C$DW$T$734	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Object__heap")
	.dwattr $C$DW$T$734, DW_AT_type(*$C$DW$T$728)
	.dwattr $C$DW$T$734, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$734, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$734, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$734, DW_AT_decl_column(0x22)
$C$DW$T$735	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Object__heap")
	.dwattr $C$DW$T$735, DW_AT_type(*$C$DW$T$728)
	.dwattr $C$DW$T$735, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$735, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$735, DW_AT_decl_line(0x96)
	.dwattr $C$DW$T$735, DW_AT_decl_column(0x22)
$C$DW$T$736	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_defaultHeapInstance")
	.dwattr $C$DW$T$736, DW_AT_type(*$C$DW$T$728)
	.dwattr $C$DW$T$736, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$736, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$736, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$T$736, DW_AT_decl_column(0x22)
$C$DW$T$737	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Object__heap")
	.dwattr $C$DW$T$737, DW_AT_type(*$C$DW$T$728)
	.dwattr $C$DW$T$737, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$737, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$737, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$737, DW_AT_decl_column(0x22)
$C$DW$T$738	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Object__heap")
	.dwattr $C$DW$T$738, DW_AT_type(*$C$DW$T$728)
	.dwattr $C$DW$T$738, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$738, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$738, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$T$738, DW_AT_decl_column(0x22)
$C$DW$T$739	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Object__heap")
	.dwattr $C$DW$T$739, DW_AT_type(*$C$DW$T$728)
	.dwattr $C$DW$T$739, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$739, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$739, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$739, DW_AT_decl_column(0x22)
$C$DW$T$740	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Object__heap")
	.dwattr $C$DW$T$740, DW_AT_type(*$C$DW$T$728)
	.dwattr $C$DW$T$740, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$740, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$740, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$T$740, DW_AT_decl_column(0x22)
$C$DW$T$196	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_HeapProxy_Handle")
	.dwattr $C$DW$T$196, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$T$196, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$196, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$196, DW_AT_decl_line(0x163)
	.dwattr $C$DW$T$196, DW_AT_decl_column(0x2c)

$C$DW$T$159	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$159, DW_AT_name("xdc_runtime_IInstance_Fxns__")
	.dwattr $C$DW$T$159, DW_AT_byte_size(0x18)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$408, DW_AT_name("__base")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$408, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IInstance.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$408, DW_AT_decl_column(0x1d)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$409, DW_AT_name("__sysp")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$409, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IInstance.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$409, DW_AT_decl_column(0x27)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$410, DW_AT_name("__sfxns")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$410, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IInstance.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0x50)
	.dwattr $C$DW$410, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$159

	.dwattr $C$DW$T$159, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IInstance.h")
	.dwattr $C$DW$T$159, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$159, DW_AT_decl_column(0x08)
$C$DW$T$161	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IInstance_Fxns__")
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$T$161, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$161, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$161, DW_AT_decl_line(0x137)
	.dwattr $C$DW$T$161, DW_AT_decl_column(0x2d)
$C$DW$T$162	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$162, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$T$162, DW_AT_address_class(0x20)
$C$DW$T$741	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$741, DW_AT_type(*$C$DW$T$161)
$C$DW$T$742	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$742, DW_AT_type(*$C$DW$T$741)
	.dwattr $C$DW$T$742, DW_AT_address_class(0x20)
$C$DW$T$743	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IInstance_Module")
	.dwattr $C$DW$T$743, DW_AT_type(*$C$DW$T$742)
	.dwattr $C$DW$T$743, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$743, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$743, DW_AT_decl_line(0x138)
	.dwattr $C$DW$T$743, DW_AT_decl_column(0x2d)

$C$DW$T$160	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$160, DW_AT_name("xdc_runtime_IInstance_Params")
	.dwattr $C$DW$T$160, DW_AT_byte_size(0x08)
$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$411, DW_AT_name("__size")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("__size")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$411, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IInstance.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0x43)
	.dwattr $C$DW$411, DW_AT_decl_column(0x0c)
$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$412, DW_AT_name("name")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("name")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$412, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IInstance.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x44)
	.dwattr $C$DW$412, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$160

	.dwattr $C$DW$T$160, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IInstance.h")
	.dwattr $C$DW$T$160, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$160, DW_AT_decl_column(0x08)
$C$DW$T$134	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IInstance_Params")
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$134, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$134, DW_AT_decl_line(0x139)
	.dwattr $C$DW$T$134, DW_AT_decl_column(0x2d)
$C$DW$T$135	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$135, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$T$135, DW_AT_address_class(0x20)

$C$DW$T$163	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$163, DW_AT_name("xdc_runtime_IInstance___Object")
	.dwattr $C$DW$T$163, DW_AT_byte_size(0x08)
$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$413, DW_AT_name("__fxns")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$413, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$413, DW_AT_decl_column(0x4f)
$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$414, DW_AT_name("__label")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("__label")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$414, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$414, DW_AT_decl_column(0x62)
	.dwendtag $C$DW$T$163

	.dwattr $C$DW$T$163, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$163, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$T$163, DW_AT_decl_column(0x10)
$C$DW$T$744	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$744, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$T$744, DW_AT_address_class(0x20)
$C$DW$T$745	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IInstance_Handle")
	.dwattr $C$DW$T$745, DW_AT_type(*$C$DW$T$744)
	.dwattr $C$DW$T$745, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$745, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$745, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$T$745, DW_AT_decl_column(0x6e)

$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_name("xdc_runtime_ILogger_Fxns__")
	.dwattr $C$DW$T$39, DW_AT_declaration
	.dwendtag $C$DW$T$39

	.dwattr $C$DW$T$39, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x10)
$C$DW$T$164	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ILogger_Fxns__")
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$T$164, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$164, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$164, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$164, DW_AT_decl_column(0x2b)
$C$DW$T$165	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$T$165, DW_AT_address_class(0x20)
$C$DW$T$746	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$746, DW_AT_type(*$C$DW$T$164)
$C$DW$T$747	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$747, DW_AT_type(*$C$DW$T$746)
	.dwattr $C$DW$T$747, DW_AT_address_class(0x20)
$C$DW$T$748	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ILogger_Module")
	.dwattr $C$DW$T$748, DW_AT_type(*$C$DW$T$747)
	.dwattr $C$DW$T$748, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$748, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$748, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$748, DW_AT_decl_column(0x2b)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("xdc_runtime_ILogger_Params")
	.dwattr $C$DW$T$40, DW_AT_declaration
	.dwendtag $C$DW$T$40

	.dwattr $C$DW$T$40, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x10)
$C$DW$T$749	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ILogger_Params")
	.dwattr $C$DW$T$749, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$749, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$749, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$749, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$749, DW_AT_decl_column(0x2b)

$C$DW$T$166	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$166, DW_AT_name("xdc_runtime_ILogger___Object")
	.dwattr $C$DW$T$166, DW_AT_byte_size(0x08)
$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$415, DW_AT_name("__fxns")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$415, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x59)
	.dwattr $C$DW$415, DW_AT_decl_column(0x4b)
$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$416, DW_AT_name("__label")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("__label")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$416, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0x59)
	.dwattr $C$DW$416, DW_AT_decl_column(0x5e)
	.dwendtag $C$DW$T$166

	.dwattr $C$DW$T$166, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$166, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$166, DW_AT_decl_column(0x10)
$C$DW$T$750	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$750, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$T$750, DW_AT_address_class(0x20)
$C$DW$T$751	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ILogger_Handle")
	.dwattr $C$DW$T$751, DW_AT_type(*$C$DW$T$750)
	.dwattr $C$DW$T$751, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$751, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$751, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$751, DW_AT_decl_column(0x6a)

$C$DW$T$167	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$167, DW_AT_name("xdc_runtime_IModule_Fxns__")
	.dwattr $C$DW$T$167, DW_AT_byte_size(0x18)
$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$417, DW_AT_name("__base")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$417, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IModule.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x46)
	.dwattr $C$DW$417, DW_AT_decl_column(0x1d)
$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$418, DW_AT_name("__sysp")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$418, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IModule.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x47)
	.dwattr $C$DW$418, DW_AT_decl_column(0x27)
$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$419, DW_AT_name("__sfxns")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$419, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IModule.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x48)
	.dwattr $C$DW$419, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$167

	.dwattr $C$DW$T$167, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IModule.h")
	.dwattr $C$DW$T$167, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$167, DW_AT_decl_column(0x08)
$C$DW$T$752	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IModule_Fxns__")
	.dwattr $C$DW$T$752, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$T$752, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$752, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$752, DW_AT_decl_line(0x10)
	.dwattr $C$DW$T$752, DW_AT_decl_column(0x2b)
$C$DW$T$753	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$753, DW_AT_type(*$C$DW$T$752)
$C$DW$T$754	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$754, DW_AT_type(*$C$DW$T$753)
	.dwattr $C$DW$T$754, DW_AT_address_class(0x20)
$C$DW$T$755	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IModule_Module")
	.dwattr $C$DW$T$755, DW_AT_type(*$C$DW$T$754)
	.dwattr $C$DW$T$755, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$755, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$755, DW_AT_decl_line(0x11)
	.dwattr $C$DW$T$755, DW_AT_decl_column(0x2b)

$C$DW$T$179	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$179, DW_AT_name("xdc_runtime_ISystemSupport_Fxns__")
	.dwattr $C$DW$T$179, DW_AT_byte_size(0x2c)
$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$420, DW_AT_name("__base")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$420, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0x44)
	.dwattr $C$DW$420, DW_AT_decl_column(0x1d)
$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$421, DW_AT_name("__sysp")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$421, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0x45)
	.dwattr $C$DW$421, DW_AT_decl_column(0x27)
$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$422, DW_AT_name("abort")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("abort")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$422, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0x46)
	.dwattr $C$DW$422, DW_AT_decl_column(0x10)
$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$423, DW_AT_name("exit")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("exit")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$423, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0x47)
	.dwattr $C$DW$423, DW_AT_decl_column(0x10)
$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$424, DW_AT_name("flush")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("flush")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$424, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0x48)
	.dwattr $C$DW$424, DW_AT_decl_column(0x10)
$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$425, DW_AT_name("putch")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("putch")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$425, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0x49)
	.dwattr $C$DW$425, DW_AT_decl_column(0x10)
$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$426, DW_AT_name("ready")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("ready")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$426, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$426, DW_AT_decl_column(0x10)
$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$427, DW_AT_name("__sfxns")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$427, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$427, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$179

	.dwattr $C$DW$T$179, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$T$179, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$179, DW_AT_decl_column(0x08)
$C$DW$T$756	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ISystemSupport_Fxns__")
	.dwattr $C$DW$T$756, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$T$756, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$756, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$756, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$T$756, DW_AT_decl_column(0x32)
$C$DW$T$757	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$757, DW_AT_type(*$C$DW$T$756)
$C$DW$T$758	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$758, DW_AT_type(*$C$DW$T$757)
	.dwattr $C$DW$T$758, DW_AT_address_class(0x20)
$C$DW$T$759	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ISystemSupport_Module")
	.dwattr $C$DW$T$759, DW_AT_type(*$C$DW$T$758)
	.dwattr $C$DW$T$759, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$759, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$759, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$T$759, DW_AT_decl_column(0x32)

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("xdc_runtime_ITimestampClient_Fxns__")
	.dwattr $C$DW$T$41, DW_AT_declaration
	.dwendtag $C$DW$T$41

	.dwattr $C$DW$T$41, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x101)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x10)
$C$DW$T$760	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ITimestampClient_Fxns__")
	.dwattr $C$DW$T$760, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$760, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$760, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$760, DW_AT_decl_line(0x101)
	.dwattr $C$DW$T$760, DW_AT_decl_column(0x34)
$C$DW$T$761	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$761, DW_AT_type(*$C$DW$T$760)
$C$DW$T$762	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$762, DW_AT_type(*$C$DW$T$761)
	.dwattr $C$DW$T$762, DW_AT_address_class(0x20)
$C$DW$T$763	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ITimestampClient_Module")
	.dwattr $C$DW$T$763, DW_AT_type(*$C$DW$T$762)
	.dwattr $C$DW$T$763, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$763, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$763, DW_AT_decl_line(0x102)
	.dwattr $C$DW$T$763, DW_AT_decl_column(0x34)

$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("xdc_runtime_ITimestampProvider_Fxns__")
	.dwattr $C$DW$T$42, DW_AT_declaration
	.dwendtag $C$DW$T$42

	.dwattr $C$DW$T$42, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x10)
$C$DW$T$764	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ITimestampProvider_Fxns__")
	.dwattr $C$DW$T$764, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$764, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$764, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$764, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$T$764, DW_AT_decl_column(0x36)
$C$DW$T$765	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$765, DW_AT_type(*$C$DW$T$764)
$C$DW$T$766	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$766, DW_AT_type(*$C$DW$T$765)
	.dwattr $C$DW$T$766, DW_AT_address_class(0x20)
$C$DW$T$767	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ITimestampProvider_Module")
	.dwattr $C$DW$T$767, DW_AT_type(*$C$DW$T$766)
	.dwattr $C$DW$T$767, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$767, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$767, DW_AT_decl_line(0x110)
	.dwattr $C$DW$T$767, DW_AT_decl_column(0x36)

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("xdc_runtime_Log_EventRec")
	.dwattr $C$DW$T$43, DW_AT_declaration
	.dwendtag $C$DW$T$43

	.dwattr $C$DW$T$43, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x10)
$C$DW$T$768	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Log_EventRec")
	.dwattr $C$DW$T$768, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$768, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$768, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$768, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$768, DW_AT_decl_column(0x29)

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("xdc_runtime_LoggerBuf_Entry")
	.dwattr $C$DW$T$44, DW_AT_declaration
	.dwendtag $C$DW$T$44

	.dwattr $C$DW$T$44, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x10)
$C$DW$T$769	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Entry")
	.dwattr $C$DW$T$769, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$769, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$769, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$769, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$769, DW_AT_decl_column(0x2c)

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_name("xdc_runtime_LoggerBuf_Fxns__")
	.dwattr $C$DW$T$45, DW_AT_declaration
	.dwendtag $C$DW$T$45

	.dwattr $C$DW$T$45, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x10)
$C$DW$T$770	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Fxns__")
	.dwattr $C$DW$T$770, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$770, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$770, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$770, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$770, DW_AT_decl_column(0x2d)
$C$DW$T$771	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$771, DW_AT_type(*$C$DW$T$770)
$C$DW$T$772	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$772, DW_AT_type(*$C$DW$T$771)
	.dwattr $C$DW$T$772, DW_AT_address_class(0x20)
$C$DW$T$773	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Module")
	.dwattr $C$DW$T$773, DW_AT_type(*$C$DW$T$772)
	.dwattr $C$DW$T$773, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$773, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$773, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$T$773, DW_AT_decl_column(0x2d)

$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("xdc_runtime_LoggerBuf_Module_GateProxy_Fxns__")
	.dwattr $C$DW$T$46, DW_AT_declaration
	.dwendtag $C$DW$T$46

	.dwattr $C$DW$T$46, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x147)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x10)
$C$DW$T$774	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Module_GateProxy_Fxns__")
	.dwattr $C$DW$T$774, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$774, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$774, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$774, DW_AT_decl_line(0x147)
	.dwattr $C$DW$T$774, DW_AT_decl_column(0x3e)
$C$DW$T$775	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$775, DW_AT_type(*$C$DW$T$774)
$C$DW$T$776	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$776, DW_AT_type(*$C$DW$T$775)
	.dwattr $C$DW$T$776, DW_AT_address_class(0x20)
$C$DW$T$777	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Module_GateProxy_Module")
	.dwattr $C$DW$T$777, DW_AT_type(*$C$DW$T$776)
	.dwattr $C$DW$T$777, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$777, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$777, DW_AT_decl_line(0x148)
	.dwattr $C$DW$T$777, DW_AT_decl_column(0x3e)

$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_name("xdc_runtime_LoggerBuf_Module_GateProxy_Params")
	.dwattr $C$DW$T$47, DW_AT_declaration
	.dwendtag $C$DW$T$47

	.dwattr $C$DW$T$47, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x149)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x10)
$C$DW$T$778	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Module_GateProxy_Params")
	.dwattr $C$DW$T$778, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$778, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$778, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$778, DW_AT_decl_line(0x149)
	.dwattr $C$DW$T$778, DW_AT_decl_column(0x3e)

$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("xdc_runtime_LoggerBuf_Module_State")
	.dwattr $C$DW$T$48, DW_AT_declaration
	.dwendtag $C$DW$T$48

	.dwattr $C$DW$T$48, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x10)
$C$DW$T$779	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Module_State")
	.dwattr $C$DW$T$779, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$779, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$779, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$779, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$779, DW_AT_decl_column(0x33)

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("xdc_runtime_LoggerBuf_Object")
	.dwattr $C$DW$T$49, DW_AT_declaration
	.dwendtag $C$DW$T$49

	.dwattr $C$DW$T$49, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x10)
$C$DW$T$780	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Object")
	.dwattr $C$DW$T$780, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$780, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$780, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$780, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$780, DW_AT_decl_column(0x2d)
$C$DW$T$781	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$781, DW_AT_type(*$C$DW$T$780)
	.dwattr $C$DW$T$781, DW_AT_address_class(0x20)
$C$DW$T$782	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Handle")
	.dwattr $C$DW$T$782, DW_AT_type(*$C$DW$T$781)
	.dwattr $C$DW$T$782, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$782, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$782, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$782, DW_AT_decl_column(0x27)
$C$DW$T$783	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Instance")
	.dwattr $C$DW$T$783, DW_AT_type(*$C$DW$T$781)
	.dwattr $C$DW$T$783, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$783, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$783, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$783, DW_AT_decl_column(0x27)

$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("xdc_runtime_LoggerBuf_Object__")
	.dwattr $C$DW$T$50, DW_AT_declaration
	.dwendtag $C$DW$T$50

	.dwattr $C$DW$T$50, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x10)
$C$DW$T$784	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Instance_State")
	.dwattr $C$DW$T$784, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$784, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$784, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$784, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$784, DW_AT_decl_column(0x2f)

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("xdc_runtime_LoggerBuf_Params")
	.dwattr $C$DW$T$51, DW_AT_declaration
	.dwendtag $C$DW$T$51

	.dwattr $C$DW$T$51, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x10)
$C$DW$T$785	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Params")
	.dwattr $C$DW$T$785, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$785, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$785, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$785, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$785, DW_AT_decl_column(0x2d)

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("xdc_runtime_LoggerBuf_Struct")
	.dwattr $C$DW$T$52, DW_AT_declaration
	.dwendtag $C$DW$T$52

	.dwattr $C$DW$T$52, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x10)
$C$DW$T$786	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Struct")
	.dwattr $C$DW$T$786, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$786, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$786, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$786, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$786, DW_AT_decl_column(0x2d)

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("xdc_runtime_LoggerBuf_TimestampProxy_Fxns__")
	.dwattr $C$DW$T$53, DW_AT_declaration
	.dwendtag $C$DW$T$53

	.dwattr $C$DW$T$53, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x140)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x10)
$C$DW$T$787	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_TimestampProxy_Fxns__")
	.dwattr $C$DW$T$787, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$787, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$787, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$787, DW_AT_decl_line(0x140)
	.dwattr $C$DW$T$787, DW_AT_decl_column(0x3c)
$C$DW$T$788	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$788, DW_AT_type(*$C$DW$T$787)
$C$DW$T$789	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$789, DW_AT_type(*$C$DW$T$788)
	.dwattr $C$DW$T$789, DW_AT_address_class(0x20)
$C$DW$T$790	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_TimestampProxy_Module")
	.dwattr $C$DW$T$790, DW_AT_type(*$C$DW$T$789)
	.dwattr $C$DW$T$790, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$790, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$790, DW_AT_decl_line(0x141)
	.dwattr $C$DW$T$790, DW_AT_decl_column(0x3c)

$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("xdc_runtime_LoggerCallback_Fxns__")
	.dwattr $C$DW$T$54, DW_AT_declaration
	.dwendtag $C$DW$T$54

	.dwattr $C$DW$T$54, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x77)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x10)
$C$DW$T$791	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Fxns__")
	.dwattr $C$DW$T$791, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$791, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$791, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$791, DW_AT_decl_line(0x77)
	.dwattr $C$DW$T$791, DW_AT_decl_column(0x32)
$C$DW$T$792	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$792, DW_AT_type(*$C$DW$T$791)
$C$DW$T$793	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$793, DW_AT_type(*$C$DW$T$792)
	.dwattr $C$DW$T$793, DW_AT_address_class(0x20)
$C$DW$T$794	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Module")
	.dwattr $C$DW$T$794, DW_AT_type(*$C$DW$T$793)
	.dwattr $C$DW$T$794, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$794, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$794, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$794, DW_AT_decl_column(0x32)

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("xdc_runtime_LoggerCallback_Object")
	.dwattr $C$DW$T$55, DW_AT_declaration
	.dwendtag $C$DW$T$55

	.dwattr $C$DW$T$55, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x10)
$C$DW$T$795	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Object")
	.dwattr $C$DW$T$795, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$795, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$795, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$795, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$795, DW_AT_decl_column(0x32)
$C$DW$T$796	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$796, DW_AT_type(*$C$DW$T$795)
	.dwattr $C$DW$T$796, DW_AT_address_class(0x20)
$C$DW$T$797	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Handle")
	.dwattr $C$DW$T$797, DW_AT_type(*$C$DW$T$796)
	.dwattr $C$DW$T$797, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$797, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$797, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$797, DW_AT_decl_column(0x2c)
$C$DW$T$798	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Instance")
	.dwattr $C$DW$T$798, DW_AT_type(*$C$DW$T$796)
	.dwattr $C$DW$T$798, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$798, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$798, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$798, DW_AT_decl_column(0x2c)

$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("xdc_runtime_LoggerCallback_Object__")
	.dwattr $C$DW$T$56, DW_AT_declaration
	.dwendtag $C$DW$T$56

	.dwattr $C$DW$T$56, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x10)
$C$DW$T$799	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Instance_State")
	.dwattr $C$DW$T$799, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$799, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$799, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$799, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$799, DW_AT_decl_column(0x34)

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("xdc_runtime_LoggerCallback_Params")
	.dwattr $C$DW$T$57, DW_AT_declaration
	.dwendtag $C$DW$T$57

	.dwattr $C$DW$T$57, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x10)
$C$DW$T$800	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Params")
	.dwattr $C$DW$T$800, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$800, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$800, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$800, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$800, DW_AT_decl_column(0x32)

$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("xdc_runtime_LoggerCallback_Struct")
	.dwattr $C$DW$T$58, DW_AT_declaration
	.dwendtag $C$DW$T$58

	.dwattr $C$DW$T$58, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x10)
$C$DW$T$801	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Struct")
	.dwattr $C$DW$T$801, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$801, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$801, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$801, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$801, DW_AT_decl_column(0x32)

$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("xdc_runtime_LoggerSys_Fxns__")
	.dwattr $C$DW$T$59, DW_AT_declaration
	.dwendtag $C$DW$T$59

	.dwattr $C$DW$T$59, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x10)
$C$DW$T$802	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Fxns__")
	.dwattr $C$DW$T$802, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$802, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$802, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$802, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$802, DW_AT_decl_column(0x2d)
$C$DW$T$803	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$803, DW_AT_type(*$C$DW$T$802)
$C$DW$T$804	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$804, DW_AT_type(*$C$DW$T$803)
	.dwattr $C$DW$T$804, DW_AT_address_class(0x20)
$C$DW$T$805	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Module")
	.dwattr $C$DW$T$805, DW_AT_type(*$C$DW$T$804)
	.dwattr $C$DW$T$805, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$805, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$805, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$805, DW_AT_decl_column(0x2d)

$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("xdc_runtime_LoggerSys_Object")
	.dwattr $C$DW$T$60, DW_AT_declaration
	.dwendtag $C$DW$T$60

	.dwattr $C$DW$T$60, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x87)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x10)
$C$DW$T$806	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Object")
	.dwattr $C$DW$T$806, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$806, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$806, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$806, DW_AT_decl_line(0x87)
	.dwattr $C$DW$T$806, DW_AT_decl_column(0x2d)
$C$DW$T$807	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$807, DW_AT_type(*$C$DW$T$806)
	.dwattr $C$DW$T$807, DW_AT_address_class(0x20)
$C$DW$T$808	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Handle")
	.dwattr $C$DW$T$808, DW_AT_type(*$C$DW$T$807)
	.dwattr $C$DW$T$808, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$808, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$808, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$808, DW_AT_decl_column(0x27)
$C$DW$T$809	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Instance")
	.dwattr $C$DW$T$809, DW_AT_type(*$C$DW$T$807)
	.dwattr $C$DW$T$809, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$809, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$809, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$T$809, DW_AT_decl_column(0x27)

$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("xdc_runtime_LoggerSys_Object__")
	.dwattr $C$DW$T$61, DW_AT_declaration
	.dwendtag $C$DW$T$61

	.dwattr $C$DW$T$61, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x10)
$C$DW$T$810	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Instance_State")
	.dwattr $C$DW$T$810, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$810, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$810, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$810, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$810, DW_AT_decl_column(0x2f)

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("xdc_runtime_LoggerSys_Params")
	.dwattr $C$DW$T$62, DW_AT_declaration
	.dwendtag $C$DW$T$62

	.dwattr $C$DW$T$62, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x10)
$C$DW$T$811	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Params")
	.dwattr $C$DW$T$811, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$811, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$811, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$811, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$811, DW_AT_decl_column(0x2d)

$C$DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$63, DW_AT_name("xdc_runtime_LoggerSys_Struct")
	.dwattr $C$DW$T$63, DW_AT_declaration
	.dwendtag $C$DW$T$63

	.dwattr $C$DW$T$63, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x88)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x10)
$C$DW$T$812	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Struct")
	.dwattr $C$DW$T$812, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$812, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$812, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$812, DW_AT_decl_line(0x88)
	.dwattr $C$DW$T$812, DW_AT_decl_column(0x2d)

$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("xdc_runtime_LoggerSys_TimestampProxy_Fxns__")
	.dwattr $C$DW$T$64, DW_AT_declaration
	.dwendtag $C$DW$T$64

	.dwattr $C$DW$T$64, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x150)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x10)
$C$DW$T$813	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_TimestampProxy_Fxns__")
	.dwattr $C$DW$T$813, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$813, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$813, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$813, DW_AT_decl_line(0x150)
	.dwattr $C$DW$T$813, DW_AT_decl_column(0x3c)
$C$DW$T$814	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$814, DW_AT_type(*$C$DW$T$813)
$C$DW$T$815	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$815, DW_AT_type(*$C$DW$T$814)
	.dwattr $C$DW$T$815, DW_AT_address_class(0x20)
$C$DW$T$816	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_TimestampProxy_Module")
	.dwattr $C$DW$T$816, DW_AT_type(*$C$DW$T$815)
	.dwattr $C$DW$T$816, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$816, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$816, DW_AT_decl_line(0x151)
	.dwattr $C$DW$T$816, DW_AT_decl_column(0x3c)

$C$DW$T$186	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$186, DW_AT_name("xdc_runtime_Main_Module_GateProxy_Fxns__")
	.dwattr $C$DW$T$186, DW_AT_byte_size(0x24)
$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$428, DW_AT_name("__base")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$428, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$428, DW_AT_decl_column(0x1d)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$429, DW_AT_name("__sysp")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$429, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$429, DW_AT_decl_column(0x27)
$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$430, DW_AT_name("query")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("query")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$430, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$430, DW_AT_decl_column(0x10)
$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$431, DW_AT_name("enter")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("enter")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$431, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$431, DW_AT_decl_column(0x10)
$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$432, DW_AT_name("leave")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("leave")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$432, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$432, DW_AT_decl_column(0x10)
$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$433, DW_AT_name("__sfxns")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$433, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$433, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$186

	.dwattr $C$DW$T$186, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$186, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$186, DW_AT_decl_column(0x08)
$C$DW$T$188	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Main_Module_GateProxy_Fxns__")
	.dwattr $C$DW$T$188, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$T$188, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$188, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$188, DW_AT_decl_line(0x157)
	.dwattr $C$DW$T$188, DW_AT_decl_column(0x39)
$C$DW$T$189	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$189, DW_AT_type(*$C$DW$T$188)
$C$DW$T$190	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$190, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$T$190, DW_AT_address_class(0x20)
$C$DW$T$817	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Main_Module_GateProxy_Module")
	.dwattr $C$DW$T$817, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$T$817, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$817, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$817, DW_AT_decl_line(0x158)
	.dwattr $C$DW$T$817, DW_AT_decl_column(0x39)

$C$DW$T$187	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$187, DW_AT_name("xdc_runtime_Main_Module_GateProxy_Params")
	.dwattr $C$DW$T$187, DW_AT_byte_size(0x18)
$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$434, DW_AT_name("__size")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("__size")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$434, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$434, DW_AT_decl_column(0x0c)
$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$435, DW_AT_name("__self")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("__self")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$435, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$435, DW_AT_decl_column(0x11)
$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$436, DW_AT_name("__fxns")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$436, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$436, DW_AT_decl_column(0x0b)
$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$437, DW_AT_name("instance")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("instance")
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$437, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$437, DW_AT_decl_column(0x23)
$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$438, DW_AT_name("__iprms")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("__iprms")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$438, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$438, DW_AT_decl_column(0x22)
	.dwendtag $C$DW$T$187

	.dwattr $C$DW$T$187, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$187, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$T$187, DW_AT_decl_column(0x08)
$C$DW$T$818	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Main_Module_GateProxy_Params")
	.dwattr $C$DW$T$818, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$T$818, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$818, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$818, DW_AT_decl_line(0x159)
	.dwattr $C$DW$T$818, DW_AT_decl_column(0x39)

$C$DW$T$194	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$194, DW_AT_name("xdc_runtime_Main_Module_GateProxy_Struct")
	.dwattr $C$DW$T$194, DW_AT_byte_size(0x08)
$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$439, DW_AT_name("__fxns")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$439, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$439, DW_AT_decl_column(0x35)
$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$440, DW_AT_name("__name")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("__name")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$440, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$440, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$194

	.dwattr $C$DW$T$194, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$194, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$T$194, DW_AT_decl_column(0x08)

$C$DW$T$205	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$205, DW_AT_name("xdc_runtime_Memory_HeapProxy_Fxns__")
	.dwattr $C$DW$T$205, DW_AT_byte_size(0x28)
$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$441, DW_AT_name("__base")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$441, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$441, DW_AT_decl_column(0x1d)
$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$442, DW_AT_name("__sysp")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$442, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0xab)
	.dwattr $C$DW$442, DW_AT_decl_column(0x27)
$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$443, DW_AT_name("alloc")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("alloc")
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$443, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0xac)
	.dwattr $C$DW$443, DW_AT_decl_column(0x0f)
$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$444, DW_AT_name("free")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("free")
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$444, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0xad)
	.dwattr $C$DW$444, DW_AT_decl_column(0x10)
$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$445, DW_AT_name("isBlocking")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("isBlocking")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$445, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0xae)
	.dwattr $C$DW$445, DW_AT_decl_column(0x10)
$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$446, DW_AT_name("getStats")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("getStats")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$446, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$446, DW_AT_decl_column(0x10)
$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$447, DW_AT_name("__sfxns")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$447, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$447, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$205

	.dwattr $C$DW$T$205, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$205, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$T$205, DW_AT_decl_column(0x08)
$C$DW$T$207	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_HeapProxy_Fxns__")
	.dwattr $C$DW$T$207, DW_AT_type(*$C$DW$T$205)
	.dwattr $C$DW$T$207, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$207, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$207, DW_AT_decl_line(0x160)
	.dwattr $C$DW$T$207, DW_AT_decl_column(0x34)
$C$DW$T$208	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$208, DW_AT_type(*$C$DW$T$207)
$C$DW$T$209	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$209, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$T$209, DW_AT_address_class(0x20)
$C$DW$T$819	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_HeapProxy_Module")
	.dwattr $C$DW$T$819, DW_AT_type(*$C$DW$T$209)
	.dwattr $C$DW$T$819, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$819, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$819, DW_AT_decl_line(0x161)
	.dwattr $C$DW$T$819, DW_AT_decl_column(0x34)

$C$DW$T$206	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$206, DW_AT_name("xdc_runtime_Memory_HeapProxy_Params")
	.dwattr $C$DW$T$206, DW_AT_byte_size(0x18)
$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$448, DW_AT_name("__size")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("__size")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$448, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0x96)
	.dwattr $C$DW$448, DW_AT_decl_column(0x0c)
$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$449, DW_AT_name("__self")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("__self")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$449, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x97)
	.dwattr $C$DW$449, DW_AT_decl_column(0x11)
$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$450, DW_AT_name("__fxns")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$450, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0x98)
	.dwattr $C$DW$450, DW_AT_decl_column(0x0b)
$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$451, DW_AT_name("instance")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("instance")
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$451, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x99)
	.dwattr $C$DW$451, DW_AT_decl_column(0x23)
$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$452, DW_AT_name("__iprms")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("__iprms")
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$452, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$452, DW_AT_decl_column(0x22)
	.dwendtag $C$DW$T$206

	.dwattr $C$DW$T$206, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$206, DW_AT_decl_line(0x95)
	.dwattr $C$DW$T$206, DW_AT_decl_column(0x08)
$C$DW$T$820	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_HeapProxy_Params")
	.dwattr $C$DW$T$820, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$T$820, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$820, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$820, DW_AT_decl_line(0x162)
	.dwattr $C$DW$T$820, DW_AT_decl_column(0x34)

$C$DW$T$210	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$210, DW_AT_name("xdc_runtime_Memory_HeapProxy_Struct")
	.dwattr $C$DW$T$210, DW_AT_byte_size(0x08)
$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$209)
	.dwattr $C$DW$453, DW_AT_name("__fxns")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$453, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$453, DW_AT_decl_column(0x30)
$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$454, DW_AT_name("__name")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("__name")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$454, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$454, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$210

	.dwattr $C$DW$T$210, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$210, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$T$210, DW_AT_decl_column(0x08)

$C$DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$65, DW_AT_name("xdc_runtime_Memory_Module_State")
	.dwattr $C$DW$T$65, DW_AT_declaration
	.dwendtag $C$DW$T$65

	.dwattr $C$DW$T$65, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$65, DW_AT_decl_line(0x97)
	.dwattr $C$DW$T$65, DW_AT_decl_column(0x10)
$C$DW$T$821	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_Module_State")
	.dwattr $C$DW$T$821, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$821, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$821, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$821, DW_AT_decl_line(0x97)
	.dwattr $C$DW$T$821, DW_AT_decl_column(0x30)

$C$DW$T$214	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$214, DW_AT_name("xdc_runtime_Memory_Stats")
	.dwattr $C$DW$T$214, DW_AT_byte_size(0x0c)
$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$213)
	.dwattr $C$DW$455, DW_AT_name("totalSize")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("totalSize")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$455, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$455, DW_AT_decl_column(0x1d)
$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$213)
	.dwattr $C$DW$456, DW_AT_name("totalFreeSize")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("totalFreeSize")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$456, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$456, DW_AT_decl_column(0x1d)
$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$213)
	.dwattr $C$DW$457, DW_AT_name("largestFreeSize")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("largestFreeSize")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$457, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$457, DW_AT_decl_column(0x1d)
	.dwendtag $C$DW$T$214

	.dwattr $C$DW$T$214, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$214, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$214, DW_AT_decl_column(0x08)
$C$DW$T$150	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_Stats")
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$214)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$150, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$150, DW_AT_decl_line(0x96)
	.dwattr $C$DW$T$150, DW_AT_decl_column(0x29)
$C$DW$T$151	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$T$151, DW_AT_address_class(0x20)

$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("xdc_runtime_Registry_Module_State")
	.dwattr $C$DW$T$66, DW_AT_declaration
	.dwendtag $C$DW$T$66

	.dwattr $C$DW$T$66, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$66, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$T$66, DW_AT_decl_column(0x10)
$C$DW$T$822	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Registry_Module_State")
	.dwattr $C$DW$T$822, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$822, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$822, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$822, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$T$822, DW_AT_decl_column(0x32)

$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_name("xdc_runtime_Rta_CommandPacket")
	.dwattr $C$DW$T$67, DW_AT_declaration
	.dwendtag $C$DW$T$67

	.dwattr $C$DW$T$67, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x10)
$C$DW$T$823	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Rta_CommandPacket")
	.dwattr $C$DW$T$823, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$823, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$823, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$823, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$T$823, DW_AT_decl_column(0x2e)

$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("xdc_runtime_Rta_ResponsePacket")
	.dwattr $C$DW$T$68, DW_AT_declaration
	.dwendtag $C$DW$T$68

	.dwattr $C$DW$T$68, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x10)
$C$DW$T$824	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Rta_ResponsePacket")
	.dwattr $C$DW$T$824, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$824, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$824, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$824, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$T$824, DW_AT_decl_column(0x2f)

$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("xdc_runtime_Startup_Module_State")
	.dwattr $C$DW$T$69, DW_AT_declaration
	.dwendtag $C$DW$T$69

	.dwattr $C$DW$T$69, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0xce)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x10)
$C$DW$T$825	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Startup_Module_State")
	.dwattr $C$DW$T$825, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$825, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$825, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$825, DW_AT_decl_line(0xce)
	.dwattr $C$DW$T$825, DW_AT_decl_column(0x31)

$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("xdc_runtime_SysCallback_Fxns__")
	.dwattr $C$DW$T$70, DW_AT_declaration
	.dwendtag $C$DW$T$70

	.dwattr $C$DW$T$70, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x10)
$C$DW$T$826	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_SysCallback_Fxns__")
	.dwattr $C$DW$T$826, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$826, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$826, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$826, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$T$826, DW_AT_decl_column(0x2f)
$C$DW$T$827	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$827, DW_AT_type(*$C$DW$T$826)
$C$DW$T$828	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$828, DW_AT_type(*$C$DW$T$827)
	.dwattr $C$DW$T$828, DW_AT_address_class(0x20)
$C$DW$T$829	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_SysCallback_Module")
	.dwattr $C$DW$T$829, DW_AT_type(*$C$DW$T$828)
	.dwattr $C$DW$T$829, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$829, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$829, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$829, DW_AT_decl_column(0x2f)

$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_name("xdc_runtime_SysMin_Fxns__")
	.dwattr $C$DW$T$71, DW_AT_declaration
	.dwendtag $C$DW$T$71

	.dwattr $C$DW$T$71, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0xea)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x10)
$C$DW$T$830	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_SysMin_Fxns__")
	.dwattr $C$DW$T$830, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$830, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$830, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$830, DW_AT_decl_line(0xea)
	.dwattr $C$DW$T$830, DW_AT_decl_column(0x2a)
$C$DW$T$831	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$831, DW_AT_type(*$C$DW$T$830)
$C$DW$T$832	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$832, DW_AT_type(*$C$DW$T$831)
	.dwattr $C$DW$T$832, DW_AT_address_class(0x20)
$C$DW$T$833	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_SysMin_Module")
	.dwattr $C$DW$T$833, DW_AT_type(*$C$DW$T$832)
	.dwattr $C$DW$T$833, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$833, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$833, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$T$833, DW_AT_decl_column(0x2a)

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("xdc_runtime_SysMin_Module_State")
	.dwattr $C$DW$T$72, DW_AT_declaration
	.dwendtag $C$DW$T$72

	.dwattr $C$DW$T$72, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x10)
$C$DW$T$834	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_SysMin_Module_State")
	.dwattr $C$DW$T$834, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$834, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$834, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$834, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$T$834, DW_AT_decl_column(0x30)

$C$DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$73, DW_AT_name("xdc_runtime_SysStd_Fxns__")
	.dwattr $C$DW$T$73, DW_AT_declaration
	.dwendtag $C$DW$T$73

	.dwattr $C$DW$T$73, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x10)
$C$DW$T$835	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_SysStd_Fxns__")
	.dwattr $C$DW$T$835, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$835, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$835, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$835, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$T$835, DW_AT_decl_column(0x2a)
$C$DW$T$836	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$836, DW_AT_type(*$C$DW$T$835)
$C$DW$T$837	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$837, DW_AT_type(*$C$DW$T$836)
	.dwattr $C$DW$T$837, DW_AT_address_class(0x20)
$C$DW$T$838	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_SysStd_Module")
	.dwattr $C$DW$T$838, DW_AT_type(*$C$DW$T$837)
	.dwattr $C$DW$T$838, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$838, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$838, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$T$838, DW_AT_decl_column(0x2a)

$C$DW$T$220	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$220, DW_AT_name("xdc_runtime_System_Module_GateProxy_Fxns__")
	.dwattr $C$DW$T$220, DW_AT_byte_size(0x24)
$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$458, DW_AT_name("__base")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$458, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$458, DW_AT_decl_column(0x1d)
$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$459, DW_AT_name("__sysp")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$459, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$459, DW_AT_decl_column(0x27)
$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$460, DW_AT_name("query")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("query")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$460, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$460, DW_AT_decl_column(0x10)
$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$217)
	.dwattr $C$DW$461, DW_AT_name("enter")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("enter")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$461, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$461, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$461, DW_AT_decl_column(0x10)
$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$462, DW_AT_name("leave")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("leave")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$462, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$462, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$462, DW_AT_decl_column(0x10)
$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$463, DW_AT_name("__sfxns")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$463, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$463, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$220

	.dwattr $C$DW$T$220, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$220, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$220, DW_AT_decl_column(0x08)
$C$DW$T$222	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_Module_GateProxy_Fxns__")
	.dwattr $C$DW$T$222, DW_AT_type(*$C$DW$T$220)
	.dwattr $C$DW$T$222, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$222, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$222, DW_AT_decl_line(0x170)
	.dwattr $C$DW$T$222, DW_AT_decl_column(0x3b)
$C$DW$T$223	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$223, DW_AT_type(*$C$DW$T$222)
$C$DW$T$224	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$224, DW_AT_type(*$C$DW$T$223)
	.dwattr $C$DW$T$224, DW_AT_address_class(0x20)
$C$DW$T$839	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_Module_GateProxy_Module")
	.dwattr $C$DW$T$839, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$T$839, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$839, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$839, DW_AT_decl_line(0x171)
	.dwattr $C$DW$T$839, DW_AT_decl_column(0x3b)

$C$DW$T$221	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$221, DW_AT_name("xdc_runtime_System_Module_GateProxy_Params")
	.dwattr $C$DW$T$221, DW_AT_byte_size(0x18)
$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$464, DW_AT_name("__size")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("__size")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$464, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$464, DW_AT_decl_column(0x0c)
$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$465, DW_AT_name("__self")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("__self")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$465, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$465, DW_AT_decl_column(0x11)
$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$466, DW_AT_name("__fxns")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$466, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$466, DW_AT_decl_column(0x0b)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$467, DW_AT_name("instance")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("instance")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$467, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$467, DW_AT_decl_column(0x23)
$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$468, DW_AT_name("__iprms")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("__iprms")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$468, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$468, DW_AT_decl_column(0x22)
	.dwendtag $C$DW$T$221

	.dwattr $C$DW$T$221, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$221, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$T$221, DW_AT_decl_column(0x08)
$C$DW$T$840	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_Module_GateProxy_Params")
	.dwattr $C$DW$T$840, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$T$840, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$840, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$840, DW_AT_decl_line(0x172)
	.dwattr $C$DW$T$840, DW_AT_decl_column(0x3b)

$C$DW$T$225	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$225, DW_AT_name("xdc_runtime_System_Module_GateProxy_Struct")
	.dwattr $C$DW$T$225, DW_AT_byte_size(0x08)
$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$469, DW_AT_name("__fxns")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$469, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$469, DW_AT_decl_column(0x37)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$470, DW_AT_name("__name")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("__name")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$470, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$470, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$225

	.dwattr $C$DW$T$225, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$225, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$T$225, DW_AT_decl_column(0x08)

$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_name("xdc_runtime_System_Module_State")
	.dwattr $C$DW$T$74, DW_AT_declaration
	.dwendtag $C$DW$T$74

	.dwattr $C$DW$T$74, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$74, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$74, DW_AT_decl_column(0x10)
$C$DW$T$841	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_Module_State")
	.dwattr $C$DW$T$841, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$841, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$841, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$841, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$841, DW_AT_decl_column(0x30)

$C$DW$T$227	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$227, DW_AT_name("xdc_runtime_System_ParseData")
	.dwattr $C$DW$T$227, DW_AT_byte_size(0x20)
$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$471, DW_AT_name("width")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("width")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$471, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x51)
	.dwattr $C$DW$471, DW_AT_decl_column(0x0d)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$472, DW_AT_name("lFlag")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("lFlag")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$472, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x52)
	.dwattr $C$DW$472, DW_AT_decl_column(0x0e)
$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$473, DW_AT_name("lJust")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("lJust")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$473, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x53)
	.dwattr $C$DW$473, DW_AT_decl_column(0x0e)
$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$474, DW_AT_name("precis")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("precis")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$474, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x54)
	.dwattr $C$DW$474, DW_AT_decl_column(0x0d)
$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$475, DW_AT_name("len")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$475, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0x55)
	.dwattr $C$DW$475, DW_AT_decl_column(0x0d)
$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$476, DW_AT_name("zpad")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("zpad")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$476, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0x56)
	.dwattr $C$DW$476, DW_AT_decl_column(0x0d)
$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$226)
	.dwattr $C$DW$477, DW_AT_name("end")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("end")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$477, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0x57)
	.dwattr $C$DW$477, DW_AT_decl_column(0x0f)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$478, DW_AT_name("aFlag")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("aFlag")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$478, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0x58)
	.dwattr $C$DW$478, DW_AT_decl_column(0x0e)
$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$226)
	.dwattr $C$DW$479, DW_AT_name("ptr")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("ptr")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$479, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0x59)
	.dwattr $C$DW$479, DW_AT_decl_column(0x0f)
	.dwendtag $C$DW$T$227

	.dwattr $C$DW$T$227, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$227, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$227, DW_AT_decl_column(0x08)
$C$DW$T$545	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_ParseData")
	.dwattr $C$DW$T$545, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$T$545, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$545, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$545, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$T$545, DW_AT_decl_column(0x2d)
$C$DW$T$546	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$546, DW_AT_type(*$C$DW$T$545)
	.dwattr $C$DW$T$546, DW_AT_address_class(0x20)

$C$DW$T$228	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$228, DW_AT_name("xdc_runtime_System_SupportProxy_Fxns__")
	.dwattr $C$DW$T$228, DW_AT_byte_size(0x2c)
$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$480, DW_AT_name("__base")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$480, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0x93)
	.dwattr $C$DW$480, DW_AT_decl_column(0x1d)
$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$481, DW_AT_name("__sysp")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$481, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0x94)
	.dwattr $C$DW$481, DW_AT_decl_column(0x27)
$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$482, DW_AT_name("abort")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("abort")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$482, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0x95)
	.dwattr $C$DW$482, DW_AT_decl_column(0x10)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$483, DW_AT_name("exit")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("exit")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$483, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0x96)
	.dwattr $C$DW$483, DW_AT_decl_column(0x10)
$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$484, DW_AT_name("flush")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("flush")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$484, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0x97)
	.dwattr $C$DW$484, DW_AT_decl_column(0x10)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$485, DW_AT_name("putch")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("putch")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$485, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0x98)
	.dwattr $C$DW$485, DW_AT_decl_column(0x10)
$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$486, DW_AT_name("ready")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("ready")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$486, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0x99)
	.dwattr $C$DW$486, DW_AT_decl_column(0x10)
$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$487, DW_AT_name("__sfxns")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$487, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$487, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$228

	.dwattr $C$DW$T$228, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$228, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$228, DW_AT_decl_column(0x08)
$C$DW$T$842	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_SupportProxy_Fxns__")
	.dwattr $C$DW$T$842, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$T$842, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$842, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$842, DW_AT_decl_line(0x169)
	.dwattr $C$DW$T$842, DW_AT_decl_column(0x37)
$C$DW$T$843	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$843, DW_AT_type(*$C$DW$T$842)
$C$DW$T$844	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$844, DW_AT_type(*$C$DW$T$843)
	.dwattr $C$DW$T$844, DW_AT_address_class(0x20)
$C$DW$T$845	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_SupportProxy_Module")
	.dwattr $C$DW$T$845, DW_AT_type(*$C$DW$T$844)
	.dwattr $C$DW$T$845, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$845, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$845, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$T$845, DW_AT_decl_column(0x37)

$C$DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$75, DW_AT_name("xdc_runtime_Text_MatchVisState")
	.dwattr $C$DW$T$75, DW_AT_declaration
	.dwendtag $C$DW$T$75

	.dwattr $C$DW$T$75, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x10)
$C$DW$T$846	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Text_MatchVisState")
	.dwattr $C$DW$T$846, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$846, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$846, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$846, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$T$846, DW_AT_decl_column(0x2f)

$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("xdc_runtime_Text_Module_State")
	.dwattr $C$DW$T$76, DW_AT_declaration
	.dwendtag $C$DW$T$76

	.dwattr $C$DW$T$76, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x10)
$C$DW$T$847	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Text_Module_State")
	.dwattr $C$DW$T$847, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$847, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$847, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$847, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$T$847, DW_AT_decl_column(0x2e)

$C$DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$77, DW_AT_name("xdc_runtime_Text_Node")
	.dwattr $C$DW$T$77, DW_AT_declaration
	.dwendtag $C$DW$T$77

	.dwattr $C$DW$T$77, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x10)
$C$DW$T$848	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Text_Node")
	.dwattr $C$DW$T$848, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$848, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$848, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$848, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$T$848, DW_AT_decl_column(0x26)

$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("xdc_runtime_Text_PrintVisState")
	.dwattr $C$DW$T$78, DW_AT_declaration
	.dwendtag $C$DW$T$78

	.dwattr $C$DW$T$78, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x10)
$C$DW$T$849	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Text_PrintVisState")
	.dwattr $C$DW$T$849, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$849, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$849, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$849, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$T$849, DW_AT_decl_column(0x2f)

$C$DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$79, DW_AT_name("xdc_runtime_TimestampNull_Fxns__")
	.dwattr $C$DW$T$79, DW_AT_declaration
	.dwendtag $C$DW$T$79

	.dwattr $C$DW$T$79, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x116)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x10)
$C$DW$T$850	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_TimestampNull_Fxns__")
	.dwattr $C$DW$T$850, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$850, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$850, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$850, DW_AT_decl_line(0x116)
	.dwattr $C$DW$T$850, DW_AT_decl_column(0x31)
$C$DW$T$851	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$851, DW_AT_type(*$C$DW$T$850)
$C$DW$T$852	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$852, DW_AT_type(*$C$DW$T$851)
	.dwattr $C$DW$T$852, DW_AT_address_class(0x20)
$C$DW$T$853	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_TimestampNull_Module")
	.dwattr $C$DW$T$853, DW_AT_type(*$C$DW$T$852)
	.dwattr $C$DW$T$853, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$853, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$853, DW_AT_decl_line(0x117)
	.dwattr $C$DW$T$853, DW_AT_decl_column(0x31)

$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("xdc_runtime_TimestampStd_Fxns__")
	.dwattr $C$DW$T$80, DW_AT_declaration
	.dwendtag $C$DW$T$80

	.dwattr $C$DW$T$80, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x10)
$C$DW$T$854	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_TimestampStd_Fxns__")
	.dwattr $C$DW$T$854, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$854, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$854, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$854, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$T$854, DW_AT_decl_column(0x30)
$C$DW$T$855	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$855, DW_AT_type(*$C$DW$T$854)
$C$DW$T$856	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$856, DW_AT_type(*$C$DW$T$855)
	.dwattr $C$DW$T$856, DW_AT_address_class(0x20)
$C$DW$T$857	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_TimestampStd_Module")
	.dwattr $C$DW$T$857, DW_AT_type(*$C$DW$T$856)
	.dwattr $C$DW$T$857, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$857, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$857, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$T$857, DW_AT_decl_column(0x30)

$C$DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$81, DW_AT_name("xdc_runtime_Timestamp_Fxns__")
	.dwattr $C$DW$T$81, DW_AT_declaration
	.dwendtag $C$DW$T$81

	.dwattr $C$DW$T$81, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x108)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x10)
$C$DW$T$858	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Timestamp_Fxns__")
	.dwattr $C$DW$T$858, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$858, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$858, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$858, DW_AT_decl_line(0x108)
	.dwattr $C$DW$T$858, DW_AT_decl_column(0x2d)
$C$DW$T$859	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$859, DW_AT_type(*$C$DW$T$858)
$C$DW$T$860	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$860, DW_AT_type(*$C$DW$T$859)
	.dwattr $C$DW$T$860, DW_AT_address_class(0x20)
$C$DW$T$861	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Timestamp_Module")
	.dwattr $C$DW$T$861, DW_AT_type(*$C$DW$T$860)
	.dwattr $C$DW$T$861, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$861, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$861, DW_AT_decl_line(0x109)
	.dwattr $C$DW$T$861, DW_AT_decl_column(0x2d)

$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("xdc_runtime_Timestamp_SupportProxy_Fxns__")
	.dwattr $C$DW$T$82, DW_AT_declaration
	.dwendtag $C$DW$T$82

	.dwattr $C$DW$T$82, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x179)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x10)
$C$DW$T$862	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Timestamp_SupportProxy_Fxns__")
	.dwattr $C$DW$T$862, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$862, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$862, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$862, DW_AT_decl_line(0x179)
	.dwattr $C$DW$T$862, DW_AT_decl_column(0x3a)
$C$DW$T$863	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$863, DW_AT_type(*$C$DW$T$862)
$C$DW$T$864	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$864, DW_AT_type(*$C$DW$T$863)
	.dwattr $C$DW$T$864, DW_AT_address_class(0x20)
$C$DW$T$865	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Timestamp_SupportProxy_Module")
	.dwattr $C$DW$T$865, DW_AT_type(*$C$DW$T$864)
	.dwattr $C$DW$T$865, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$865, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$865, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$T$865, DW_AT_decl_column(0x3a)

$C$DW$T$229	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$229, DW_AT_name("xdc_runtime_Types_Base")
	.dwattr $C$DW$T$229, DW_AT_byte_size(0x04)
$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$488, DW_AT_name("base")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$488, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$488, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$488, DW_AT_decl_column(0x1d)
	.dwendtag $C$DW$T$229

	.dwattr $C$DW$T$229, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$229, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$229, DW_AT_decl_column(0x08)
$C$DW$T$117	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_Base")
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$229)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$117, DW_AT_decl_line(0x12f)
	.dwattr $C$DW$T$117, DW_AT_decl_column(0x27)
$C$DW$T$118	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$118, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$T$118, DW_AT_address_class(0x20)

$C$DW$T$83	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$83, DW_AT_name("xdc_runtime_Types_CordAddr__")
	.dwattr $C$DW$T$83, DW_AT_declaration
	.dwendtag $C$DW$T$83

	.dwattr $C$DW$T$83, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$83, DW_AT_decl_line(0x124)
	.dwattr $C$DW$T$83, DW_AT_decl_column(0x10)
$C$DW$T$191	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_CordAddr__")
	.dwattr $C$DW$T$191, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$T$191, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$191, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$191, DW_AT_decl_line(0x124)
	.dwattr $C$DW$T$191, DW_AT_decl_column(0x2d)
$C$DW$T$192	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$192, DW_AT_type(*$C$DW$T$191)
	.dwattr $C$DW$T$192, DW_AT_address_class(0x20)
$C$DW$T$193	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_CordAddr")
	.dwattr $C$DW$T$193, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$T$193, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$193, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$193, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$193, DW_AT_decl_column(0x27)

$C$DW$T$866	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$866, DW_AT_name("xdc_runtime_Types_CreatePolicy")
	.dwattr $C$DW$T$866, DW_AT_byte_size(0x04)
$C$DW$489	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Types_STATIC_POLICY"), DW_AT_const_value(0x00)
	.dwattr $C$DW$489, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$489, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$489, DW_AT_decl_column(0x05)
$C$DW$490	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Types_CREATE_POLICY"), DW_AT_const_value(0x01)
	.dwattr $C$DW$490, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$490, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$490, DW_AT_decl_column(0x05)
$C$DW$491	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Types_DELETE_POLICY"), DW_AT_const_value(0x02)
	.dwattr $C$DW$491, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$491, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$491, DW_AT_decl_column(0x05)
	.dwendtag $C$DW$T$866

	.dwattr $C$DW$T$866, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$866, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$866, DW_AT_decl_column(0x06)
$C$DW$T$867	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_CreatePolicy")
	.dwattr $C$DW$T$867, DW_AT_type(*$C$DW$T$866)
	.dwattr $C$DW$T$867, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$867, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$867, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$867, DW_AT_decl_column(0x2d)

$C$DW$T$230	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$230, DW_AT_name("xdc_runtime_Types_FreqHz")
	.dwattr $C$DW$T$230, DW_AT_byte_size(0x08)
$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$492, DW_AT_name("hi")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("hi")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$492, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$492, DW_AT_decl_line(0x77)
	.dwattr $C$DW$492, DW_AT_decl_column(0x10)
$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$493, DW_AT_name("lo")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("lo")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$493, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$493, DW_AT_decl_line(0x78)
	.dwattr $C$DW$493, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$230

	.dwattr $C$DW$T$230, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$230, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$230, DW_AT_decl_column(0x08)
$C$DW$T$868	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_FreqHz")
	.dwattr $C$DW$T$868, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$T$868, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$868, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$868, DW_AT_decl_line(0x129)
	.dwattr $C$DW$T$868, DW_AT_decl_column(0x29)

$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("xdc_runtime_Types_GateRef__")
	.dwattr $C$DW$T$84, DW_AT_declaration
	.dwendtag $C$DW$T$84

	.dwattr $C$DW$T$84, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x125)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x10)
$C$DW$T$869	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_GateRef__")
	.dwattr $C$DW$T$869, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$869, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$869, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$869, DW_AT_decl_line(0x125)
	.dwattr $C$DW$T$869, DW_AT_decl_column(0x2c)
$C$DW$T$870	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$870, DW_AT_type(*$C$DW$T$869)
	.dwattr $C$DW$T$870, DW_AT_address_class(0x20)
$C$DW$T$871	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_GateRef")
	.dwattr $C$DW$T$871, DW_AT_type(*$C$DW$T$870)
	.dwattr $C$DW$T$871, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$871, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$871, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$871, DW_AT_decl_column(0x26)

$C$DW$T$232	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$232, DW_AT_name("xdc_runtime_Types_InstHdr")
	.dwattr $C$DW$T$232, DW_AT_byte_size(0x08)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$494, DW_AT_name("link")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("link")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$494, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$494, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$494, DW_AT_decl_column(0x1c)
	.dwendtag $C$DW$T$232

	.dwattr $C$DW$T$232, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$232, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$232, DW_AT_decl_column(0x08)
$C$DW$T$872	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_InstHdr")
	.dwattr $C$DW$T$872, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$T$872, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$872, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$872, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$T$872, DW_AT_decl_column(0x2a)

$C$DW$T$233	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$233, DW_AT_name("xdc_runtime_Types_Label")
	.dwattr $C$DW$T$233, DW_AT_byte_size(0x10)
$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$495, DW_AT_name("handle")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("handle")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$495, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$495, DW_AT_decl_line(0x62)
	.dwattr $C$DW$495, DW_AT_decl_column(0x0d)
$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$496, DW_AT_name("modId")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("modId")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$496, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$496, DW_AT_decl_line(0x63)
	.dwattr $C$DW$496, DW_AT_decl_column(0x20)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$497, DW_AT_name("iname")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("iname")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$497, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$497, DW_AT_decl_line(0x64)
	.dwattr $C$DW$497, DW_AT_decl_column(0x10)
$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$498, DW_AT_name("named")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("named")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$498, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$498, DW_AT_decl_line(0x65)
	.dwattr $C$DW$498, DW_AT_decl_column(0x0e)
	.dwendtag $C$DW$T$233

	.dwattr $C$DW$T$233, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$233, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$233, DW_AT_decl_column(0x08)
$C$DW$T$246	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_Label")
	.dwattr $C$DW$T$246, DW_AT_type(*$C$DW$T$233)
	.dwattr $C$DW$T$246, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$246, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$246, DW_AT_decl_line(0x126)
	.dwattr $C$DW$T$246, DW_AT_decl_column(0x28)
$C$DW$T$247	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$247, DW_AT_type(*$C$DW$T$246)
	.dwattr $C$DW$T$247, DW_AT_address_class(0x20)

$C$DW$T$248	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$248, DW_AT_type(*$C$DW$T$247)
	.dwattr $C$DW$T$248, DW_AT_language(DW_LANG_C)
$C$DW$499	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$140)
$C$DW$500	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$247)
	.dwendtag $C$DW$T$248

$C$DW$T$249	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$249, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$T$249, DW_AT_address_class(0x20)

$C$DW$T$235	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$235, DW_AT_name("xdc_runtime_Types_Link")
	.dwattr $C$DW$T$235, DW_AT_byte_size(0x08)
$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$501, DW_AT_name("next")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("next")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$501, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$501, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$501, DW_AT_decl_column(0x1d)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$502, DW_AT_name("prev")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("prev")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$502, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$502, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$502, DW_AT_decl_column(0x1d)
	.dwendtag $C$DW$T$235

	.dwattr $C$DW$T$235, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$235, DW_AT_decl_line(0xa1)
	.dwattr $C$DW$T$235, DW_AT_decl_column(0x08)
$C$DW$T$231	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_Link")
	.dwattr $C$DW$T$231, DW_AT_type(*$C$DW$T$235)
	.dwattr $C$DW$T$231, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$231, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$231, DW_AT_decl_line(0x12c)
	.dwattr $C$DW$T$231, DW_AT_decl_column(0x27)
$C$DW$T$234	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$234, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$T$234, DW_AT_address_class(0x20)

$C$DW$T$236	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$236, DW_AT_name("xdc_runtime_Types_PrmsHdr")
	.dwattr $C$DW$T$236, DW_AT_byte_size(0x10)
$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$503, DW_AT_name("size")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("size")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$503, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$503, DW_AT_decl_line(0xad)
	.dwattr $C$DW$503, DW_AT_decl_column(0x0f)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$504, DW_AT_name("self")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("self")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$504, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$504, DW_AT_decl_line(0xae)
	.dwattr $C$DW$504, DW_AT_decl_column(0x0d)
$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$505, DW_AT_name("modFxns")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("modFxns")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$505, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$505, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$505, DW_AT_decl_column(0x0d)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$506, DW_AT_name("instPrms")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("instPrms")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$506, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$506, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$506, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$T$236

	.dwattr $C$DW$T$236, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$236, DW_AT_decl_line(0xac)
	.dwattr $C$DW$T$236, DW_AT_decl_column(0x08)
$C$DW$T$873	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_PrmsHdr")
	.dwattr $C$DW$T$873, DW_AT_type(*$C$DW$T$236)
	.dwattr $C$DW$T$873, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$873, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$873, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$T$873, DW_AT_decl_column(0x2a)

$C$DW$T$239	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$239, DW_AT_name("xdc_runtime_Types_RegDesc")
	.dwattr $C$DW$T$239, DW_AT_byte_size(0x0c)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$238)
	.dwattr $C$DW$507, DW_AT_name("next")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("next")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$507, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$507, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$507, DW_AT_decl_column(0x20)
$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$508, DW_AT_name("modName")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("modName")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$508, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$508, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$508, DW_AT_decl_column(0x10)
$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$509, DW_AT_name("id")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("id")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$509, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$509, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$509, DW_AT_decl_column(0x20)
$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$510, DW_AT_name("mask")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$510, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$510, DW_AT_decl_line(0x80)
	.dwattr $C$DW$510, DW_AT_decl_column(0x21)
	.dwendtag $C$DW$T$239

	.dwattr $C$DW$T$239, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$239, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$239, DW_AT_decl_column(0x08)
$C$DW$T$237	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_RegDesc")
	.dwattr $C$DW$T$237, DW_AT_type(*$C$DW$T$239)
	.dwattr $C$DW$T$237, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$237, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$237, DW_AT_decl_line(0x12a)
	.dwattr $C$DW$T$237, DW_AT_decl_column(0x2a)
$C$DW$T$238	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$238, DW_AT_type(*$C$DW$T$237)
	.dwattr $C$DW$T$238, DW_AT_address_class(0x20)

$C$DW$T$240	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$240, DW_AT_name("xdc_runtime_Types_Site")
	.dwattr $C$DW$T$240, DW_AT_byte_size(0x0c)
$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$511, DW_AT_name("mod")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("mod")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$511, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$511, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$511, DW_AT_decl_column(0x20)
$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$512, DW_AT_name("file")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("file")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$512, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$512, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$512, DW_AT_decl_column(0x10)
$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$513, DW_AT_name("line")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("line")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$513, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$513, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$513, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$T$240

	.dwattr $C$DW$T$240, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$240, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$240, DW_AT_decl_column(0x08)
$C$DW$T$105	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_Site")
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$240)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$105, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$105, DW_AT_decl_line(0x127)
	.dwattr $C$DW$T$105, DW_AT_decl_column(0x27)

$C$DW$T$250	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$250, DW_AT_name("xdc_runtime_Types_SysFxns")
	.dwattr $C$DW$T$250, DW_AT_byte_size(0x10)
$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$243)
	.dwattr $C$DW$514, DW_AT_name("__create")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("__create")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$514, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$514, DW_AT_decl_line(0xba)
	.dwattr $C$DW$514, DW_AT_decl_column(0x0f)
$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$245)
	.dwattr $C$DW$515, DW_AT_name("__delete")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("__delete")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$515, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$515, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$515, DW_AT_decl_column(0x10)
$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$516, DW_AT_name("__label")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("__label")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$516, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$516, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$516, DW_AT_decl_column(0x20)
$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$517, DW_AT_name("__mid")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("__mid")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$517, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$517, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$517, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$250

	.dwattr $C$DW$T$250, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$250, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$T$250, DW_AT_decl_column(0x08)
$C$DW$T$874	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_SysFxns")
	.dwattr $C$DW$T$874, DW_AT_type(*$C$DW$T$250)
	.dwattr $C$DW$T$874, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$874, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$874, DW_AT_decl_line(0x130)
	.dwattr $C$DW$T$874, DW_AT_decl_column(0x2a)

$C$DW$T$256	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$256, DW_AT_name("xdc_runtime_Types_SysFxns2")
	.dwattr $C$DW$T$256, DW_AT_byte_size(0x10)
$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$518, DW_AT_name("__create")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("__create")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$518, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$518, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$518, DW_AT_decl_column(0x0f)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$245)
	.dwattr $C$DW$519, DW_AT_name("__delete")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("__delete")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$519, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$519, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$519, DW_AT_decl_column(0x10)
$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$520, DW_AT_name("__label")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("__label")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$520, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$520, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$520, DW_AT_decl_column(0x20)
$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$521, DW_AT_name("__mid")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("__mid")
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$521, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$521, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$521, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$256

	.dwattr $C$DW$T$256, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$256, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$T$256, DW_AT_decl_column(0x08)
$C$DW$T$119	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_SysFxns2")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$256)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$119, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$119, DW_AT_decl_line(0x131)
	.dwattr $C$DW$T$119, DW_AT_decl_column(0x2b)
$C$DW$T$120	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$120, DW_AT_type(*$C$DW$T$119)
$C$DW$T$121	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$121, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$T$121, DW_AT_address_class(0x20)

$C$DW$T$257	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$257, DW_AT_name("xdc_runtime_Types_Timestamp64")
	.dwattr $C$DW$T$257, DW_AT_byte_size(0x08)
$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$522, DW_AT_name("hi")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("hi")
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$522, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$522, DW_AT_decl_line(0x71)
	.dwattr $C$DW$522, DW_AT_decl_column(0x10)
$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$523, DW_AT_name("lo")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("lo")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$523, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$523, DW_AT_decl_line(0x72)
	.dwattr $C$DW$523, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$257

	.dwattr $C$DW$T$257, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$257, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$257, DW_AT_decl_column(0x08)
$C$DW$T$875	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_Timestamp64")
	.dwattr $C$DW$T$875, DW_AT_type(*$C$DW$T$257)
	.dwattr $C$DW$T$875, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$875, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$875, DW_AT_decl_line(0x128)
	.dwattr $C$DW$T$875, DW_AT_decl_column(0x2e)

$C$DW$T$258	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$258, DW_AT_name("xdc_runtime_Types_Vec")
	.dwattr $C$DW$T$258, DW_AT_byte_size(0x08)
$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$524, DW_AT_name("len")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$524, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$524, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$524, DW_AT_decl_column(0x0d)
$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$525, DW_AT_name("arr")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("arr")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$525, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$525, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$525, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$T$258

	.dwattr $C$DW$T$258, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$258, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$T$258, DW_AT_decl_column(0x08)
$C$DW$T$876	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_Vec")
	.dwattr $C$DW$T$876, DW_AT_type(*$C$DW$T$258)
	.dwattr $C$DW$T$876, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$876, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$876, DW_AT_decl_line(0x12b)
	.dwattr $C$DW$T$876, DW_AT_decl_column(0x26)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 19
	.dwcfi	cfa_register, 31
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	undefined, 4
	.dwcfi	undefined, 5
	.dwcfi	undefined, 6
	.dwcfi	undefined, 7
	.dwcfi	undefined, 8
	.dwcfi	undefined, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	same_value, 12
	.dwcfi	same_value, 13
	.dwcfi	same_value, 14
	.dwcfi	same_value, 15
	.dwcfi	undefined, 16
	.dwcfi	undefined, 17
	.dwcfi	undefined, 18
	.dwcfi	undefined, 19
	.dwcfi	undefined, 20
	.dwcfi	undefined, 21
	.dwcfi	undefined, 22
	.dwcfi	undefined, 23
	.dwcfi	undefined, 24
	.dwcfi	undefined, 25
	.dwcfi	same_value, 26
	.dwcfi	same_value, 27
	.dwcfi	same_value, 28
	.dwcfi	same_value, 29
	.dwcfi	same_value, 30
	.dwcfi	same_value, 31
	.dwcfi	same_value, 32
	.dwcfi	undefined, 33
	.dwcfi	undefined, 34
	.dwcfi	undefined, 35
	.dwcfi	undefined, 36
	.dwcfi	undefined, 37
	.dwcfi	undefined, 38
	.dwcfi	undefined, 39
	.dwcfi	undefined, 40
	.dwcfi	undefined, 41
	.dwcfi	undefined, 42
	.dwcfi	undefined, 43
	.dwcfi	undefined, 44
	.dwcfi	undefined, 45
	.dwcfi	undefined, 46
	.dwcfi	undefined, 47
	.dwcfi	undefined, 48
	.dwcfi	undefined, 49
	.dwcfi	undefined, 50
	.dwcfi	undefined, 51
	.dwcfi	undefined, 52
	.dwcfi	undefined, 53
	.dwcfi	undefined, 54
	.dwcfi	undefined, 55
	.dwcfi	undefined, 56
	.dwcfi	undefined, 57
	.dwcfi	undefined, 58
	.dwcfi	undefined, 59
	.dwcfi	undefined, 60
	.dwcfi	undefined, 61
	.dwcfi	undefined, 62
	.dwcfi	undefined, 63
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	undefined, 80
	.dwcfi	undefined, 81
	.dwcfi	undefined, 82
	.dwcfi	undefined, 83
	.dwcfi	undefined, 84
	.dwcfi	undefined, 85
	.dwcfi	undefined, 86
	.dwcfi	undefined, 87
	.dwcfi	undefined, 88
	.dwcfi	undefined, 89
	.dwcfi	undefined, 90
	.dwcfi	undefined, 91
	.dwcfi	undefined, 92
	.dwcfi	undefined, 93
	.dwcfi	undefined, 94
	.dwcfi	undefined, 95
	.dwcfi	undefined, 96
	.dwcfi	undefined, 97
	.dwcfi	undefined, 98
	.dwcfi	undefined, 99
	.dwcfi	undefined, 100
	.dwcfi	undefined, 101
	.dwcfi	undefined, 102
	.dwcfi	undefined, 103
	.dwcfi	undefined, 104
	.dwcfi	undefined, 105
	.dwcfi	undefined, 106
	.dwcfi	undefined, 107
	.dwcfi	undefined, 108
	.dwcfi	undefined, 109
	.dwcfi	undefined, 110
	.dwcfi	undefined, 111
	.dwcfi	undefined, 112
	.dwcfi	undefined, 113
	.dwcfi	undefined, 114
	.dwcfi	undefined, 115
	.dwcfi	undefined, 116
	.dwcfi	undefined, 117
	.dwcfi	undefined, 118
	.dwcfi	undefined, 119
	.dwcfi	undefined, 120
	.dwcfi	undefined, 121
	.dwcfi	undefined, 122
	.dwcfi	undefined, 123
	.dwcfi	undefined, 124
	.dwcfi	undefined, 125
	.dwcfi	undefined, 126
	.dwcfi	undefined, 127
	.dwendentry
	.dwendtag $C$DW$CU

