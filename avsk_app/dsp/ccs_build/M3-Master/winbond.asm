;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v7.4.8 *
;* Date/Time created: Mon Sep 12 07:22:34 2016                                *
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
	.dwattr $C$DW$CU, DW_AT_name("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
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
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$266)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("spi_release_bus")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("spi_release_bus")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$3, DW_AT_decl_column(0x06)
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$266)
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
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$266)
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
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$266)
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
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$266)
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$433)
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
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$267)
$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$433)
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$11)
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$3)
$C$DW$30	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$25


$C$DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("malloc")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("malloc")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$31, DW_AT_decl_line(0x16f)
	.dwattr $C$DW$31, DW_AT_decl_column(0x09)
	.sect	".const:winbond_spi_flash_table"
	.clink
	.align	8
	.elfsym	winbond_spi_flash_table,SYM_SIZE(64)
winbond_spi_flash_table:
	.bits	12309,16			; winbond_spi_flash_table[0].id @ 0
	.bits	8,8			; winbond_spi_flash_table[0].l2_page_size @ 16
	.bits	0,8
	.bits	16,16			; winbond_spi_flash_table[0].pages_per_sector @ 32
	.bits	16,16			; winbond_spi_flash_table[0].sectors_per_block @ 48
	.bits	32,8			; winbond_spi_flash_table[0].nr_blocks @ 64
	.bits	0,24
	.bits	$C$SL1,32		; winbond_spi_flash_table[0].name @ 96
	.bits	12310,16			; winbond_spi_flash_table[1].id @ 128
	.bits	8,8			; winbond_spi_flash_table[1].l2_page_size @ 144
	.bits	0,8
	.bits	16,16			; winbond_spi_flash_table[1].pages_per_sector @ 160
	.bits	16,16			; winbond_spi_flash_table[1].sectors_per_block @ 176
	.bits	64,8			; winbond_spi_flash_table[1].nr_blocks @ 192
	.bits	0,24
	.bits	$C$SL2,32		; winbond_spi_flash_table[1].name @ 224
	.bits	12311,16			; winbond_spi_flash_table[2].id @ 256
	.bits	8,8			; winbond_spi_flash_table[2].l2_page_size @ 272
	.bits	0,8
	.bits	16,16			; winbond_spi_flash_table[2].pages_per_sector @ 288
	.bits	16,16			; winbond_spi_flash_table[2].sectors_per_block @ 304
	.bits	128,8			; winbond_spi_flash_table[2].nr_blocks @ 320
	.bits	0,24
	.bits	$C$SL3,32		; winbond_spi_flash_table[2].name @ 352
	.bits	16406,16			; winbond_spi_flash_table[3].id @ 384
	.bits	8,8			; winbond_spi_flash_table[3].l2_page_size @ 400
	.bits	0,8
	.bits	16,16			; winbond_spi_flash_table[3].pages_per_sector @ 416
	.bits	16,16			; winbond_spi_flash_table[3].sectors_per_block @ 432
	.bits	64,8			; winbond_spi_flash_table[3].nr_blocks @ 448
	.bits	0,24
	.bits	$C$SL4,32		; winbond_spi_flash_table[3].name @ 480

$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("winbond_spi_flash_table")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("winbond_spi_flash_table")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$875)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_addr winbond_spi_flash_table]
	.dwattr $C$DW$32, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$32, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$32, DW_AT_decl_column(0x2e)
	.sect	".const:.string:$P$T1$1"
	.clink
	.align	8
	.elfsym	$P$T1$1,SYM_SIZE(4)
$P$T1$1:
	.bits	5,8			; $P$T1$1[0] @ 0
	.bits	255,8			; $P$T1$1[1] @ 8
	.bits	255,8			; $P$T1$1[2] @ 16
	.bits	255,8			; $P$T1$1[3] @ 24

$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("$P$T1$1")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("$P$T1$1")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$434)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_addr $P$T1$1]
	.dwattr $C$DW$33, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$33, DW_AT_decl_line(0x74)
	.dwattr $C$DW$33, DW_AT_decl_column(0x05)
;	c:\ti\ccsv6\tools\compiler\c6000_7.4.8\bin\opt6x.exe C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\046682 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\046684 
	.sect	".text"
	.clink

$C$DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("winbond_write")
	.dwattr $C$DW$34, DW_AT_low_pc(winbond_write)
	.dwattr $C$DW$34, DW_AT_high_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("winbond_write")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$34, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$34, DW_AT_TI_begin_line(0xcc)
	.dwattr $C$DW$34, DW_AT_TI_begin_column(0x0c)
	.dwattr $C$DW$34, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$34, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$34, DW_AT_decl_column(0x0c)
	.dwattr $C$DW$34, DW_AT_TI_max_frame_size(0x70)
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 206,column 1,is_stmt,address winbond_write,isa 0

	.dwfde $C$DW$CIE, winbond_write
$C$DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_name("flash")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("flash")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$267)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg4]
$C$DW$36	.dwtag  DW_TAG_formal_parameter, DW_AT_name("offset")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("offset")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg20]
$C$DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg6]
$C$DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg22]

;******************************************************************************
;* FUNCTION NAME: winbond_write                                               *
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
;*   Local Frame Size  : 32 Args + 24 Auto + 56 Save = 112 byte               *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
winbond_write:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 29
;** 217	-----------------------    page_shift = (*(*(struct inbond_spi_flash *)flash).params).l2_page_size;
;** 218	-----------------------    page_size = 1u<<(unsigned)page_shift;
;** 219	-----------------------    page_addr = offset/page_size;
;** 220	-----------------------    byte_addr = offset%page_size;
;** 222	-----------------------    if ( !(ret = spi_claim_bus((*flash).spi)) ) goto g3;
	.dwcfi	cfa_offset, 0
           STW     .D2T1   A15,*SP--(8)      ; |206| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 15, 0
           STDW    .D2T2   B13:B12,*SP--     ; |206| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 29, -4
	.dwcfi	save_reg_to_mem, 28, -8
           STDW    .D2T2   B11:B10,*SP--     ; |206| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 27, -12
	.dwcfi	save_reg_to_mem, 26, -16
           STW     .D2T2   B3,*SP--(8)       ; |206| 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 19, -24
           STW     .D2T1   A14,*SP--(8)      ; |206| 
	.dwcfi	cfa_offset, 40
	.dwcfi	save_reg_to_mem, 14, -32
           STDW    .D2T1   A13:A12,*SP--     ; |206| 
	.dwcfi	cfa_offset, 48
	.dwcfi	save_reg_to_mem, 13, -36
	.dwcfi	save_reg_to_mem, 12, -40
           STDW    .D2T1   A11:A10,*SP--     ; |206| 
	.dwcfi	cfa_offset, 56
	.dwcfi	save_reg_to_mem, 11, -44
	.dwcfi	save_reg_to_mem, 10, -48
           ADDK    .S2     -56,SP            ; |206| 
	.dwcfi	cfa_offset, 112
$C$DW$39	.dwtag  DW_TAG_variable, DW_AT_name("$O$C19")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("$O$C19")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg14]
$C$DW$40	.dwtag  DW_TAG_variable, DW_AT_name("$O$C20")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("$O$C20")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg3]
$C$DW$41	.dwtag  DW_TAG_variable, DW_AT_name("$O$C21")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("$O$C21")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$41, DW_AT_location[DW_OP_reg20]
$C$DW$42	.dwtag  DW_TAG_variable, DW_AT_name("$O$C22")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("$O$C22")
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$42, DW_AT_location[DW_OP_reg27]
$C$DW$43	.dwtag  DW_TAG_variable, DW_AT_name("$O$C23")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("$O$C23")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg3]
$C$DW$44	.dwtag  DW_TAG_variable, DW_AT_name("$O$Y0")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("$O$Y0")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg21]
$C$DW$45	.dwtag  DW_TAG_variable, DW_AT_name("spi")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$266)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg10]
$C$DW$46	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("status")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_breg31 36]
$C$DW$47	.dwtag  DW_TAG_variable, DW_AT_name("actual")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("actual")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg26]
$C$DW$48	.dwtag  DW_TAG_variable, DW_AT_name("chunk_len")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("chunk_len")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg27]
$C$DW$49	.dwtag  DW_TAG_variable, DW_AT_name("page_shift")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("page_shift")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg29]
$C$DW$50	.dwtag  DW_TAG_variable, DW_AT_name("page_size")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("page_size")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg11]
$C$DW$51	.dwtag  DW_TAG_variable, DW_AT_name("byte_addr")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("byte_addr")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_reg10]
$C$DW$52	.dwtag  DW_TAG_variable, DW_AT_name("page_addr")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("page_addr")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg28]
$C$DW$53	.dwtag  DW_TAG_variable, DW_AT_name("flash")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("flash")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$877)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg12]
$C$DW$54	.dwtag  DW_TAG_variable, DW_AT_name("offset")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("offset")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_breg31 56]
$C$DW$55	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg13]
$C$DW$56	.dwtag  DW_TAG_variable, DW_AT_name("buf")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$326)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg15]
$C$DW$57	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg4]
$C$DW$58	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg0]
$C$DW$59	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg14]
$C$DW$60	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$60, DW_AT_location[DW_OP_reg10]
$C$DW$61	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("cmd")
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$435)
	.dwattr $C$DW$61, DW_AT_location[DW_OP_breg31 40]
$C$DW$62	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("cmd")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$435)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_breg31 48]

           MV      .L1     A4,A12            ; |206| 
||         MV      .S1X    B4,A4             ; |206| 

           STW     .D2T1   A4,*+SP(56)       ; |206| 
||         MV      .L1X    B6,A15            ; |206| 
||         MV      .S1     A6,A13            ; |206| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 217,column 2,is_stmt,isa 0
           LDW     .D1T1   *+A12(28),A3      ; |217| 
           NOP             4
           LDBU    .D1T2   *+A3(2),B13       ; |217| 
           NOP             3
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 218,column 2,is_stmt,isa 0
           MVK     .L2     1,B4              ; |218| 
           SHL     .S2     B4,B13,B5         ; |218| 
           NOP             1
           MV      .L1X    B5,A11            ; |218| Define a twin register
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 219,column 2,is_stmt,isa 0
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("__c6xabi_divu")
	.dwattr $C$DW$63, DW_AT_TI_call

           CALLP   .S2     __c6xabi_divu,B3
||         MV      .L2     B5,B4             ; |219| 
||         MV      .L1     A4,A3             ; |219| 

$C$RL0:    ; CALL OCCURS {__c6xabi_divu} {0}  ; |219| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14
           MV      .L2X    A4,B12            ; |219| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 220,column 2,is_stmt,isa 0
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("__c6xabi_remu")
	.dwattr $C$DW$64, DW_AT_TI_call

           CALLP   .S2     __c6xabi_remu,B3
||         MV      .L1     A3,A4             ; |220| 
||         MV      .L2     B5,B4             ; |220| 

$C$RL1:    ; CALL OCCURS {__c6xabi_remu} {0}  ; |220| 
           MV      .L1     A4,A10            ; |220| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 222,column 2,is_stmt,isa 0
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("spi_claim_bus")
	.dwattr $C$DW$65, DW_AT_TI_call

           CALLP   .S2     spi_claim_bus,B3
||         LDW     .D1T1   *A12,A4           ; |222| 

$C$RL2:    ; CALL OCCURS {spi_claim_bus} {0}  ; |222| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MV      .L1     A4,A0             ; |222| 
||         MV      .S1     A4,A14            ; |222| 

   [!A0]   BNOP    .S1     $C$L1,5           ; |222| 
           ; BRANCHCC OCCURS {$C$L1}         ; |222| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
;** 224	-----------------------    xdc_runtime_System_printf__E("SF: Unable to claim SPI bus\n");
;** 225	-----------------------    return ret;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 224,column 3,is_stmt,isa 0
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$66, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |224| 
           MVKL    .S2     $C$SL5+0,B4
           MVKH    .S2     $C$SL5+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |224| 
           ADDKPC  .S2     $C$RL3,B3,1       ; |224| 
$C$RL3:    ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |224| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 225,column 3,is_stmt,isa 0

           BNOP    .S1     $C$L12,5          ; |225| 
||         MV      .L1     A14,A4

           ; BRANCH OCCURS {$C$L12}          ; |225| 
;** --------------------------------------------------------------------------*
$C$L1:    
;          EXCLUSIVE CPU CYCLES: 7
;**	-----------------------g3:
;** 228	-----------------------    if ( !len ) goto g16;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 228,column 19,is_stmt,isa 0
           MV      .L1     A13,A0
   [!A0]   BNOP    .S1     $C$L7,5           ; |228| 
           ; BRANCHCC OCCURS {$C$L7}         ; |228| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
;** 228	-----------------------    actual = 0u;
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 228,column 7,is_stmt,isa 0
           ZERO    .L2     B10               ; |228| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L2
;** --------------------------------------------------------------------------*
$C$L2:    
$C$DW$L$winbond_write$8$B:
;          EXCLUSIVE CPU CYCLES: 22
;**	-----------------------g5:
;** 229	-----------------------    C$23 = page_size-byte_addr;
;** 229	-----------------------    C$22 = len-actual;
;** 229	-----------------------    (C$22 < C$23) ? (chunk_len = C$22) : (chunk_len = C$23);
;** 231	-----------------------    cmd[0] = Y$0 = (unsigned char)2;
;** 232	-----------------------    cmd[1] = C$20 = (unsigned char)(page_addr>>16u-(unsigned)page_shift);
;** 233	-----------------------    cmd[2] = C$21 = (unsigned char)(page_addr<<(unsigned)page_shift-8u|byte_addr>>8);
;** 234	-----------------------    cmd[3] = byte_addr;
;** 235	-----------------------    C$19 = actual+buf;
;** 235	-----------------------    xdc_runtime_System_printf__E("PP: 0x%p => cmd = { 0x%02x 0x%02x%02x%02x } chunk_len = %d\n", C$19, (int)Y$0, (int)C$20, (int)C$21, (int)(unsigned char)byte_addr, chunk_len);
;** 239	-----------------------    if ( (ret = spi_flash_cmd((*flash).spi, 6u, NULL, 0u)) < 0 ) goto g19;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 229,column 3,is_stmt,isa 0
           SUB     .L2X    A13,B10,B11       ; |229| 
           SUB     .L1     A11,A10,A3        ; |229| 
           CMPLTU  .L1X    B11,A3,A0         ; |229| 
   [!A0]   MV      .L2X    A3,B11            ; |229| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 231,column 3,is_stmt,isa 0
           MVK     .L2     0x2,B5            ; |231| 
           STB     .D2T2   B5,*+SP(40)       ; |231| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 232,column 3,is_stmt,isa 0
           MVK     .S1     16,A3             ; |232| 
           SUB     .L1X    A3,B13,A3         ; |232| 
           SHRU    .S1X    B12,A3,A3         ; |232| 

           STB     .D2T1   A3,*+SP(41)       ; |232| 
||         EXTU    .S1     A3,24,24,A3       ; |232| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 233,column 3,is_stmt,isa 0

           SHRU    .S1     A10,8,A4          ; |233| 
||         SUB     .L2     B13,8,B4          ; |233| 

           SHL     .S2     B12,B4,B4         ; |233| 
           OR      .L2X    A4,B4,B4          ; |233| 

           STB     .D2T2   B4,*+SP(42)       ; |233| 
||         EXTU    .S2     B4,24,24,B4       ; |233| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 234,column 3,is_stmt,isa 0
           STB     .D2T1   A10,*+SP(43)      ; |234| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 235,column 3,is_stmt,isa 0

           STW     .D2T1   A3,*+SP(16)       ; |235| 
||         EXTU    .S1     A10,24,24,A3      ; |235| 

$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$67, DW_AT_TI_call

           CALL    .S1     xdc_runtime_System_printf__E ; |235| 
||         STW     .D2T1   A3,*+SP(24)       ; |235| 

           STW     .D2T2   B11,*+SP(28)      ; |235| 

           MVKL    .S2     $C$SL6+0,B6
||         STW     .D2T2   B5,*+SP(12)       ; |235| 

           MVKH    .S2     $C$SL6+0,B6
||         ADD     .L1X    A15,B10,A14       ; |235| 
||         STW     .D2T2   B4,*+SP(20)       ; |235| 

           STW     .D2T2   B6,*+SP(4)        ; |235| 
||         ADDKPC  .S2     $C$RL4,B3,0       ; |235| 

           STW     .D2T1   A14,*+SP(8)       ; |235| 
$C$RL4:    ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |235| 
$C$DW$L$winbond_write$8$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_write$9$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 239,column 3,is_stmt,isa 0
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("spi_flash_cmd")
	.dwattr $C$DW$68, DW_AT_TI_call

           CALLP   .S2     spi_flash_cmd,B3
||         LDW     .D1T1   *A12,A4           ; |239| 
||         MVK     .L2     0x6,B4            ; |239| 
||         ZERO    .L1     A6                ; |239| 
||         ZERO    .D2     B6                ; |239| 

$C$RL5:    ; CALL OCCURS {spi_flash_cmd} {0}  ; |239| 
$C$DW$L$winbond_write$9$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_write$10$B:
;          EXCLUSIVE CPU CYCLES: 7

           CMPLT   .L1     A4,0,A0           ; |239| 
||         MV      .S1     A4,A10            ; |239| 

   [ A0]   BNOP    .S1     $C$L10,5          ; |239| 
           ; BRANCHCC OCCURS {$C$L10}        ; |239| 
$C$DW$L$winbond_write$10$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_write$11$B:
;          EXCLUSIVE CPU CYCLES: 6
;** 245	-----------------------    if ( (ret = spi_flash_cmd_write((*flash).spi, &cmd, 4u, C$19, chunk_len)) < 0 ) goto g18;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 245,column 3,is_stmt,isa 0
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("spi_flash_cmd_write")
	.dwattr $C$DW$69, DW_AT_TI_call
           CALL    .S1     spi_flash_cmd_write ; |245| 
           LDW     .D1T1   *A12,A4           ; |245| 
           ADDKPC  .S2     $C$RL6,B3,2       ; |245| 

           MVK     .L1     0x4,A6            ; |245| 
||         MV      .L2X    A14,B6            ; |245| 
||         MV      .S1X    B11,A8            ; |245| 
||         ADDAW   .D2     SP,10,B4          ; |245| 

$C$RL6:    ; CALL OCCURS {spi_flash_cmd_write} {0}  ; |245| 
$C$DW$L$winbond_write$11$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_write$12$B:
;          EXCLUSIVE CPU CYCLES: 7

           CMPLT   .L1     A4,0,A0           ; |245| 
||         MV      .S1     A4,A10            ; |245| 

   [ A0]   BNOP    .S1     $C$L9,5           ; |245| 
           ; BRANCHCC OCCURS {$C$L9}         ; |245| 
$C$DW$L$winbond_write$12$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_write$13$B:
;          EXCLUSIVE CPU CYCLES: 15
;** 112	-----------------------    spi = (*flash).spi;  // [8]
;** 116	-----------------------    cmd = $P$T1$1;  // [8]
;** 118	-----------------------    if ( ret = spi_xfer(spi, 32u, &cmd, NULL, 1u) ) goto g13;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 112,column 20,is_stmt,isa 0
           LDW     .D1T1   *A12,A10          ; |112| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 116,column 5,is_stmt,isa 0
           MVKL    .S1     $P$T1$1,A3
           MVKH    .S1     $P$T1$1,A3
           LDW     .D1T1   *A3,A3            ; |116| 
           NOP             4
           STW     .D2T1   A3,*+SP(48)       ; |116| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 118,column 2,is_stmt,isa 0
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("spi_xfer")
	.dwattr $C$DW$70, DW_AT_TI_call
           CALL    .S1     spi_xfer          ; |118| 
           MV      .L1     A10,A4            ; |118| 
           MVK     .S2     0x20,B4           ; |118| 
           ADDKPC  .S2     $C$RL7,B3,1       ; |118| 

           ZERO    .L2     B6                ; |118| 
||         MVK     .L1     0x1,A8            ; |118| 
||         ADDAW   .D1X    SP,12,A6          ; |118| 

$C$RL7:    ; CALL OCCURS {spi_xfer} {0}      ; |118| 
$C$DW$L$winbond_write$13$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_write$14$B:
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A4,A0             ; |118| 
   [ A0]   BNOP    .S1     $C$L5,5           ; |118| 
           ; BRANCHCC OCCURS {$C$L5}         ; |118| 
$C$DW$L$winbond_write$14$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_write$15$B:
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
$C$DW$L$winbond_write$15$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L3:    
$C$DW$L$winbond_write$16$B:
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g9:
;** 126	-----------------------    if ( ret = spi_xfer(spi, 8u, NULL, &status, 0u) ) goto g12;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 126,column 3,is_stmt,isa 0
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("spi_xfer")
	.dwattr $C$DW$71, DW_AT_TI_call
           CALL    .S1     spi_xfer          ; |126| 
           ADDKPC  .S2     $C$RL8,B3,3       ; |126| 

           MVK     .L2     0x8,B4            ; |126| 
||         ZERO    .L1     A6                ; |126| 
||         ZERO    .S1     A8                ; |126| 
||         MV      .D1     A10,A4            ; |126| 
||         ADDAW   .D2     SP,9,B6

$C$RL8:    ; CALL OCCURS {spi_xfer} {0}      ; |126| 
$C$DW$L$winbond_write$16$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_write$17$B:
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A4,A0             ; |126| 
   [ A0]   BNOP    .S1     $C$L4,5           ; |126| 
           ; BRANCHCC OCCURS {$C$L4}         ; |126| 
$C$DW$L$winbond_write$17$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_write$18$B:
;          EXCLUSIVE CPU CYCLES: 12
;** 133	-----------------------    if ( status&1 ) goto g9;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 133,column 4,is_stmt,isa 0
           LDBU    .D2T2   *+SP(36),B4       ; |133| 
           NOP             4
           AND     .L2     1,B4,B0           ; |133| 
   [ B0]   BNOP    .S1     $C$L3,5           ; |133| 
           ; BRANCHCC OCCURS {$C$L3}         ; |133| 
$C$DW$L$winbond_write$18$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_write$19$B:
;          EXCLUSIVE CPU CYCLES: 6
;** 137	-----------------------    spi_xfer(spi, 0u, NULL, NULL, 2u);  // [8]
;** 140	-----------------------    ret = 0;  // [8]
;** 140	-----------------------    goto g14;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 137,column 2,is_stmt,isa 0
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("spi_xfer")
	.dwattr $C$DW$72, DW_AT_TI_call
           CALL    .S1     spi_xfer          ; |137| 
           ADDKPC  .S2     $C$RL9,B3,3       ; |137| 

           ZERO    .L2     B4                ; |137| 
||         MV      .L1     A10,A4            ; |137| 
||         MVK     .S1     0x2,A8            ; |137| 
||         ZERO    .D1     A6                ; |137| 
||         ZERO    .S2     B6                ; |137| 

$C$RL9:    ; CALL OCCURS {spi_xfer} {0}      ; |137| 
$C$DW$L$winbond_write$19$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_write$20$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 140,column 3,is_stmt,isa 0

           BNOP    .S1     $C$L6,5           ; |140| 
||         ZERO    .L1     A10               ; |140| 

           ; BRANCH OCCURS {$C$L6}           ; |140| 
$C$DW$L$winbond_write$20$E:
;** --------------------------------------------------------------------------*
$C$L4:    
$C$DW$L$winbond_write$21$B:
;          EXCLUSIVE CPU CYCLES: 7
;**	-----------------------g12:
;** 128	-----------------------    xdc_runtime_System_printf__E("SF: Failed to get status for cmd %02x: %d\n", &cmd, ret);  // [8]
;** 129	-----------------------    ret = (-1);  // [8]
;** 129	-----------------------    goto g14;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 128,column 4,is_stmt,isa 0
           MVKL    .S2     $C$SL7+0,B5
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$73, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |128| 
           STW     .D2T1   A0,*+SP(12)       ; |128| 
           MVKH    .S2     $C$SL7+0,B5
           ADDAW   .D2     SP,12,B4          ; |128| 

           STW     .D2T2   B5,*+SP(4)        ; |128| 
||         ADDKPC  .S2     $C$RL10,B3,0      ; |128| 

           STW     .D2T2   B4,*+SP(8)        ; |128| 
$C$RL10:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |128| 
$C$DW$L$winbond_write$21$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_write$22$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 129,column 4,is_stmt,isa 0

           BNOP    .S1     $C$L6,5           ; |129| 
||         MVK     .L1     0xffffffff,A10    ; |129| 

           ; BRANCH OCCURS {$C$L6}           ; |129| 
$C$DW$L$winbond_write$22$E:
;** --------------------------------------------------------------------------*
$C$L5:    
$C$DW$L$winbond_write$23$B:
;          EXCLUSIVE CPU CYCLES: 8
;**	-----------------------g13:
;** 120	-----------------------    xdc_runtime_System_printf__E("SF: Failed to send command %02x: %d\n", &cmd, ret);  // [8]
;** 121	-----------------------    ret = ret;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 120,column 3,is_stmt,isa 0
           MVKL    .S2     $C$SL8+0,B5
           MVKH    .S2     $C$SL8+0,B5
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$74, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |120| 
           MV      .L1     A4,A10            ; |120| 
           ADDAW   .D2     SP,12,B4          ; |120| 
           STW     .D2T2   B5,*+SP(4)        ; |120| 

           STW     .D2T2   B4,*+SP(8)        ; |120| 
||         ADDKPC  .S2     $C$RL11,B3,0      ; |120| 

           STW     .D2T1   A10,*+SP(12)      ; |120| 
$C$RL11:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |120| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 121,column 3,is_stmt,isa 0
$C$DW$L$winbond_write$23$E:
;** --------------------------------------------------------------------------*
$C$L6:    
$C$DW$L$winbond_write$24$B:
;          EXCLUSIVE CPU CYCLES: 7
;**	-----------------------g14:
;** 253	-----------------------    if ( ret < 0 ) goto g17;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 253,column 3,is_stmt,isa 0
           CMPLT   .L1     A10,0,A0          ; |253| 
   [ A0]   BNOP    .S1     $C$L8,5           ; |253| 
           ; BRANCHCC OCCURS {$C$L8}         ; |253| 
$C$DW$L$winbond_write$24$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_write$25$B:
;          EXCLUSIVE CPU CYCLES: 10
;** 228	-----------------------    actual += chunk_len;
;** 258	-----------------------    ++page_addr;
;** 259	-----------------------    byte_addr = 0u;
;** 228	-----------------------    if ( actual < len ) goto g5;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 228,column 33,is_stmt,isa 0
           ADD     .L2     B11,B10,B10       ; |228| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 258,column 3,is_stmt,isa 0
           ADD     .L2     1,B12,B12         ; |258| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 259,column 3,is_stmt,isa 0
           ZERO    .L1     A10               ; |259| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 228,column 19,is_stmt,isa 0
           CMPLTU  .L2X    B10,A13,B0        ; |228| 
   [ B0]   BNOP    .S1     $C$L2,5           ; |228| 
           ; BRANCHCC OCCURS {$C$L2}         ; |228| 
$C$DW$L$winbond_write$25$E:
;** --------------------------------------------------------------------------*
$C$L7:    
;          EXCLUSIVE CPU CYCLES: 13
;**	-----------------------g16:
;** 262	-----------------------    xdc_runtime_System_printf__E("SF: Winbond: Successfully programmed %u bytes @ 0x%x\n", len, offset);
;** 264	-----------------------    ret = 0;
;** 264	-----------------------    goto g20;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 262,column 2,is_stmt,isa 0
           MV      .L2X    A13,B5            ; |262| 
           STW     .D2T2   B5,*+SP(8)        ; |262| 
           LDW     .D2T2   *+SP(56),B5       ; |262| 
           MVKL    .S2     $C$SL9+0,B4
           MVKH    .S2     $C$SL9+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |262| 
           NOP             1
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$75, DW_AT_TI_call

           CALLP   .S2     xdc_runtime_System_printf__E,B3
||         STW     .D2T2   B5,*+SP(12)       ; |262| 

$C$RL12:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |262| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 264,column 2,is_stmt,isa 0

           BNOP    .S1     $C$L11,5          ; |264| 
||         ZERO    .L1     A10               ; |264| 

           ; BRANCH OCCURS {$C$L11}          ; |264| 
;** --------------------------------------------------------------------------*
$C$L8:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g17:
;** 254	-----------------------    xdc_runtime_System_printf__E("SF: Winbond page programming timed out\n");
;** 255	-----------------------    goto g20;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 254,column 4,is_stmt,isa 0
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$76, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |254| 
           MVKL    .S2     $C$SL10+0,B4
           MVKH    .S2     $C$SL10+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |254| 
           ADDKPC  .S2     $C$RL13,B3,1      ; |254| 
$C$RL13:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |254| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 255,column 4,is_stmt,isa 0
           BNOP    .S1     $C$L11,5          ; |255| 
           ; BRANCH OCCURS {$C$L11}          ; |255| 
;** --------------------------------------------------------------------------*
$C$L9:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g18:
;** 248	-----------------------    xdc_runtime_System_printf__E("SF: Winbond Page Program failed\n");
;** 249	-----------------------    goto g20;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 248,column 4,is_stmt,isa 0
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$77, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |248| 
           MVKL    .S2     $C$SL11+0,B4
           MVKH    .S2     $C$SL11+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |248| 
           ADDKPC  .S2     $C$RL14,B3,1      ; |248| 
$C$RL14:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |248| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 249,column 4,is_stmt,isa 0
           BNOP    .S1     $C$L11,5          ; |249| 
           ; BRANCH OCCURS {$C$L11}          ; |249| 
;** --------------------------------------------------------------------------*
$C$L10:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g19:
;** 241	-----------------------    xdc_runtime_System_printf__E("SF: Enabling Write failed\n");
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 241,column 4,is_stmt,isa 0
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$78, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |241| 
           MVKL    .S2     $C$SL12+0,B4
           MVKH    .S2     $C$SL12+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |241| 
           ADDKPC  .S2     $C$RL15,B3,1      ; |241| 
$C$RL15:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |241| 
;** --------------------------------------------------------------------------*
$C$L11:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g20:
;** 267	-----------------------    spi_release_bus((*flash).spi);
;** 268	-----------------------    return ret;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 267,column 2,is_stmt,isa 0
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("spi_release_bus")
	.dwattr $C$DW$79, DW_AT_TI_call
           CALL    .S1     spi_release_bus   ; |267| 
           LDW     .D1T1   *A12,A4           ; |267| 
           ADDKPC  .S2     $C$RL16,B3,3      ; |267| 
$C$RL16:   ; CALL OCCURS {spi_release_bus} {0}  ; |267| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 268,column 2,is_stmt,isa 0
           MV      .L1     A10,A4            ; |268| 
;** --------------------------------------------------------------------------*
$C$L12:    
;          EXCLUSIVE CPU CYCLES: 15
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 269,column 1,is_stmt,isa 0
           ADDK    .S2     56,SP             ; |269| 
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
           LDW     .D2T1   *++SP(8),A15      ; |269| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 15
	.dwcfi	cfa_offset, 0
           NOP             1
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_return
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3}  

$C$DW$81	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$81, DW_AT_name("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\ccs_build\M3-Master\winbond.asm:$C$L2:1:1473636155")
	.dwattr $C$DW$81, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$81, DW_AT_TI_begin_line(0xe4)
	.dwattr $C$DW$81, DW_AT_TI_end_line(0x104)
$C$DW$82	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$82, DW_AT_low_pc($C$DW$L$winbond_write$8$B)
	.dwattr $C$DW$82, DW_AT_high_pc($C$DW$L$winbond_write$8$E)
$C$DW$83	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$83, DW_AT_low_pc($C$DW$L$winbond_write$21$B)
	.dwattr $C$DW$83, DW_AT_high_pc($C$DW$L$winbond_write$21$E)
$C$DW$84	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$84, DW_AT_low_pc($C$DW$L$winbond_write$9$B)
	.dwattr $C$DW$84, DW_AT_high_pc($C$DW$L$winbond_write$9$E)
$C$DW$85	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$85, DW_AT_low_pc($C$DW$L$winbond_write$10$B)
	.dwattr $C$DW$85, DW_AT_high_pc($C$DW$L$winbond_write$10$E)
$C$DW$86	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$86, DW_AT_low_pc($C$DW$L$winbond_write$11$B)
	.dwattr $C$DW$86, DW_AT_high_pc($C$DW$L$winbond_write$11$E)
$C$DW$87	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$87, DW_AT_low_pc($C$DW$L$winbond_write$12$B)
	.dwattr $C$DW$87, DW_AT_high_pc($C$DW$L$winbond_write$12$E)
$C$DW$88	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$88, DW_AT_low_pc($C$DW$L$winbond_write$13$B)
	.dwattr $C$DW$88, DW_AT_high_pc($C$DW$L$winbond_write$13$E)
$C$DW$89	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$89, DW_AT_low_pc($C$DW$L$winbond_write$14$B)
	.dwattr $C$DW$89, DW_AT_high_pc($C$DW$L$winbond_write$14$E)
$C$DW$90	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$90, DW_AT_low_pc($C$DW$L$winbond_write$15$B)
	.dwattr $C$DW$90, DW_AT_high_pc($C$DW$L$winbond_write$15$E)
$C$DW$91	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$91, DW_AT_low_pc($C$DW$L$winbond_write$19$B)
	.dwattr $C$DW$91, DW_AT_high_pc($C$DW$L$winbond_write$19$E)
$C$DW$92	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$92, DW_AT_low_pc($C$DW$L$winbond_write$20$B)
	.dwattr $C$DW$92, DW_AT_high_pc($C$DW$L$winbond_write$20$E)
$C$DW$93	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$93, DW_AT_low_pc($C$DW$L$winbond_write$22$B)
	.dwattr $C$DW$93, DW_AT_high_pc($C$DW$L$winbond_write$22$E)
$C$DW$94	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$94, DW_AT_low_pc($C$DW$L$winbond_write$23$B)
	.dwattr $C$DW$94, DW_AT_high_pc($C$DW$L$winbond_write$23$E)
$C$DW$95	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$95, DW_AT_low_pc($C$DW$L$winbond_write$24$B)
	.dwattr $C$DW$95, DW_AT_high_pc($C$DW$L$winbond_write$24$E)
$C$DW$96	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$96, DW_AT_low_pc($C$DW$L$winbond_write$25$B)
	.dwattr $C$DW$96, DW_AT_high_pc($C$DW$L$winbond_write$25$E)

$C$DW$97	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$97, DW_AT_name("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\ccs_build\M3-Master\winbond.asm:$C$L3:2:1473636155")
	.dwattr $C$DW$97, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$97, DW_AT_TI_begin_line(0x7d)
	.dwattr $C$DW$97, DW_AT_TI_end_line(0x87)
$C$DW$98	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$98, DW_AT_low_pc($C$DW$L$winbond_write$16$B)
	.dwattr $C$DW$98, DW_AT_high_pc($C$DW$L$winbond_write$16$E)
$C$DW$99	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$99, DW_AT_low_pc($C$DW$L$winbond_write$17$B)
	.dwattr $C$DW$99, DW_AT_high_pc($C$DW$L$winbond_write$17$E)
$C$DW$100	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$100, DW_AT_low_pc($C$DW$L$winbond_write$18$B)
	.dwattr $C$DW$100, DW_AT_high_pc($C$DW$L$winbond_write$18$E)
	.dwendtag $C$DW$97

	.dwendtag $C$DW$81

	.dwattr $C$DW$34, DW_AT_TI_end_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$34, DW_AT_TI_end_line(0x10d)
	.dwattr $C$DW$34, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$34

	.sect	".text"
	.clink
	.global	winbond_read_fast

$C$DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("winbond_read_fast")
	.dwattr $C$DW$101, DW_AT_low_pc(winbond_read_fast)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("winbond_read_fast")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$101, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$101, DW_AT_TI_begin_line(0xb1)
	.dwattr $C$DW$101, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$101, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$101, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$101, DW_AT_decl_column(0x05)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(0x10)
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 179,column 1,is_stmt,address winbond_read_fast,isa 0

	.dwfde $C$DW$CIE, winbond_read_fast
$C$DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("flash")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("flash")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$267)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg4]
$C$DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("offset")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("offset")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg20]
$C$DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg6]
$C$DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("buf")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("buf")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg22]

;******************************************************************************
;* FUNCTION NAME: winbond_read_fast                                           *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 12 Auto + 4 Save = 16 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
winbond_read_fast:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 22
;** 187	-----------------------    cmd[0] = 11u;
;** 172	-----------------------    C$12 = (*(*(struct inbond_spi_flash *)flash).params).l2_page_size;  // [9]
;** 172	-----------------------    C$13 = 1u<<(unsigned)C$12;  // [9]
;** 172	-----------------------    C$11 = offset/C$13;  // [9]
;** 172	-----------------------    cmd[1] = C$11>>16u-(unsigned)C$12;  // [9]
;** 173	-----------------------    C$10 = offset%C$13;  // [9]
;** 173	-----------------------    cmd[2] = C$11<<(unsigned)C$12-8u|C$10>>8;  // [9]
;** 174	-----------------------    cmd[3] = C$10;  // [9]
;** 194	-----------------------    cmd[4] = 0u;
;** 196	-----------------------    return spi_flash_read_common(flash, &cmd, 5u, buf, len);
	.dwcfi	cfa_offset, 0
           STW     .D2T2   B3,*SP--(16)      ; |179| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 19, 0
$C$DW$106	.dwtag  DW_TAG_variable, DW_AT_name("$O$C10")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("$O$C10")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg4]
$C$DW$107	.dwtag  DW_TAG_variable, DW_AT_name("$O$C11")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("$O$C11")
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg6]
$C$DW$108	.dwtag  DW_TAG_variable, DW_AT_name("$O$C12")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("$O$C12")
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg9]
$C$DW$109	.dwtag  DW_TAG_variable, DW_AT_name("$O$C13")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("$O$C13")
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg5]
$C$DW$110	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg8]
$C$DW$111	.dwtag  DW_TAG_variable, DW_AT_name("offset")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("offset")
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg7]
$C$DW$112	.dwtag  DW_TAG_variable, DW_AT_name("flash")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("flash")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$877)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg3]
$C$DW$113	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("cmd")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$436)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_breg31 8]

           MV      .L1X    B4,A7             ; |179| 
||         MV      .S1     A6,A8             ; |179| 
||         MV      .D1     A4,A3             ; |179| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 187,column 2,is_stmt,isa 0
           MVK     .L2     11,B4             ; |187| 
           STB     .D2T2   B4,*+SP(8)        ; |187| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 172,column 2,is_stmt,isa 0
           LDW     .D1T1   *+A3(28),A4       ; |172| 
           NOP             4
           LDBU    .D1T1   *+A4(2),A9        ; |172| 
           MVK     .L1     1,A4              ; |172| 
           NOP             3
           SHL     .S1     A4,A9,A5          ; |172| 
           MV      .L1     A7,A4             ; |172| 
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("__c6xabi_divu")
	.dwattr $C$DW$114, DW_AT_TI_call

           CALLP   .S2     __c6xabi_divu,B3
||         MV      .L2X    A5,B4             ; |172| 

$C$RL17:   ; CALL OCCURS {__c6xabi_divu} {0}  ; |172| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 24

           MVK     .S2     16,B4             ; |172| 
||         MV      .L1     A4,A6             ; |172| 

           SUB     .L2X    B4,A9,B4          ; |172| 
           SHRU    .S2X    A6,B4,B4          ; |172| 
           STB     .D2T2   B4,*+SP(9)        ; |172| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 173,column 2,is_stmt,isa 0
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("__c6xabi_remu")
	.dwattr $C$DW$115, DW_AT_TI_call

           CALLP   .S2     __c6xabi_remu,B3
||         MV      .L1     A7,A4             ; |173| 
||         MV      .L2X    A5,B4             ; |173| 

$C$RL18:   ; CALL OCCURS {__c6xabi_remu} {0}  ; |173| 
           SUB     .L1     A9,8,A5           ; |173| 
           SHL     .S1     A6,A5,A5          ; |173| 
           SHRU    .S1     A4,8,A6           ; |173| 
           OR      .L1     A6,A5,A5          ; |173| 
           STB     .D2T1   A5,*+SP(10)       ; |173| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 174,column 2,is_stmt,isa 0
           STB     .D2T1   A4,*+SP(11)       ; |174| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 194,column 2,is_stmt,isa 0
           ZERO    .L2     B4                ; |194| 
           STB     .D2T2   B4,*+SP(12)       ; |194| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 196,column 2,is_stmt,isa 0
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("spi_flash_read_common")
	.dwattr $C$DW$116, DW_AT_TI_call

           CALLP   .S2     spi_flash_read_common,B3
||         MV      .L1     A3,A4             ; |196| 
||         MVK     .S1     0x5,A6            ; |196| 
||         ADD     .L2     8,SP,B4           ; |196| 

$C$RL19:   ; CALL OCCURS {spi_flash_read_common} {0}  ; |196| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 11
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 197,column 1,is_stmt,isa 0
           LDW     .D2T2   *++SP(16),B3      ; |197| 
           NOP             4
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_return
           RETNOP  .S2     B3,5              ; |197| 
           ; BRANCH OCCURS {B3}              ; |197| 
	.dwattr $C$DW$101, DW_AT_TI_end_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0xc5)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$101

	.sect	".text"
	.clink
	.global	winbond_erase

$C$DW$118	.dwtag  DW_TAG_subprogram, DW_AT_name("winbond_erase")
	.dwattr $C$DW$118, DW_AT_low_pc(winbond_erase)
	.dwattr $C$DW$118, DW_AT_high_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("winbond_erase")
	.dwattr $C$DW$118, DW_AT_external
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$118, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$118, DW_AT_TI_begin_line(0x10f)
	.dwattr $C$DW$118, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$118, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$118, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$118, DW_AT_decl_column(0x05)
	.dwattr $C$DW$118, DW_AT_TI_max_frame_size(0x58)
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 272,column 1,is_stmt,address winbond_erase,isa 0

	.dwfde $C$DW$CIE, winbond_erase
$C$DW$119	.dwtag  DW_TAG_formal_parameter, DW_AT_name("flash")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("flash")
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$267)
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg4]
$C$DW$120	.dwtag  DW_TAG_formal_parameter, DW_AT_name("offset")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("offset")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg20]
$C$DW$121	.dwtag  DW_TAG_formal_parameter, DW_AT_name("len")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg6]

;******************************************************************************
;* FUNCTION NAME: winbond_erase                                               *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,SP,A16,A17,  *
;*                           A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29, *
;*                           A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24,B25, *
;*                           B26,B27,B28,B29,B30,B31                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,B0,B1, *
;*                           B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,DP,SP,A16,   *
;*                           A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28, *
;*                           A29,A30,A31,B16,B17,B18,B19,B20,B21,B22,B23,B24, *
;*                           B25,B26,B27,B28,B29,B30,B31                      *
;*   Local Frame Size  : 24 Args + 20 Auto + 40 Save = 84 byte                *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
winbond_erase:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 29
;** 272	-----------------------    len = len;
;** 72	-----------------------    stm = (struct inbond_spi_flash *)flash;  // [7]
;** 287	-----------------------    C$27 = (*stm).params;
;** 287	-----------------------    sector_size = (1<<(unsigned)(*C$27).l2_page_size)*(*C$27).pages_per_sector;
;** 289	-----------------------    if ( !(offset%sector_size || len%sector_size) ) goto g3;
	.dwcfi	cfa_offset, 0
           STW     .D2T2   B12,*SP--(8)      ; |272| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 28, 0
           STDW    .D2T2   B11:B10,*SP--     ; |272| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 27, -4
	.dwcfi	save_reg_to_mem, 26, -8
           STW     .D2T2   B3,*SP--(8)       ; |272| 
	.dwcfi	cfa_offset, 24
	.dwcfi	save_reg_to_mem, 19, -16
           STDW    .D2T1   A13:A12,*SP--     ; |272| 
	.dwcfi	cfa_offset, 32
	.dwcfi	save_reg_to_mem, 13, -20
	.dwcfi	save_reg_to_mem, 12, -24
           STDW    .D2T1   A11:A10,*SP--     ; |272| 
	.dwcfi	cfa_offset, 40
	.dwcfi	save_reg_to_mem, 11, -28
	.dwcfi	save_reg_to_mem, 10, -32
           ADDK    .S2     -48,SP            ; |272| 
	.dwcfi	cfa_offset, 88
$C$DW$122	.dwtag  DW_TAG_variable, DW_AT_name("$O$C19")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("$O$C19")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg21]
$C$DW$123	.dwtag  DW_TAG_variable, DW_AT_name("$O$C20")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("$O$C20")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg5]
$C$DW$124	.dwtag  DW_TAG_variable, DW_AT_name("$O$C21")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("$O$C21")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg3]
$C$DW$125	.dwtag  DW_TAG_variable, DW_AT_name("$O$C22")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("$O$C22")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg4]
$C$DW$126	.dwtag  DW_TAG_variable, DW_AT_name("$O$C23")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("$O$C23")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg6]
$C$DW$127	.dwtag  DW_TAG_variable, DW_AT_name("$O$C24")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("$O$C24")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg3]
$C$DW$128	.dwtag  DW_TAG_variable, DW_AT_name("$O$C25")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("$O$C25")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg22]
$C$DW$129	.dwtag  DW_TAG_variable, DW_AT_name("$O$C26")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("$O$C26")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg5]
$C$DW$130	.dwtag  DW_TAG_variable, DW_AT_name("$O$C27")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("$O$C27")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$260)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg3]
$C$DW$131	.dwtag  DW_TAG_variable, DW_AT_name("$O$L1")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("$O$L1")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg12]
$C$DW$132	.dwtag  DW_TAG_variable, DW_AT_name("spi")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$266)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_reg10]
$C$DW$133	.dwtag  DW_TAG_variable, DW_AT_name("status")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("status")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_breg31 28]
$C$DW$134	.dwtag  DW_TAG_variable, DW_AT_name("actual")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("actual")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg26]
$C$DW$135	.dwtag  DW_TAG_variable, DW_AT_name("sector_size")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("sector_size")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg27]
$C$DW$136	.dwtag  DW_TAG_variable, DW_AT_name("stm")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("stm")
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$345)
	.dwattr $C$DW$136, DW_AT_location[DW_OP_reg11]
$C$DW$137	.dwtag  DW_TAG_variable, DW_AT_name("len")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg13]
$C$DW$138	.dwtag  DW_TAG_variable, DW_AT_name("flash")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("flash")
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$877)
	.dwattr $C$DW$138, DW_AT_location[DW_OP_reg11]
$C$DW$139	.dwtag  DW_TAG_variable, DW_AT_name("offset")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("offset")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$569)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg28]
$C$DW$140	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg4]
$C$DW$141	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$141, DW_AT_location[DW_OP_reg0]
$C$DW$142	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$142, DW_AT_location[DW_OP_reg10]
$C$DW$143	.dwtag  DW_TAG_variable, DW_AT_name("ret")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("ret")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg10]
$C$DW$144	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("cmd")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$435)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_breg31 32]
$C$DW$145	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("cmd")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$435)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_breg31 40]

           MV      .L2     B4,B12            ; |272| 
||         MV      .L1     A6,A13            ; |272| 
||         MV      .S1     A4,A11            ; |272| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 72,column 2,is_stmt,isa 0
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 287,column 2,is_stmt,isa 0
           LDW     .D1T1   *+A11(28),A3      ; |287| 
           NOP             4
           LDBU    .D1T1   *+A3(2),A4        ; |287| 
           LDHU    .D1T2   *+A3(4),B4        ; |287| 
           MVK     .L1     1,A3              ; |287| 
           NOP             2
           SHL     .S1     A3,A4,A3          ; |287| 
           NOP             1
           MPY32   .M2X    B4,A3,B11         ; |287| 
           NOP             3
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 289,column 2,is_stmt,isa 0
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("__c6xabi_remu")
	.dwattr $C$DW$146, DW_AT_TI_call

           CALLP   .S2     __c6xabi_remu,B3
||         MV      .L2     B11,B4            ; |289| 
||         MV      .L1X    B12,A4            ; |289| 

$C$RL20:   ; CALL OCCURS {__c6xabi_remu} {0}  ; |289| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A4,A0             ; |289| 
   [ A0]   B       .S1     $C$L13            ; |289| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("__c6xabi_remu")
	.dwattr $C$DW$147, DW_AT_TI_call
   [!A0]   CALL    .S1     __c6xabi_remu     ; |289| 
           MV      .L1     A6,A4             ; |289| 
           MV      .L2     B11,B4            ; |289| 
           NOP             2
           ; BRANCHCC OCCURS {$C$L13}        ; |289| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
           ADDKPC  .S2     $C$RL21,B3,0      ; |289| 
$C$RL21:   ; CALL OCCURS {__c6xabi_remu} {0}  ; |289| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A4,A0             ; |289| 
   [!A0]   BNOP    .S1     $C$L14,5          ; |289| 
           ; BRANCHCC OCCURS {$C$L14}        ; |289| 
;** --------------------------------------------------------------------------*
$C$L13:    
;          EXCLUSIVE CPU CYCLES: 8
;** 290	-----------------------    xdc_runtime_System_printf__E("SF: Erase offset/length not multiple of sector size\n");
;** 291	-----------------------    return (-1);
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 290,column 3,is_stmt,isa 0
           MVKL    .S2     $C$SL13+0,B4
           MVKH    .S2     $C$SL13+0,B4
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$148, DW_AT_TI_call

           CALLP   .S2     xdc_runtime_System_printf__E,B3
||         STW     .D2T2   B4,*+SP(4)        ; |290| 

$C$RL22:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |290| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 291,column 3,is_stmt,isa 0

           BNOP    .S1     $C$L26,5          ; |291| 
||         MVK     .L1     0xffffffff,A4     ; |291| 

           ; BRANCH OCCURS {$C$L26}          ; |291| 
;** --------------------------------------------------------------------------*
$C$L14:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g3:
;** 294	-----------------------    len /= sector_size;
;** 295	-----------------------    cmd[0] = 32;
;** 297	-----------------------    if ( !(ret = spi_claim_bus((*flash).spi)) ) goto g5;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 294,column 2,is_stmt,isa 0
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("__c6xabi_divu")
	.dwattr $C$DW$149, DW_AT_TI_call
           CALL    .S1     __c6xabi_divu     ; |294| 
           ADDKPC  .S2     $C$RL23,B3,3      ; |294| 

           MV      .L1     A13,A4            ; |294| 
||         MV      .L2     B11,B4            ; |294| 

$C$RL23:   ; CALL OCCURS {__c6xabi_divu} {0}  ; |294| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 9
           MV      .L1     A4,A13            ; |294| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 295,column 2,is_stmt,isa 0
           MVK     .S2     32,B4             ; |295| 
           STB     .D2T2   B4,*+SP(32)       ; |295| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 297,column 2,is_stmt,isa 0
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("spi_claim_bus")
	.dwattr $C$DW$150, DW_AT_TI_call

           CALLP   .S2     spi_claim_bus,B3
||         LDW     .D1T1   *A11,A4           ; |297| 

$C$RL24:   ; CALL OCCURS {spi_claim_bus} {0}  ; |297| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7

           MV      .L1     A4,A0             ; |297| 
||         MV      .S1     A4,A10            ; |297| 

   [!A0]   BNOP    .S1     $C$L15,5          ; |297| 
           ; BRANCHCC OCCURS {$C$L15}        ; |297| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
;** 299	-----------------------    xdc_runtime_System_printf__E("SF: Unable to claim SPI bus\n");
;** 300	-----------------------    return ret;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 299,column 3,is_stmt,isa 0
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$151, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |299| 
           MVKL    .S2     $C$SL5+0,B4
           MVKH    .S2     $C$SL5+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |299| 
           ADDKPC  .S2     $C$RL25,B3,1      ; |299| 
$C$RL25:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |299| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 300,column 3,is_stmt,isa 0

           BNOP    .S1     $C$L26,5          ; |300| 
||         MV      .L1     A10,A4

           ; BRANCH OCCURS {$C$L26}          ; |300| 
;** --------------------------------------------------------------------------*
$C$L15:    
;          EXCLUSIVE CPU CYCLES: 7
;**	-----------------------g5:
;** 303	-----------------------    if ( !len ) goto g18;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 303,column 19,is_stmt,isa 0
           MV      .L1     A13,A0
   [!A0]   BNOP    .S1     $C$L21,5          ; |303| 
           ; BRANCHCC OCCURS {$C$L21}        ; |303| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 2
;** 304	-----------------------    L$1 = len;
;** 303	-----------------------    actual = 0u;
;**  	-----------------------    #pragma MUST_ITERATE(1, 4294967295, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 304,column 3,is_stmt,isa 0
           MV      .L1     A13,A12
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 303,column 7,is_stmt,isa 0
           ZERO    .L2     B10               ; |303| 
;** --------------------------------------------------------------------------*
;**   BEGIN LOOP $C$L16
;** --------------------------------------------------------------------------*
$C$L16:    
$C$DW$L$winbond_erase$14$B:
;          EXCLUSIVE CPU CYCLES: 13
;**	-----------------------g7:
;** 172	-----------------------    C$24 = (*(*stm).params).l2_page_size;  // [9]
;** 172	-----------------------    C$26 = 1u<<(unsigned)C$24;  // [9]
;** 172	-----------------------    C$25 = actual*sector_size+offset;  // [9]
;** 172	-----------------------    C$23 = C$25/C$26;  // [9]
;** 172	-----------------------    cmd[1] = C$19 = (unsigned char)(C$23>>16u-(unsigned)C$24);  // [9]
;** 173	-----------------------    C$22 = C$25%C$26;  // [9]
;** 173	-----------------------    cmd[2] = C$20 = (unsigned char)(C$23<<(unsigned)C$24-8u|C$22>>8);  // [9]
;** 174	-----------------------    cmd[3] = C$21 = (unsigned char)C$22;  // [9]
;** 305	-----------------------    xdc_runtime_System_printf__E("Erase: %02x %02x %02x %02x\n", (int)cmd[0], (int)C$19, (int)C$20, (int)C$21);
;** 308	-----------------------    if ( (ret = spi_flash_cmd((*flash).spi, 6u, NULL, 0u)) < 0 ) goto g21;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 172,column 2,is_stmt,isa 0
           LDW     .D1T1   *+A11(28),A3      ; |172| 
           MPY32   .M2     B11,B10,B4        ; |172| 
           MVK     .L1     1,A4              ; |172| 
           NOP             2
           LDBU    .D1T1   *+A3(2),A3        ; |172| 
           ADD     .L2     B12,B4,B6         ; |172| 
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("__c6xabi_divu")
	.dwattr $C$DW$152, DW_AT_TI_call
           CALL    .S1     __c6xabi_divu     ; |172| 
           ADDKPC  .S2     $C$RL26,B3,1      ; |172| 
           SHL     .S1     A4,A3,A5          ; |172| 
           MV      .L1X    B6,A4             ; |172| 
           MV      .L2X    A5,B4             ; |172| 
$C$RL26:   ; CALL OCCURS {__c6xabi_divu} {0}  ; |172| 
$C$DW$L$winbond_erase$14$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_erase$15$B:
;          EXCLUSIVE CPU CYCLES: 33

           MVK     .S2     16,B4             ; |172| 
||         MV      .L1     A4,A6             ; |172| 

           SUB     .L2X    B4,A3,B4          ; |172| 
           SHRU    .S2X    A6,B4,B4          ; |172| 

           EXTU    .S2     B4,24,24,B5       ; |172| 
||         STB     .D2T2   B4,*+SP(33)       ; |172| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 173,column 2,is_stmt,isa 0
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("__c6xabi_remu")
	.dwattr $C$DW$153, DW_AT_TI_call

           CALLP   .S2     __c6xabi_remu,B3
||         MV      .L1X    B6,A4             ; |173| 
||         MV      .L2X    A5,B4             ; |173| 

$C$RL27:   ; CALL OCCURS {__c6xabi_remu} {0}  ; |173| 
           SUB     .L1     A3,8,A3           ; |173| 
           SHL     .S1     A6,A3,A3          ; |173| 
           SHRU    .S1     A4,8,A5           ; |173| 
           OR      .L1     A5,A3,A3          ; |173| 

           STB     .D2T1   A3,*+SP(34)       ; |173| 
||         EXTU    .S1     A3,24,24,A5       ; |173| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 174,column 2,is_stmt,isa 0

           EXTU    .S1     A4,24,24,A3       ; |174| 
||         STB     .D2T1   A4,*+SP(35)       ; |174| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 305,column 3,is_stmt,isa 0
           LDBU    .D2T2   *+SP(32),B4       ; |305| 
           STW     .D2T2   B5,*+SP(12)       ; |305| 

           MVKL    .S2     $C$SL14+0,B6
||         STW     .D2T1   A5,*+SP(16)       ; |305| 

           MVKH    .S2     $C$SL14+0,B6
||         STW     .D2T1   A3,*+SP(20)       ; |305| 

           STW     .D2T2   B6,*+SP(4)        ; |305| 
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$154, DW_AT_TI_call

           CALLP   .S2     xdc_runtime_System_printf__E,B3
||         STW     .D2T2   B4,*+SP(8)        ; |305| 

$C$RL28:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |305| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 308,column 3,is_stmt,isa 0
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("spi_flash_cmd")
	.dwattr $C$DW$155, DW_AT_TI_call

           CALLP   .S2     spi_flash_cmd,B3
||         LDW     .D1T1   *A11,A4           ; |308| 
||         ZERO    .L1     A6                ; |308| 
||         ZERO    .L2     B6                ; |308| 
||         MVK     .D2     0x6,B4            ; |308| 

$C$RL29:   ; CALL OCCURS {spi_flash_cmd} {0}  ; |308| 
$C$DW$L$winbond_erase$15$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_erase$16$B:
;          EXCLUSIVE CPU CYCLES: 7

           CMPLT   .L1     A4,0,A0           ; |308| 
||         MV      .S1     A4,A10            ; |308| 

   [ A0]   BNOP    .S1     $C$L24,5          ; |308| 
           ; BRANCHCC OCCURS {$C$L24}        ; |308| 
$C$DW$L$winbond_erase$16$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_erase$17$B:
;          EXCLUSIVE CPU CYCLES: 6
;** 314	-----------------------    if ( (ret = spi_flash_cmd_write((*flash).spi, &cmd, 4u, NULL, 0u)) < 0 ) goto g20;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 314,column 3,is_stmt,isa 0
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("spi_flash_cmd_write")
	.dwattr $C$DW$156, DW_AT_TI_call
           CALL    .S1     spi_flash_cmd_write ; |314| 
           LDW     .D1T1   *A11,A4           ; |314| 
           ADDKPC  .S2     $C$RL30,B3,2      ; |314| 

           MVK     .L1     0x4,A6            ; |314| 
||         ZERO    .L2     B6                ; |314| 
||         ZERO    .S1     A8                ; |314| 
||         ADDAW   .D2     SP,8,B4           ; |314| 

$C$RL30:   ; CALL OCCURS {spi_flash_cmd_write} {0}  ; |314| 
$C$DW$L$winbond_erase$17$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_erase$18$B:
;          EXCLUSIVE CPU CYCLES: 7

           CMPLT   .L1     A4,0,A0           ; |314| 
||         MV      .S1     A4,A10            ; |314| 

   [ A0]   BNOP    .S1     $C$L23,5          ; |314| 
           ; BRANCHCC OCCURS {$C$L23}        ; |314| 
$C$DW$L$winbond_erase$18$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_erase$19$B:
;          EXCLUSIVE CPU CYCLES: 15
;** 112	-----------------------    spi = (*flash).spi;  // [8]
;** 116	-----------------------    cmd = $P$T1$1;  // [8]
;** 118	-----------------------    if ( ret = spi_xfer(spi, 32u, &cmd, NULL, 1u) ) goto g15;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 112,column 20,is_stmt,isa 0
           LDW     .D1T1   *A11,A10          ; |112| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 116,column 5,is_stmt,isa 0
           MVKL    .S1     $P$T1$1,A3
           MVKH    .S1     $P$T1$1,A3
           LDW     .D1T1   *A3,A3            ; |116| 
           NOP             4
           STW     .D2T1   A3,*+SP(40)       ; |116| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 118,column 2,is_stmt,isa 0
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("spi_xfer")
	.dwattr $C$DW$157, DW_AT_TI_call
           CALL    .S1     spi_xfer          ; |118| 
           MV      .L1     A10,A4            ; |118| 
           MVK     .S2     0x20,B4           ; |118| 
           ADDKPC  .S2     $C$RL31,B3,1      ; |118| 

           ZERO    .L2     B6                ; |118| 
||         MVK     .L1     0x1,A8            ; |118| 
||         ADDAW   .D1X    SP,10,A6          ; |118| 

$C$RL31:   ; CALL OCCURS {spi_xfer} {0}      ; |118| 
$C$DW$L$winbond_erase$19$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_erase$20$B:
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A4,A0             ; |118| 
   [ A0]   BNOP    .S1     $C$L19,5          ; |118| 
           ; BRANCHCC OCCURS {$C$L19}        ; |118| 
$C$DW$L$winbond_erase$20$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_erase$21$B:
;**  	-----------------------    #pragma LOOP_FLAGS(5376u)
$C$DW$L$winbond_erase$21$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Loop contains a call
;*      Disqualified loop: Loop contains non-pipelinable instructions
;*      Disqualified loop: Loop contains control code
;*----------------------------------------------------------------------------*
$C$L17:    
$C$DW$L$winbond_erase$22$B:
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g11:
;** 126	-----------------------    if ( ret = spi_xfer(spi, 8u, NULL, &status, 0u) ) goto g14;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 126,column 3,is_stmt,isa 0
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("spi_xfer")
	.dwattr $C$DW$158, DW_AT_TI_call
           CALL    .S1     spi_xfer          ; |126| 
           ADDKPC  .S2     $C$RL32,B3,3      ; |126| 

           MVK     .L2     0x8,B4            ; |126| 
||         ZERO    .L1     A6                ; |126| 
||         ZERO    .S1     A8                ; |126| 
||         MV      .D1     A10,A4            ; |126| 
||         ADDAW   .D2     SP,7,B6

$C$RL32:   ; CALL OCCURS {spi_xfer} {0}      ; |126| 
$C$DW$L$winbond_erase$22$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_erase$23$B:
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A4,A0             ; |126| 
   [ A0]   BNOP    .S1     $C$L18,5          ; |126| 
           ; BRANCHCC OCCURS {$C$L18}        ; |126| 
$C$DW$L$winbond_erase$23$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_erase$24$B:
;          EXCLUSIVE CPU CYCLES: 12
;** 133	-----------------------    if ( status&1 ) goto g11;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 133,column 4,is_stmt,isa 0
           LDBU    .D2T2   *+SP(28),B4       ; |133| 
           NOP             4
           AND     .L2     1,B4,B0           ; |133| 
   [ B0]   BNOP    .S1     $C$L17,5          ; |133| 
           ; BRANCHCC OCCURS {$C$L17}        ; |133| 
$C$DW$L$winbond_erase$24$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_erase$25$B:
;          EXCLUSIVE CPU CYCLES: 6
;** 137	-----------------------    spi_xfer(spi, 0u, NULL, NULL, 2u);  // [8]
;** 140	-----------------------    ret = 0;  // [8]
;** 140	-----------------------    goto g16;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 137,column 2,is_stmt,isa 0
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("spi_xfer")
	.dwattr $C$DW$159, DW_AT_TI_call
           CALL    .S1     spi_xfer          ; |137| 
           ADDKPC  .S2     $C$RL33,B3,3      ; |137| 

           ZERO    .L2     B4                ; |137| 
||         MV      .L1     A10,A4            ; |137| 
||         MVK     .S1     0x2,A8            ; |137| 
||         ZERO    .D1     A6                ; |137| 
||         ZERO    .S2     B6                ; |137| 

$C$RL33:   ; CALL OCCURS {spi_xfer} {0}      ; |137| 
$C$DW$L$winbond_erase$25$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_erase$26$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 140,column 3,is_stmt,isa 0

           BNOP    .S1     $C$L20,5          ; |140| 
||         ZERO    .L1     A10               ; |140| 

           ; BRANCH OCCURS {$C$L20}          ; |140| 
$C$DW$L$winbond_erase$26$E:
;** --------------------------------------------------------------------------*
$C$L18:    
$C$DW$L$winbond_erase$27$B:
;          EXCLUSIVE CPU CYCLES: 7
;**	-----------------------g14:
;** 128	-----------------------    xdc_runtime_System_printf__E("SF: Failed to get status for cmd %02x: %d\n", &cmd, ret);  // [8]
;** 129	-----------------------    ret = (-1);  // [8]
;** 129	-----------------------    goto g16;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 128,column 4,is_stmt,isa 0
           MVKL    .S2     $C$SL7+0,B5
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$160, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |128| 
           STW     .D2T1   A0,*+SP(12)       ; |128| 
           MVKH    .S2     $C$SL7+0,B5
           ADDAW   .D2     SP,10,B4          ; |128| 

           STW     .D2T2   B5,*+SP(4)        ; |128| 
||         ADDKPC  .S2     $C$RL34,B3,0      ; |128| 

           STW     .D2T2   B4,*+SP(8)        ; |128| 
$C$RL34:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |128| 
$C$DW$L$winbond_erase$27$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_erase$28$B:
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 129,column 4,is_stmt,isa 0

           BNOP    .S1     $C$L20,5          ; |129| 
||         MVK     .L1     0xffffffff,A10    ; |129| 

           ; BRANCH OCCURS {$C$L20}          ; |129| 
$C$DW$L$winbond_erase$28$E:
;** --------------------------------------------------------------------------*
$C$L19:    
$C$DW$L$winbond_erase$29$B:
;          EXCLUSIVE CPU CYCLES: 8
;**	-----------------------g15:
;** 120	-----------------------    xdc_runtime_System_printf__E("SF: Failed to send command %02x: %d\n", &cmd, ret);  // [8]
;** 121	-----------------------    ret = ret;  // [8]
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 120,column 3,is_stmt,isa 0
           MVKL    .S2     $C$SL8+0,B5
           MVKH    .S2     $C$SL8+0,B5
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$161, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |120| 
           MV      .L1     A4,A10            ; |120| 
           ADDAW   .D2     SP,10,B4          ; |120| 
           STW     .D2T2   B5,*+SP(4)        ; |120| 

           STW     .D2T2   B4,*+SP(8)        ; |120| 
||         ADDKPC  .S2     $C$RL35,B3,0      ; |120| 

           STW     .D2T1   A10,*+SP(12)      ; |120| 
$C$RL35:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |120| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 121,column 3,is_stmt,isa 0
$C$DW$L$winbond_erase$29$E:
;** --------------------------------------------------------------------------*
$C$L20:    
$C$DW$L$winbond_erase$30$B:
;          EXCLUSIVE CPU CYCLES: 7
;**	-----------------------g16:
;** 321	-----------------------    if ( ret < 0 ) goto g19;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 321,column 3,is_stmt,isa 0
           CMPLT   .L1     A10,0,A0          ; |321| 
   [ A0]   BNOP    .S1     $C$L22,5          ; |321| 
           ; BRANCHCC OCCURS {$C$L22}        ; |321| 
$C$DW$L$winbond_erase$30$E:
;** --------------------------------------------------------------------------*
$C$DW$L$winbond_erase$31$B:
;          EXCLUSIVE CPU CYCLES: 7
;** 303	-----------------------    ++actual;
;** 303	-----------------------    if ( L$1 = L$1-1 ) goto g7;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 303,column 19,is_stmt,isa 0

           SUB     .L1     A12,1,A0          ; |303| 
||         ADD     .L2     1,B10,B10         ; |303| 
||         SUB     .S1     A12,1,A12         ; |303| 

   [ A0]   BNOP    .S1     $C$L16,5          ; |303| 
           ; BRANCHCC OCCURS {$C$L16}        ; |303| 
$C$DW$L$winbond_erase$31$E:
;** --------------------------------------------------------------------------*
$C$L21:    
;          EXCLUSIVE CPU CYCLES: 11
;**	-----------------------g18:
;** 327	-----------------------    xdc_runtime_System_printf__E("SF: Winbond: Successfully erased %u bytes @ 0x%x\n", len*sector_size, offset);
;** 329	-----------------------    ret = 0;
;** 329	-----------------------    goto g22;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 327,column 2,is_stmt,isa 0
           MPY32   .M2X    B11,A13,B4        ; |327| 
           MVKL    .S2     $C$SL15+0,B5
           STW     .D2T2   B12,*+SP(12)      ; |327| 
           MVKH    .S2     $C$SL15+0,B5
           STW     .D2T2   B4,*+SP(8)        ; |327| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$162, DW_AT_TI_call

           CALLP   .S2     xdc_runtime_System_printf__E,B3
||         STW     .D2T2   B5,*+SP(4)        ; |327| 

$C$RL36:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |327| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 329,column 2,is_stmt,isa 0

           BNOP    .S1     $C$L25,5          ; |329| 
||         ZERO    .L1     A10               ; |329| 

           ; BRANCH OCCURS {$C$L25}          ; |329| 
;** --------------------------------------------------------------------------*
$C$L22:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g19:
;** 322	-----------------------    xdc_runtime_System_printf__E("SF: Winbond sector erase timed out\n");
;** 323	-----------------------    goto g22;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 322,column 4,is_stmt,isa 0
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$163, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |322| 
           MVKL    .S2     $C$SL16+0,B4
           MVKH    .S2     $C$SL16+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |322| 
           ADDKPC  .S2     $C$RL37,B3,1      ; |322| 
$C$RL37:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |322| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 323,column 4,is_stmt,isa 0
           BNOP    .S1     $C$L25,5          ; |323| 
           ; BRANCH OCCURS {$C$L25}          ; |323| 
;** --------------------------------------------------------------------------*
$C$L23:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g20:
;** 316	-----------------------    xdc_runtime_System_printf__E("SF: Winbond sector erase failed\n");
;** 317	-----------------------    goto g22;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 316,column 4,is_stmt,isa 0
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$164, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |316| 
           MVKL    .S2     $C$SL17+0,B4
           MVKH    .S2     $C$SL17+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |316| 
           ADDKPC  .S2     $C$RL38,B3,1      ; |316| 
$C$RL38:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |316| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 317,column 4,is_stmt,isa 0
           BNOP    .S1     $C$L25,5          ; |317| 
           ; BRANCH OCCURS {$C$L25}          ; |317| 
;** --------------------------------------------------------------------------*
$C$L24:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g21:
;** 310	-----------------------    xdc_runtime_System_printf__E("SF: Enabling Write failed\n");
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 310,column 4,is_stmt,isa 0
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$165, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |310| 
           MVKL    .S2     $C$SL12+0,B4
           MVKH    .S2     $C$SL12+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |310| 
           ADDKPC  .S2     $C$RL39,B3,1      ; |310| 
$C$RL39:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |310| 
;** --------------------------------------------------------------------------*
$C$L25:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g22:
;** 332	-----------------------    spi_release_bus((*flash).spi);
;** 333	-----------------------    return ret;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 332,column 2,is_stmt,isa 0
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("spi_release_bus")
	.dwattr $C$DW$166, DW_AT_TI_call
           CALL    .S1     spi_release_bus   ; |332| 
           LDW     .D1T1   *A11,A4           ; |332| 
           ADDKPC  .S2     $C$RL40,B3,3      ; |332| 
$C$RL40:   ; CALL OCCURS {spi_release_bus} {0}  ; |332| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 333,column 2,is_stmt,isa 0
           MV      .L1     A10,A4            ; |333| 
;** --------------------------------------------------------------------------*
$C$L26:    
;          EXCLUSIVE CPU CYCLES: 14
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 334,column 1,is_stmt,isa 0
           ADDK    .S2     48,SP             ; |334| 
	.dwcfi	cfa_offset, 40
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 32
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDDW    .D2T1   *++SP,A13:A12
	.dwcfi	cfa_offset, 24
	.dwcfi	restore_reg, 13
	.dwcfi	restore_reg, 12
           LDW     .D2T2   *++SP(8),B3
	.dwcfi	cfa_offset, 16
	.dwcfi	restore_reg, 19
           LDDW    .D2T2   *++SP,B11:B10
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 27
	.dwcfi	restore_reg, 26
           LDW     .D2T2   *++SP(8),B12      ; |334| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 28
	.dwcfi	cfa_offset, 0
           NOP             2
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_TI_return
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3}  

$C$DW$168	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$168, DW_AT_name("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\ccs_build\M3-Master\winbond.asm:$C$L16:1:1473636155")
	.dwattr $C$DW$168, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$168, DW_AT_TI_begin_line(0x12f)
	.dwattr $C$DW$168, DW_AT_TI_end_line(0x145)
$C$DW$169	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$169, DW_AT_low_pc($C$DW$L$winbond_erase$14$B)
	.dwattr $C$DW$169, DW_AT_high_pc($C$DW$L$winbond_erase$14$E)
$C$DW$170	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$170, DW_AT_low_pc($C$DW$L$winbond_erase$27$B)
	.dwattr $C$DW$170, DW_AT_high_pc($C$DW$L$winbond_erase$27$E)
$C$DW$171	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$171, DW_AT_low_pc($C$DW$L$winbond_erase$15$B)
	.dwattr $C$DW$171, DW_AT_high_pc($C$DW$L$winbond_erase$15$E)
$C$DW$172	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$172, DW_AT_low_pc($C$DW$L$winbond_erase$16$B)
	.dwattr $C$DW$172, DW_AT_high_pc($C$DW$L$winbond_erase$16$E)
$C$DW$173	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$173, DW_AT_low_pc($C$DW$L$winbond_erase$17$B)
	.dwattr $C$DW$173, DW_AT_high_pc($C$DW$L$winbond_erase$17$E)
$C$DW$174	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$174, DW_AT_low_pc($C$DW$L$winbond_erase$18$B)
	.dwattr $C$DW$174, DW_AT_high_pc($C$DW$L$winbond_erase$18$E)
$C$DW$175	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$175, DW_AT_low_pc($C$DW$L$winbond_erase$19$B)
	.dwattr $C$DW$175, DW_AT_high_pc($C$DW$L$winbond_erase$19$E)
$C$DW$176	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$176, DW_AT_low_pc($C$DW$L$winbond_erase$20$B)
	.dwattr $C$DW$176, DW_AT_high_pc($C$DW$L$winbond_erase$20$E)
$C$DW$177	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$177, DW_AT_low_pc($C$DW$L$winbond_erase$21$B)
	.dwattr $C$DW$177, DW_AT_high_pc($C$DW$L$winbond_erase$21$E)
$C$DW$178	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$178, DW_AT_low_pc($C$DW$L$winbond_erase$25$B)
	.dwattr $C$DW$178, DW_AT_high_pc($C$DW$L$winbond_erase$25$E)
$C$DW$179	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$179, DW_AT_low_pc($C$DW$L$winbond_erase$26$B)
	.dwattr $C$DW$179, DW_AT_high_pc($C$DW$L$winbond_erase$26$E)
$C$DW$180	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$180, DW_AT_low_pc($C$DW$L$winbond_erase$28$B)
	.dwattr $C$DW$180, DW_AT_high_pc($C$DW$L$winbond_erase$28$E)
$C$DW$181	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$181, DW_AT_low_pc($C$DW$L$winbond_erase$29$B)
	.dwattr $C$DW$181, DW_AT_high_pc($C$DW$L$winbond_erase$29$E)
$C$DW$182	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$182, DW_AT_low_pc($C$DW$L$winbond_erase$30$B)
	.dwattr $C$DW$182, DW_AT_high_pc($C$DW$L$winbond_erase$30$E)
$C$DW$183	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$183, DW_AT_low_pc($C$DW$L$winbond_erase$31$B)
	.dwattr $C$DW$183, DW_AT_high_pc($C$DW$L$winbond_erase$31$E)

$C$DW$184	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$184, DW_AT_name("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\ccs_build\M3-Master\winbond.asm:$C$L17:2:1473636155")
	.dwattr $C$DW$184, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$184, DW_AT_TI_begin_line(0x7d)
	.dwattr $C$DW$184, DW_AT_TI_end_line(0x87)
$C$DW$185	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$185, DW_AT_low_pc($C$DW$L$winbond_erase$22$B)
	.dwattr $C$DW$185, DW_AT_high_pc($C$DW$L$winbond_erase$22$E)
$C$DW$186	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$186, DW_AT_low_pc($C$DW$L$winbond_erase$23$B)
	.dwattr $C$DW$186, DW_AT_high_pc($C$DW$L$winbond_erase$23$E)
$C$DW$187	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$187, DW_AT_low_pc($C$DW$L$winbond_erase$24$B)
	.dwattr $C$DW$187, DW_AT_high_pc($C$DW$L$winbond_erase$24$E)
	.dwendtag $C$DW$184

	.dwendtag $C$DW$168

	.dwattr $C$DW$118, DW_AT_TI_end_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$118, DW_AT_TI_end_line(0x14e)
	.dwattr $C$DW$118, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$118

	.sect	".text"
	.clink
	.global	spi_flash_probe_winbond

$C$DW$188	.dwtag  DW_TAG_subprogram, DW_AT_name("spi_flash_probe_winbond")
	.dwattr $C$DW$188, DW_AT_low_pc(spi_flash_probe_winbond)
	.dwattr $C$DW$188, DW_AT_high_pc(0x00)
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("spi_flash_probe_winbond")
	.dwattr $C$DW$188, DW_AT_external
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$267)
	.dwattr $C$DW$188, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$188, DW_AT_TI_begin_line(0x150)
	.dwattr $C$DW$188, DW_AT_TI_begin_column(0x13)
	.dwattr $C$DW$188, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$188, DW_AT_decl_line(0x150)
	.dwattr $C$DW$188, DW_AT_decl_column(0x13)
	.dwattr $C$DW$188, DW_AT_TI_max_frame_size(0x28)
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 337,column 1,is_stmt,address spi_flash_probe_winbond,isa 0

	.dwfde $C$DW$CIE, spi_flash_probe_winbond
$C$DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_name("spi")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$266)
	.dwattr $C$DW$189, DW_AT_location[DW_OP_reg4]
$C$DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_name("idcode")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("idcode")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$346)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg20]

;******************************************************************************
;* FUNCTION NAME: spi_flash_probe_winbond                                     *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,   *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,*
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 16 Args + 0 Auto + 24 Save = 40 byte                 *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
spi_flash_probe_winbond:
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 14
;**  	-----------------------    U$14 = idcode[1];
;**  	-----------------------    U$19 = idcode[2];
;**  	-----------------------    U$20 = (int)U$14<<8|U$19;
;** 351	-----------------------    L$1 = 4;
;**  	-----------------------    U$8 = &winbond_spi_flash_table[0];
;** 351	-----------------------    i = 0u;
;**  	-----------------------    #pragma MUST_ITERATE(1, 4, 1)
;**  	-----------------------    #pragma LOOP_FLAGS(4352u)
;**	-----------------------g2:
;** 352	-----------------------    params = U$8;
;** 354	-----------------------    if ( (*params).id == U$20 ) goto g4;
;** 351	-----------------------    U$8 += 16;
;** 351	-----------------------    ++i;
;** 351	-----------------------    if ( L$1 = L$1-1 ) goto g2;
	.dwcfi	cfa_offset, 0
           STW     .D2T2   B3,*SP--(8)       ; |337| 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 19, 0
           STDW    .D2T1   A11:A10,*SP--     ; |337| 
	.dwcfi	cfa_offset, 16
	.dwcfi	save_reg_to_mem, 11, -4
	.dwcfi	save_reg_to_mem, 10, -8
           SUB     .D2     SP,16,SP          ; |337| 
	.dwcfi	cfa_offset, 32
$C$DW$191	.dwtag  DW_TAG_variable, DW_AT_name("idcode")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("idcode")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$431)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg20]
$C$DW$192	.dwtag  DW_TAG_variable, DW_AT_name("spi")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$878)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg10]
$C$DW$193	.dwtag  DW_TAG_variable, DW_AT_name("params")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("params")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$260)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg11]
$C$DW$194	.dwtag  DW_TAG_variable, DW_AT_name("page_size")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("page_size")
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg6]
$C$DW$195	.dwtag  DW_TAG_variable, DW_AT_name("stm")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("stm")
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$345)
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg0]
$C$DW$196	.dwtag  DW_TAG_variable, DW_AT_name("i")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("i")
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg7]
$C$DW$197	.dwtag  DW_TAG_variable, DW_AT_name("$O$L1")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("$O$L1")
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg21]
$C$DW$198	.dwtag  DW_TAG_variable, DW_AT_name("$O$U14")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("$O$U14")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg22]
$C$DW$199	.dwtag  DW_TAG_variable, DW_AT_name("$O$U19")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("$O$U19")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg9]
$C$DW$200	.dwtag  DW_TAG_variable, DW_AT_name("$O$U20")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("$O$U20")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg6]
$C$DW$201	.dwtag  DW_TAG_variable, DW_AT_name("$O$U8")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("$O$U8")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$260)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg5]
           LDBU    .D2T2   *+B4(1),B6
           LDBU    .D2T1   *+B4(2),A9
           MV      .L1     A4,A10            ; |337| 
           NOP             2
           SHL     .S2     B6,8,B4
           NOP             1
           OR      .L1X    A9,B4,A6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 351,column 15,is_stmt,isa 0
           MVKL    .S1     winbond_spi_flash_table,A5

           MVKH    .S1     winbond_spi_flash_table,A5
||         MVK     .L2     0x4,B5            ; |351| 

	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 351,column 8,is_stmt,isa 0
           MVK     .L2     0x1,B0
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop found in file               : I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c
;*      Loop source line                 : 351
;*      Loop opening brace source line   : 351
;*      Loop closing brace source line   : 355
;*      Known Minimum Trip Count         : 1                    
;*      Known Maximum Trip Count         : 4                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 8
;*      Unpartitioned Resource Bound     : 2
;*      Partitioned Resource Bound(*)    : 2
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     1        0     
;*      .S units                     1        0     
;*      .D units                     1        0     
;*      .M units                     0        0     
;*      .X cross paths               1        1     
;*      .T address paths             1        0     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           0        0     (.L or .S unit)
;*      Addition ops (.LSD)          4        2     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             1        0     
;*      Bound(.L .S .D .LS .LSD)     3*       1     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Unsafe schedule for irregular loop
;*         ii = 8  Did not find schedule
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Unsafe schedule for irregular loop
;*         ii = 9  Did not find schedule
;*         ii = 10 Schedule found with 2 iterations in parallel
;*
;*      Register Usage Table:
;*          +-----------------------------------------------------------------+
;*          |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA|BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|
;*          |00000000001111111111222222222233|00000000001111111111222222222233|
;*          |01234567890123456789012345678901|01234567890123456789012345678901|
;*          |--------------------------------+--------------------------------|
;*       0: |    *****                       |     *                          |
;*       1: |    ****                        |     *                          |
;*       2: |*   ****                        |     *                          |
;*       3: |*   ****                        |     *                          |
;*       4: |*   ****                        |    **                          |
;*       5: |    ****                        |    **                          |
;*       6: |    *****                       |*    *                          |
;*       7: |    *****                       |     *                          |
;*       8: |    *****                       |     *                          |
;*       9: |    *****                       |     *                          |
;*          +-----------------------------------------------------------------+
;*
;*      Done
;*
;*      Loop will be splooped
;*      Collapsed epilog stages       : 1
;*      Collapsed prolog stages       : 0
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
;*      Total cycles (est.)         : 10 + trip_cnt * 10 = Between 20 and 50        
;*----------------------------------------------------------------------------*
;*       SETUP CODE
;*
;*                  MVK             0x1,B0
;*
;*        SINGLE SCHEDULED ITERATION
;*
;*        $C$C130:
;*   5              MV      .L1     A5,A8             ; |352|  ^ 
;*   6      [ B0]   LDHU    .D1T1   *A8,A4            ; |354|  ^ 
;*   7              NOP             3
;*  10              MVD     .M1     A8,A3             ; Collapse epilog
;*  11              CMPEQ   .L1     A4,A6,A0          ; |354|  ^ 
;*  12      [!A0]   ADD     .L1     1,A7,A7           ; |351| 
;*     ||   [!A0]   SUB     .L2     B5,1,B5           ; |351| 
;*  13              MV      .L2     B5,B4             ; |351| 
;*  14      [!A0]   ADDK    .S1     16,A5             ; |351|  ^ 
;*     ||   [ A0]   ZERO    .L2     B4                ; |351| 
;*  15              MV      .L2     B4,B0             ; |351| 
;*  16      [ B0]   SPWBR           $C$C130
;*  17              NOP             3
;*  20              ; BRANCHCC OCCURS {$C$C130}       ; |351| 
;*
;*       RESTORE CODE
;*
;*                  MV              A3,A8
;*----------------------------------------------------------------------------*
$C$L27:    ; PIPED LOOP PROLOG
;          EXCLUSIVE CPU CYCLES: 11
   [ B0]   SPLOOPW 10      ;20               ; (P) 
;** --------------------------------------------------------------------------*
$C$L28:    ; PIPED LOOP KERNEL
$C$DW$L$spi_flash_probe_winbond$3$B:
;          EXCLUSIVE CPU CYCLES: 10
           NOP             5
           MV      .L1     A5,A8             ; |352| (P) <0,5>  ^ 
   [ B0]   LDHU    .D1T1   *A8,A4            ; |354| (P) <0,6>  ^ 
           NOP             2

           SPMASK          L1
||         ZERO    .L1     A7                ; |351| 

           MVD     .M1     A8,A3             ; <0,10> Collapse epilog
           CMPEQ   .L1     A4,A6,A0          ; |354| <0,11>  ^ 

   [!A0]   ADD     .L1     1,A7,A7           ; |351| <0,12> 
|| [!A0]   SUB     .L2     B5,1,B5           ; |351| <0,12> 

           MV      .L2     B5,B4             ; |351| <0,13> 

   [!A0]   ADDK    .S1     16,A5             ; |351| <0,14>  ^ 
|| [ A0]   ZERO    .L2     B4                ; |351| <0,14> 

           MV      .L2     B4,B0             ; |351| <0,15> 
           NOP             2
           NOP             1
           SPKERNEL 0,0
$C$DW$L$spi_flash_probe_winbond$3$E:
;** --------------------------------------------------------------------------*
$C$L29:    ; PIPED LOOP EPILOG
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 8
;**	-----------------------g4:
;** 356	-----------------------    if ( i != 4u ) goto g6;
           MV      .L1     A3,A11
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 356,column 3,is_stmt,isa 0
           CMPEQ   .L1     A7,4,A0           ; |356| 
   [!A0]   BNOP    .S1     $C$L30,5          ; |356| 
           ; BRANCHCC OCCURS {$C$L30}        ; |356| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
;** 357	-----------------------    xdc_runtime_System_printf__E("SF: Unsupported Winbond ID %02x%02x\n", (int)U$14, (int)U$19);
;** 359	-----------------------    return NULL;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 357,column 4,is_stmt,isa 0
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$202, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |357| 
           MVKL    .S2     $C$SL18+0,B4
           STW     .D2T1   A9,*+SP(12)       ; |357| 
           MVKH    .S2     $C$SL18+0,B4
           STW     .D2T2   B6,*+SP(8)        ; |357| 

           STW     .D2T2   B4,*+SP(4)        ; |357| 
||         ADDKPC  .S2     $C$RL41,B3,0      ; |357| 

$C$RL41:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |357| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 359,column 4,is_stmt,isa 0

           BNOP    .S1     $C$L32,5          ; |359| 
||         ZERO    .L1     A4                ; |359| 

           ; BRANCH OCCURS {$C$L32}          ; |359| 
;** --------------------------------------------------------------------------*
$C$L30:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g6:
;** 367	-----------------------    stm = (struct inbond_spi_flash *)malloc(32u);
;** 368	-----------------------    if ( stm == NULL ) goto g8;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 367,column 3,is_stmt,isa 0
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("malloc")
	.dwattr $C$DW$203, DW_AT_TI_call
           CALL    .S1     malloc            ; |367| 
           ADDKPC  .S2     $C$RL42,B3,3      ; |367| 
           MVK     .S1     0x20,A4           ; |367| 
$C$RL42:   ; CALL OCCURS {malloc} {0}        ; |367| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 7
           MV      .L1     A4,A0             ; |367| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 368,column 2,is_stmt,isa 0
   [!A0]   BNOP    .S1     $C$L31,5          ; |368| 
           ; BRANCHCC OCCURS {$C$L31}        ; |368| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 48
;** 373	-----------------------    (*stm).params = params;
;** 374	-----------------------    (*stm).flash.spi = spi;
;** 375	-----------------------    (*stm).flash.name = (*params).name;
;** 378	-----------------------    page_size = 1u<<(*params).l2_page_size;
;** 380	-----------------------    (*stm).flash.write = &winbond_write;
;** 381	-----------------------    (*stm).flash.erase = &winbond_erase;
;** 382	-----------------------    (*stm).flash.read = &winbond_read_fast;
;** 383	-----------------------    (*stm).flash.size = (*params).pages_per_sector*page_size*(*params).sectors_per_block*(*params).nr_blocks;
;** 387	-----------------------    xdc_runtime_System_printf__E("SF: Detected %s with page size %u, total %u bytes\n", (*params).name, page_size, (*stm).flash.size);
;** 390	-----------------------    return (struct pi_flash *)stm;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 373,column 2,is_stmt,isa 0
           STW     .D1T1   A11,*+A4(28)      ; |373| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 374,column 2,is_stmt,isa 0
           STW     .D1T1   A10,*A4           ; |374| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 375,column 2,is_stmt,isa 0
           LDW     .D1T2   *+A11(12),B4      ; |375| 
           NOP             4
           STW     .D1T2   B4,*+A4(4)        ; |375| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 378,column 2,is_stmt,isa 0
           LDBU    .D1T1   *+A11(2),A3       ; |378| 
           MVK     .L1     1,A5              ; |378| 
           NOP             3
           SHL     .S1     A5,A3,A6          ; |378| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 380,column 2,is_stmt,isa 0
           MVKL    .S2     winbond_write,B4
           MVKH    .S2     winbond_write,B4
           STW     .D1T2   B4,*+A4(20)       ; |380| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 381,column 2,is_stmt,isa 0
           MVKL    .S1     winbond_erase,A3
           MVKH    .S1     winbond_erase,A3
           STW     .D1T1   A3,*+A4(24)       ; |381| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 382,column 2,is_stmt,isa 0
           MVKL    .S1     winbond_read_fast,A3
           MVKH    .S1     winbond_read_fast,A3
           STW     .D1T1   A3,*+A4(16)       ; |382| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 383,column 2,is_stmt,isa 0
           LDHU    .D1T1   *+A11(4),A3       ; |383| 
           LDHU    .D1T1   *+A11(6),A7       ; |383| 
           LDBU    .D1T1   *+A11(8),A5       ; |383| 
           NOP             2
           MPY32   .M1     A6,A3,A3          ; |383| 
           NOP             3
           MPY32   .M1     A7,A3,A3          ; |383| 
           NOP             3
           MPY32   .M1     A5,A3,A3          ; |383| 
           NOP             3
           STW     .D1T1   A3,*+A4(8)        ; |383| 
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 387,column 2,is_stmt,isa 0

           MV      .L1     A4,A10
||         LDW     .D1T1   *+A11(12),A4      ; |387| 
||         MVKL    .S2     $C$SL19+0,B4

$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x04)
	.dwattr $C$DW$204, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$204, DW_AT_TI_call

           LDW     .D1T1   *+A10(8),A3       ; |387| 
||         CALL    .S1     xdc_runtime_System_printf__E ; |387| 

           MVKH    .S2     $C$SL19+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |387| 
           STW     .D2T1   A6,*+SP(12)       ; |387| 
           STW     .D2T1   A4,*+SP(8)        ; |387| 

           STW     .D2T1   A3,*+SP(16)       ; |387| 
||         ADDKPC  .S2     $C$RL43,B3,0      ; |387| 

$C$RL43:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |387| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 6
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 390,column 2,is_stmt,isa 0

           BNOP    .S1     $C$L32,5          ; |390| 
||         MV      .L1     A10,A4

           ; BRANCH OCCURS {$C$L32}          ; |390| 
;** --------------------------------------------------------------------------*
$C$L31:    
;          EXCLUSIVE CPU CYCLES: 6
;**	-----------------------g8:
;** 369	-----------------------    xdc_runtime_System_printf__E("SF: Failed to allocate memory\n");
;** 370	-----------------------    return NULL;
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 369,column 3,is_stmt,isa 0
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("xdc_runtime_System_printf__E")
	.dwattr $C$DW$205, DW_AT_TI_call
           CALL    .S1     xdc_runtime_System_printf__E ; |369| 
           MVKL    .S2     $C$SL20+0,B4
           MVKH    .S2     $C$SL20+0,B4
           STW     .D2T2   B4,*+SP(4)        ; |369| 
           ADDKPC  .S2     $C$RL44,B3,1      ; |369| 
$C$RL44:   ; CALL OCCURS {xdc_runtime_System_printf__E} {0}  ; |369| 
;** --------------------------------------------------------------------------*
;          EXCLUSIVE CPU CYCLES: 1
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 370,column 3,is_stmt,isa 0
           ZERO    .L1     A4                ; |370| 
;** --------------------------------------------------------------------------*
$C$L32:    
;          EXCLUSIVE CPU CYCLES: 13
	.dwpsn	file "I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c",line 391,column 1,is_stmt,isa 0
           ADDK    .S2     16,SP             ; |391| 
	.dwcfi	cfa_offset, 16
           LDDW    .D2T1   *++SP,A11:A10
	.dwcfi	cfa_offset, 8
	.dwcfi	restore_reg, 11
	.dwcfi	restore_reg, 10
           LDW     .D2T2   *++SP(8),B3       ; |391| 
	.dwcfi	cfa_offset, 0
	.dwcfi	restore_reg, 19
	.dwcfi	cfa_offset, 0
           NOP             4
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_TI_return
           RETNOP  .S2     B3,5
           ; BRANCH OCCURS {B3}  

$C$DW$207	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$207, DW_AT_name("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\ccs_build\M3-Master\winbond.asm:$C$L28:1:1473636155")
	.dwattr $C$DW$207, DW_AT_TI_begin_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$207, DW_AT_TI_begin_line(0x15f)
	.dwattr $C$DW$207, DW_AT_TI_end_line(0x163)
$C$DW$208	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$208, DW_AT_low_pc($C$DW$L$spi_flash_probe_winbond$3$B)
	.dwattr $C$DW$208, DW_AT_high_pc($C$DW$L$spi_flash_probe_winbond$3$E)
	.dwendtag $C$DW$207

	.dwattr $C$DW$188, DW_AT_TI_end_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$188, DW_AT_TI_end_line(0x187)
	.dwattr $C$DW$188, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$188

;; Inlined function references:
;; [  7] to_winbond_spi_flash
;; [  8] winbond_wait_ready
;; [  9] winbond_build_address
;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const:.string"
$C$SL1:	.string	"W25X16",0
$C$SL2:	.string	"W25X32",0
$C$SL3:	.string	"W25X64",0
$C$SL4:	.string	"W25Q32",0
$C$SL5:	.string	"SF: Unable to claim SPI bus",10,0
$C$SL6:	.string	"PP: 0x%p => cmd = { 0x%02x 0x%02x%02x%02x } chunk_len = %d",10
	.string	0
$C$SL7:	.string	"SF: Failed to get status for cmd %02x: %d",10,0
$C$SL8:	.string	"SF: Failed to send command %02x: %d",10,0
$C$SL9:	.string	"SF: Winbond: Successfully programmed %u bytes @ 0x%x",10,0
$C$SL10:	.string	"SF: Winbond page programming timed out",10,0
$C$SL11:	.string	"SF: Winbond Page Program failed",10,0
$C$SL12:	.string	"SF: Enabling Write failed",10,0
$C$SL13:	.string	"SF: Erase offset/length not multiple of sector size",10,0
$C$SL14:	.string	"Erase: %02x %02x %02x %02x",10,0
$C$SL15:	.string	"SF: Winbond: Successfully erased %u bytes @ 0x%x",10,0
$C$SL16:	.string	"SF: Winbond sector erase timed out",10,0
$C$SL17:	.string	"SF: Winbond sector erase failed",10,0
$C$SL18:	.string	"SF: Unsupported Winbond ID %02x%02x",10,0
$C$SL19:	.string	"SF: Detected %s with page size %u, total %u bytes",10,0
$C$SL20:	.string	"SF: Failed to allocate memory",10,0
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
$C$DW$T$278	.dwtag  DW_TAG_typedef, DW_AT_name("__builtin_va_list")
	.dwattr $C$DW$T$278, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$278, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$278, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$T$278, DW_AT_decl_line(0x187)
	.dwattr $C$DW$T$278, DW_AT_decl_column(0x01)
$C$DW$T$140	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Ptr")
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$140, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$140, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$140, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$140, DW_AT_decl_column(0x1a)
$C$DW$T$279	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__gateObj")
	.dwattr $C$DW$T$279, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$279, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$279, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$279, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$279, DW_AT_decl_column(0x11)
$C$DW$T$280	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__gatePrms")
	.dwattr $C$DW$T$280, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$280, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$280, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$280, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$280, DW_AT_decl_column(0x11)
$C$DW$T$281	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__loggerObj")
	.dwattr $C$DW$T$281, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$281, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$281, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$281, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$281, DW_AT_decl_column(0x11)
$C$DW$T$282	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Object__table")
	.dwattr $C$DW$T$282, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$282, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$282, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$282, DW_AT_decl_line(0x94)
	.dwattr $C$DW$T$282, DW_AT_decl_column(0x11)
$C$DW$T$283	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__gateObj")
	.dwattr $C$DW$T$283, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$283, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$283, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$283, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$T$283, DW_AT_decl_column(0x11)
$C$DW$T$284	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__gatePrms")
	.dwattr $C$DW$T$284, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$284, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$284, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$284, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$284, DW_AT_decl_column(0x11)
$C$DW$T$285	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__loggerObj")
	.dwattr $C$DW$T$285, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$285, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$285, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$285, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$T$285, DW_AT_decl_column(0x11)
$C$DW$T$286	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Object__table")
	.dwattr $C$DW$T$286, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$286, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$286, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$286, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$T$286, DW_AT_decl_column(0x11)
$C$DW$T$287	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__gateObj")
	.dwattr $C$DW$T$287, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$287, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$287, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$287, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$287, DW_AT_decl_column(0x11)
$C$DW$T$288	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__gatePrms")
	.dwattr $C$DW$T$288, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$288, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$288, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$288, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$288, DW_AT_decl_column(0x11)
$C$DW$T$289	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__loggerObj")
	.dwattr $C$DW$T$289, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$289, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$289, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$289, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$289, DW_AT_decl_column(0x11)
$C$DW$T$290	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Object__table")
	.dwattr $C$DW$T$290, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$290, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$290, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$290, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$290, DW_AT_decl_column(0x11)
$C$DW$T$291	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__gateObj")
	.dwattr $C$DW$T$291, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$291, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$291, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$291, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$291, DW_AT_decl_column(0x11)
$C$DW$T$292	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__gatePrms")
	.dwattr $C$DW$T$292, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$292, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$292, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$292, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$292, DW_AT_decl_column(0x11)
$C$DW$T$293	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__loggerObj")
	.dwattr $C$DW$T$293, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$293, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$293, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$293, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$293, DW_AT_decl_column(0x11)
$C$DW$T$294	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Object__table")
	.dwattr $C$DW$T$294, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$294, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$294, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$294, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$294, DW_AT_decl_column(0x11)
$C$DW$T$295	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__gateObj")
	.dwattr $C$DW$T$295, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$295, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$295, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$295, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$295, DW_AT_decl_column(0x11)
$C$DW$T$296	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__gatePrms")
	.dwattr $C$DW$T$296, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$296, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$296, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$296, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$296, DW_AT_decl_column(0x11)
$C$DW$T$297	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__loggerObj")
	.dwattr $C$DW$T$297, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$297, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$297, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$297, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$297, DW_AT_decl_column(0x11)
$C$DW$T$298	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Object__table")
	.dwattr $C$DW$T$298, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$298, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$298, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$298, DW_AT_decl_line(0x90)
	.dwattr $C$DW$T$298, DW_AT_decl_column(0x11)
$C$DW$T$299	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__gateObj")
	.dwattr $C$DW$T$299, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$299, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$299, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$299, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$299, DW_AT_decl_column(0x11)
$C$DW$T$300	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__gatePrms")
	.dwattr $C$DW$T$300, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$300, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$300, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$300, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$300, DW_AT_decl_column(0x11)
$C$DW$T$301	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__loggerObj")
	.dwattr $C$DW$T$301, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$301, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$301, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$301, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$301, DW_AT_decl_column(0x11)
$C$DW$T$302	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Object__table")
	.dwattr $C$DW$T$302, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$302, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$302, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$302, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$302, DW_AT_decl_column(0x11)
$C$DW$T$303	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__gateObj")
	.dwattr $C$DW$T$303, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$303, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$303, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$303, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$303, DW_AT_decl_column(0x11)
$C$DW$T$304	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__gatePrms")
	.dwattr $C$DW$T$304, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$304, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$304, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$304, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$304, DW_AT_decl_column(0x11)
$C$DW$T$305	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__loggerObj")
	.dwattr $C$DW$T$305, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$305, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$305, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$305, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$305, DW_AT_decl_column(0x11)
$C$DW$T$306	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Object__table")
	.dwattr $C$DW$T$306, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$306, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$306, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$306, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$T$306, DW_AT_decl_column(0x11)
$C$DW$T$307	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__gateObj")
	.dwattr $C$DW$T$307, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$307, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$307, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$307, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$307, DW_AT_decl_column(0x11)
$C$DW$T$308	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__gatePrms")
	.dwattr $C$DW$T$308, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$308, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$308, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$308, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$308, DW_AT_decl_column(0x11)
$C$DW$T$309	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__loggerObj")
	.dwattr $C$DW$T$309, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$309, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$309, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$309, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$309, DW_AT_decl_column(0x11)
$C$DW$T$310	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Object__table")
	.dwattr $C$DW$T$310, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$310, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$310, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$310, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$310, DW_AT_decl_column(0x11)
$C$DW$T$311	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__gateObj")
	.dwattr $C$DW$T$311, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$311, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$311, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$311, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$311, DW_AT_decl_column(0x11)
$C$DW$T$312	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__gatePrms")
	.dwattr $C$DW$T$312, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$312, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$312, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$312, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$312, DW_AT_decl_column(0x11)
$C$DW$T$313	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__loggerObj")
	.dwattr $C$DW$T$313, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$313, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$313, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$313, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$313, DW_AT_decl_column(0x11)
$C$DW$T$314	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Object__table")
	.dwattr $C$DW$T$314, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$314, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$314, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$314, DW_AT_decl_line(0xae)
	.dwattr $C$DW$T$314, DW_AT_decl_column(0x11)
$C$DW$T$315	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__gateObj")
	.dwattr $C$DW$T$315, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$315, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$315, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$315, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$315, DW_AT_decl_column(0x11)
$C$DW$T$316	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__gatePrms")
	.dwattr $C$DW$T$316, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$316, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$316, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$316, DW_AT_decl_line(0x55)
	.dwattr $C$DW$T$316, DW_AT_decl_column(0x11)
$C$DW$T$317	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__loggerObj")
	.dwattr $C$DW$T$317, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$317, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$317, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$317, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$317, DW_AT_decl_column(0x11)
$C$DW$T$318	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Object__table")
	.dwattr $C$DW$T$318, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$318, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$318, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$318, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$318, DW_AT_decl_column(0x11)
$C$DW$T$319	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__gateObj")
	.dwattr $C$DW$T$319, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$319, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$319, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$319, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$319, DW_AT_decl_column(0x11)
$C$DW$T$320	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__gatePrms")
	.dwattr $C$DW$T$320, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$320, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$320, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$320, DW_AT_decl_line(0xde)
	.dwattr $C$DW$T$320, DW_AT_decl_column(0x11)
$C$DW$T$321	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__loggerObj")
	.dwattr $C$DW$T$321, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$321, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$321, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$321, DW_AT_decl_line(0xea)
	.dwattr $C$DW$T$321, DW_AT_decl_column(0x11)
$C$DW$T$322	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Object__table")
	.dwattr $C$DW$T$322, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$322, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$322, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$322, DW_AT_decl_line(0x112)
	.dwattr $C$DW$T$322, DW_AT_decl_column(0x11)
$C$DW$T$325	.dwtag  DW_TAG_typedef, DW_AT_name("Ptr")
	.dwattr $C$DW$T$325, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$325, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$325, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$325, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$T$325, DW_AT_decl_column(0x19)

$C$DW$T$144	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$144, DW_AT_language(DW_LANG_C)
$C$DW$209	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$3)
$C$DW$210	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$141)
$C$DW$211	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$141)
$C$DW$212	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$143)
	.dwendtag $C$DW$T$144

$C$DW$T$145	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$T$145, DW_AT_address_class(0x20)
$C$DW$T$323	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IHeap_alloc_FxnT")
	.dwattr $C$DW$T$323, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$T$323, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$323, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$T$323, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$T$323, DW_AT_decl_column(0x13)
$C$DW$T$324	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_HeapProxy_alloc_FxnT")
	.dwattr $C$DW$T$324, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$T$324, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$324, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$324, DW_AT_decl_line(0x10c)
	.dwattr $C$DW$T$324, DW_AT_decl_column(0x13)

$C$DW$T$197	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$197, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$197, DW_AT_language(DW_LANG_C)
$C$DW$213	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$196)
$C$DW$214	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$141)
$C$DW$215	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$141)
$C$DW$216	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$143)
	.dwendtag $C$DW$T$197

$C$DW$T$198	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$198, DW_AT_type(*$C$DW$T$197)
	.dwattr $C$DW$T$198, DW_AT_address_class(0x20)

$C$DW$T$242	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$242, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$242, DW_AT_language(DW_LANG_C)
$C$DW$217	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$140)
$C$DW$218	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$141)
$C$DW$219	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$241)
$C$DW$220	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$241)
$C$DW$221	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$141)
$C$DW$222	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$143)
	.dwendtag $C$DW$T$242

$C$DW$T$243	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$243, DW_AT_type(*$C$DW$T$242)
	.dwattr $C$DW$T$243, DW_AT_address_class(0x20)

$C$DW$T$254	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$254, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$T$254, DW_AT_language(DW_LANG_C)
$C$DW$223	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$140)
$C$DW$224	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$141)
$C$DW$225	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$241)
$C$DW$226	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$253)
$C$DW$227	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$141)
$C$DW$228	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$143)
	.dwendtag $C$DW$T$254

$C$DW$T$255	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$255, DW_AT_type(*$C$DW$T$254)
	.dwattr $C$DW$T$255, DW_AT_address_class(0x20)
$C$DW$T$241	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$241, DW_AT_type(*$C$DW$T$140)

$C$DW$T$128	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$128, DW_AT_language(DW_LANG_C)
$C$DW$229	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$3)
$C$DW$230	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$T$128

$C$DW$T$129	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$T$129, DW_AT_address_class(0x20)
$C$DW$T$327	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IGateProvider_leave_FxnT")
	.dwattr $C$DW$T$327, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$327, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$327, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$T$327, DW_AT_decl_line(0xad)
	.dwattr $C$DW$T$327, DW_AT_decl_column(0x14)
$C$DW$T$328	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Main_Module_GateProxy_leave_FxnT")
	.dwattr $C$DW$T$328, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$328, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$328, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$328, DW_AT_decl_line(0x111)
	.dwattr $C$DW$T$328, DW_AT_decl_column(0x14)
$C$DW$T$329	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_Module_GateProxy_leave_FxnT")
	.dwattr $C$DW$T$329, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$T$329, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$329, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$329, DW_AT_decl_line(0x111)
	.dwattr $C$DW$T$329, DW_AT_decl_column(0x14)
$C$DW$T$132	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$132, DW_AT_type(*$C$DW$T$2)
$C$DW$T$133	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$133, DW_AT_address_class(0x20)
$C$DW$T$326	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$326, DW_AT_type(*$C$DW$T$133)

$C$DW$T$146	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$146, DW_AT_language(DW_LANG_C)
$C$DW$231	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$3)
$C$DW$232	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$140)
$C$DW$233	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$141)
	.dwendtag $C$DW$T$146

$C$DW$T$147	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$147, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$T$147, DW_AT_address_class(0x20)
$C$DW$T$330	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IHeap_free_FxnT")
	.dwattr $C$DW$T$330, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$330, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$330, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$T$330, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$T$330, DW_AT_decl_column(0x14)
$C$DW$T$331	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_HeapProxy_free_FxnT")
	.dwattr $C$DW$T$331, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$T$331, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$331, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$331, DW_AT_decl_line(0x113)
	.dwattr $C$DW$T$331, DW_AT_decl_column(0x14)

$C$DW$T$152	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)
$C$DW$234	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$3)
$C$DW$235	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$151)
	.dwendtag $C$DW$T$152

$C$DW$T$153	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$T$153, DW_AT_address_class(0x20)
$C$DW$T$332	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IHeap_getStats_FxnT")
	.dwattr $C$DW$T$332, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$T$332, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$332, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$T$332, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$T$332, DW_AT_decl_column(0x14)
$C$DW$T$333	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_HeapProxy_getStats_FxnT")
	.dwattr $C$DW$T$333, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$T$333, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$333, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$333, DW_AT_decl_line(0x121)
	.dwattr $C$DW$T$333, DW_AT_decl_column(0x14)

$C$DW$T$168	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$168, DW_AT_language(DW_LANG_C)
$C$DW$236	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$104)
	.dwendtag $C$DW$T$168

$C$DW$T$169	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$169, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$T$169, DW_AT_address_class(0x20)
$C$DW$T$334	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ISystemSupport_abort_FxnT")
	.dwattr $C$DW$T$334, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$T$334, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$334, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$T$334, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$334, DW_AT_decl_column(0x14)

$C$DW$T$170	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$170, DW_AT_language(DW_LANG_C)
$C$DW$237	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$123)
	.dwendtag $C$DW$T$170

$C$DW$T$171	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$171, DW_AT_type(*$C$DW$T$170)
	.dwattr $C$DW$T$171, DW_AT_address_class(0x20)
$C$DW$T$335	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ISystemSupport_exit_FxnT")
	.dwattr $C$DW$T$335, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$T$335, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$335, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$T$335, DW_AT_decl_line(0x87)
	.dwattr $C$DW$T$335, DW_AT_decl_column(0x14)
$C$DW$T$336	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_AtexitHandler")
	.dwattr $C$DW$T$336, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$T$336, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$336, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$336, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$336, DW_AT_decl_column(0x14)
$C$DW$T$337	.dwtag  DW_TAG_typedef, DW_AT_name("__T1_xdc_runtime_System_Module_State__atexitHandlers")
	.dwattr $C$DW$T$337, DW_AT_type(*$C$DW$T$336)
	.dwattr $C$DW$T$337, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$337, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$337, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$337, DW_AT_decl_column(0x2a)
$C$DW$T$338	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$338, DW_AT_type(*$C$DW$T$336)
	.dwattr $C$DW$T$338, DW_AT_address_class(0x20)
$C$DW$T$339	.dwtag  DW_TAG_typedef, DW_AT_name("__ARRAY1_xdc_runtime_System_Module_State__atexitHandlers")
	.dwattr $C$DW$T$339, DW_AT_type(*$C$DW$T$338)
	.dwattr $C$DW$T$339, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$339, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$339, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$339, DW_AT_decl_column(0x2b)
$C$DW$T$340	.dwtag  DW_TAG_typedef, DW_AT_name("__TA_xdc_runtime_System_Module_State__atexitHandlers")
	.dwattr $C$DW$T$340, DW_AT_type(*$C$DW$T$339)
	.dwattr $C$DW$T$340, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$340, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$340, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$340, DW_AT_decl_column(0x42)

$C$DW$T$172	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$172, DW_AT_language(DW_LANG_C)
$C$DW$T$173	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$173, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$T$173, DW_AT_address_class(0x20)
$C$DW$T$341	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ISystemSupport_flush_FxnT")
	.dwattr $C$DW$T$341, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$T$341, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$341, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$T$341, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$T$341, DW_AT_decl_column(0x14)

$C$DW$T$175	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$175, DW_AT_language(DW_LANG_C)
$C$DW$238	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$174)
	.dwendtag $C$DW$T$175

$C$DW$T$176	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$176, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$T$176, DW_AT_address_class(0x20)
$C$DW$T$342	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ISystemSupport_putch_FxnT")
	.dwattr $C$DW$T$342, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$T$342, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$342, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$T$342, DW_AT_decl_line(0x95)
	.dwattr $C$DW$T$342, DW_AT_decl_column(0x14)

$C$DW$T$184	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$184, DW_AT_language(DW_LANG_C)
$C$DW$239	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$181)
$C$DW$240	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$T$184

$C$DW$T$185	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$185, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$T$185, DW_AT_address_class(0x20)

$C$DW$T$199	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$199, DW_AT_language(DW_LANG_C)
$C$DW$241	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$196)
$C$DW$242	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$140)
$C$DW$243	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$141)
	.dwendtag $C$DW$T$199

$C$DW$T$200	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$200, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$T$200, DW_AT_address_class(0x20)

$C$DW$T$203	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$203, DW_AT_language(DW_LANG_C)
$C$DW$244	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$196)
$C$DW$245	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$151)
	.dwendtag $C$DW$T$203

$C$DW$T$204	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$204, DW_AT_type(*$C$DW$T$203)
	.dwattr $C$DW$T$204, DW_AT_address_class(0x20)

$C$DW$T$218	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$218, DW_AT_language(DW_LANG_C)
$C$DW$246	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$215)
$C$DW$247	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$T$218

$C$DW$T$219	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$219, DW_AT_type(*$C$DW$T$218)
	.dwattr $C$DW$T$219, DW_AT_address_class(0x20)

$C$DW$T$244	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$244, DW_AT_language(DW_LANG_C)
$C$DW$248	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$140)
	.dwendtag $C$DW$T$244

$C$DW$T$245	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$245, DW_AT_type(*$C$DW$T$244)
	.dwattr $C$DW$T$245, DW_AT_address_class(0x20)

$C$DW$T$349	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$349, DW_AT_language(DW_LANG_C)
$C$DW$249	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$140)
$C$DW$250	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$348)
$C$DW$251	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$91)
	.dwendtag $C$DW$T$349

$C$DW$T$350	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$350, DW_AT_type(*$C$DW$T$349)
	.dwattr $C$DW$T$350, DW_AT_address_class(0x20)
$C$DW$T$351	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_LoggerFxn0")
	.dwattr $C$DW$T$351, DW_AT_type(*$C$DW$T$350)
	.dwattr $C$DW$T$351, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$351, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$351, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$351, DW_AT_decl_column(0x14)
$C$DW$T$352	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__loggerFxn0")
	.dwattr $C$DW$T$352, DW_AT_type(*$C$DW$T$351)
	.dwattr $C$DW$T$352, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$352, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$352, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$352, DW_AT_decl_column(0x26)
$C$DW$T$353	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__loggerFxn0")
	.dwattr $C$DW$T$353, DW_AT_type(*$C$DW$T$351)
	.dwattr $C$DW$T$353, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$353, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$353, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$T$353, DW_AT_decl_column(0x26)
$C$DW$T$354	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__loggerFxn0")
	.dwattr $C$DW$T$354, DW_AT_type(*$C$DW$T$351)
	.dwattr $C$DW$T$354, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$354, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$354, DW_AT_decl_line(0x90)
	.dwattr $C$DW$T$354, DW_AT_decl_column(0x26)
$C$DW$T$355	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn0")
	.dwattr $C$DW$T$355, DW_AT_type(*$C$DW$T$351)
	.dwattr $C$DW$T$355, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$355, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$355, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$355, DW_AT_decl_column(0x26)
$C$DW$T$356	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__loggerFxn0")
	.dwattr $C$DW$T$356, DW_AT_type(*$C$DW$T$351)
	.dwattr $C$DW$T$356, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$356, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$356, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$356, DW_AT_decl_column(0x26)
$C$DW$T$357	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn0")
	.dwattr $C$DW$T$357, DW_AT_type(*$C$DW$T$351)
	.dwattr $C$DW$T$357, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$357, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$357, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$357, DW_AT_decl_column(0x26)
$C$DW$T$358	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__loggerFxn0")
	.dwattr $C$DW$T$358, DW_AT_type(*$C$DW$T$351)
	.dwattr $C$DW$T$358, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$358, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$358, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$358, DW_AT_decl_column(0x26)
$C$DW$T$359	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn0")
	.dwattr $C$DW$T$359, DW_AT_type(*$C$DW$T$351)
	.dwattr $C$DW$T$359, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$359, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$359, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$359, DW_AT_decl_column(0x26)
$C$DW$T$360	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__loggerFxn0")
	.dwattr $C$DW$T$360, DW_AT_type(*$C$DW$T$351)
	.dwattr $C$DW$T$360, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$360, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$360, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$360, DW_AT_decl_column(0x26)
$C$DW$T$361	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__loggerFxn0")
	.dwattr $C$DW$T$361, DW_AT_type(*$C$DW$T$351)
	.dwattr $C$DW$T$361, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$361, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$361, DW_AT_decl_line(0x65)
	.dwattr $C$DW$T$361, DW_AT_decl_column(0x26)
$C$DW$T$362	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__loggerFxn0")
	.dwattr $C$DW$T$362, DW_AT_type(*$C$DW$T$351)
	.dwattr $C$DW$T$362, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$362, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$362, DW_AT_decl_line(0xee)
	.dwattr $C$DW$T$362, DW_AT_decl_column(0x26)

$C$DW$T$363	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$363, DW_AT_language(DW_LANG_C)
$C$DW$252	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$140)
$C$DW$253	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$348)
$C$DW$254	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$91)
$C$DW$255	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$T$363

$C$DW$T$364	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$364, DW_AT_type(*$C$DW$T$363)
	.dwattr $C$DW$T$364, DW_AT_address_class(0x20)
$C$DW$T$365	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_LoggerFxn1")
	.dwattr $C$DW$T$365, DW_AT_type(*$C$DW$T$364)
	.dwattr $C$DW$T$365, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$365, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$365, DW_AT_decl_line(0x8f)
	.dwattr $C$DW$T$365, DW_AT_decl_column(0x14)
$C$DW$T$366	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__loggerFxn1")
	.dwattr $C$DW$T$366, DW_AT_type(*$C$DW$T$365)
	.dwattr $C$DW$T$366, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$366, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$366, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$366, DW_AT_decl_column(0x26)
$C$DW$T$367	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__loggerFxn1")
	.dwattr $C$DW$T$367, DW_AT_type(*$C$DW$T$365)
	.dwattr $C$DW$T$367, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$367, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$367, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$T$367, DW_AT_decl_column(0x26)
$C$DW$T$368	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__loggerFxn1")
	.dwattr $C$DW$T$368, DW_AT_type(*$C$DW$T$365)
	.dwattr $C$DW$T$368, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$368, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$368, DW_AT_decl_line(0x94)
	.dwattr $C$DW$T$368, DW_AT_decl_column(0x26)
$C$DW$T$369	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn1")
	.dwattr $C$DW$T$369, DW_AT_type(*$C$DW$T$365)
	.dwattr $C$DW$T$369, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$369, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$369, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$369, DW_AT_decl_column(0x26)
$C$DW$T$370	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__loggerFxn1")
	.dwattr $C$DW$T$370, DW_AT_type(*$C$DW$T$365)
	.dwattr $C$DW$T$370, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$370, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$370, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$370, DW_AT_decl_column(0x26)
$C$DW$T$371	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn1")
	.dwattr $C$DW$T$371, DW_AT_type(*$C$DW$T$365)
	.dwattr $C$DW$T$371, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$371, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$371, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$371, DW_AT_decl_column(0x26)
$C$DW$T$372	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__loggerFxn1")
	.dwattr $C$DW$T$372, DW_AT_type(*$C$DW$T$365)
	.dwattr $C$DW$T$372, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$372, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$372, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$372, DW_AT_decl_column(0x26)
$C$DW$T$373	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn1")
	.dwattr $C$DW$T$373, DW_AT_type(*$C$DW$T$365)
	.dwattr $C$DW$T$373, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$373, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$373, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$373, DW_AT_decl_column(0x26)
$C$DW$T$374	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__loggerFxn1")
	.dwattr $C$DW$T$374, DW_AT_type(*$C$DW$T$365)
	.dwattr $C$DW$T$374, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$374, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$374, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$T$374, DW_AT_decl_column(0x26)
$C$DW$T$375	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__loggerFxn1")
	.dwattr $C$DW$T$375, DW_AT_type(*$C$DW$T$365)
	.dwattr $C$DW$T$375, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$375, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$375, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$375, DW_AT_decl_column(0x26)
$C$DW$T$376	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__loggerFxn1")
	.dwattr $C$DW$T$376, DW_AT_type(*$C$DW$T$365)
	.dwattr $C$DW$T$376, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$376, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$376, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$T$376, DW_AT_decl_column(0x26)

$C$DW$T$377	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$377, DW_AT_language(DW_LANG_C)
$C$DW$256	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$140)
$C$DW$257	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$348)
$C$DW$258	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$91)
$C$DW$259	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$87)
$C$DW$260	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$T$377

$C$DW$T$378	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$378, DW_AT_type(*$C$DW$T$377)
	.dwattr $C$DW$T$378, DW_AT_address_class(0x20)
$C$DW$T$379	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_LoggerFxn2")
	.dwattr $C$DW$T$379, DW_AT_type(*$C$DW$T$378)
	.dwattr $C$DW$T$379, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$379, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$379, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$379, DW_AT_decl_column(0x14)
$C$DW$T$380	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__loggerFxn2")
	.dwattr $C$DW$T$380, DW_AT_type(*$C$DW$T$379)
	.dwattr $C$DW$T$380, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$380, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$380, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$380, DW_AT_decl_column(0x26)
$C$DW$T$381	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__loggerFxn2")
	.dwattr $C$DW$T$381, DW_AT_type(*$C$DW$T$379)
	.dwattr $C$DW$T$381, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$381, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$381, DW_AT_decl_line(0xcb)
	.dwattr $C$DW$T$381, DW_AT_decl_column(0x26)
$C$DW$T$382	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__loggerFxn2")
	.dwattr $C$DW$T$382, DW_AT_type(*$C$DW$T$379)
	.dwattr $C$DW$T$382, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$382, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$382, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$382, DW_AT_decl_column(0x26)
$C$DW$T$383	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn2")
	.dwattr $C$DW$T$383, DW_AT_type(*$C$DW$T$379)
	.dwattr $C$DW$T$383, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$383, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$383, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$383, DW_AT_decl_column(0x26)
$C$DW$T$384	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__loggerFxn2")
	.dwattr $C$DW$T$384, DW_AT_type(*$C$DW$T$379)
	.dwattr $C$DW$T$384, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$384, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$384, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$384, DW_AT_decl_column(0x26)
$C$DW$T$385	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn2")
	.dwattr $C$DW$T$385, DW_AT_type(*$C$DW$T$379)
	.dwattr $C$DW$T$385, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$385, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$385, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$385, DW_AT_decl_column(0x26)
$C$DW$T$386	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__loggerFxn2")
	.dwattr $C$DW$T$386, DW_AT_type(*$C$DW$T$379)
	.dwattr $C$DW$T$386, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$386, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$386, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$386, DW_AT_decl_column(0x26)
$C$DW$T$387	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn2")
	.dwattr $C$DW$T$387, DW_AT_type(*$C$DW$T$379)
	.dwattr $C$DW$T$387, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$387, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$387, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$387, DW_AT_decl_column(0x26)
$C$DW$T$388	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__loggerFxn2")
	.dwattr $C$DW$T$388, DW_AT_type(*$C$DW$T$379)
	.dwattr $C$DW$T$388, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$388, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$388, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$388, DW_AT_decl_column(0x26)
$C$DW$T$389	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__loggerFxn2")
	.dwattr $C$DW$T$389, DW_AT_type(*$C$DW$T$379)
	.dwattr $C$DW$T$389, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$389, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$389, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$389, DW_AT_decl_column(0x26)
$C$DW$T$390	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__loggerFxn2")
	.dwattr $C$DW$T$390, DW_AT_type(*$C$DW$T$379)
	.dwattr $C$DW$T$390, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$390, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$390, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$T$390, DW_AT_decl_column(0x26)

$C$DW$T$391	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$391, DW_AT_language(DW_LANG_C)
$C$DW$261	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$140)
$C$DW$262	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$348)
$C$DW$263	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$91)
$C$DW$264	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$87)
$C$DW$265	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$87)
$C$DW$266	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$87)
$C$DW$267	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$T$391

$C$DW$T$392	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$392, DW_AT_type(*$C$DW$T$391)
	.dwattr $C$DW$T$392, DW_AT_address_class(0x20)
$C$DW$T$393	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_LoggerFxn4")
	.dwattr $C$DW$T$393, DW_AT_type(*$C$DW$T$392)
	.dwattr $C$DW$T$393, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$393, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$393, DW_AT_decl_line(0x95)
	.dwattr $C$DW$T$393, DW_AT_decl_column(0x14)
$C$DW$T$394	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__loggerFxn4")
	.dwattr $C$DW$T$394, DW_AT_type(*$C$DW$T$393)
	.dwattr $C$DW$T$394, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$394, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$394, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$394, DW_AT_decl_column(0x26)
$C$DW$T$395	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__loggerFxn4")
	.dwattr $C$DW$T$395, DW_AT_type(*$C$DW$T$393)
	.dwattr $C$DW$T$395, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$395, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$395, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$T$395, DW_AT_decl_column(0x26)
$C$DW$T$396	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__loggerFxn4")
	.dwattr $C$DW$T$396, DW_AT_type(*$C$DW$T$393)
	.dwattr $C$DW$T$396, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$396, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$396, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$T$396, DW_AT_decl_column(0x26)
$C$DW$T$397	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn4")
	.dwattr $C$DW$T$397, DW_AT_type(*$C$DW$T$393)
	.dwattr $C$DW$T$397, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$397, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$397, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$397, DW_AT_decl_column(0x26)
$C$DW$T$398	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__loggerFxn4")
	.dwattr $C$DW$T$398, DW_AT_type(*$C$DW$T$393)
	.dwattr $C$DW$T$398, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$398, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$398, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$398, DW_AT_decl_column(0x26)
$C$DW$T$399	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn4")
	.dwattr $C$DW$T$399, DW_AT_type(*$C$DW$T$393)
	.dwattr $C$DW$T$399, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$399, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$399, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$399, DW_AT_decl_column(0x26)
$C$DW$T$400	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__loggerFxn4")
	.dwattr $C$DW$T$400, DW_AT_type(*$C$DW$T$393)
	.dwattr $C$DW$T$400, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$400, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$400, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$400, DW_AT_decl_column(0x26)
$C$DW$T$401	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn4")
	.dwattr $C$DW$T$401, DW_AT_type(*$C$DW$T$393)
	.dwattr $C$DW$T$401, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$401, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$401, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$401, DW_AT_decl_column(0x26)
$C$DW$T$402	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__loggerFxn4")
	.dwattr $C$DW$T$402, DW_AT_type(*$C$DW$T$393)
	.dwattr $C$DW$T$402, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$402, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$402, DW_AT_decl_line(0x96)
	.dwattr $C$DW$T$402, DW_AT_decl_column(0x26)
$C$DW$T$403	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__loggerFxn4")
	.dwattr $C$DW$T$403, DW_AT_type(*$C$DW$T$393)
	.dwattr $C$DW$T$403, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$403, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$403, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$403, DW_AT_decl_column(0x26)
$C$DW$T$404	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__loggerFxn4")
	.dwattr $C$DW$T$404, DW_AT_type(*$C$DW$T$393)
	.dwattr $C$DW$T$404, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$404, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$404, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$T$404, DW_AT_decl_column(0x26)

$C$DW$T$405	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$405, DW_AT_language(DW_LANG_C)
$C$DW$268	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$140)
$C$DW$269	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$348)
$C$DW$270	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$91)
$C$DW$271	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$87)
$C$DW$272	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$87)
$C$DW$273	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$87)
$C$DW$274	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$87)
$C$DW$275	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$87)
$C$DW$276	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$87)
$C$DW$277	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$87)
$C$DW$278	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$87)
	.dwendtag $C$DW$T$405

$C$DW$T$406	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$406, DW_AT_type(*$C$DW$T$405)
	.dwattr $C$DW$T$406, DW_AT_address_class(0x20)
$C$DW$T$407	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_LoggerFxn8")
	.dwattr $C$DW$T$407, DW_AT_type(*$C$DW$T$406)
	.dwattr $C$DW$T$407, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$407, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$407, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$407, DW_AT_decl_column(0x14)
$C$DW$T$408	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__loggerFxn8")
	.dwattr $C$DW$T$408, DW_AT_type(*$C$DW$T$407)
	.dwattr $C$DW$T$408, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$408, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$408, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$408, DW_AT_decl_column(0x26)
$C$DW$T$409	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__loggerFxn8")
	.dwattr $C$DW$T$409, DW_AT_type(*$C$DW$T$407)
	.dwattr $C$DW$T$409, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$409, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$409, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$409, DW_AT_decl_column(0x26)
$C$DW$T$410	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__loggerFxn8")
	.dwattr $C$DW$T$410, DW_AT_type(*$C$DW$T$407)
	.dwattr $C$DW$T$410, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$410, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$410, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$T$410, DW_AT_decl_column(0x26)
$C$DW$T$411	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__loggerFxn8")
	.dwattr $C$DW$T$411, DW_AT_type(*$C$DW$T$407)
	.dwattr $C$DW$T$411, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$411, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$411, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$411, DW_AT_decl_column(0x26)
$C$DW$T$412	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__loggerFxn8")
	.dwattr $C$DW$T$412, DW_AT_type(*$C$DW$T$407)
	.dwattr $C$DW$T$412, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$412, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$412, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$412, DW_AT_decl_column(0x26)
$C$DW$T$413	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__loggerFxn8")
	.dwattr $C$DW$T$413, DW_AT_type(*$C$DW$T$407)
	.dwattr $C$DW$T$413, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$413, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$413, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$413, DW_AT_decl_column(0x26)
$C$DW$T$414	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__loggerFxn8")
	.dwattr $C$DW$T$414, DW_AT_type(*$C$DW$T$407)
	.dwattr $C$DW$T$414, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$414, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$414, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$414, DW_AT_decl_column(0x26)
$C$DW$T$415	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__loggerFxn8")
	.dwattr $C$DW$T$415, DW_AT_type(*$C$DW$T$407)
	.dwattr $C$DW$T$415, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$415, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$415, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$415, DW_AT_decl_column(0x26)
$C$DW$T$416	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__loggerFxn8")
	.dwattr $C$DW$T$416, DW_AT_type(*$C$DW$T$407)
	.dwattr $C$DW$T$416, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$416, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$416, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$416, DW_AT_decl_column(0x26)
$C$DW$T$417	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__loggerFxn8")
	.dwattr $C$DW$T$417, DW_AT_type(*$C$DW$T$407)
	.dwattr $C$DW$T$417, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$417, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$417, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$417, DW_AT_decl_column(0x26)
$C$DW$T$418	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__loggerFxn8")
	.dwattr $C$DW$T$418, DW_AT_type(*$C$DW$T$407)
	.dwattr $C$DW$T$418, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$418, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$418, DW_AT_decl_line(0xfe)
	.dwattr $C$DW$T$418, DW_AT_decl_column(0x26)

$C$DW$T$419	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$419, DW_AT_language(DW_LANG_C)
$C$DW$279	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$143)
	.dwendtag $C$DW$T$419

$C$DW$T$420	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$420, DW_AT_type(*$C$DW$T$419)
	.dwattr $C$DW$T$420, DW_AT_address_class(0x20)
$C$DW$T$421	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Error_HookFxn")
	.dwattr $C$DW$T$421, DW_AT_type(*$C$DW$T$420)
	.dwattr $C$DW$T$421, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$421, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$421, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$421, DW_AT_decl_column(0x14)
$C$DW$T$422	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_raiseHook")
	.dwattr $C$DW$T$422, DW_AT_type(*$C$DW$T$421)
	.dwattr $C$DW$T$422, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$422, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$422, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$T$422, DW_AT_decl_column(0x23)
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$427	.dwtag  DW_TAG_typedef, DW_AT_name("int8_t")
	.dwattr $C$DW$T$427, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$427, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$427, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$427, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$427, DW_AT_decl_column(0x1d)
$C$DW$T$428	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$428, DW_AT_type(*$C$DW$T$427)
	.dwattr $C$DW$T$428, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$428, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$428, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$428, DW_AT_decl_column(0x17)
$C$DW$T$429	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Int8")
	.dwattr $C$DW$T$429, DW_AT_type(*$C$DW$T$428)
	.dwattr $C$DW$T$429, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$429, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$429, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$429, DW_AT_decl_column(0x19)
$C$DW$T$430	.dwtag  DW_TAG_typedef, DW_AT_name("Int8")
	.dwattr $C$DW$T$430, DW_AT_type(*$C$DW$T$429)
	.dwattr $C$DW$T$430, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$430, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$430, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$T$430, DW_AT_decl_column(0x19)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$346	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$346, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$346, DW_AT_address_class(0x20)
$C$DW$T$431	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$431, DW_AT_type(*$C$DW$T$346)
$C$DW$T$432	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$432, DW_AT_type(*$C$DW$T$6)
$C$DW$T$433	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$433, DW_AT_type(*$C$DW$T$432)
	.dwattr $C$DW$T$433, DW_AT_address_class(0x20)

$C$DW$T$434	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$434, DW_AT_type(*$C$DW$T$432)
	.dwattr $C$DW$T$434, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$434, DW_AT_byte_size(0x04)
$C$DW$280	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$280, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$434


$C$DW$T$435	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$435, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$435, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$435, DW_AT_byte_size(0x04)
$C$DW$281	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$281, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$435


$C$DW$T$436	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$436, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$436, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$436, DW_AT_byte_size(0x05)
$C$DW$282	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$282, DW_AT_upper_bound(0x04)
	.dwendtag $C$DW$T$436

$C$DW$T$262	.dwtag  DW_TAG_typedef, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$262, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$262, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$262, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$262, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$262, DW_AT_decl_column(0x1c)
$C$DW$T$440	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$440, DW_AT_type(*$C$DW$T$262)
	.dwattr $C$DW$T$440, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$440, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$440, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$440, DW_AT_decl_column(0x16)
$C$DW$T$441	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UInt8")
	.dwattr $C$DW$T$441, DW_AT_type(*$C$DW$T$440)
	.dwattr $C$DW$T$441, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$441, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$441, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$441, DW_AT_decl_column(0x19)
$C$DW$T$442	.dwtag  DW_TAG_typedef, DW_AT_name("UInt8")
	.dwattr $C$DW$T$442, DW_AT_type(*$C$DW$T$441)
	.dwattr $C$DW$T$442, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$442, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$442, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$T$442, DW_AT_decl_column(0x19)
$C$DW$T$443	.dwtag  DW_TAG_typedef, DW_AT_name("Uint8")
	.dwattr $C$DW$T$443, DW_AT_type(*$C$DW$T$441)
	.dwattr $C$DW$T$443, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$443, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$443, DW_AT_decl_line(0xf6)
	.dwattr $C$DW$T$443, DW_AT_decl_column(0x19)
$C$DW$T$438	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Bits8")
	.dwattr $C$DW$T$438, DW_AT_type(*$C$DW$T$262)
	.dwattr $C$DW$T$438, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$438, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$438, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$438, DW_AT_decl_column(0x19)
$C$DW$T$439	.dwtag  DW_TAG_typedef, DW_AT_name("Bits8")
	.dwattr $C$DW$T$439, DW_AT_type(*$C$DW$T$438)
	.dwattr $C$DW$T$439, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$439, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$439, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$T$439, DW_AT_decl_column(0x19)
$C$DW$T$251	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UChar")
	.dwattr $C$DW$T$251, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$251, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$251, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$251, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$T$251, DW_AT_decl_column(0x19)
$C$DW$T$437	.dwtag  DW_TAG_typedef, DW_AT_name("UChar")
	.dwattr $C$DW$T$437, DW_AT_type(*$C$DW$T$251)
	.dwattr $C$DW$T$437, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$437, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$437, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$T$437, DW_AT_decl_column(0x19)
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
$C$DW$T$446	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$446, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$446, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$446, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$446, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$446, DW_AT_decl_column(0x1d)
$C$DW$T$447	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$447, DW_AT_type(*$C$DW$T$446)
	.dwattr $C$DW$T$447, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$447, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$447, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$447, DW_AT_decl_column(0x17)
$C$DW$T$448	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Int16")
	.dwattr $C$DW$T$448, DW_AT_type(*$C$DW$T$447)
	.dwattr $C$DW$T$448, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$448, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$448, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$448, DW_AT_decl_column(0x19)
$C$DW$T$449	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$449, DW_AT_type(*$C$DW$T$448)
	.dwattr $C$DW$T$449, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$449, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$449, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$449, DW_AT_decl_column(0x19)
$C$DW$T$444	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Short")
	.dwattr $C$DW$T$444, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$444, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$444, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$444, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$T$444, DW_AT_decl_column(0x19)
$C$DW$T$445	.dwtag  DW_TAG_typedef, DW_AT_name("Short")
	.dwattr $C$DW$T$445, DW_AT_type(*$C$DW$T$444)
	.dwattr $C$DW$T$445, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$445, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$445, DW_AT_decl_line(0xd1)
	.dwattr $C$DW$T$445, DW_AT_decl_column(0x19)
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
$C$DW$T$508	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_maxDepth")
	.dwattr $C$DW$T$508, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$508, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$508, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$508, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$508, DW_AT_decl_column(0x14)
$C$DW$T$507	.dwtag  DW_TAG_typedef, DW_AT_name("UInt16")
	.dwattr $C$DW$T$507, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$507, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$507, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$507, DW_AT_decl_line(0xea)
	.dwattr $C$DW$T$507, DW_AT_decl_column(0x19)
$C$DW$T$509	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$509, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$T$509, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$509, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$509, DW_AT_decl_line(0xf7)
	.dwattr $C$DW$T$509, DW_AT_decl_column(0x19)
$C$DW$T$90	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Bits16")
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$T$90, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$90, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$90, DW_AT_decl_line(0x8d)
	.dwattr $C$DW$T$90, DW_AT_decl_column(0x19)
$C$DW$T$506	.dwtag  DW_TAG_typedef, DW_AT_name("Bits16")
	.dwattr $C$DW$T$506, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$506, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$506, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$506, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$T$506, DW_AT_decl_column(0x19)
$C$DW$T$482	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$482, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$482, DW_AT_address_class(0x20)
$C$DW$T$483	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__diagsMask")
	.dwattr $C$DW$T$483, DW_AT_type(*$C$DW$T$482)
	.dwattr $C$DW$T$483, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$483, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$483, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$483, DW_AT_decl_column(0x15)
$C$DW$T$484	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__diagsMask")
	.dwattr $C$DW$T$484, DW_AT_type(*$C$DW$T$482)
	.dwattr $C$DW$T$484, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$484, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$484, DW_AT_decl_line(0xab)
	.dwattr $C$DW$T$484, DW_AT_decl_column(0x15)
$C$DW$T$485	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__diagsMask")
	.dwattr $C$DW$T$485, DW_AT_type(*$C$DW$T$482)
	.dwattr $C$DW$T$485, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$485, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$485, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$485, DW_AT_decl_column(0x15)
$C$DW$T$486	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__diagsMask")
	.dwattr $C$DW$T$486, DW_AT_type(*$C$DW$T$482)
	.dwattr $C$DW$T$486, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$486, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$486, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$486, DW_AT_decl_column(0x15)
$C$DW$T$487	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__diagsMask")
	.dwattr $C$DW$T$487, DW_AT_type(*$C$DW$T$482)
	.dwattr $C$DW$T$487, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$487, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$487, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$487, DW_AT_decl_column(0x15)
$C$DW$T$488	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__diagsMask")
	.dwattr $C$DW$T$488, DW_AT_type(*$C$DW$T$482)
	.dwattr $C$DW$T$488, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$488, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$488, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$488, DW_AT_decl_column(0x15)
$C$DW$T$489	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__diagsMask")
	.dwattr $C$DW$T$489, DW_AT_type(*$C$DW$T$482)
	.dwattr $C$DW$T$489, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$489, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$489, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$489, DW_AT_decl_column(0x15)
$C$DW$T$490	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__diagsMask")
	.dwattr $C$DW$T$490, DW_AT_type(*$C$DW$T$482)
	.dwattr $C$DW$T$490, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$490, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$490, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$490, DW_AT_decl_column(0x15)
$C$DW$T$491	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__diagsMask")
	.dwattr $C$DW$T$491, DW_AT_type(*$C$DW$T$482)
	.dwattr $C$DW$T$491, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$491, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$491, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$491, DW_AT_decl_column(0x15)
$C$DW$T$492	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__diagsMask")
	.dwattr $C$DW$T$492, DW_AT_type(*$C$DW$T$482)
	.dwattr $C$DW$T$492, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$492, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$492, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$T$492, DW_AT_decl_column(0x15)
$C$DW$T$493	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__diagsMask")
	.dwattr $C$DW$T$493, DW_AT_type(*$C$DW$T$482)
	.dwattr $C$DW$T$493, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$493, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$493, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$T$493, DW_AT_decl_column(0x15)
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
$C$DW$T$494	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__id")
	.dwattr $C$DW$T$494, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$494, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$494, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$494, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$494, DW_AT_decl_column(0x24)
$C$DW$T$495	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__id")
	.dwattr $C$DW$T$495, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$495, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$495, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$495, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$T$495, DW_AT_decl_column(0x24)
$C$DW$T$496	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__id")
	.dwattr $C$DW$T$496, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$496, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$496, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$496, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$496, DW_AT_decl_column(0x24)
$C$DW$T$497	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__id")
	.dwattr $C$DW$T$497, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$497, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$497, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$497, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$497, DW_AT_decl_column(0x24)
$C$DW$T$498	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__id")
	.dwattr $C$DW$T$498, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$498, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$498, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$498, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$498, DW_AT_decl_column(0x24)
$C$DW$T$499	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__id")
	.dwattr $C$DW$T$499, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$499, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$499, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$499, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$499, DW_AT_decl_column(0x24)
$C$DW$T$500	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__id")
	.dwattr $C$DW$T$500, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$500, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$500, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$500, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$500, DW_AT_decl_column(0x24)
$C$DW$T$501	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__id")
	.dwattr $C$DW$T$501, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$501, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$501, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$501, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$501, DW_AT_decl_column(0x24)
$C$DW$T$502	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__id")
	.dwattr $C$DW$T$502, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$502, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$502, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$502, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$502, DW_AT_decl_column(0x24)
$C$DW$T$503	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__id")
	.dwattr $C$DW$T$503, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$503, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$503, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$503, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$503, DW_AT_decl_column(0x24)
$C$DW$T$504	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__id")
	.dwattr $C$DW$T$504, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$504, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$504, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$504, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$T$504, DW_AT_decl_column(0x24)
$C$DW$T$505	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_RopeId")
	.dwattr $C$DW$T$505, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$505, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$505, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$505, DW_AT_decl_line(0x56)
	.dwattr $C$DW$T$505, DW_AT_decl_column(0x14)
$C$DW$T$451	.dwtag  DW_TAG_typedef, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$451, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$451, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$451, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stddef.h")
	.dwattr $C$DW$T$451, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$451, DW_AT_decl_column(0x1a)
$C$DW$T$122	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Bool")
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$122, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$122, DW_AT_decl_column(0x19)
$C$DW$T$479	.dwtag  DW_TAG_typedef, DW_AT_name("Bool")
	.dwattr $C$DW$T$479, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$479, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$479, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$479, DW_AT_decl_line(0xe1)
	.dwattr $C$DW$T$479, DW_AT_decl_column(0x19)
$C$DW$T$452	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__loggerDefined")
	.dwattr $C$DW$T$452, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$452, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$452, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$452, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$452, DW_AT_decl_column(0x12)
$C$DW$T$453	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__loggerDefined")
	.dwattr $C$DW$T$453, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$453, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$453, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$453, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$T$453, DW_AT_decl_column(0x12)
$C$DW$T$454	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_setMaskEnabled")
	.dwattr $C$DW$T$454, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$454, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$454, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$454, DW_AT_decl_line(0xef)
	.dwattr $C$DW$T$454, DW_AT_decl_column(0x12)
$C$DW$T$455	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__loggerDefined")
	.dwattr $C$DW$T$455, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$455, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$455, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$455, DW_AT_decl_line(0x88)
	.dwattr $C$DW$T$455, DW_AT_decl_column(0x12)
$C$DW$T$456	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__loggerDefined")
	.dwattr $C$DW$T$456, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$456, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$456, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$456, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$456, DW_AT_decl_column(0x12)
$C$DW$T$457	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__loggerDefined")
	.dwattr $C$DW$T$457, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$457, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$457, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$457, DW_AT_decl_line(0x64)
	.dwattr $C$DW$T$457, DW_AT_decl_column(0x12)
$C$DW$T$458	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__loggerDefined")
	.dwattr $C$DW$T$458, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$458, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$458, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$458, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$458, DW_AT_decl_column(0x12)
$C$DW$T$459	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__loggerDefined")
	.dwattr $C$DW$T$459, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$459, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$459, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$459, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$459, DW_AT_decl_column(0x12)
$C$DW$T$460	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__loggerDefined")
	.dwattr $C$DW$T$460, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$460, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$460, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$460, DW_AT_decl_line(0x66)
	.dwattr $C$DW$T$460, DW_AT_decl_column(0x12)
$C$DW$T$461	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__loggerDefined")
	.dwattr $C$DW$T$461, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$461, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$461, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$461, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$461, DW_AT_decl_column(0x12)
$C$DW$T$462	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__loggerDefined")
	.dwattr $C$DW$T$462, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$462, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$462, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$462, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$462, DW_AT_decl_column(0x12)
$C$DW$T$463	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__loggerDefined")
	.dwattr $C$DW$T$463, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$463, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$463, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$463, DW_AT_decl_line(0xe6)
	.dwattr $C$DW$T$463, DW_AT_decl_column(0x12)

$C$DW$T$124	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$124, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$124, DW_AT_language(DW_LANG_C)
$C$DW$283	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$123)
	.dwendtag $C$DW$T$124

$C$DW$T$125	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$125, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$T$125, DW_AT_address_class(0x20)
$C$DW$T$464	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IGateProvider_query_FxnT")
	.dwattr $C$DW$T$464, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$T$464, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$464, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$T$464, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$T$464, DW_AT_decl_column(0x14)

$C$DW$T$148	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$148, DW_AT_language(DW_LANG_C)
$C$DW$284	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$148

$C$DW$T$149	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$149, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$T$149, DW_AT_address_class(0x20)
$C$DW$T$465	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IHeap_isBlocking_FxnT")
	.dwattr $C$DW$T$465, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$T$465, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$465, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$T$465, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$465, DW_AT_decl_column(0x14)
$C$DW$T$466	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_HeapProxy_isBlocking_FxnT")
	.dwattr $C$DW$T$466, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$T$466, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$466, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$466, DW_AT_decl_line(0x11a)
	.dwattr $C$DW$T$466, DW_AT_decl_column(0x14)

$C$DW$T$177	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$177, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$177, DW_AT_language(DW_LANG_C)
$C$DW$T$178	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$178, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$T$178, DW_AT_address_class(0x20)
$C$DW$T$467	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__startupDoneFxn")
	.dwattr $C$DW$T$467, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$467, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$467, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$467, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$467, DW_AT_decl_column(0x14)
$C$DW$T$468	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__startupDoneFxn")
	.dwattr $C$DW$T$468, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$468, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$468, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$468, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$T$468, DW_AT_decl_column(0x14)
$C$DW$T$469	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__startupDoneFxn")
	.dwattr $C$DW$T$469, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$469, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$469, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$469, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$T$469, DW_AT_decl_column(0x14)
$C$DW$T$470	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__startupDoneFxn")
	.dwattr $C$DW$T$470, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$470, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$470, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$470, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$470, DW_AT_decl_column(0x14)
$C$DW$T$471	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__startupDoneFxn")
	.dwattr $C$DW$T$471, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$471, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$471, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$471, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$471, DW_AT_decl_column(0x14)
$C$DW$T$472	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__startupDoneFxn")
	.dwattr $C$DW$T$472, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$472, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$472, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$472, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$472, DW_AT_decl_column(0x14)
$C$DW$T$473	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__startupDoneFxn")
	.dwattr $C$DW$T$473, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$473, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$473, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$473, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$T$473, DW_AT_decl_column(0x14)
$C$DW$T$474	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__startupDoneFxn")
	.dwattr $C$DW$T$474, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$474, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$474, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$474, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$474, DW_AT_decl_column(0x14)
$C$DW$T$475	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__startupDoneFxn")
	.dwattr $C$DW$T$475, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$475, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$475, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$475, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$T$475, DW_AT_decl_column(0x14)
$C$DW$T$476	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__startupDoneFxn")
	.dwattr $C$DW$T$476, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$476, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$476, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$476, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$476, DW_AT_decl_column(0x14)
$C$DW$T$477	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__startupDoneFxn")
	.dwattr $C$DW$T$477, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$477, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$477, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$477, DW_AT_decl_line(0x102)
	.dwattr $C$DW$T$477, DW_AT_decl_column(0x14)
$C$DW$T$478	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ISystemSupport_ready_FxnT")
	.dwattr $C$DW$T$478, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$T$478, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$478, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$T$478, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$T$478, DW_AT_decl_column(0x14)

$C$DW$T$201	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$201, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$T$201, DW_AT_language(DW_LANG_C)
$C$DW$285	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$196)
	.dwendtag $C$DW$T$201

$C$DW$T$202	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$202, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$T$202, DW_AT_address_class(0x20)
$C$DW$T$480	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UShort")
	.dwattr $C$DW$T$480, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$480, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$480, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$480, DW_AT_decl_line(0x20)
	.dwattr $C$DW$T$480, DW_AT_decl_column(0x19)
$C$DW$T$481	.dwtag  DW_TAG_typedef, DW_AT_name("UShort")
	.dwattr $C$DW$T$481, DW_AT_type(*$C$DW$T$480)
	.dwattr $C$DW$T$481, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$481, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$481, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$T$481, DW_AT_decl_column(0x19)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)

$C$DW$T$268	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$268, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$268, DW_AT_language(DW_LANG_C)
$C$DW$286	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$267)
$C$DW$287	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$11)
$C$DW$288	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$11)
$C$DW$289	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$268

$C$DW$T$269	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$269, DW_AT_type(*$C$DW$T$268)
	.dwattr $C$DW$T$269, DW_AT_address_class(0x20)

$C$DW$T$270	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$270, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$270, DW_AT_language(DW_LANG_C)
$C$DW$290	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$267)
$C$DW$291	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$11)
$C$DW$292	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$11)
$C$DW$293	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$133)
	.dwendtag $C$DW$T$270

$C$DW$T$271	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$271, DW_AT_type(*$C$DW$T$270)
	.dwattr $C$DW$T$271, DW_AT_address_class(0x20)

$C$DW$T$272	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$272, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$272, DW_AT_language(DW_LANG_C)
$C$DW$294	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$267)
$C$DW$295	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$11)
$C$DW$296	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$11)
	.dwendtag $C$DW$T$272

$C$DW$T$273	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$273, DW_AT_type(*$C$DW$T$272)
	.dwattr $C$DW$T$273, DW_AT_address_class(0x20)

$C$DW$T$521	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$521, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$521, DW_AT_language(DW_LANG_C)
$C$DW$T$522	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$522, DW_AT_type(*$C$DW$T$521)
	.dwattr $C$DW$T$522, DW_AT_address_class(0x20)
$C$DW$T$523	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Fxn")
	.dwattr $C$DW$T$523, DW_AT_type(*$C$DW$T$522)
	.dwattr $C$DW$T$523, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$523, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$523, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$523, DW_AT_decl_column(0x1f)
$C$DW$T$524	.dwtag  DW_TAG_typedef, DW_AT_name("Fxn")
	.dwattr $C$DW$T$524, DW_AT_type(*$C$DW$T$523)
	.dwattr $C$DW$T$524, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$524, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$524, DW_AT_decl_line(0xe5)
	.dwattr $C$DW$T$524, DW_AT_decl_column(0x19)
$C$DW$T$555	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$555, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$555, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$555, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$555, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$555, DW_AT_decl_column(0x1d)
$C$DW$T$556	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$556, DW_AT_type(*$C$DW$T$555)
	.dwattr $C$DW$T$556, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$556, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$556, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$556, DW_AT_decl_column(0x17)
$C$DW$T$557	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$557, DW_AT_type(*$C$DW$T$555)
	.dwattr $C$DW$T$557, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$557, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$557, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$557, DW_AT_decl_column(0x17)
$C$DW$T$558	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$558, DW_AT_type(*$C$DW$T$555)
	.dwattr $C$DW$T$558, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$558, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$558, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$558, DW_AT_decl_column(0x17)
$C$DW$T$559	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$559, DW_AT_type(*$C$DW$T$555)
	.dwattr $C$DW$T$559, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$559, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$559, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$559, DW_AT_decl_column(0x17)
$C$DW$T$560	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Int32")
	.dwattr $C$DW$T$560, DW_AT_type(*$C$DW$T$559)
	.dwattr $C$DW$T$560, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$560, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$560, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$560, DW_AT_decl_column(0x19)
$C$DW$T$561	.dwtag  DW_TAG_typedef, DW_AT_name("Int32")
	.dwattr $C$DW$T$561, DW_AT_type(*$C$DW$T$560)
	.dwattr $C$DW$T$561, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$561, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$561, DW_AT_decl_line(0xe4)
	.dwattr $C$DW$T$561, DW_AT_decl_column(0x19)
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
$C$DW$T$562	.dwtag  DW_TAG_typedef, DW_AT_name("IArg")
	.dwattr $C$DW$T$562, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$562, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$562, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$562, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$T$562, DW_AT_decl_column(0x19)
$C$DW$T$563	.dwtag  DW_TAG_typedef, DW_AT_name("__T1_xdc_runtime_Error_Block__xtra")
	.dwattr $C$DW$T$563, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$563, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$563, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$563, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$563, DW_AT_decl_column(0x12)
$C$DW$T$564	.dwtag  DW_TAG_typedef, DW_AT_name("__T1_xdc_runtime_Error_Data__arg")
	.dwattr $C$DW$T$564, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$564, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$564, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$564, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$564, DW_AT_decl_column(0x12)

$C$DW$T$106	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x10)
$C$DW$297	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$297, DW_AT_upper_bound(0x03)
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
$C$DW$298	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$298, DW_AT_upper_bound(0x01)
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
$C$DW$299	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$3)
	.dwendtag $C$DW$T$126

$C$DW$T$127	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$T$127, DW_AT_address_class(0x20)
$C$DW$T$565	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IGateProvider_enter_FxnT")
	.dwattr $C$DW$T$565, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$565, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$565, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$T$565, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$T$565, DW_AT_decl_column(0x14)
$C$DW$T$566	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Main_Module_GateProxy_enter_FxnT")
	.dwattr $C$DW$T$566, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$566, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$566, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$566, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$T$566, DW_AT_decl_column(0x14)
$C$DW$T$567	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_Module_GateProxy_enter_FxnT")
	.dwattr $C$DW$T$567, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$567, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$567, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$567, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$T$567, DW_AT_decl_column(0x14)

$C$DW$T$182	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$182, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$182, DW_AT_language(DW_LANG_C)
$C$DW$300	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$181)
	.dwendtag $C$DW$T$182

$C$DW$T$183	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$183, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$T$183, DW_AT_address_class(0x20)

$C$DW$T$216	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$216, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$216, DW_AT_language(DW_LANG_C)
$C$DW$301	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$215)
	.dwendtag $C$DW$T$216

$C$DW$T$217	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$217, DW_AT_type(*$C$DW$T$216)
	.dwattr $C$DW$T$217, DW_AT_address_class(0x20)
$C$DW$T$568	.dwtag  DW_TAG_typedef, DW_AT_name("ptrdiff_t")
	.dwattr $C$DW$T$568, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$568, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$568, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stddef.h")
	.dwattr $C$DW$T$568, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$568, DW_AT_decl_column(0x1c)
$C$DW$T$527	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Arg")
	.dwattr $C$DW$T$527, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$527, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$527, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$527, DW_AT_decl_line(0x23)
	.dwattr $C$DW$T$527, DW_AT_decl_column(0x15)
$C$DW$T$528	.dwtag  DW_TAG_typedef, DW_AT_name("Arg")
	.dwattr $C$DW$T$528, DW_AT_type(*$C$DW$T$527)
	.dwattr $C$DW$T$528, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$528, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$528, DW_AT_decl_line(0xf3)
	.dwattr $C$DW$T$528, DW_AT_decl_column(0x19)
$C$DW$T$123	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Int")
	.dwattr $C$DW$T$123, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$123, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$123, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$123, DW_AT_decl_line(0x21)
	.dwattr $C$DW$T$123, DW_AT_decl_column(0x19)
$C$DW$T$529	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Object__count")
	.dwattr $C$DW$T$529, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$529, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$529, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$529, DW_AT_decl_line(0x88)
	.dwattr $C$DW$T$529, DW_AT_decl_column(0x11)
$C$DW$T$530	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Object__count")
	.dwattr $C$DW$T$530, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$530, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$530, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$530, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$T$530, DW_AT_decl_column(0x11)
$C$DW$T$531	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Object__count")
	.dwattr $C$DW$T$531, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$531, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$531, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$531, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$T$531, DW_AT_decl_column(0x11)
$C$DW$T$532	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Object__count")
	.dwattr $C$DW$T$532, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$532, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$532, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$532, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$532, DW_AT_decl_column(0x11)
$C$DW$T$533	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Object__count")
	.dwattr $C$DW$T$533, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$533, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$533, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$533, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$533, DW_AT_decl_column(0x11)
$C$DW$T$534	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Object__count")
	.dwattr $C$DW$T$534, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$534, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$534, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$534, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$534, DW_AT_decl_column(0x11)
$C$DW$T$535	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Object__count")
	.dwattr $C$DW$T$535, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$535, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$535, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$535, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$535, DW_AT_decl_column(0x11)
$C$DW$T$536	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Object__count")
	.dwattr $C$DW$T$536, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$536, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$536, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$536, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$536, DW_AT_decl_column(0x11)
$C$DW$T$537	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Object__count")
	.dwattr $C$DW$T$537, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$537, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$537, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$537, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$T$537, DW_AT_decl_column(0x11)
$C$DW$T$538	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Object__count")
	.dwattr $C$DW$T$538, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$538, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$538, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$538, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$538, DW_AT_decl_column(0x11)
$C$DW$T$539	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_maxAtexitHandlers")
	.dwattr $C$DW$T$539, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$539, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$539, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$539, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$T$539, DW_AT_decl_column(0x11)
$C$DW$T$540	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Object__count")
	.dwattr $C$DW$T$540, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$540, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$540, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$540, DW_AT_decl_line(0x106)
	.dwattr $C$DW$T$540, DW_AT_decl_column(0x11)
$C$DW$T$552	.dwtag  DW_TAG_typedef, DW_AT_name("Int")
	.dwattr $C$DW$T$552, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$552, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$552, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$552, DW_AT_decl_line(0xd3)
	.dwattr $C$DW$T$552, DW_AT_decl_column(0x19)

$C$DW$T$548	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$548, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$T$548, DW_AT_language(DW_LANG_C)
$C$DW$302	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$542)
$C$DW$303	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$542)
$C$DW$304	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$545)
$C$DW$305	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$547)
	.dwendtag $C$DW$T$548

$C$DW$T$549	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$549, DW_AT_type(*$C$DW$T$548)
	.dwattr $C$DW$T$549, DW_AT_address_class(0x20)
$C$DW$T$550	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_ExtendFxn")
	.dwattr $C$DW$T$550, DW_AT_type(*$C$DW$T$549)
	.dwattr $C$DW$T$550, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$550, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$550, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$550, DW_AT_decl_column(0x13)
$C$DW$T$551	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_extendFxn")
	.dwattr $C$DW$T$551, DW_AT_type(*$C$DW$T$550)
	.dwattr $C$DW$T$551, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$551, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$551, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$T$551, DW_AT_decl_column(0x26)
$C$DW$T$553	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Long")
	.dwattr $C$DW$T$553, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$553, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$553, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$553, DW_AT_decl_line(0x23)
	.dwattr $C$DW$T$553, DW_AT_decl_column(0x19)
$C$DW$T$554	.dwtag  DW_TAG_typedef, DW_AT_name("Long")
	.dwattr $C$DW$T$554, DW_AT_type(*$C$DW$T$553)
	.dwattr $C$DW$T$554, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$554, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$554, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$554, DW_AT_decl_column(0x19)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$569	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$569, DW_AT_type(*$C$DW$T$11)
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
$C$DW$T$614	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Object__sizeof")
	.dwattr $C$DW$T$614, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$614, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$614, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$614, DW_AT_decl_line(0x90)
	.dwattr $C$DW$T$614, DW_AT_decl_column(0x13)
$C$DW$T$615	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Object__sizeof")
	.dwattr $C$DW$T$615, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$615, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$615, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$615, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$615, DW_AT_decl_column(0x13)
$C$DW$T$616	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Object__sizeof")
	.dwattr $C$DW$T$616, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$616, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$616, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$616, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$T$616, DW_AT_decl_column(0x13)
$C$DW$T$617	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Object__sizeof")
	.dwattr $C$DW$T$617, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$617, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$617, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$617, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$T$617, DW_AT_decl_column(0x13)
$C$DW$T$618	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Object__sizeof")
	.dwattr $C$DW$T$618, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$618, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$618, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$618, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$618, DW_AT_decl_column(0x13)
$C$DW$T$619	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Object__sizeof")
	.dwattr $C$DW$T$619, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$619, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$619, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$619, DW_AT_decl_line(0x88)
	.dwattr $C$DW$T$619, DW_AT_decl_column(0x13)
$C$DW$T$620	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Object__sizeof")
	.dwattr $C$DW$T$620, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$620, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$620, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$620, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$T$620, DW_AT_decl_column(0x13)
$C$DW$T$621	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Object__sizeof")
	.dwattr $C$DW$T$621, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$621, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$621, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$621, DW_AT_decl_line(0x8e)
	.dwattr $C$DW$T$621, DW_AT_decl_column(0x13)
$C$DW$T$622	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Object__sizeof")
	.dwattr $C$DW$T$622, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$622, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$622, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$622, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$T$622, DW_AT_decl_column(0x13)
$C$DW$T$623	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Object__sizeof")
	.dwattr $C$DW$T$623, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$623, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$623, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$623, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$623, DW_AT_decl_column(0x13)
$C$DW$T$624	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Object__sizeof")
	.dwattr $C$DW$T$624, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$624, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$624, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$624, DW_AT_decl_line(0x10e)
	.dwattr $C$DW$T$624, DW_AT_decl_column(0x13)
$C$DW$T$625	.dwtag  DW_TAG_typedef, DW_AT_name("SizeT")
	.dwattr $C$DW$T$625, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$T$625, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$625, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$625, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$T$625, DW_AT_decl_column(0x19)
$C$DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$99, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$99, DW_AT_decl_column(0x1c)
$C$DW$T$606	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$606, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$606, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$606, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$606, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$606, DW_AT_decl_column(0x16)
$C$DW$T$607	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$607, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$607, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$607, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$607, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$607, DW_AT_decl_column(0x16)
$C$DW$T$608	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$608, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$608, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$608, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$608, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$608, DW_AT_decl_column(0x16)
$C$DW$T$609	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$609, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$609, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$609, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$609, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$609, DW_AT_decl_column(0x16)
$C$DW$T$610	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UInt32")
	.dwattr $C$DW$T$610, DW_AT_type(*$C$DW$T$609)
	.dwattr $C$DW$T$610, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$610, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$610, DW_AT_decl_line(0x72)
	.dwattr $C$DW$T$610, DW_AT_decl_column(0x19)
$C$DW$T$611	.dwtag  DW_TAG_typedef, DW_AT_name("UInt32")
	.dwattr $C$DW$T$611, DW_AT_type(*$C$DW$T$610)
	.dwattr $C$DW$T$611, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$611, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$611, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$T$611, DW_AT_decl_column(0x19)
$C$DW$T$612	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$612, DW_AT_type(*$C$DW$T$610)
	.dwattr $C$DW$T$612, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$612, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$612, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$T$612, DW_AT_decl_column(0x19)
$C$DW$T$100	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Bits32")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$100, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$100, DW_AT_decl_line(0x90)
	.dwattr $C$DW$T$100, DW_AT_decl_column(0x19)
$C$DW$T$605	.dwtag  DW_TAG_typedef, DW_AT_name("Bits32")
	.dwattr $C$DW$T$605, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$605, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$605, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$605, DW_AT_decl_line(0x112)
	.dwattr $C$DW$T$605, DW_AT_decl_column(0x19)
$C$DW$T$575	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__diagsEnabled")
	.dwattr $C$DW$T$575, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$575, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$575, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$575, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$575, DW_AT_decl_column(0x14)
$C$DW$T$576	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Module__diagsIncluded")
	.dwattr $C$DW$T$576, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$576, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$576, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$576, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$576, DW_AT_decl_column(0x14)
$C$DW$T$577	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__diagsEnabled")
	.dwattr $C$DW$T$577, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$577, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$577, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$577, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$T$577, DW_AT_decl_column(0x14)
$C$DW$T$578	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Module__diagsIncluded")
	.dwattr $C$DW$T$578, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$578, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$578, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$578, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$578, DW_AT_decl_column(0x14)
$C$DW$T$579	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__diagsEnabled")
	.dwattr $C$DW$T$579, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$579, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$579, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$579, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$579, DW_AT_decl_column(0x14)
$C$DW$T$580	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Module__diagsIncluded")
	.dwattr $C$DW$T$580, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$580, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$580, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$580, DW_AT_decl_line(0x74)
	.dwattr $C$DW$T$580, DW_AT_decl_column(0x14)
$C$DW$T$581	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__diagsEnabled")
	.dwattr $C$DW$T$581, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$581, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$581, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$581, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$581, DW_AT_decl_column(0x14)
$C$DW$T$582	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Module__diagsIncluded")
	.dwattr $C$DW$T$582, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$582, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$582, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$582, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$582, DW_AT_decl_column(0x14)
$C$DW$T$583	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__diagsEnabled")
	.dwattr $C$DW$T$583, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$583, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$583, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$583, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$583, DW_AT_decl_column(0x14)
$C$DW$T$584	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module__diagsIncluded")
	.dwattr $C$DW$T$584, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$584, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$584, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$584, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$584, DW_AT_decl_column(0x14)
$C$DW$T$585	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__diagsEnabled")
	.dwattr $C$DW$T$585, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$585, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$585, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$585, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$585, DW_AT_decl_column(0x14)
$C$DW$T$586	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Module__diagsIncluded")
	.dwattr $C$DW$T$586, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$586, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$586, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$586, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$586, DW_AT_decl_column(0x14)
$C$DW$T$587	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__diagsEnabled")
	.dwattr $C$DW$T$587, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$587, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$587, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$587, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$T$587, DW_AT_decl_column(0x14)
$C$DW$T$588	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Module__diagsIncluded")
	.dwattr $C$DW$T$588, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$588, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$588, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$588, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$588, DW_AT_decl_column(0x14)
$C$DW$T$589	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__diagsEnabled")
	.dwattr $C$DW$T$589, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$589, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$589, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$589, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$589, DW_AT_decl_column(0x14)
$C$DW$T$590	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Module__diagsIncluded")
	.dwattr $C$DW$T$590, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$590, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$590, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$590, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$590, DW_AT_decl_column(0x14)
$C$DW$T$591	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__diagsEnabled")
	.dwattr $C$DW$T$591, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$591, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$591, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$591, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$591, DW_AT_decl_column(0x14)
$C$DW$T$592	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module__diagsIncluded")
	.dwattr $C$DW$T$592, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$592, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$592, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$592, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$592, DW_AT_decl_column(0x14)
$C$DW$T$593	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__diagsEnabled")
	.dwattr $C$DW$T$593, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$593, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$593, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$593, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$593, DW_AT_decl_column(0x14)
$C$DW$T$594	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Module__diagsIncluded")
	.dwattr $C$DW$T$594, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$594, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$594, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$594, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$594, DW_AT_decl_column(0x14)
$C$DW$T$595	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__diagsEnabled")
	.dwattr $C$DW$T$595, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$595, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$595, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$595, DW_AT_decl_line(0xce)
	.dwattr $C$DW$T$595, DW_AT_decl_column(0x14)
$C$DW$T$596	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Module__diagsIncluded")
	.dwattr $C$DW$T$596, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$596, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$596, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$596, DW_AT_decl_line(0xd2)
	.dwattr $C$DW$T$596, DW_AT_decl_column(0x14)
$C$DW$T$597	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Assert_Id")
	.dwattr $C$DW$T$597, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$597, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$597, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert__prologue.h")
	.dwattr $C$DW$T$597, DW_AT_decl_line(0x16)
	.dwattr $C$DW$T$597, DW_AT_decl_column(0x14)
$C$DW$T$598	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_A_cannotFitIntoArg")
	.dwattr $C$DW$T$598, DW_AT_type(*$C$DW$T$597)
	.dwattr $C$DW$T$598, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$598, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$598, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$598, DW_AT_decl_column(0x1f)
$C$DW$T$101	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Error_Id")
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$101, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error__prologue.h")
	.dwattr $C$DW$T$101, DW_AT_decl_line(0x12)
	.dwattr $C$DW$T$101, DW_AT_decl_column(0x14)
$C$DW$T$599	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_E_assertFailed")
	.dwattr $C$DW$T$599, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$599, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$599, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$599, DW_AT_decl_line(0x99)
	.dwattr $C$DW$T$599, DW_AT_decl_column(0x1e)
$C$DW$T$600	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_E_generic")
	.dwattr $C$DW$T$600, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$600, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$600, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$600, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$T$600, DW_AT_decl_column(0x1e)
$C$DW$T$601	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_E_memory")
	.dwattr $C$DW$T$601, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$601, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$601, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$601, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$T$601, DW_AT_decl_column(0x1e)
$C$DW$T$602	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_E_msgCode")
	.dwattr $C$DW$T$602, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$T$602, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$602, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$602, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$T$602, DW_AT_decl_column(0x1e)
$C$DW$T$603	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_Event")
	.dwattr $C$DW$T$603, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$603, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$603, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$603, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$603, DW_AT_decl_column(0x14)
$C$DW$T$604	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_EventId")
	.dwattr $C$DW$T$604, DW_AT_type(*$C$DW$T$603)
	.dwattr $C$DW$T$604, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$604, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$604, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$604, DW_AT_decl_column(0x21)
$C$DW$T$348	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_LogEvent")
	.dwattr $C$DW$T$348, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$348, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$348, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$348, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$348, DW_AT_decl_column(0x14)
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
$C$DW$T$613	.dwtag  DW_TAG_typedef, DW_AT_name("UArg")
	.dwattr $C$DW$T$613, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$T$613, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$613, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$613, DW_AT_decl_line(0xe0)
	.dwattr $C$DW$T$613, DW_AT_decl_column(0x19)
$C$DW$T$213	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_Size")
	.dwattr $C$DW$T$213, DW_AT_type(*$C$DW$T$212)
	.dwattr $C$DW$T$213, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$213, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$213, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$213, DW_AT_decl_column(0x12)
$C$DW$T$570	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UInt")
	.dwattr $C$DW$T$570, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$570, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$570, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$570, DW_AT_decl_line(0x22)
	.dwattr $C$DW$T$570, DW_AT_decl_column(0x19)
$C$DW$T$571	.dwtag  DW_TAG_typedef, DW_AT_name("UInt")
	.dwattr $C$DW$T$571, DW_AT_type(*$C$DW$T$570)
	.dwattr $C$DW$T$571, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$571, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$571, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$T$571, DW_AT_decl_column(0x19)
$C$DW$T$572	.dwtag  DW_TAG_typedef, DW_AT_name("Uns")
	.dwattr $C$DW$T$572, DW_AT_type(*$C$DW$T$570)
	.dwattr $C$DW$T$572, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$572, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$572, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$T$572, DW_AT_decl_column(0x19)
$C$DW$T$573	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_ULong")
	.dwattr $C$DW$T$573, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$573, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$573, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$573, DW_AT_decl_line(0x24)
	.dwattr $C$DW$T$573, DW_AT_decl_column(0x19)
$C$DW$T$574	.dwtag  DW_TAG_typedef, DW_AT_name("ULong")
	.dwattr $C$DW$T$574, DW_AT_type(*$C$DW$T$573)
	.dwattr $C$DW$T$574, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$574, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$574, DW_AT_decl_line(0xd6)
	.dwattr $C$DW$T$574, DW_AT_decl_column(0x19)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("__int40_t")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)
$C$DW$T$626	.dwtag  DW_TAG_typedef, DW_AT_name("int40_t")
	.dwattr $C$DW$T$626, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$626, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$626, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$626, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$626, DW_AT_decl_column(0x21)
$C$DW$T$627	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast40_t")
	.dwattr $C$DW$T$627, DW_AT_type(*$C$DW$T$626)
	.dwattr $C$DW$T$627, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$627, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$627, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$627, DW_AT_decl_column(0x17)
$C$DW$T$628	.dwtag  DW_TAG_typedef, DW_AT_name("int_least40_t")
	.dwattr $C$DW$T$628, DW_AT_type(*$C$DW$T$626)
	.dwattr $C$DW$T$628, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$628, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$628, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$628, DW_AT_decl_column(0x17)
$C$DW$T$629	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Int40")
	.dwattr $C$DW$T$629, DW_AT_type(*$C$DW$T$628)
	.dwattr $C$DW$T$629, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$629, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$629, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$629, DW_AT_decl_column(0x1d)
$C$DW$T$630	.dwtag  DW_TAG_typedef, DW_AT_name("Int40")
	.dwattr $C$DW$T$630, DW_AT_type(*$C$DW$T$629)
	.dwattr $C$DW$T$630, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$630, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$630, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$630, DW_AT_decl_column(0x1d)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned __int40_t")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)
$C$DW$T$631	.dwtag  DW_TAG_typedef, DW_AT_name("uint40_t")
	.dwattr $C$DW$T$631, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$631, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$631, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$631, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$631, DW_AT_decl_column(0x20)
$C$DW$T$632	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast40_t")
	.dwattr $C$DW$T$632, DW_AT_type(*$C$DW$T$631)
	.dwattr $C$DW$T$632, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$632, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$632, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$632, DW_AT_decl_column(0x16)
$C$DW$T$633	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least40_t")
	.dwattr $C$DW$T$633, DW_AT_type(*$C$DW$T$631)
	.dwattr $C$DW$T$633, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$633, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$633, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$633, DW_AT_decl_column(0x16)
$C$DW$T$634	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UInt40")
	.dwattr $C$DW$T$634, DW_AT_type(*$C$DW$T$633)
	.dwattr $C$DW$T$634, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$634, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$634, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$634, DW_AT_decl_column(0x1d)
$C$DW$T$635	.dwtag  DW_TAG_typedef, DW_AT_name("UInt40")
	.dwattr $C$DW$T$635, DW_AT_type(*$C$DW$T$634)
	.dwattr $C$DW$T$635, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$635, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$635, DW_AT_decl_line(0x82)
	.dwattr $C$DW$T$635, DW_AT_decl_column(0x1d)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$638	.dwtag  DW_TAG_typedef, DW_AT_name("int64_t")
	.dwattr $C$DW$T$638, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$638, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$638, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$638, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$638, DW_AT_decl_column(0x21)
$C$DW$T$639	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$639, DW_AT_type(*$C$DW$T$638)
	.dwattr $C$DW$T$639, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$639, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$639, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$639, DW_AT_decl_column(0x17)
$C$DW$T$640	.dwtag  DW_TAG_typedef, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$640, DW_AT_type(*$C$DW$T$638)
	.dwattr $C$DW$T$640, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$640, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$640, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$640, DW_AT_decl_column(0x17)
$C$DW$T$641	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Int64")
	.dwattr $C$DW$T$641, DW_AT_type(*$C$DW$T$640)
	.dwattr $C$DW$T$641, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$641, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$641, DW_AT_decl_line(0x75)
	.dwattr $C$DW$T$641, DW_AT_decl_column(0x1d)
$C$DW$T$642	.dwtag  DW_TAG_typedef, DW_AT_name("Int64")
	.dwattr $C$DW$T$642, DW_AT_type(*$C$DW$T$641)
	.dwattr $C$DW$T$642, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$642, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$642, DW_AT_decl_line(0x101)
	.dwattr $C$DW$T$642, DW_AT_decl_column(0x19)
$C$DW$T$643	.dwtag  DW_TAG_typedef, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$643, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$643, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$643, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$643, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$643, DW_AT_decl_column(0x20)
$C$DW$T$636	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_LLong")
	.dwattr $C$DW$T$636, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$636, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$636, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$636, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$T$636, DW_AT_decl_column(0x21)
$C$DW$T$637	.dwtag  DW_TAG_typedef, DW_AT_name("LLong")
	.dwattr $C$DW$T$637, DW_AT_type(*$C$DW$T$636)
	.dwattr $C$DW$T$637, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$637, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$637, DW_AT_decl_line(0xd7)
	.dwattr $C$DW$T$637, DW_AT_decl_column(0x19)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$646	.dwtag  DW_TAG_typedef, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$646, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$646, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$646, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$646, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$646, DW_AT_decl_column(0x20)
$C$DW$T$649	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$649, DW_AT_type(*$C$DW$T$646)
	.dwattr $C$DW$T$649, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$649, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$649, DW_AT_decl_line(0x55)
	.dwattr $C$DW$T$649, DW_AT_decl_column(0x16)
$C$DW$T$650	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$650, DW_AT_type(*$C$DW$T$646)
	.dwattr $C$DW$T$650, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$650, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$650, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$650, DW_AT_decl_column(0x16)
$C$DW$T$651	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_UInt64")
	.dwattr $C$DW$T$651, DW_AT_type(*$C$DW$T$650)
	.dwattr $C$DW$T$651, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$651, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$651, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$651, DW_AT_decl_column(0x1e)
$C$DW$T$652	.dwtag  DW_TAG_typedef, DW_AT_name("UInt64")
	.dwattr $C$DW$T$652, DW_AT_type(*$C$DW$T$651)
	.dwattr $C$DW$T$652, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$652, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$652, DW_AT_decl_line(0x102)
	.dwattr $C$DW$T$652, DW_AT_decl_column(0x19)
$C$DW$T$647	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Bits64")
	.dwattr $C$DW$T$647, DW_AT_type(*$C$DW$T$646)
	.dwattr $C$DW$T$647, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$647, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/ti/targets/std.h")
	.dwattr $C$DW$T$647, DW_AT_decl_line(0x93)
	.dwattr $C$DW$T$647, DW_AT_decl_column(0x19)
$C$DW$T$648	.dwtag  DW_TAG_typedef, DW_AT_name("Bits64")
	.dwattr $C$DW$T$648, DW_AT_type(*$C$DW$T$647)
	.dwattr $C$DW$T$648, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$648, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$648, DW_AT_decl_line(0x116)
	.dwattr $C$DW$T$648, DW_AT_decl_column(0x19)
$C$DW$T$653	.dwtag  DW_TAG_typedef, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$653, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$653, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$653, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$653, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$653, DW_AT_decl_column(0x20)
$C$DW$T$644	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_ULLong")
	.dwattr $C$DW$T$644, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$644, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$644, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$644, DW_AT_decl_line(0x80)
	.dwattr $C$DW$T$644, DW_AT_decl_column(0x21)
$C$DW$T$645	.dwtag  DW_TAG_typedef, DW_AT_name("ULLong")
	.dwattr $C$DW$T$645, DW_AT_type(*$C$DW$T$644)
	.dwattr $C$DW$T$645, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$645, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$645, DW_AT_decl_line(0xd8)
	.dwattr $C$DW$T$645, DW_AT_decl_column(0x19)
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
$C$DW$T$654	.dwtag  DW_TAG_typedef, DW_AT_name("Float")
	.dwattr $C$DW$T$654, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$T$654, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$654, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$654, DW_AT_decl_line(0xd9)
	.dwattr $C$DW$T$654, DW_AT_decl_column(0x19)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$655	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Double")
	.dwattr $C$DW$T$655, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$655, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$655, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$655, DW_AT_decl_line(0x26)
	.dwattr $C$DW$T$655, DW_AT_decl_column(0x19)
$C$DW$T$656	.dwtag  DW_TAG_typedef, DW_AT_name("Double")
	.dwattr $C$DW$T$656, DW_AT_type(*$C$DW$T$655)
	.dwattr $C$DW$T$656, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$656, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$656, DW_AT_decl_line(0xda)
	.dwattr $C$DW$T$656, DW_AT_decl_column(0x19)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)
$C$DW$T$657	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_LDouble")
	.dwattr $C$DW$T$657, DW_AT_type(*$C$DW$T$18)
	.dwattr $C$DW$T$657, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$657, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$657, DW_AT_decl_line(0x27)
	.dwattr $C$DW$T$657, DW_AT_decl_column(0x19)
$C$DW$T$658	.dwtag  DW_TAG_typedef, DW_AT_name("LDouble")
	.dwattr $C$DW$T$658, DW_AT_type(*$C$DW$T$657)
	.dwattr $C$DW$T$658, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$658, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$658, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$T$658, DW_AT_decl_column(0x19)
$C$DW$T$102	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$102, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$102, DW_AT_name("signed char")
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x01)
$C$DW$T$103	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$103, DW_AT_address_class(0x20)
$C$DW$T$543	.dwtag  DW_TAG_typedef, DW_AT_name("va_list")
	.dwattr $C$DW$T$543, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$543, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$543, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdarg.h")
	.dwattr $C$DW$T$543, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$543, DW_AT_decl_column(0x12)
$C$DW$T$544	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_VaList")
	.dwattr $C$DW$T$544, DW_AT_type(*$C$DW$T$543)
	.dwattr $C$DW$T$544, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$544, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$544, DW_AT_decl_line(0x29)
	.dwattr $C$DW$T$544, DW_AT_decl_column(0x19)
$C$DW$T$659	.dwtag  DW_TAG_typedef, DW_AT_name("VaList")
	.dwattr $C$DW$T$659, DW_AT_type(*$C$DW$T$544)
	.dwattr $C$DW$T$659, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$659, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$659, DW_AT_decl_line(0xdd)
	.dwattr $C$DW$T$659, DW_AT_decl_column(0x19)
$C$DW$T$545	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$545, DW_AT_type(*$C$DW$T$544)
	.dwattr $C$DW$T$545, DW_AT_address_class(0x20)
$C$DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_String")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$104, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$104, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$104, DW_AT_decl_column(0x1a)
$C$DW$T$660	.dwtag  DW_TAG_typedef, DW_AT_name("String")
	.dwattr $C$DW$T$660, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$T$660, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$660, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$660, DW_AT_decl_line(0xe7)
	.dwattr $C$DW$T$660, DW_AT_decl_column(0x19)
$C$DW$T$263	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$263, DW_AT_type(*$C$DW$T$102)
$C$DW$T$264	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$264, DW_AT_type(*$C$DW$T$263)
	.dwattr $C$DW$T$264, DW_AT_address_class(0x20)
$C$DW$T$174	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_Char")
	.dwattr $C$DW$T$174, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$174, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$174, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$174, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$T$174, DW_AT_decl_column(0x19)
$C$DW$T$663	.dwtag  DW_TAG_typedef, DW_AT_name("Char")
	.dwattr $C$DW$T$663, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$T$663, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$663, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$663, DW_AT_decl_line(0xcf)
	.dwattr $C$DW$T$663, DW_AT_decl_column(0x19)
$C$DW$T$226	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$226, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$T$226, DW_AT_address_class(0x20)
$C$DW$T$542	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$542, DW_AT_type(*$C$DW$T$226)
	.dwattr $C$DW$T$542, DW_AT_address_class(0x20)

$C$DW$T$274	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$274, DW_AT_name("spi_flash")
	.dwattr $C$DW$T$274, DW_AT_byte_size(0x1c)
$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$266)
	.dwattr $C$DW$306, DW_AT_name("spi")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("spi")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$306, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$306, DW_AT_decl_line(0x22)
	.dwattr $C$DW$306, DW_AT_decl_column(0x14)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$264)
	.dwattr $C$DW$307, DW_AT_name("name")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("name")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$307, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$307, DW_AT_decl_line(0x24)
	.dwattr $C$DW$307, DW_AT_decl_column(0x0e)
$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$308, DW_AT_name("size")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("size")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$308, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$308, DW_AT_decl_line(0x26)
	.dwattr $C$DW$308, DW_AT_decl_column(0x10)
$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$309, DW_AT_name("type")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("type")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$309, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$309, DW_AT_decl_line(0x27)
	.dwattr $C$DW$309, DW_AT_decl_column(0x10)
$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$269)
	.dwattr $C$DW$310, DW_AT_name("read")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("read")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$310, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$310, DW_AT_decl_line(0x29)
	.dwattr $C$DW$310, DW_AT_decl_column(0x09)
$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$271)
	.dwattr $C$DW$311, DW_AT_name("write")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("write")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$311, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$311, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$311, DW_AT_decl_column(0x09)
$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$273)
	.dwattr $C$DW$312, DW_AT_name("erase")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("erase")
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$312, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$312, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$312, DW_AT_decl_column(0x09)
	.dwendtag $C$DW$T$274

	.dwattr $C$DW$T$274, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$T$274, DW_AT_decl_line(0x21)
	.dwattr $C$DW$T$274, DW_AT_decl_column(0x08)
$C$DW$T$267	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$267, DW_AT_type(*$C$DW$T$274)
	.dwattr $C$DW$T$267, DW_AT_address_class(0x20)
$C$DW$T$877	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$877, DW_AT_type(*$C$DW$T$267)

$C$DW$T$275	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$275, DW_AT_name("spi_flash_region")
	.dwattr $C$DW$T$275, DW_AT_byte_size(0x08)
$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$313, DW_AT_name("count")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("count")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$313, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$313, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$313, DW_AT_decl_column(0x0f)
$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$314, DW_AT_name("size")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("size")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$314, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$314, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$314, DW_AT_decl_column(0x0f)
	.dwendtag $C$DW$T$275

	.dwattr $C$DW$T$275, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi_flash.h")
	.dwattr $C$DW$T$275, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$T$275, DW_AT_decl_column(0x08)

$C$DW$T$276	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$276, DW_AT_name("spi_slave")
	.dwattr $C$DW$T$276, DW_AT_byte_size(0x08)
$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$315, DW_AT_name("bus")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("bus")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$315, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi.h")
	.dwattr $C$DW$315, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$315, DW_AT_decl_column(0x0f)
$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$316, DW_AT_name("cs")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("cs")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$316, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi.h")
	.dwattr $C$DW$316, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$316, DW_AT_decl_column(0x0f)
	.dwendtag $C$DW$T$276

	.dwattr $C$DW$T$276, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\drivers\spi\spi.h")
	.dwattr $C$DW$T$276, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$276, DW_AT_decl_column(0x08)
$C$DW$T$266	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$266, DW_AT_type(*$C$DW$T$276)
	.dwattr $C$DW$T$266, DW_AT_address_class(0x20)
$C$DW$T$878	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$878, DW_AT_type(*$C$DW$T$266)

$C$DW$T$261	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$261, DW_AT_name("winbond_spi_flash")
	.dwattr $C$DW$T$261, DW_AT_byte_size(0x20)
$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$274)
	.dwattr $C$DW$317, DW_AT_name("flash")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("flash")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$317, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$317, DW_AT_decl_line(0x39)
	.dwattr $C$DW$317, DW_AT_decl_column(0x13)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$260)
	.dwattr $C$DW$318, DW_AT_name("params")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("params")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$318, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$318, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$318, DW_AT_decl_column(0x29)
	.dwendtag $C$DW$T$261

	.dwattr $C$DW$T$261, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$T$261, DW_AT_decl_line(0x38)
	.dwattr $C$DW$T$261, DW_AT_decl_column(0x08)
$C$DW$T$345	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$345, DW_AT_type(*$C$DW$T$261)
	.dwattr $C$DW$T$345, DW_AT_address_class(0x20)

$C$DW$T$265	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$265, DW_AT_name("winbond_spi_flash_params")
	.dwattr $C$DW$T$265, DW_AT_byte_size(0x10)
$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$319, DW_AT_name("id")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("id")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$319, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$319, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$319, DW_AT_decl_column(0x0b)
$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$262)
	.dwattr $C$DW$320, DW_AT_name("l2_page_size")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("l2_page_size")
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$320, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$320, DW_AT_decl_line(0x30)
	.dwattr $C$DW$320, DW_AT_decl_column(0x0b)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$321, DW_AT_name("pages_per_sector")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("pages_per_sector")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$321, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$321, DW_AT_decl_line(0x31)
	.dwattr $C$DW$321, DW_AT_decl_column(0x0b)
$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$322, DW_AT_name("sectors_per_block")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("sectors_per_block")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$322, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$322, DW_AT_decl_line(0x32)
	.dwattr $C$DW$322, DW_AT_decl_column(0x0b)
$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$262)
	.dwattr $C$DW$323, DW_AT_name("nr_blocks")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("nr_blocks")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$323, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$323, DW_AT_decl_line(0x33)
	.dwattr $C$DW$323, DW_AT_decl_column(0x0b)
$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$264)
	.dwattr $C$DW$324, DW_AT_name("name")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("name")
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$324, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$324, DW_AT_decl_line(0x34)
	.dwattr $C$DW$324, DW_AT_decl_column(0x0e)
	.dwendtag $C$DW$T$265

	.dwattr $C$DW$T$265, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/dsp/drivers/spi/winbond.c")
	.dwattr $C$DW$T$265, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$265, DW_AT_decl_column(0x08)
$C$DW$T$259	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$259, DW_AT_type(*$C$DW$T$265)
$C$DW$T$260	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$260, DW_AT_type(*$C$DW$T$259)
	.dwattr $C$DW$T$260, DW_AT_address_class(0x20)

$C$DW$T$875	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$875, DW_AT_type(*$C$DW$T$259)
	.dwattr $C$DW$T$875, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$875, DW_AT_byte_size(0x40)
$C$DW$325	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$325, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$875


$C$DW$T$88	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$88, DW_AT_name("xdc_FloatData")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x04)
$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$326, DW_AT_name("f")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("f")
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$326, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$326, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$326, DW_AT_decl_column(0x0f)
$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$327, DW_AT_name("a")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("a")
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$327, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$327, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$327, DW_AT_decl_column(0x0f)
	.dwendtag $C$DW$T$88

	.dwattr $C$DW$T$88, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$88, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$88, DW_AT_decl_column(0x0f)
$C$DW$T$664	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_FloatData")
	.dwattr $C$DW$T$664, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$T$664, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$664, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/std.h")
	.dwattr $C$DW$T$664, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$T$664, DW_AT_decl_column(0x03)

$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_name("xdc_runtime_Core_ObjDesc")
	.dwattr $C$DW$T$19, DW_AT_declaration
	.dwendtag $C$DW$T$19

	.dwattr $C$DW$T$19, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x10)
$C$DW$T$665	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Core_ObjDesc")
	.dwattr $C$DW$T$665, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$665, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$665, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$665, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$T$665, DW_AT_decl_column(0x29)

$C$DW$T$95	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$95, DW_AT_name("xdc_runtime_Diags_DictElem")
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x08)
$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$328, DW_AT_name("modId")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("modId")
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$328, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$328, DW_AT_decl_line(0x99)
	.dwattr $C$DW$328, DW_AT_decl_column(0x20)
$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$329, DW_AT_name("maskAddr")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("maskAddr")
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$329, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$329, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$329, DW_AT_decl_column(0x1d)
	.dwendtag $C$DW$T$95

	.dwattr $C$DW$T$95, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$95, DW_AT_decl_line(0x98)
	.dwattr $C$DW$T$95, DW_AT_decl_column(0x08)
$C$DW$T$666	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Diags_DictElem")
	.dwattr $C$DW$T$666, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$T$666, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$666, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$666, DW_AT_decl_line(0x27)
	.dwattr $C$DW$T$666, DW_AT_decl_column(0x2b)
$C$DW$T$667	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$667, DW_AT_type(*$C$DW$T$666)
	.dwattr $C$DW$T$667, DW_AT_address_class(0x20)
$C$DW$T$668	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_dictBase")
	.dwattr $C$DW$T$668, DW_AT_type(*$C$DW$T$667)
	.dwattr $C$DW$T$668, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$668, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$668, DW_AT_decl_line(0xf5)
	.dwattr $C$DW$T$668, DW_AT_decl_column(0x25)

$C$DW$T$669	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$669, DW_AT_name("xdc_runtime_Diags_EventLevel")
	.dwattr $C$DW$T$669, DW_AT_byte_size(0x04)
$C$DW$330	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Diags_LEVEL1"), DW_AT_const_value(0x00)
	.dwattr $C$DW$330, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$330, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$330, DW_AT_decl_column(0x05)
$C$DW$331	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Diags_LEVEL2"), DW_AT_const_value(0x20)
	.dwattr $C$DW$331, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$331, DW_AT_decl_line(0x80)
	.dwattr $C$DW$331, DW_AT_decl_column(0x05)
$C$DW$332	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Diags_LEVEL3"), DW_AT_const_value(0x40)
	.dwattr $C$DW$332, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$332, DW_AT_decl_line(0x81)
	.dwattr $C$DW$332, DW_AT_decl_column(0x05)
$C$DW$333	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Diags_LEVEL4"), DW_AT_const_value(0x60)
	.dwattr $C$DW$333, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$333, DW_AT_decl_line(0x82)
	.dwattr $C$DW$333, DW_AT_decl_column(0x05)
	.dwendtag $C$DW$T$669

	.dwattr $C$DW$T$669, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$669, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$669, DW_AT_decl_column(0x06)
$C$DW$T$670	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Diags_EventLevel")
	.dwattr $C$DW$T$670, DW_AT_type(*$C$DW$T$669)
	.dwattr $C$DW$T$670, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$670, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$670, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$670, DW_AT_decl_column(0x2b)

$C$DW$T$109	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$109, DW_AT_name("xdc_runtime_Error_Block")
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x30)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$334, DW_AT_name("unused")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("unused")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$334, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$334, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$334, DW_AT_decl_column(0x10)
$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$335, DW_AT_name("data")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("data")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$335, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$335, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$335, DW_AT_decl_column(0x1c)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$336, DW_AT_name("id")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("id")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$336, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$336, DW_AT_decl_line(0x5f)
	.dwattr $C$DW$336, DW_AT_decl_column(0x1a)
$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$337, DW_AT_name("msg")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("msg")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$337, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$337, DW_AT_decl_line(0x60)
	.dwattr $C$DW$337, DW_AT_decl_column(0x10)
$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$338, DW_AT_name("site")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("site")
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$338, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$338, DW_AT_decl_line(0x61)
	.dwattr $C$DW$338, DW_AT_decl_column(0x1c)
$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$339, DW_AT_name("xtra")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("xtra")
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$339, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$339, DW_AT_decl_line(0x62)
	.dwattr $C$DW$339, DW_AT_decl_column(0x28)
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
$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$340, DW_AT_name("arg")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("arg")
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$340, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$340, DW_AT_decl_line(0x55)
	.dwattr $C$DW$340, DW_AT_decl_column(0x26)
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
$C$DW$T$671	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Error_Module_State")
	.dwattr $C$DW$T$671, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$671, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$671, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$671, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$671, DW_AT_decl_column(0x2f)

$C$DW$T$672	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$672, DW_AT_name("xdc_runtime_Error_Policy")
	.dwattr $C$DW$T$672, DW_AT_byte_size(0x04)
$C$DW$341	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Error_TERMINATE"), DW_AT_const_value(0x00)
	.dwattr $C$DW$341, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$341, DW_AT_decl_line(0x43)
	.dwattr $C$DW$341, DW_AT_decl_column(0x05)
$C$DW$342	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Error_UNWIND"), DW_AT_const_value(0x01)
	.dwattr $C$DW$342, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$342, DW_AT_decl_line(0x44)
	.dwattr $C$DW$342, DW_AT_decl_column(0x05)
	.dwendtag $C$DW$T$672

	.dwattr $C$DW$T$672, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$672, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$672, DW_AT_decl_column(0x06)
$C$DW$T$673	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Error_Policy")
	.dwattr $C$DW$T$673, DW_AT_type(*$C$DW$T$672)
	.dwattr $C$DW$T$673, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$673, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$673, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$673, DW_AT_decl_column(0x27)
$C$DW$T$674	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_policy")
	.dwattr $C$DW$T$674, DW_AT_type(*$C$DW$T$673)
	.dwattr $C$DW$T$674, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$674, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$674, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$T$674, DW_AT_decl_column(0x22)

$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_name("xdc_runtime_GateNull_Fxns__")
	.dwattr $C$DW$T$21, DW_AT_declaration
	.dwendtag $C$DW$T$21

	.dwattr $C$DW$T$21, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$21, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$21, DW_AT_decl_column(0x10)
$C$DW$T$675	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Fxns__")
	.dwattr $C$DW$T$675, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$675, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$675, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$675, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$675, DW_AT_decl_column(0x2c)
$C$DW$T$676	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$676, DW_AT_type(*$C$DW$T$675)
$C$DW$T$677	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$677, DW_AT_type(*$C$DW$T$676)
	.dwattr $C$DW$T$677, DW_AT_address_class(0x20)
$C$DW$T$678	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Module")
	.dwattr $C$DW$T$678, DW_AT_type(*$C$DW$T$677)
	.dwattr $C$DW$T$678, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$678, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$678, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$678, DW_AT_decl_column(0x2c)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("xdc_runtime_GateNull_Object")
	.dwattr $C$DW$T$22, DW_AT_declaration
	.dwendtag $C$DW$T$22

	.dwattr $C$DW$T$22, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
$C$DW$T$679	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Object")
	.dwattr $C$DW$T$679, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$679, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$679, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$679, DW_AT_decl_line(0x46)
	.dwattr $C$DW$T$679, DW_AT_decl_column(0x2c)
$C$DW$T$680	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$680, DW_AT_type(*$C$DW$T$679)
	.dwattr $C$DW$T$680, DW_AT_address_class(0x20)
$C$DW$T$681	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Handle")
	.dwattr $C$DW$T$681, DW_AT_type(*$C$DW$T$680)
	.dwattr $C$DW$T$681, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$681, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$681, DW_AT_decl_line(0x48)
	.dwattr $C$DW$T$681, DW_AT_decl_column(0x26)
$C$DW$T$682	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Instance")
	.dwattr $C$DW$T$682, DW_AT_type(*$C$DW$T$680)
	.dwattr $C$DW$T$682, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$682, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$682, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$682, DW_AT_decl_column(0x26)

$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("xdc_runtime_GateNull_Object__")
	.dwattr $C$DW$T$23, DW_AT_declaration
	.dwendtag $C$DW$T$23

	.dwattr $C$DW$T$23, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x10)
$C$DW$T$683	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Instance_State")
	.dwattr $C$DW$T$683, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$683, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$683, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$683, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$683, DW_AT_decl_column(0x2e)

$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("xdc_runtime_GateNull_Params")
	.dwattr $C$DW$T$24, DW_AT_declaration
	.dwendtag $C$DW$T$24

	.dwattr $C$DW$T$24, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x10)
$C$DW$T$684	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Params")
	.dwattr $C$DW$T$684, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$684, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$684, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$684, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$684, DW_AT_decl_column(0x2c)

$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("xdc_runtime_GateNull_Struct")
	.dwattr $C$DW$T$25, DW_AT_declaration
	.dwendtag $C$DW$T$25

	.dwattr $C$DW$T$25, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x10)
$C$DW$T$685	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_GateNull_Struct")
	.dwattr $C$DW$T$685, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$685, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$685, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$685, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$685, DW_AT_decl_column(0x2c)

$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("xdc_runtime_HeapMin_Fxns__")
	.dwattr $C$DW$T$26, DW_AT_declaration
	.dwendtag $C$DW$T$26

	.dwattr $C$DW$T$26, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x10)
$C$DW$T$686	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Fxns__")
	.dwattr $C$DW$T$686, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$686, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$686, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$686, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$T$686, DW_AT_decl_column(0x2b)
$C$DW$T$687	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$687, DW_AT_type(*$C$DW$T$686)
$C$DW$T$688	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$688, DW_AT_type(*$C$DW$T$687)
	.dwattr $C$DW$T$688, DW_AT_address_class(0x20)
$C$DW$T$689	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Module")
	.dwattr $C$DW$T$689, DW_AT_type(*$C$DW$T$688)
	.dwattr $C$DW$T$689, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$689, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$689, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$689, DW_AT_decl_column(0x2b)

$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_name("xdc_runtime_HeapMin_Object")
	.dwattr $C$DW$T$27, DW_AT_declaration
	.dwendtag $C$DW$T$27

	.dwattr $C$DW$T$27, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x10)
$C$DW$T$690	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Object")
	.dwattr $C$DW$T$690, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$690, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$690, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$690, DW_AT_decl_line(0xa9)
	.dwattr $C$DW$T$690, DW_AT_decl_column(0x2b)
$C$DW$T$691	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$691, DW_AT_type(*$C$DW$T$690)
	.dwattr $C$DW$T$691, DW_AT_address_class(0x20)
$C$DW$T$692	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Handle")
	.dwattr $C$DW$T$692, DW_AT_type(*$C$DW$T$691)
	.dwattr $C$DW$T$692, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$692, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$692, DW_AT_decl_line(0xab)
	.dwattr $C$DW$T$692, DW_AT_decl_column(0x25)
$C$DW$T$693	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Instance")
	.dwattr $C$DW$T$693, DW_AT_type(*$C$DW$T$691)
	.dwattr $C$DW$T$693, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$693, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$693, DW_AT_decl_line(0xad)
	.dwattr $C$DW$T$693, DW_AT_decl_column(0x25)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("xdc_runtime_HeapMin_Object__")
	.dwattr $C$DW$T$28, DW_AT_declaration
	.dwendtag $C$DW$T$28

	.dwattr $C$DW$T$28, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0xac)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x10)
$C$DW$T$694	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Instance_State")
	.dwattr $C$DW$T$694, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$694, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$694, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$694, DW_AT_decl_line(0xac)
	.dwattr $C$DW$T$694, DW_AT_decl_column(0x2d)

$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("xdc_runtime_HeapMin_Params")
	.dwattr $C$DW$T$29, DW_AT_declaration
	.dwendtag $C$DW$T$29

	.dwattr $C$DW$T$29, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x10)
$C$DW$T$695	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Params")
	.dwattr $C$DW$T$695, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$695, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$695, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$695, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$T$695, DW_AT_decl_column(0x2b)

$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("xdc_runtime_HeapMin_Struct")
	.dwattr $C$DW$T$30, DW_AT_declaration
	.dwendtag $C$DW$T$30

	.dwattr $C$DW$T$30, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x10)
$C$DW$T$696	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapMin_Struct")
	.dwattr $C$DW$T$696, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$696, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$696, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$696, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$T$696, DW_AT_decl_column(0x2b)

$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("xdc_runtime_HeapStd_Fxns__")
	.dwattr $C$DW$T$31, DW_AT_declaration
	.dwendtag $C$DW$T$31

	.dwattr $C$DW$T$31, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x10)
$C$DW$T$697	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Fxns__")
	.dwattr $C$DW$T$697, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$T$697, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$697, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$697, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$T$697, DW_AT_decl_column(0x2b)
$C$DW$T$698	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$698, DW_AT_type(*$C$DW$T$697)
$C$DW$T$699	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$699, DW_AT_type(*$C$DW$T$698)
	.dwattr $C$DW$T$699, DW_AT_address_class(0x20)
$C$DW$T$700	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Module")
	.dwattr $C$DW$T$700, DW_AT_type(*$C$DW$T$699)
	.dwattr $C$DW$T$700, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$700, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$700, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$T$700, DW_AT_decl_column(0x2b)

$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("xdc_runtime_HeapStd_Module_State")
	.dwattr $C$DW$T$32, DW_AT_declaration
	.dwendtag $C$DW$T$32

	.dwattr $C$DW$T$32, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x10)
$C$DW$T$701	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Module_State")
	.dwattr $C$DW$T$701, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$701, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$701, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$701, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$T$701, DW_AT_decl_column(0x31)

$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("xdc_runtime_HeapStd_Object")
	.dwattr $C$DW$T$33, DW_AT_declaration
	.dwendtag $C$DW$T$33

	.dwattr $C$DW$T$33, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x10)
$C$DW$T$702	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Object")
	.dwattr $C$DW$T$702, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$T$702, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$702, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$702, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$T$702, DW_AT_decl_column(0x2b)
$C$DW$T$703	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$703, DW_AT_type(*$C$DW$T$702)
	.dwattr $C$DW$T$703, DW_AT_address_class(0x20)
$C$DW$T$704	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Handle")
	.dwattr $C$DW$T$704, DW_AT_type(*$C$DW$T$703)
	.dwattr $C$DW$T$704, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$704, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$704, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$T$704, DW_AT_decl_column(0x25)
$C$DW$T$705	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Instance")
	.dwattr $C$DW$T$705, DW_AT_type(*$C$DW$T$703)
	.dwattr $C$DW$T$705, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$705, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$705, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$T$705, DW_AT_decl_column(0x25)

$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("xdc_runtime_HeapStd_Object__")
	.dwattr $C$DW$T$34, DW_AT_declaration
	.dwendtag $C$DW$T$34

	.dwattr $C$DW$T$34, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0xba)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x10)
$C$DW$T$706	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Instance_State")
	.dwattr $C$DW$T$706, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$706, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$706, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$706, DW_AT_decl_line(0xba)
	.dwattr $C$DW$T$706, DW_AT_decl_column(0x2d)

$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("xdc_runtime_HeapStd_Params")
	.dwattr $C$DW$T$35, DW_AT_declaration
	.dwendtag $C$DW$T$35

	.dwattr $C$DW$T$35, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x10)
$C$DW$T$707	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Params")
	.dwattr $C$DW$T$707, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$T$707, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$707, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$707, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$T$707, DW_AT_decl_column(0x2b)

$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("xdc_runtime_HeapStd_Struct")
	.dwattr $C$DW$T$36, DW_AT_declaration
	.dwendtag $C$DW$T$36

	.dwattr $C$DW$T$36, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x10)
$C$DW$T$708	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_HeapStd_Struct")
	.dwattr $C$DW$T$708, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$708, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$708, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$708, DW_AT_decl_line(0xb8)
	.dwattr $C$DW$T$708, DW_AT_decl_column(0x2b)

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
$C$DW$T$709	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$709, DW_AT_type(*$C$DW$T$114)
$C$DW$T$710	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$710, DW_AT_type(*$C$DW$T$709)
	.dwattr $C$DW$T$710, DW_AT_address_class(0x20)
$C$DW$T$711	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IFilterLogger_Module")
	.dwattr $C$DW$T$711, DW_AT_type(*$C$DW$T$710)
	.dwattr $C$DW$T$711, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$711, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$711, DW_AT_decl_line(0x60)
	.dwattr $C$DW$T$711, DW_AT_decl_column(0x31)

$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("xdc_runtime_IFilterLogger_Params")
	.dwattr $C$DW$T$38, DW_AT_declaration
	.dwendtag $C$DW$T$38

	.dwattr $C$DW$T$38, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x10)
$C$DW$T$712	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IFilterLogger_Params")
	.dwattr $C$DW$T$712, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$712, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$712, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$712, DW_AT_decl_line(0x61)
	.dwattr $C$DW$T$712, DW_AT_decl_column(0x31)

$C$DW$T$116	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$116, DW_AT_name("xdc_runtime_IFilterLogger___Object")
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x08)
$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$343, DW_AT_name("__fxns")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$343, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$343, DW_AT_decl_line(0x62)
	.dwattr $C$DW$343, DW_AT_decl_column(0x57)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$344, DW_AT_name("__label")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("__label")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$344, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$344, DW_AT_decl_line(0x62)
	.dwattr $C$DW$344, DW_AT_decl_column(0x6a)
	.dwendtag $C$DW$T$116

	.dwattr $C$DW$T$116, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$116, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$116, DW_AT_decl_column(0x10)
$C$DW$T$713	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$713, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$713, DW_AT_address_class(0x20)
$C$DW$T$714	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IFilterLogger_Handle")
	.dwattr $C$DW$T$714, DW_AT_type(*$C$DW$T$713)
	.dwattr $C$DW$T$714, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$714, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$714, DW_AT_decl_line(0x62)
	.dwattr $C$DW$T$714, DW_AT_decl_column(0x76)

$C$DW$T$130	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$130, DW_AT_name("xdc_runtime_IGateProvider_Fxns__")
	.dwattr $C$DW$T$130, DW_AT_byte_size(0x24)
$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$345, DW_AT_name("__base")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$345, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$345, DW_AT_decl_line(0x59)
	.dwattr $C$DW$345, DW_AT_decl_column(0x1d)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$346, DW_AT_name("__sysp")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$346, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$346, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$346, DW_AT_decl_column(0x27)
$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$347, DW_AT_name("query")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("query")
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$347, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$347, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$347, DW_AT_decl_column(0x10)
$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$348, DW_AT_name("enter")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("enter")
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$348, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$348, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$348, DW_AT_decl_column(0x10)
$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$349, DW_AT_name("leave")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("leave")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$349, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$349, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$349, DW_AT_decl_column(0x10)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$350, DW_AT_name("__sfxns")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$350, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$350, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$350, DW_AT_decl_column(0x20)
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
$C$DW$T$715	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$715, DW_AT_type(*$C$DW$T$137)
$C$DW$T$716	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$716, DW_AT_type(*$C$DW$T$715)
	.dwattr $C$DW$T$716, DW_AT_address_class(0x20)
$C$DW$T$717	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IGateProvider_Module")
	.dwattr $C$DW$T$717, DW_AT_type(*$C$DW$T$716)
	.dwattr $C$DW$T$717, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$717, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$717, DW_AT_decl_line(0x3b)
	.dwattr $C$DW$T$717, DW_AT_decl_column(0x31)

$C$DW$T$136	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$136, DW_AT_name("xdc_runtime_IGateProvider_Params")
	.dwattr $C$DW$T$136, DW_AT_byte_size(0x10)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$351, DW_AT_name("__size")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("__size")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$351, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$351, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$351, DW_AT_decl_column(0x0c)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$352, DW_AT_name("__self")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("__self")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$352, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$352, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$352, DW_AT_decl_column(0x11)
$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$353, DW_AT_name("__fxns")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$353, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$353, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$353, DW_AT_decl_column(0x0b)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$354, DW_AT_name("instance")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("instance")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$354, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$354, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$354, DW_AT_decl_column(0x23)
	.dwendtag $C$DW$T$136

	.dwattr $C$DW$T$136, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IGateProvider.h")
	.dwattr $C$DW$T$136, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$136, DW_AT_decl_column(0x08)
$C$DW$T$718	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IGateProvider_Params")
	.dwattr $C$DW$T$718, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$T$718, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$718, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$718, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$718, DW_AT_decl_column(0x31)

$C$DW$T$139	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$139, DW_AT_name("xdc_runtime_IGateProvider___Object")
	.dwattr $C$DW$T$139, DW_AT_byte_size(0x08)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$355, DW_AT_name("__fxns")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$355, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$355, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$355, DW_AT_decl_column(0x57)
$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$356, DW_AT_name("__label")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("__label")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$356, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$356, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$356, DW_AT_decl_column(0x6a)
	.dwendtag $C$DW$T$139

	.dwattr $C$DW$T$139, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$139, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$139, DW_AT_decl_column(0x10)
$C$DW$T$180	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$180, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$T$180, DW_AT_address_class(0x20)
$C$DW$T$719	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IGateProvider_Handle")
	.dwattr $C$DW$T$719, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$T$719, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$719, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$719, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$719, DW_AT_decl_column(0x76)
$C$DW$T$720	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Module_GateProxy_Handle")
	.dwattr $C$DW$T$720, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$T$720, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$720, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$720, DW_AT_decl_line(0x14a)
	.dwattr $C$DW$T$720, DW_AT_decl_column(0x34)
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
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$357, DW_AT_name("__base")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$357, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$357, DW_AT_decl_line(0x55)
	.dwattr $C$DW$357, DW_AT_decl_column(0x1d)
$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$358, DW_AT_name("__sysp")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$358, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$358, DW_AT_decl_line(0x56)
	.dwattr $C$DW$358, DW_AT_decl_column(0x27)
$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$359, DW_AT_name("alloc")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("alloc")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$359, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$359, DW_AT_decl_line(0x57)
	.dwattr $C$DW$359, DW_AT_decl_column(0x0f)
$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$360, DW_AT_name("free")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("free")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$360, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$360, DW_AT_decl_line(0x58)
	.dwattr $C$DW$360, DW_AT_decl_column(0x10)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$149)
	.dwattr $C$DW$361, DW_AT_name("isBlocking")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("isBlocking")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$361, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$361, DW_AT_decl_line(0x59)
	.dwattr $C$DW$361, DW_AT_decl_column(0x10)
$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$362, DW_AT_name("getStats")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("getStats")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$362, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$362, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$362, DW_AT_decl_column(0x10)
$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$363, DW_AT_name("__sfxns")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$363, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$363, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$363, DW_AT_decl_column(0x20)
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
$C$DW$T$721	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$721, DW_AT_type(*$C$DW$T$156)
$C$DW$T$722	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$722, DW_AT_type(*$C$DW$T$721)
	.dwattr $C$DW$T$722, DW_AT_address_class(0x20)
$C$DW$T$723	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IHeap_Module")
	.dwattr $C$DW$T$723, DW_AT_type(*$C$DW$T$722)
	.dwattr $C$DW$T$723, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$723, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$723, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$T$723, DW_AT_decl_column(0x29)

$C$DW$T$155	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$155, DW_AT_name("xdc_runtime_IHeap_Params")
	.dwattr $C$DW$T$155, DW_AT_byte_size(0x10)
$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$364, DW_AT_name("__size")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("__size")
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$364, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$364, DW_AT_decl_line(0x48)
	.dwattr $C$DW$364, DW_AT_decl_column(0x0c)
$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$365, DW_AT_name("__self")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("__self")
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$365, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$365, DW_AT_decl_line(0x49)
	.dwattr $C$DW$365, DW_AT_decl_column(0x11)
$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$366, DW_AT_name("__fxns")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$366, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$366, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$366, DW_AT_decl_column(0x0b)
$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$367, DW_AT_name("instance")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("instance")
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$367, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$367, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$367, DW_AT_decl_column(0x23)
	.dwendtag $C$DW$T$155

	.dwattr $C$DW$T$155, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IHeap.h")
	.dwattr $C$DW$T$155, DW_AT_decl_line(0x47)
	.dwattr $C$DW$T$155, DW_AT_decl_column(0x08)
$C$DW$T$724	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IHeap_Params")
	.dwattr $C$DW$T$724, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$T$724, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$724, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$724, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$T$724, DW_AT_decl_column(0x29)

$C$DW$T$158	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$158, DW_AT_name("xdc_runtime_IHeap___Object")
	.dwattr $C$DW$T$158, DW_AT_byte_size(0x08)
$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$368, DW_AT_name("__fxns")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$368, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$368, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$368, DW_AT_decl_column(0x47)
$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$369, DW_AT_name("__label")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("__label")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$369, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$369, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$369, DW_AT_decl_column(0x5a)
	.dwendtag $C$DW$T$158

	.dwattr $C$DW$T$158, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$158, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$T$158, DW_AT_decl_column(0x10)
$C$DW$T$195	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$195, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$T$195, DW_AT_address_class(0x20)
$C$DW$T$725	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IHeap_Handle")
	.dwattr $C$DW$T$725, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$T$725, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$725, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$725, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$T$725, DW_AT_decl_column(0x66)
$C$DW$T$726	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Assert_Object__heap")
	.dwattr $C$DW$T$726, DW_AT_type(*$C$DW$T$725)
	.dwattr $C$DW$T$726, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$726, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Assert.h")
	.dwattr $C$DW$T$726, DW_AT_decl_line(0x8c)
	.dwattr $C$DW$T$726, DW_AT_decl_column(0x22)
$C$DW$T$727	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Diags_Object__heap")
	.dwattr $C$DW$T$727, DW_AT_type(*$C$DW$T$725)
	.dwattr $C$DW$T$727, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$727, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Diags.h")
	.dwattr $C$DW$T$727, DW_AT_decl_line(0xdf)
	.dwattr $C$DW$T$727, DW_AT_decl_column(0x22)
$C$DW$T$728	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Error_Object__heap")
	.dwattr $C$DW$T$728, DW_AT_type(*$C$DW$T$725)
	.dwattr $C$DW$T$728, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$728, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Error.h")
	.dwattr $C$DW$T$728, DW_AT_decl_line(0xac)
	.dwattr $C$DW$T$728, DW_AT_decl_column(0x22)
$C$DW$T$729	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Module_GateProxy_Object__heap")
	.dwattr $C$DW$T$729, DW_AT_type(*$C$DW$T$725)
	.dwattr $C$DW$T$729, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$729, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$729, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$729, DW_AT_decl_column(0x22)
$C$DW$T$730	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Main_Object__heap")
	.dwattr $C$DW$T$730, DW_AT_type(*$C$DW$T$725)
	.dwattr $C$DW$T$730, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$730, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Main.h")
	.dwattr $C$DW$T$730, DW_AT_decl_line(0x88)
	.dwattr $C$DW$T$730, DW_AT_decl_column(0x22)
$C$DW$T$731	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_HeapProxy_Object__heap")
	.dwattr $C$DW$T$731, DW_AT_type(*$C$DW$T$725)
	.dwattr $C$DW$T$731, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$731, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$731, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$731, DW_AT_decl_column(0x22)
$C$DW$T$732	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_Object__heap")
	.dwattr $C$DW$T$732, DW_AT_type(*$C$DW$T$725)
	.dwattr $C$DW$T$732, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$732, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$732, DW_AT_decl_line(0x96)
	.dwattr $C$DW$T$732, DW_AT_decl_column(0x22)
$C$DW$T$733	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Memory_defaultHeapInstance")
	.dwattr $C$DW$T$733, DW_AT_type(*$C$DW$T$725)
	.dwattr $C$DW$T$733, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$733, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$T$733, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$T$733, DW_AT_decl_column(0x22)
$C$DW$T$734	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Module_GateProxy_Object__heap")
	.dwattr $C$DW$T$734, DW_AT_type(*$C$DW$T$725)
	.dwattr $C$DW$T$734, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$734, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$734, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$734, DW_AT_decl_column(0x22)
$C$DW$T$735	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_Object__heap")
	.dwattr $C$DW$T$735, DW_AT_type(*$C$DW$T$725)
	.dwattr $C$DW$T$735, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$735, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$735, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$T$735, DW_AT_decl_column(0x22)
$C$DW$T$736	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_System_SupportProxy_Object__heap")
	.dwattr $C$DW$T$736, DW_AT_type(*$C$DW$T$725)
	.dwattr $C$DW$T$736, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$736, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$736, DW_AT_decl_line(0x81)
	.dwattr $C$DW$T$736, DW_AT_decl_column(0x22)
$C$DW$T$737	.dwtag  DW_TAG_typedef, DW_AT_name("CT__xdc_runtime_Types_Object__heap")
	.dwattr $C$DW$T$737, DW_AT_type(*$C$DW$T$725)
	.dwattr $C$DW$T$737, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$737, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$737, DW_AT_decl_line(0x10a)
	.dwattr $C$DW$T$737, DW_AT_decl_column(0x22)
$C$DW$T$196	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_HeapProxy_Handle")
	.dwattr $C$DW$T$196, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$T$196, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$196, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$196, DW_AT_decl_line(0x163)
	.dwattr $C$DW$T$196, DW_AT_decl_column(0x2c)

$C$DW$T$159	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$159, DW_AT_name("xdc_runtime_IInstance_Fxns__")
	.dwattr $C$DW$T$159, DW_AT_byte_size(0x18)
$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$370, DW_AT_name("__base")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$370, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IInstance.h")
	.dwattr $C$DW$370, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$370, DW_AT_decl_column(0x1d)
$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$371, DW_AT_name("__sysp")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$371, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IInstance.h")
	.dwattr $C$DW$371, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$371, DW_AT_decl_column(0x27)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$372, DW_AT_name("__sfxns")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$372, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IInstance.h")
	.dwattr $C$DW$372, DW_AT_decl_line(0x50)
	.dwattr $C$DW$372, DW_AT_decl_column(0x20)
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
$C$DW$T$738	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$738, DW_AT_type(*$C$DW$T$161)
$C$DW$T$739	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$739, DW_AT_type(*$C$DW$T$738)
	.dwattr $C$DW$T$739, DW_AT_address_class(0x20)
$C$DW$T$740	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IInstance_Module")
	.dwattr $C$DW$T$740, DW_AT_type(*$C$DW$T$739)
	.dwattr $C$DW$T$740, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$740, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$740, DW_AT_decl_line(0x138)
	.dwattr $C$DW$T$740, DW_AT_decl_column(0x2d)

$C$DW$T$160	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$160, DW_AT_name("xdc_runtime_IInstance_Params")
	.dwattr $C$DW$T$160, DW_AT_byte_size(0x08)
$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$373, DW_AT_name("__size")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("__size")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$373, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IInstance.h")
	.dwattr $C$DW$373, DW_AT_decl_line(0x43)
	.dwattr $C$DW$373, DW_AT_decl_column(0x0c)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$374, DW_AT_name("name")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("name")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$374, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IInstance.h")
	.dwattr $C$DW$374, DW_AT_decl_line(0x44)
	.dwattr $C$DW$374, DW_AT_decl_column(0x10)
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
$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$375, DW_AT_name("__fxns")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$375, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$375, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$375, DW_AT_decl_column(0x4f)
$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$376, DW_AT_name("__label")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("__label")
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$376, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$376, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$376, DW_AT_decl_column(0x62)
	.dwendtag $C$DW$T$163

	.dwattr $C$DW$T$163, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$163, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$T$163, DW_AT_decl_column(0x10)
$C$DW$T$741	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$741, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$T$741, DW_AT_address_class(0x20)
$C$DW$T$742	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IInstance_Handle")
	.dwattr $C$DW$T$742, DW_AT_type(*$C$DW$T$741)
	.dwattr $C$DW$T$742, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$742, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$742, DW_AT_decl_line(0x13a)
	.dwattr $C$DW$T$742, DW_AT_decl_column(0x6e)

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
$C$DW$T$743	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$743, DW_AT_type(*$C$DW$T$164)
$C$DW$T$744	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$744, DW_AT_type(*$C$DW$T$743)
	.dwattr $C$DW$T$744, DW_AT_address_class(0x20)
$C$DW$T$745	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ILogger_Module")
	.dwattr $C$DW$T$745, DW_AT_type(*$C$DW$T$744)
	.dwattr $C$DW$T$745, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$745, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$745, DW_AT_decl_line(0x57)
	.dwattr $C$DW$T$745, DW_AT_decl_column(0x2b)

$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("xdc_runtime_ILogger_Params")
	.dwattr $C$DW$T$40, DW_AT_declaration
	.dwendtag $C$DW$T$40

	.dwattr $C$DW$T$40, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x10)
$C$DW$T$746	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ILogger_Params")
	.dwattr $C$DW$T$746, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$T$746, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$746, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$746, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$746, DW_AT_decl_column(0x2b)

$C$DW$T$166	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$166, DW_AT_name("xdc_runtime_ILogger___Object")
	.dwattr $C$DW$T$166, DW_AT_byte_size(0x08)
$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$377, DW_AT_name("__fxns")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$377, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$377, DW_AT_decl_line(0x59)
	.dwattr $C$DW$377, DW_AT_decl_column(0x4b)
$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$378, DW_AT_name("__label")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("__label")
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$378, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$378, DW_AT_decl_line(0x59)
	.dwattr $C$DW$378, DW_AT_decl_column(0x5e)
	.dwendtag $C$DW$T$166

	.dwattr $C$DW$T$166, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$166, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$166, DW_AT_decl_column(0x10)
$C$DW$T$747	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$747, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$T$747, DW_AT_address_class(0x20)
$C$DW$T$748	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ILogger_Handle")
	.dwattr $C$DW$T$748, DW_AT_type(*$C$DW$T$747)
	.dwattr $C$DW$T$748, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$748, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$748, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$748, DW_AT_decl_column(0x6a)

$C$DW$T$167	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$167, DW_AT_name("xdc_runtime_IModule_Fxns__")
	.dwattr $C$DW$T$167, DW_AT_byte_size(0x18)
$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$379, DW_AT_name("__base")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$379, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IModule.h")
	.dwattr $C$DW$379, DW_AT_decl_line(0x46)
	.dwattr $C$DW$379, DW_AT_decl_column(0x1d)
$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$380, DW_AT_name("__sysp")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$380, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IModule.h")
	.dwattr $C$DW$380, DW_AT_decl_line(0x47)
	.dwattr $C$DW$380, DW_AT_decl_column(0x27)
$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$381, DW_AT_name("__sfxns")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$381, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IModule.h")
	.dwattr $C$DW$381, DW_AT_decl_line(0x48)
	.dwattr $C$DW$381, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$167

	.dwattr $C$DW$T$167, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/IModule.h")
	.dwattr $C$DW$T$167, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$167, DW_AT_decl_column(0x08)
$C$DW$T$749	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IModule_Fxns__")
	.dwattr $C$DW$T$749, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$T$749, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$749, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$749, DW_AT_decl_line(0x10)
	.dwattr $C$DW$T$749, DW_AT_decl_column(0x2b)
$C$DW$T$750	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$750, DW_AT_type(*$C$DW$T$749)
$C$DW$T$751	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$751, DW_AT_type(*$C$DW$T$750)
	.dwattr $C$DW$T$751, DW_AT_address_class(0x20)
$C$DW$T$752	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_IModule_Module")
	.dwattr $C$DW$T$752, DW_AT_type(*$C$DW$T$751)
	.dwattr $C$DW$T$752, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$752, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$752, DW_AT_decl_line(0x11)
	.dwattr $C$DW$T$752, DW_AT_decl_column(0x2b)

$C$DW$T$179	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$179, DW_AT_name("xdc_runtime_ISystemSupport_Fxns__")
	.dwattr $C$DW$T$179, DW_AT_byte_size(0x2c)
$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$382, DW_AT_name("__base")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$382, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$382, DW_AT_decl_line(0x44)
	.dwattr $C$DW$382, DW_AT_decl_column(0x1d)
$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$383, DW_AT_name("__sysp")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$383, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$383, DW_AT_decl_line(0x45)
	.dwattr $C$DW$383, DW_AT_decl_column(0x27)
$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$384, DW_AT_name("abort")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("abort")
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$384, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$384, DW_AT_decl_line(0x46)
	.dwattr $C$DW$384, DW_AT_decl_column(0x10)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$385, DW_AT_name("exit")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("exit")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$385, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$385, DW_AT_decl_line(0x47)
	.dwattr $C$DW$385, DW_AT_decl_column(0x10)
$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$386, DW_AT_name("flush")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("flush")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$386, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$386, DW_AT_decl_line(0x48)
	.dwattr $C$DW$386, DW_AT_decl_column(0x10)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$387, DW_AT_name("putch")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("putch")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$387, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$387, DW_AT_decl_line(0x49)
	.dwattr $C$DW$387, DW_AT_decl_column(0x10)
$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$388, DW_AT_name("ready")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("ready")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$388, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$388, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$388, DW_AT_decl_column(0x10)
$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$389, DW_AT_name("__sfxns")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$389, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$389, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$389, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$179

	.dwattr $C$DW$T$179, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/ISystemSupport.h")
	.dwattr $C$DW$T$179, DW_AT_decl_line(0x43)
	.dwattr $C$DW$T$179, DW_AT_decl_column(0x08)
$C$DW$T$753	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ISystemSupport_Fxns__")
	.dwattr $C$DW$T$753, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$T$753, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$753, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$753, DW_AT_decl_line(0xdb)
	.dwattr $C$DW$T$753, DW_AT_decl_column(0x32)
$C$DW$T$754	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$754, DW_AT_type(*$C$DW$T$753)
$C$DW$T$755	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$755, DW_AT_type(*$C$DW$T$754)
	.dwattr $C$DW$T$755, DW_AT_address_class(0x20)
$C$DW$T$756	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ISystemSupport_Module")
	.dwattr $C$DW$T$756, DW_AT_type(*$C$DW$T$755)
	.dwattr $C$DW$T$756, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$756, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$756, DW_AT_decl_line(0xdc)
	.dwattr $C$DW$T$756, DW_AT_decl_column(0x32)

$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("xdc_runtime_ITimestampClient_Fxns__")
	.dwattr $C$DW$T$41, DW_AT_declaration
	.dwendtag $C$DW$T$41

	.dwattr $C$DW$T$41, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x101)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x10)
$C$DW$T$757	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ITimestampClient_Fxns__")
	.dwattr $C$DW$T$757, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$T$757, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$757, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$757, DW_AT_decl_line(0x101)
	.dwattr $C$DW$T$757, DW_AT_decl_column(0x34)
$C$DW$T$758	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$758, DW_AT_type(*$C$DW$T$757)
$C$DW$T$759	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$759, DW_AT_type(*$C$DW$T$758)
	.dwattr $C$DW$T$759, DW_AT_address_class(0x20)
$C$DW$T$760	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ITimestampClient_Module")
	.dwattr $C$DW$T$760, DW_AT_type(*$C$DW$T$759)
	.dwattr $C$DW$T$760, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$760, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$760, DW_AT_decl_line(0x102)
	.dwattr $C$DW$T$760, DW_AT_decl_column(0x34)

$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("xdc_runtime_ITimestampProvider_Fxns__")
	.dwattr $C$DW$T$42, DW_AT_declaration
	.dwendtag $C$DW$T$42

	.dwattr $C$DW$T$42, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x10)
$C$DW$T$761	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ITimestampProvider_Fxns__")
	.dwattr $C$DW$T$761, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$T$761, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$761, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$761, DW_AT_decl_line(0x10f)
	.dwattr $C$DW$T$761, DW_AT_decl_column(0x36)
$C$DW$T$762	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$762, DW_AT_type(*$C$DW$T$761)
$C$DW$T$763	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$763, DW_AT_type(*$C$DW$T$762)
	.dwattr $C$DW$T$763, DW_AT_address_class(0x20)
$C$DW$T$764	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_ITimestampProvider_Module")
	.dwattr $C$DW$T$764, DW_AT_type(*$C$DW$T$763)
	.dwattr $C$DW$T$764, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$764, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$764, DW_AT_decl_line(0x110)
	.dwattr $C$DW$T$764, DW_AT_decl_column(0x36)

$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("xdc_runtime_Log_EventRec")
	.dwattr $C$DW$T$43, DW_AT_declaration
	.dwendtag $C$DW$T$43

	.dwattr $C$DW$T$43, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x10)
$C$DW$T$765	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Log_EventRec")
	.dwattr $C$DW$T$765, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$765, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$765, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$765, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$765, DW_AT_decl_column(0x29)

$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("xdc_runtime_LoggerBuf_Entry")
	.dwattr $C$DW$T$44, DW_AT_declaration
	.dwendtag $C$DW$T$44

	.dwattr $C$DW$T$44, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x10)
$C$DW$T$766	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Entry")
	.dwattr $C$DW$T$766, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$T$766, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$766, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$766, DW_AT_decl_line(0x68)
	.dwattr $C$DW$T$766, DW_AT_decl_column(0x2c)

$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_name("xdc_runtime_LoggerBuf_Fxns__")
	.dwattr $C$DW$T$45, DW_AT_declaration
	.dwendtag $C$DW$T$45

	.dwattr $C$DW$T$45, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x10)
$C$DW$T$767	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Fxns__")
	.dwattr $C$DW$T$767, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$T$767, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$767, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$767, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$T$767, DW_AT_decl_column(0x2d)
$C$DW$T$768	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$768, DW_AT_type(*$C$DW$T$767)
$C$DW$T$769	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$769, DW_AT_type(*$C$DW$T$768)
	.dwattr $C$DW$T$769, DW_AT_address_class(0x20)
$C$DW$T$770	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Module")
	.dwattr $C$DW$T$770, DW_AT_type(*$C$DW$T$769)
	.dwattr $C$DW$T$770, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$770, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$770, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$T$770, DW_AT_decl_column(0x2d)

$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("xdc_runtime_LoggerBuf_Module_GateProxy_Fxns__")
	.dwattr $C$DW$T$46, DW_AT_declaration
	.dwendtag $C$DW$T$46

	.dwattr $C$DW$T$46, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x147)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x10)
$C$DW$T$771	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Module_GateProxy_Fxns__")
	.dwattr $C$DW$T$771, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$771, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$771, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$771, DW_AT_decl_line(0x147)
	.dwattr $C$DW$T$771, DW_AT_decl_column(0x3e)
$C$DW$T$772	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$772, DW_AT_type(*$C$DW$T$771)
$C$DW$T$773	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$773, DW_AT_type(*$C$DW$T$772)
	.dwattr $C$DW$T$773, DW_AT_address_class(0x20)
$C$DW$T$774	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Module_GateProxy_Module")
	.dwattr $C$DW$T$774, DW_AT_type(*$C$DW$T$773)
	.dwattr $C$DW$T$774, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$774, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$774, DW_AT_decl_line(0x148)
	.dwattr $C$DW$T$774, DW_AT_decl_column(0x3e)

$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_name("xdc_runtime_LoggerBuf_Module_GateProxy_Params")
	.dwattr $C$DW$T$47, DW_AT_declaration
	.dwendtag $C$DW$T$47

	.dwattr $C$DW$T$47, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x149)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x10)
$C$DW$T$775	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Module_GateProxy_Params")
	.dwattr $C$DW$T$775, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$T$775, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$775, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$775, DW_AT_decl_line(0x149)
	.dwattr $C$DW$T$775, DW_AT_decl_column(0x3e)

$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("xdc_runtime_LoggerBuf_Module_State")
	.dwattr $C$DW$T$48, DW_AT_declaration
	.dwendtag $C$DW$T$48

	.dwattr $C$DW$T$48, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x10)
$C$DW$T$776	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Module_State")
	.dwattr $C$DW$T$776, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$T$776, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$776, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$776, DW_AT_decl_line(0x69)
	.dwattr $C$DW$T$776, DW_AT_decl_column(0x33)

$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("xdc_runtime_LoggerBuf_Object")
	.dwattr $C$DW$T$49, DW_AT_declaration
	.dwendtag $C$DW$T$49

	.dwattr $C$DW$T$49, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x10)
$C$DW$T$777	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Object")
	.dwattr $C$DW$T$777, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$T$777, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$777, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$777, DW_AT_decl_line(0x6d)
	.dwattr $C$DW$T$777, DW_AT_decl_column(0x2d)
$C$DW$T$778	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$778, DW_AT_type(*$C$DW$T$777)
	.dwattr $C$DW$T$778, DW_AT_address_class(0x20)
$C$DW$T$779	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Handle")
	.dwattr $C$DW$T$779, DW_AT_type(*$C$DW$T$778)
	.dwattr $C$DW$T$779, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$779, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$779, DW_AT_decl_line(0x6f)
	.dwattr $C$DW$T$779, DW_AT_decl_column(0x27)
$C$DW$T$780	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Instance")
	.dwattr $C$DW$T$780, DW_AT_type(*$C$DW$T$778)
	.dwattr $C$DW$T$780, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$780, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$780, DW_AT_decl_line(0x71)
	.dwattr $C$DW$T$780, DW_AT_decl_column(0x27)

$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("xdc_runtime_LoggerBuf_Object__")
	.dwattr $C$DW$T$50, DW_AT_declaration
	.dwendtag $C$DW$T$50

	.dwattr $C$DW$T$50, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x10)
$C$DW$T$781	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Instance_State")
	.dwattr $C$DW$T$781, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$781, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$781, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$781, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$781, DW_AT_decl_column(0x2f)

$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("xdc_runtime_LoggerBuf_Params")
	.dwattr $C$DW$T$51, DW_AT_declaration
	.dwendtag $C$DW$T$51

	.dwattr $C$DW$T$51, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x10)
$C$DW$T$782	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Params")
	.dwattr $C$DW$T$782, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$T$782, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$782, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$782, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$T$782, DW_AT_decl_column(0x2d)

$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("xdc_runtime_LoggerBuf_Struct")
	.dwattr $C$DW$T$52, DW_AT_declaration
	.dwendtag $C$DW$T$52

	.dwattr $C$DW$T$52, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x10)
$C$DW$T$783	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_Struct")
	.dwattr $C$DW$T$783, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$T$783, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$783, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$783, DW_AT_decl_line(0x6e)
	.dwattr $C$DW$T$783, DW_AT_decl_column(0x2d)

$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("xdc_runtime_LoggerBuf_TimestampProxy_Fxns__")
	.dwattr $C$DW$T$53, DW_AT_declaration
	.dwendtag $C$DW$T$53

	.dwattr $C$DW$T$53, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x140)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x10)
$C$DW$T$784	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_TimestampProxy_Fxns__")
	.dwattr $C$DW$T$784, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$784, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$784, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$784, DW_AT_decl_line(0x140)
	.dwattr $C$DW$T$784, DW_AT_decl_column(0x3c)
$C$DW$T$785	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$785, DW_AT_type(*$C$DW$T$784)
$C$DW$T$786	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$786, DW_AT_type(*$C$DW$T$785)
	.dwattr $C$DW$T$786, DW_AT_address_class(0x20)
$C$DW$T$787	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerBuf_TimestampProxy_Module")
	.dwattr $C$DW$T$787, DW_AT_type(*$C$DW$T$786)
	.dwattr $C$DW$T$787, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$787, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$787, DW_AT_decl_line(0x141)
	.dwattr $C$DW$T$787, DW_AT_decl_column(0x3c)

$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("xdc_runtime_LoggerCallback_Fxns__")
	.dwattr $C$DW$T$54, DW_AT_declaration
	.dwendtag $C$DW$T$54

	.dwattr $C$DW$T$54, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x77)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x10)
$C$DW$T$788	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Fxns__")
	.dwattr $C$DW$T$788, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$T$788, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$788, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$788, DW_AT_decl_line(0x77)
	.dwattr $C$DW$T$788, DW_AT_decl_column(0x32)
$C$DW$T$789	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$789, DW_AT_type(*$C$DW$T$788)
$C$DW$T$790	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$790, DW_AT_type(*$C$DW$T$789)
	.dwattr $C$DW$T$790, DW_AT_address_class(0x20)
$C$DW$T$791	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Module")
	.dwattr $C$DW$T$791, DW_AT_type(*$C$DW$T$790)
	.dwattr $C$DW$T$791, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$791, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$791, DW_AT_decl_line(0x78)
	.dwattr $C$DW$T$791, DW_AT_decl_column(0x32)

$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("xdc_runtime_LoggerCallback_Object")
	.dwattr $C$DW$T$55, DW_AT_declaration
	.dwendtag $C$DW$T$55

	.dwattr $C$DW$T$55, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x10)
$C$DW$T$792	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Object")
	.dwattr $C$DW$T$792, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$T$792, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$792, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$792, DW_AT_decl_line(0x7a)
	.dwattr $C$DW$T$792, DW_AT_decl_column(0x32)
$C$DW$T$793	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$793, DW_AT_type(*$C$DW$T$792)
	.dwattr $C$DW$T$793, DW_AT_address_class(0x20)
$C$DW$T$794	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Handle")
	.dwattr $C$DW$T$794, DW_AT_type(*$C$DW$T$793)
	.dwattr $C$DW$T$794, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$794, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$794, DW_AT_decl_line(0x7c)
	.dwattr $C$DW$T$794, DW_AT_decl_column(0x2c)
$C$DW$T$795	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Instance")
	.dwattr $C$DW$T$795, DW_AT_type(*$C$DW$T$793)
	.dwattr $C$DW$T$795, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$795, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$795, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$T$795, DW_AT_decl_column(0x2c)

$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("xdc_runtime_LoggerCallback_Object__")
	.dwattr $C$DW$T$56, DW_AT_declaration
	.dwendtag $C$DW$T$56

	.dwattr $C$DW$T$56, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x10)
$C$DW$T$796	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Instance_State")
	.dwattr $C$DW$T$796, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$796, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$796, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$796, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$T$796, DW_AT_decl_column(0x34)

$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("xdc_runtime_LoggerCallback_Params")
	.dwattr $C$DW$T$57, DW_AT_declaration
	.dwendtag $C$DW$T$57

	.dwattr $C$DW$T$57, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x10)
$C$DW$T$797	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Params")
	.dwattr $C$DW$T$797, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$T$797, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$797, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$797, DW_AT_decl_line(0x79)
	.dwattr $C$DW$T$797, DW_AT_decl_column(0x32)

$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("xdc_runtime_LoggerCallback_Struct")
	.dwattr $C$DW$T$58, DW_AT_declaration
	.dwendtag $C$DW$T$58

	.dwattr $C$DW$T$58, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x10)
$C$DW$T$798	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerCallback_Struct")
	.dwattr $C$DW$T$798, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$T$798, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$798, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$798, DW_AT_decl_line(0x7b)
	.dwattr $C$DW$T$798, DW_AT_decl_column(0x32)

$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("xdc_runtime_LoggerSys_Fxns__")
	.dwattr $C$DW$T$59, DW_AT_declaration
	.dwendtag $C$DW$T$59

	.dwattr $C$DW$T$59, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x10)
$C$DW$T$799	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Fxns__")
	.dwattr $C$DW$T$799, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$T$799, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$799, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$799, DW_AT_decl_line(0x84)
	.dwattr $C$DW$T$799, DW_AT_decl_column(0x2d)
$C$DW$T$800	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$800, DW_AT_type(*$C$DW$T$799)
$C$DW$T$801	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$801, DW_AT_type(*$C$DW$T$800)
	.dwattr $C$DW$T$801, DW_AT_address_class(0x20)
$C$DW$T$802	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Module")
	.dwattr $C$DW$T$802, DW_AT_type(*$C$DW$T$801)
	.dwattr $C$DW$T$802, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$802, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$802, DW_AT_decl_line(0x85)
	.dwattr $C$DW$T$802, DW_AT_decl_column(0x2d)

$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("xdc_runtime_LoggerSys_Object")
	.dwattr $C$DW$T$60, DW_AT_declaration
	.dwendtag $C$DW$T$60

	.dwattr $C$DW$T$60, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x87)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x10)
$C$DW$T$803	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Object")
	.dwattr $C$DW$T$803, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$803, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$803, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$803, DW_AT_decl_line(0x87)
	.dwattr $C$DW$T$803, DW_AT_decl_column(0x2d)
$C$DW$T$804	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$804, DW_AT_type(*$C$DW$T$803)
	.dwattr $C$DW$T$804, DW_AT_address_class(0x20)
$C$DW$T$805	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Handle")
	.dwattr $C$DW$T$805, DW_AT_type(*$C$DW$T$804)
	.dwattr $C$DW$T$805, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$805, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$805, DW_AT_decl_line(0x89)
	.dwattr $C$DW$T$805, DW_AT_decl_column(0x27)
$C$DW$T$806	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Instance")
	.dwattr $C$DW$T$806, DW_AT_type(*$C$DW$T$804)
	.dwattr $C$DW$T$806, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$806, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$806, DW_AT_decl_line(0x8b)
	.dwattr $C$DW$T$806, DW_AT_decl_column(0x27)

$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("xdc_runtime_LoggerSys_Object__")
	.dwattr $C$DW$T$61, DW_AT_declaration
	.dwendtag $C$DW$T$61

	.dwattr $C$DW$T$61, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x10)
$C$DW$T$807	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Instance_State")
	.dwattr $C$DW$T$807, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$T$807, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$807, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$807, DW_AT_decl_line(0x8a)
	.dwattr $C$DW$T$807, DW_AT_decl_column(0x2f)

$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("xdc_runtime_LoggerSys_Params")
	.dwattr $C$DW$T$62, DW_AT_declaration
	.dwendtag $C$DW$T$62

	.dwattr $C$DW$T$62, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x10)
$C$DW$T$808	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Params")
	.dwattr $C$DW$T$808, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$T$808, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$808, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$808, DW_AT_decl_line(0x86)
	.dwattr $C$DW$T$808, DW_AT_decl_column(0x2d)

$C$DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$63, DW_AT_name("xdc_runtime_LoggerSys_Struct")
	.dwattr $C$DW$T$63, DW_AT_declaration
	.dwendtag $C$DW$T$63

	.dwattr $C$DW$T$63, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x88)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x10)
$C$DW$T$809	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_Struct")
	.dwattr $C$DW$T$809, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$T$809, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$809, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$809, DW_AT_decl_line(0x88)
	.dwattr $C$DW$T$809, DW_AT_decl_column(0x2d)

$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("xdc_runtime_LoggerSys_TimestampProxy_Fxns__")
	.dwattr $C$DW$T$64, DW_AT_declaration
	.dwendtag $C$DW$T$64

	.dwattr $C$DW$T$64, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0x150)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x10)
$C$DW$T$810	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_TimestampProxy_Fxns__")
	.dwattr $C$DW$T$810, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$T$810, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$810, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$810, DW_AT_decl_line(0x150)
	.dwattr $C$DW$T$810, DW_AT_decl_column(0x3c)
$C$DW$T$811	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$811, DW_AT_type(*$C$DW$T$810)
$C$DW$T$812	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$812, DW_AT_type(*$C$DW$T$811)
	.dwattr $C$DW$T$812, DW_AT_address_class(0x20)
$C$DW$T$813	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_LoggerSys_TimestampProxy_Module")
	.dwattr $C$DW$T$813, DW_AT_type(*$C$DW$T$812)
	.dwattr $C$DW$T$813, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$813, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$813, DW_AT_decl_line(0x151)
	.dwattr $C$DW$T$813, DW_AT_decl_column(0x3c)

$C$DW$T$186	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$186, DW_AT_name("xdc_runtime_Main_Module_GateProxy_Fxns__")
	.dwattr $C$DW$T$186, DW_AT_byte_size(0x24)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$390, DW_AT_name("__base")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$390, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$390, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$390, DW_AT_decl_column(0x1d)
$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$391, DW_AT_name("__sysp")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$391, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$391, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$391, DW_AT_decl_column(0x27)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$392, DW_AT_name("query")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("query")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$392, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$392, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$392, DW_AT_decl_column(0x10)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$393, DW_AT_name("enter")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("enter")
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$393, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$393, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$393, DW_AT_decl_column(0x10)
$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$394, DW_AT_name("leave")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("leave")
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$394, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$394, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$394, DW_AT_decl_column(0x10)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$395, DW_AT_name("__sfxns")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$395, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$395, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$395, DW_AT_decl_column(0x20)
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
$C$DW$T$814	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Main_Module_GateProxy_Module")
	.dwattr $C$DW$T$814, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$T$814, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$814, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$814, DW_AT_decl_line(0x158)
	.dwattr $C$DW$T$814, DW_AT_decl_column(0x39)

$C$DW$T$187	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$187, DW_AT_name("xdc_runtime_Main_Module_GateProxy_Params")
	.dwattr $C$DW$T$187, DW_AT_byte_size(0x18)
$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$396, DW_AT_name("__size")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("__size")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$396, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$396, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$396, DW_AT_decl_column(0x0c)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$397, DW_AT_name("__self")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("__self")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$397, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$397, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$397, DW_AT_decl_column(0x11)
$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$398, DW_AT_name("__fxns")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$398, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$398, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$398, DW_AT_decl_column(0x0b)
$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$399, DW_AT_name("instance")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("instance")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$399, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$399, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$399, DW_AT_decl_column(0x23)
$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$400, DW_AT_name("__iprms")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("__iprms")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$400, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$400, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$400, DW_AT_decl_column(0x22)
	.dwendtag $C$DW$T$187

	.dwattr $C$DW$T$187, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$187, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$T$187, DW_AT_decl_column(0x08)
$C$DW$T$815	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Main_Module_GateProxy_Params")
	.dwattr $C$DW$T$815, DW_AT_type(*$C$DW$T$187)
	.dwattr $C$DW$T$815, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$815, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$815, DW_AT_decl_line(0x159)
	.dwattr $C$DW$T$815, DW_AT_decl_column(0x39)

$C$DW$T$194	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$194, DW_AT_name("xdc_runtime_Main_Module_GateProxy_Struct")
	.dwattr $C$DW$T$194, DW_AT_byte_size(0x08)
$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$190)
	.dwattr $C$DW$401, DW_AT_name("__fxns")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$401, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$401, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$401, DW_AT_decl_column(0x35)
$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$402, DW_AT_name("__name")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("__name")
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$402, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$402, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$402, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$194

	.dwattr $C$DW$T$194, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Main_Module_GateProxy.h")
	.dwattr $C$DW$T$194, DW_AT_decl_line(0xa4)
	.dwattr $C$DW$T$194, DW_AT_decl_column(0x08)

$C$DW$T$205	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$205, DW_AT_name("xdc_runtime_Memory_HeapProxy_Fxns__")
	.dwattr $C$DW$T$205, DW_AT_byte_size(0x28)
$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$403, DW_AT_name("__base")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$403, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$403, DW_AT_decl_line(0xaa)
	.dwattr $C$DW$403, DW_AT_decl_column(0x1d)
$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$404, DW_AT_name("__sysp")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$404, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$404, DW_AT_decl_line(0xab)
	.dwattr $C$DW$404, DW_AT_decl_column(0x27)
$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$405, DW_AT_name("alloc")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("alloc")
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$405, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$405, DW_AT_decl_line(0xac)
	.dwattr $C$DW$405, DW_AT_decl_column(0x0f)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$406, DW_AT_name("free")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("free")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$406, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$406, DW_AT_decl_line(0xad)
	.dwattr $C$DW$406, DW_AT_decl_column(0x10)
$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$202)
	.dwattr $C$DW$407, DW_AT_name("isBlocking")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("isBlocking")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$407, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$407, DW_AT_decl_line(0xae)
	.dwattr $C$DW$407, DW_AT_decl_column(0x10)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$408, DW_AT_name("getStats")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("getStats")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$408, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$408, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$408, DW_AT_decl_column(0x10)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$409, DW_AT_name("__sfxns")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$409, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$409, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$409, DW_AT_decl_column(0x20)
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
$C$DW$T$816	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_HeapProxy_Module")
	.dwattr $C$DW$T$816, DW_AT_type(*$C$DW$T$209)
	.dwattr $C$DW$T$816, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$816, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$816, DW_AT_decl_line(0x161)
	.dwattr $C$DW$T$816, DW_AT_decl_column(0x34)

$C$DW$T$206	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$206, DW_AT_name("xdc_runtime_Memory_HeapProxy_Params")
	.dwattr $C$DW$T$206, DW_AT_byte_size(0x18)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$410, DW_AT_name("__size")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("__size")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$410, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$410, DW_AT_decl_line(0x96)
	.dwattr $C$DW$410, DW_AT_decl_column(0x0c)
$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$411, DW_AT_name("__self")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("__self")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$411, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$411, DW_AT_decl_line(0x97)
	.dwattr $C$DW$411, DW_AT_decl_column(0x11)
$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$412, DW_AT_name("__fxns")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$412, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$412, DW_AT_decl_line(0x98)
	.dwattr $C$DW$412, DW_AT_decl_column(0x0b)
$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$413, DW_AT_name("instance")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("instance")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$413, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$413, DW_AT_decl_line(0x99)
	.dwattr $C$DW$413, DW_AT_decl_column(0x23)
$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$414, DW_AT_name("__iprms")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("__iprms")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$414, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$414, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$414, DW_AT_decl_column(0x22)
	.dwendtag $C$DW$T$206

	.dwattr $C$DW$T$206, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$T$206, DW_AT_decl_line(0x95)
	.dwattr $C$DW$T$206, DW_AT_decl_column(0x08)
$C$DW$T$817	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_HeapProxy_Params")
	.dwattr $C$DW$T$817, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$T$817, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$817, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$817, DW_AT_decl_line(0x162)
	.dwattr $C$DW$T$817, DW_AT_decl_column(0x34)

$C$DW$T$210	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$210, DW_AT_name("xdc_runtime_Memory_HeapProxy_Struct")
	.dwattr $C$DW$T$210, DW_AT_byte_size(0x08)
$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$209)
	.dwattr $C$DW$415, DW_AT_name("__fxns")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$415, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$415, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$415, DW_AT_decl_column(0x30)
$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$416, DW_AT_name("__name")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("__name")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$416, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/Memory_HeapProxy.h")
	.dwattr $C$DW$416, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$416, DW_AT_decl_column(0x20)
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
$C$DW$T$818	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Memory_Module_State")
	.dwattr $C$DW$T$818, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$T$818, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$818, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$818, DW_AT_decl_line(0x97)
	.dwattr $C$DW$T$818, DW_AT_decl_column(0x30)

$C$DW$T$214	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$214, DW_AT_name("xdc_runtime_Memory_Stats")
	.dwattr $C$DW$T$214, DW_AT_byte_size(0x0c)
$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$213)
	.dwattr $C$DW$417, DW_AT_name("totalSize")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("totalSize")
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$417, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$417, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$417, DW_AT_decl_column(0x1d)
$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$213)
	.dwattr $C$DW$418, DW_AT_name("totalFreeSize")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("totalFreeSize")
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$418, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$418, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$418, DW_AT_decl_column(0x1d)
$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$213)
	.dwattr $C$DW$419, DW_AT_name("largestFreeSize")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("largestFreeSize")
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$419, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Memory.h")
	.dwattr $C$DW$419, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$419, DW_AT_decl_column(0x1d)
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
$C$DW$T$819	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Registry_Module_State")
	.dwattr $C$DW$T$819, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$T$819, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$819, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$819, DW_AT_decl_line(0xc1)
	.dwattr $C$DW$T$819, DW_AT_decl_column(0x32)

$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_name("xdc_runtime_Rta_CommandPacket")
	.dwattr $C$DW$T$67, DW_AT_declaration
	.dwendtag $C$DW$T$67

	.dwattr $C$DW$T$67, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$67, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$T$67, DW_AT_decl_column(0x10)
$C$DW$T$820	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Rta_CommandPacket")
	.dwattr $C$DW$T$820, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$T$820, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$820, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$820, DW_AT_decl_line(0xc7)
	.dwattr $C$DW$T$820, DW_AT_decl_column(0x2e)

$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("xdc_runtime_Rta_ResponsePacket")
	.dwattr $C$DW$T$68, DW_AT_declaration
	.dwendtag $C$DW$T$68

	.dwattr $C$DW$T$68, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$68, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$T$68, DW_AT_decl_column(0x10)
$C$DW$T$821	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Rta_ResponsePacket")
	.dwattr $C$DW$T$821, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$T$821, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$821, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$821, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$T$821, DW_AT_decl_column(0x2f)

$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("xdc_runtime_Startup_Module_State")
	.dwattr $C$DW$T$69, DW_AT_declaration
	.dwendtag $C$DW$T$69

	.dwattr $C$DW$T$69, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$69, DW_AT_decl_line(0xce)
	.dwattr $C$DW$T$69, DW_AT_decl_column(0x10)
$C$DW$T$822	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Startup_Module_State")
	.dwattr $C$DW$T$822, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$T$822, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$822, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$822, DW_AT_decl_line(0xce)
	.dwattr $C$DW$T$822, DW_AT_decl_column(0x31)

$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("xdc_runtime_SysCallback_Fxns__")
	.dwattr $C$DW$T$70, DW_AT_declaration
	.dwendtag $C$DW$T$70

	.dwattr $C$DW$T$70, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$70, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$T$70, DW_AT_decl_column(0x10)
$C$DW$T$823	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_SysCallback_Fxns__")
	.dwattr $C$DW$T$823, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$T$823, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$823, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$823, DW_AT_decl_line(0xe2)
	.dwattr $C$DW$T$823, DW_AT_decl_column(0x2f)
$C$DW$T$824	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$824, DW_AT_type(*$C$DW$T$823)
$C$DW$T$825	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$825, DW_AT_type(*$C$DW$T$824)
	.dwattr $C$DW$T$825, DW_AT_address_class(0x20)
$C$DW$T$826	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_SysCallback_Module")
	.dwattr $C$DW$T$826, DW_AT_type(*$C$DW$T$825)
	.dwattr $C$DW$T$826, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$826, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$826, DW_AT_decl_line(0xe3)
	.dwattr $C$DW$T$826, DW_AT_decl_column(0x2f)

$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_name("xdc_runtime_SysMin_Fxns__")
	.dwattr $C$DW$T$71, DW_AT_declaration
	.dwendtag $C$DW$T$71

	.dwattr $C$DW$T$71, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$71, DW_AT_decl_line(0xea)
	.dwattr $C$DW$T$71, DW_AT_decl_column(0x10)
$C$DW$T$827	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_SysMin_Fxns__")
	.dwattr $C$DW$T$827, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$T$827, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$827, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$827, DW_AT_decl_line(0xea)
	.dwattr $C$DW$T$827, DW_AT_decl_column(0x2a)
$C$DW$T$828	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$828, DW_AT_type(*$C$DW$T$827)
$C$DW$T$829	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$829, DW_AT_type(*$C$DW$T$828)
	.dwattr $C$DW$T$829, DW_AT_address_class(0x20)
$C$DW$T$830	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_SysMin_Module")
	.dwattr $C$DW$T$830, DW_AT_type(*$C$DW$T$829)
	.dwattr $C$DW$T$830, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$830, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$830, DW_AT_decl_line(0xeb)
	.dwattr $C$DW$T$830, DW_AT_decl_column(0x2a)

$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("xdc_runtime_SysMin_Module_State")
	.dwattr $C$DW$T$72, DW_AT_declaration
	.dwendtag $C$DW$T$72

	.dwattr $C$DW$T$72, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$72, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$T$72, DW_AT_decl_column(0x10)
$C$DW$T$831	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_SysMin_Module_State")
	.dwattr $C$DW$T$831, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$T$831, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$831, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$831, DW_AT_decl_line(0xe9)
	.dwattr $C$DW$T$831, DW_AT_decl_column(0x30)

$C$DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$73, DW_AT_name("xdc_runtime_SysStd_Fxns__")
	.dwattr $C$DW$T$73, DW_AT_declaration
	.dwendtag $C$DW$T$73

	.dwattr $C$DW$T$73, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$73, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$T$73, DW_AT_decl_column(0x10)
$C$DW$T$832	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_SysStd_Fxns__")
	.dwattr $C$DW$T$832, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$T$832, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$832, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$832, DW_AT_decl_line(0xf1)
	.dwattr $C$DW$T$832, DW_AT_decl_column(0x2a)
$C$DW$T$833	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$833, DW_AT_type(*$C$DW$T$832)
$C$DW$T$834	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$834, DW_AT_type(*$C$DW$T$833)
	.dwattr $C$DW$T$834, DW_AT_address_class(0x20)
$C$DW$T$835	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_SysStd_Module")
	.dwattr $C$DW$T$835, DW_AT_type(*$C$DW$T$834)
	.dwattr $C$DW$T$835, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$835, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$835, DW_AT_decl_line(0xf2)
	.dwattr $C$DW$T$835, DW_AT_decl_column(0x2a)

$C$DW$T$220	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$220, DW_AT_name("xdc_runtime_System_Module_GateProxy_Fxns__")
	.dwattr $C$DW$T$220, DW_AT_byte_size(0x24)
$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$420, DW_AT_name("__base")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$420, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$420, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$420, DW_AT_decl_column(0x1d)
$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$421, DW_AT_name("__sysp")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$421, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$421, DW_AT_decl_line(0xb1)
	.dwattr $C$DW$421, DW_AT_decl_column(0x27)
$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$422, DW_AT_name("query")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("query")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$422, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$422, DW_AT_decl_line(0xb2)
	.dwattr $C$DW$422, DW_AT_decl_column(0x10)
$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$217)
	.dwattr $C$DW$423, DW_AT_name("enter")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("enter")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$423, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$423, DW_AT_decl_line(0xb3)
	.dwattr $C$DW$423, DW_AT_decl_column(0x10)
$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$424, DW_AT_name("leave")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("leave")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$424, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$424, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$424, DW_AT_decl_column(0x10)
$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$425, DW_AT_name("__sfxns")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$425, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$425, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$425, DW_AT_decl_column(0x20)
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
$C$DW$T$836	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_Module_GateProxy_Module")
	.dwattr $C$DW$T$836, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$T$836, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$836, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$836, DW_AT_decl_line(0x171)
	.dwattr $C$DW$T$836, DW_AT_decl_column(0x3b)

$C$DW$T$221	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$221, DW_AT_name("xdc_runtime_System_Module_GateProxy_Params")
	.dwattr $C$DW$T$221, DW_AT_byte_size(0x18)
$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$426, DW_AT_name("__size")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("__size")
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$426, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$426, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$426, DW_AT_decl_column(0x0c)
$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$427, DW_AT_name("__self")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("__self")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$427, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$427, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$427, DW_AT_decl_column(0x11)
$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$428, DW_AT_name("__fxns")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$428, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$428, DW_AT_decl_line(0x9e)
	.dwattr $C$DW$428, DW_AT_decl_column(0x0b)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$429, DW_AT_name("instance")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("instance")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$429, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$429, DW_AT_decl_line(0x9f)
	.dwattr $C$DW$429, DW_AT_decl_column(0x23)
$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$430, DW_AT_name("__iprms")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("__iprms")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$430, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$430, DW_AT_decl_line(0xa0)
	.dwattr $C$DW$430, DW_AT_decl_column(0x22)
	.dwendtag $C$DW$T$221

	.dwattr $C$DW$T$221, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$T$221, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$T$221, DW_AT_decl_column(0x08)
$C$DW$T$837	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_Module_GateProxy_Params")
	.dwattr $C$DW$T$837, DW_AT_type(*$C$DW$T$221)
	.dwattr $C$DW$T$837, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$837, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$837, DW_AT_decl_line(0x172)
	.dwattr $C$DW$T$837, DW_AT_decl_column(0x3b)

$C$DW$T$225	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$225, DW_AT_name("xdc_runtime_System_Module_GateProxy_Struct")
	.dwattr $C$DW$T$225, DW_AT_byte_size(0x08)
$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$224)
	.dwattr $C$DW$431, DW_AT_name("__fxns")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("__fxns")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$431, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$431, DW_AT_decl_line(0xa5)
	.dwattr $C$DW$431, DW_AT_decl_column(0x37)
$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$432, DW_AT_name("__name")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("__name")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$432, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_Module_GateProxy.h")
	.dwattr $C$DW$432, DW_AT_decl_line(0xa6)
	.dwattr $C$DW$432, DW_AT_decl_column(0x20)
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
$C$DW$T$838	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_Module_State")
	.dwattr $C$DW$T$838, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$T$838, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$838, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$838, DW_AT_decl_line(0xd5)
	.dwattr $C$DW$T$838, DW_AT_decl_column(0x30)

$C$DW$T$227	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$227, DW_AT_name("xdc_runtime_System_ParseData")
	.dwattr $C$DW$T$227, DW_AT_byte_size(0x20)
$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$433, DW_AT_name("width")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("width")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$433, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$433, DW_AT_decl_line(0x51)
	.dwattr $C$DW$433, DW_AT_decl_column(0x0d)
$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$434, DW_AT_name("lFlag")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("lFlag")
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$434, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$434, DW_AT_decl_line(0x52)
	.dwattr $C$DW$434, DW_AT_decl_column(0x0e)
$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$435, DW_AT_name("lJust")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("lJust")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$435, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$435, DW_AT_decl_line(0x53)
	.dwattr $C$DW$435, DW_AT_decl_column(0x0e)
$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$436, DW_AT_name("precis")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("precis")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$436, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$436, DW_AT_decl_line(0x54)
	.dwattr $C$DW$436, DW_AT_decl_column(0x0d)
$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$437, DW_AT_name("len")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$437, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$437, DW_AT_decl_line(0x55)
	.dwattr $C$DW$437, DW_AT_decl_column(0x0d)
$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$438, DW_AT_name("zpad")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("zpad")
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$438, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$438, DW_AT_decl_line(0x56)
	.dwattr $C$DW$438, DW_AT_decl_column(0x0d)
$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$226)
	.dwattr $C$DW$439, DW_AT_name("end")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("end")
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$439, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$439, DW_AT_decl_line(0x57)
	.dwattr $C$DW$439, DW_AT_decl_column(0x0f)
$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$440, DW_AT_name("aFlag")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("aFlag")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$440, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$440, DW_AT_decl_line(0x58)
	.dwattr $C$DW$440, DW_AT_decl_column(0x0e)
$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$226)
	.dwattr $C$DW$441, DW_AT_name("ptr")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("ptr")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$441, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$441, DW_AT_decl_line(0x59)
	.dwattr $C$DW$441, DW_AT_decl_column(0x0f)
	.dwendtag $C$DW$T$227

	.dwattr $C$DW$T$227, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/System.h")
	.dwattr $C$DW$T$227, DW_AT_decl_line(0x50)
	.dwattr $C$DW$T$227, DW_AT_decl_column(0x08)
$C$DW$T$546	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_ParseData")
	.dwattr $C$DW$T$546, DW_AT_type(*$C$DW$T$227)
	.dwattr $C$DW$T$546, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$546, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$546, DW_AT_decl_line(0xd4)
	.dwattr $C$DW$T$546, DW_AT_decl_column(0x2d)
$C$DW$T$547	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$547, DW_AT_type(*$C$DW$T$546)
	.dwattr $C$DW$T$547, DW_AT_address_class(0x20)

$C$DW$T$228	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$228, DW_AT_name("xdc_runtime_System_SupportProxy_Fxns__")
	.dwattr $C$DW$T$228, DW_AT_byte_size(0x2c)
$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$442, DW_AT_name("__base")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("__base")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$442, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$442, DW_AT_decl_line(0x93)
	.dwattr $C$DW$442, DW_AT_decl_column(0x1d)
$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$443, DW_AT_name("__sysp")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("__sysp")
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$443, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$443, DW_AT_decl_line(0x94)
	.dwattr $C$DW$443, DW_AT_decl_column(0x27)
$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$444, DW_AT_name("abort")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("abort")
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$444, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$444, DW_AT_decl_line(0x95)
	.dwattr $C$DW$444, DW_AT_decl_column(0x10)
$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$445, DW_AT_name("exit")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("exit")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$445, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$445, DW_AT_decl_line(0x96)
	.dwattr $C$DW$445, DW_AT_decl_column(0x10)
$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$446, DW_AT_name("flush")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("flush")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$446, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$446, DW_AT_decl_line(0x97)
	.dwattr $C$DW$446, DW_AT_decl_column(0x10)
$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$447, DW_AT_name("putch")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("putch")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$447, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$447, DW_AT_decl_line(0x98)
	.dwattr $C$DW$447, DW_AT_decl_column(0x10)
$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$448, DW_AT_name("ready")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("ready")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$448, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$448, DW_AT_decl_line(0x99)
	.dwattr $C$DW$448, DW_AT_decl_column(0x10)
$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$449, DW_AT_name("__sfxns")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("__sfxns")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$449, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$449, DW_AT_decl_line(0x9a)
	.dwattr $C$DW$449, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$228

	.dwattr $C$DW$T$228, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/System_SupportProxy.h")
	.dwattr $C$DW$T$228, DW_AT_decl_line(0x92)
	.dwattr $C$DW$T$228, DW_AT_decl_column(0x08)
$C$DW$T$839	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_SupportProxy_Fxns__")
	.dwattr $C$DW$T$839, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$T$839, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$839, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$839, DW_AT_decl_line(0x169)
	.dwattr $C$DW$T$839, DW_AT_decl_column(0x37)
$C$DW$T$840	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$840, DW_AT_type(*$C$DW$T$839)
$C$DW$T$841	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$841, DW_AT_type(*$C$DW$T$840)
	.dwattr $C$DW$T$841, DW_AT_address_class(0x20)
$C$DW$T$842	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_System_SupportProxy_Module")
	.dwattr $C$DW$T$842, DW_AT_type(*$C$DW$T$841)
	.dwattr $C$DW$T$842, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$842, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$842, DW_AT_decl_line(0x16a)
	.dwattr $C$DW$T$842, DW_AT_decl_column(0x37)

$C$DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$75, DW_AT_name("xdc_runtime_Text_MatchVisState")
	.dwattr $C$DW$T$75, DW_AT_declaration
	.dwendtag $C$DW$T$75

	.dwattr $C$DW$T$75, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$75, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$T$75, DW_AT_decl_column(0x10)
$C$DW$T$843	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Text_MatchVisState")
	.dwattr $C$DW$T$843, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$T$843, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$843, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$843, DW_AT_decl_line(0xf9)
	.dwattr $C$DW$T$843, DW_AT_decl_column(0x2f)

$C$DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$76, DW_AT_name("xdc_runtime_Text_Module_State")
	.dwattr $C$DW$T$76, DW_AT_declaration
	.dwendtag $C$DW$T$76

	.dwattr $C$DW$T$76, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$76, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$T$76, DW_AT_decl_column(0x10)
$C$DW$T$844	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Text_Module_State")
	.dwattr $C$DW$T$844, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$T$844, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$844, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$844, DW_AT_decl_line(0xfb)
	.dwattr $C$DW$T$844, DW_AT_decl_column(0x2e)

$C$DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$77, DW_AT_name("xdc_runtime_Text_Node")
	.dwattr $C$DW$T$77, DW_AT_declaration
	.dwendtag $C$DW$T$77

	.dwattr $C$DW$T$77, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$77, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$T$77, DW_AT_decl_column(0x10)
$C$DW$T$845	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Text_Node")
	.dwattr $C$DW$T$845, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$T$845, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$845, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$845, DW_AT_decl_line(0xf8)
	.dwattr $C$DW$T$845, DW_AT_decl_column(0x26)

$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("xdc_runtime_Text_PrintVisState")
	.dwattr $C$DW$T$78, DW_AT_declaration
	.dwendtag $C$DW$T$78

	.dwattr $C$DW$T$78, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$78, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$T$78, DW_AT_decl_column(0x10)
$C$DW$T$846	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Text_PrintVisState")
	.dwattr $C$DW$T$846, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$T$846, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$846, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$846, DW_AT_decl_line(0xfa)
	.dwattr $C$DW$T$846, DW_AT_decl_column(0x2f)

$C$DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$79, DW_AT_name("xdc_runtime_TimestampNull_Fxns__")
	.dwattr $C$DW$T$79, DW_AT_declaration
	.dwendtag $C$DW$T$79

	.dwattr $C$DW$T$79, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$79, DW_AT_decl_line(0x116)
	.dwattr $C$DW$T$79, DW_AT_decl_column(0x10)
$C$DW$T$847	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_TimestampNull_Fxns__")
	.dwattr $C$DW$T$847, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$T$847, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$847, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$847, DW_AT_decl_line(0x116)
	.dwattr $C$DW$T$847, DW_AT_decl_column(0x31)
$C$DW$T$848	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$848, DW_AT_type(*$C$DW$T$847)
$C$DW$T$849	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$849, DW_AT_type(*$C$DW$T$848)
	.dwattr $C$DW$T$849, DW_AT_address_class(0x20)
$C$DW$T$850	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_TimestampNull_Module")
	.dwattr $C$DW$T$850, DW_AT_type(*$C$DW$T$849)
	.dwattr $C$DW$T$850, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$850, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$850, DW_AT_decl_line(0x117)
	.dwattr $C$DW$T$850, DW_AT_decl_column(0x31)

$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("xdc_runtime_TimestampStd_Fxns__")
	.dwattr $C$DW$T$80, DW_AT_declaration
	.dwendtag $C$DW$T$80

	.dwattr $C$DW$T$80, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$80, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$T$80, DW_AT_decl_column(0x10)
$C$DW$T$851	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_TimestampStd_Fxns__")
	.dwattr $C$DW$T$851, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$T$851, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$851, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$851, DW_AT_decl_line(0x11d)
	.dwattr $C$DW$T$851, DW_AT_decl_column(0x30)
$C$DW$T$852	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$852, DW_AT_type(*$C$DW$T$851)
$C$DW$T$853	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$853, DW_AT_type(*$C$DW$T$852)
	.dwattr $C$DW$T$853, DW_AT_address_class(0x20)
$C$DW$T$854	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_TimestampStd_Module")
	.dwattr $C$DW$T$854, DW_AT_type(*$C$DW$T$853)
	.dwattr $C$DW$T$854, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$854, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$854, DW_AT_decl_line(0x11e)
	.dwattr $C$DW$T$854, DW_AT_decl_column(0x30)

$C$DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$81, DW_AT_name("xdc_runtime_Timestamp_Fxns__")
	.dwattr $C$DW$T$81, DW_AT_declaration
	.dwendtag $C$DW$T$81

	.dwattr $C$DW$T$81, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$81, DW_AT_decl_line(0x108)
	.dwattr $C$DW$T$81, DW_AT_decl_column(0x10)
$C$DW$T$855	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Timestamp_Fxns__")
	.dwattr $C$DW$T$855, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$855, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$855, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$855, DW_AT_decl_line(0x108)
	.dwattr $C$DW$T$855, DW_AT_decl_column(0x2d)
$C$DW$T$856	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$856, DW_AT_type(*$C$DW$T$855)
$C$DW$T$857	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$857, DW_AT_type(*$C$DW$T$856)
	.dwattr $C$DW$T$857, DW_AT_address_class(0x20)
$C$DW$T$858	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Timestamp_Module")
	.dwattr $C$DW$T$858, DW_AT_type(*$C$DW$T$857)
	.dwattr $C$DW$T$858, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$858, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$858, DW_AT_decl_line(0x109)
	.dwattr $C$DW$T$858, DW_AT_decl_column(0x2d)

$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("xdc_runtime_Timestamp_SupportProxy_Fxns__")
	.dwattr $C$DW$T$82, DW_AT_declaration
	.dwendtag $C$DW$T$82

	.dwattr $C$DW$T$82, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$82, DW_AT_decl_line(0x179)
	.dwattr $C$DW$T$82, DW_AT_decl_column(0x10)
$C$DW$T$859	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Timestamp_SupportProxy_Fxns__")
	.dwattr $C$DW$T$859, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$T$859, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$859, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$859, DW_AT_decl_line(0x179)
	.dwattr $C$DW$T$859, DW_AT_decl_column(0x3a)
$C$DW$T$860	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$860, DW_AT_type(*$C$DW$T$859)
$C$DW$T$861	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$861, DW_AT_type(*$C$DW$T$860)
	.dwattr $C$DW$T$861, DW_AT_address_class(0x20)
$C$DW$T$862	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Timestamp_SupportProxy_Module")
	.dwattr $C$DW$T$862, DW_AT_type(*$C$DW$T$861)
	.dwattr $C$DW$T$862, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$862, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$862, DW_AT_decl_line(0x17a)
	.dwattr $C$DW$T$862, DW_AT_decl_column(0x3a)

$C$DW$T$229	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$229, DW_AT_name("xdc_runtime_Types_Base")
	.dwattr $C$DW$T$229, DW_AT_byte_size(0x04)
$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$450, DW_AT_name("base")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("base")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$450, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$450, DW_AT_decl_line(0xb5)
	.dwattr $C$DW$450, DW_AT_decl_column(0x1d)
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

$C$DW$T$863	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$863, DW_AT_name("xdc_runtime_Types_CreatePolicy")
	.dwattr $C$DW$T$863, DW_AT_byte_size(0x04)
$C$DW$451	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Types_STATIC_POLICY"), DW_AT_const_value(0x00)
	.dwattr $C$DW$451, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$451, DW_AT_decl_line(0x5a)
	.dwattr $C$DW$451, DW_AT_decl_column(0x05)
$C$DW$452	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Types_CREATE_POLICY"), DW_AT_const_value(0x01)
	.dwattr $C$DW$452, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$452, DW_AT_decl_line(0x5b)
	.dwattr $C$DW$452, DW_AT_decl_column(0x05)
$C$DW$453	.dwtag  DW_TAG_enumerator, DW_AT_name("xdc_runtime_Types_DELETE_POLICY"), DW_AT_const_value(0x02)
	.dwattr $C$DW$453, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$453, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$453, DW_AT_decl_column(0x05)
	.dwendtag $C$DW$T$863

	.dwattr $C$DW$T$863, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$863, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$863, DW_AT_decl_column(0x06)
$C$DW$T$864	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_CreatePolicy")
	.dwattr $C$DW$T$864, DW_AT_type(*$C$DW$T$863)
	.dwattr $C$DW$T$864, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$864, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$864, DW_AT_decl_line(0x5e)
	.dwattr $C$DW$T$864, DW_AT_decl_column(0x2d)

$C$DW$T$230	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$230, DW_AT_name("xdc_runtime_Types_FreqHz")
	.dwattr $C$DW$T$230, DW_AT_byte_size(0x08)
$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$454, DW_AT_name("hi")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("hi")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$454, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$454, DW_AT_decl_line(0x77)
	.dwattr $C$DW$454, DW_AT_decl_column(0x10)
$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$455, DW_AT_name("lo")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("lo")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$455, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$455, DW_AT_decl_line(0x78)
	.dwattr $C$DW$455, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$230

	.dwattr $C$DW$T$230, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$230, DW_AT_decl_line(0x76)
	.dwattr $C$DW$T$230, DW_AT_decl_column(0x08)
$C$DW$T$865	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_FreqHz")
	.dwattr $C$DW$T$865, DW_AT_type(*$C$DW$T$230)
	.dwattr $C$DW$T$865, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$865, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$865, DW_AT_decl_line(0x129)
	.dwattr $C$DW$T$865, DW_AT_decl_column(0x29)

$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("xdc_runtime_Types_GateRef__")
	.dwattr $C$DW$T$84, DW_AT_declaration
	.dwendtag $C$DW$T$84

	.dwattr $C$DW$T$84, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$84, DW_AT_decl_line(0x125)
	.dwattr $C$DW$T$84, DW_AT_decl_column(0x10)
$C$DW$T$866	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_GateRef__")
	.dwattr $C$DW$T$866, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$T$866, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$866, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$866, DW_AT_decl_line(0x125)
	.dwattr $C$DW$T$866, DW_AT_decl_column(0x2c)
$C$DW$T$867	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$867, DW_AT_type(*$C$DW$T$866)
	.dwattr $C$DW$T$867, DW_AT_address_class(0x20)
$C$DW$T$868	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_GateRef")
	.dwattr $C$DW$T$868, DW_AT_type(*$C$DW$T$867)
	.dwattr $C$DW$T$868, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$868, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$868, DW_AT_decl_line(0x53)
	.dwattr $C$DW$T$868, DW_AT_decl_column(0x26)

$C$DW$T$232	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$232, DW_AT_name("xdc_runtime_Types_InstHdr")
	.dwattr $C$DW$T$232, DW_AT_byte_size(0x08)
$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$456, DW_AT_name("link")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("link")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$456, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$456, DW_AT_decl_line(0xa8)
	.dwattr $C$DW$456, DW_AT_decl_column(0x1c)
	.dwendtag $C$DW$T$232

	.dwattr $C$DW$T$232, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$232, DW_AT_decl_line(0xa7)
	.dwattr $C$DW$T$232, DW_AT_decl_column(0x08)
$C$DW$T$869	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_InstHdr")
	.dwattr $C$DW$T$869, DW_AT_type(*$C$DW$T$232)
	.dwattr $C$DW$T$869, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$869, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$869, DW_AT_decl_line(0x12d)
	.dwattr $C$DW$T$869, DW_AT_decl_column(0x2a)

$C$DW$T$233	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$233, DW_AT_name("xdc_runtime_Types_Label")
	.dwattr $C$DW$T$233, DW_AT_byte_size(0x10)
$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$457, DW_AT_name("handle")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("handle")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$457, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$457, DW_AT_decl_line(0x62)
	.dwattr $C$DW$457, DW_AT_decl_column(0x0d)
$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$458, DW_AT_name("modId")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("modId")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$458, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$458, DW_AT_decl_line(0x63)
	.dwattr $C$DW$458, DW_AT_decl_column(0x20)
$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$459, DW_AT_name("iname")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("iname")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$459, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$459, DW_AT_decl_line(0x64)
	.dwattr $C$DW$459, DW_AT_decl_column(0x10)
$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$460, DW_AT_name("named")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("named")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$460, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$460, DW_AT_decl_line(0x65)
	.dwattr $C$DW$460, DW_AT_decl_column(0x0e)
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
$C$DW$461	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$140)
$C$DW$462	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$247)
	.dwendtag $C$DW$T$248

$C$DW$T$249	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$249, DW_AT_type(*$C$DW$T$248)
	.dwattr $C$DW$T$249, DW_AT_address_class(0x20)

$C$DW$T$235	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$235, DW_AT_name("xdc_runtime_Types_Link")
	.dwattr $C$DW$T$235, DW_AT_byte_size(0x08)
$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$463, DW_AT_name("next")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("next")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$463, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$463, DW_AT_decl_line(0xa2)
	.dwattr $C$DW$463, DW_AT_decl_column(0x1d)
$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$234)
	.dwattr $C$DW$464, DW_AT_name("prev")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("prev")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$464, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$464, DW_AT_decl_line(0xa3)
	.dwattr $C$DW$464, DW_AT_decl_column(0x1d)
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
$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$465, DW_AT_name("size")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("size")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$465, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$465, DW_AT_decl_line(0xad)
	.dwattr $C$DW$465, DW_AT_decl_column(0x0f)
$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$466, DW_AT_name("self")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("self")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$466, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$466, DW_AT_decl_line(0xae)
	.dwattr $C$DW$466, DW_AT_decl_column(0x0d)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$467, DW_AT_name("modFxns")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("modFxns")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$467, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$467, DW_AT_decl_line(0xaf)
	.dwattr $C$DW$467, DW_AT_decl_column(0x0d)
$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$468, DW_AT_name("instPrms")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("instPrms")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$468, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$468, DW_AT_decl_line(0xb0)
	.dwattr $C$DW$468, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$T$236

	.dwattr $C$DW$T$236, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$236, DW_AT_decl_line(0xac)
	.dwattr $C$DW$T$236, DW_AT_decl_column(0x08)
$C$DW$T$870	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_PrmsHdr")
	.dwattr $C$DW$T$870, DW_AT_type(*$C$DW$T$236)
	.dwattr $C$DW$T$870, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$870, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$870, DW_AT_decl_line(0x12e)
	.dwattr $C$DW$T$870, DW_AT_decl_column(0x2a)

$C$DW$T$239	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$239, DW_AT_name("xdc_runtime_Types_RegDesc")
	.dwattr $C$DW$T$239, DW_AT_byte_size(0x0c)
$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$238)
	.dwattr $C$DW$469, DW_AT_name("next")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("next")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$469, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$469, DW_AT_decl_line(0x7d)
	.dwattr $C$DW$469, DW_AT_decl_column(0x20)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$470, DW_AT_name("modName")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("modName")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$470, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$470, DW_AT_decl_line(0x7e)
	.dwattr $C$DW$470, DW_AT_decl_column(0x10)
$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$471, DW_AT_name("id")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("id")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$471, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$471, DW_AT_decl_line(0x7f)
	.dwattr $C$DW$471, DW_AT_decl_column(0x20)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$472, DW_AT_name("mask")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("mask")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$472, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$472, DW_AT_decl_line(0x80)
	.dwattr $C$DW$472, DW_AT_decl_column(0x21)
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
$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$473, DW_AT_name("mod")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("mod")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$473, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$473, DW_AT_decl_line(0x6a)
	.dwattr $C$DW$473, DW_AT_decl_column(0x20)
$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$474, DW_AT_name("file")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("file")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$474, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$474, DW_AT_decl_line(0x6b)
	.dwattr $C$DW$474, DW_AT_decl_column(0x10)
$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$475, DW_AT_name("line")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("line")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$475, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$475, DW_AT_decl_line(0x6c)
	.dwattr $C$DW$475, DW_AT_decl_column(0x0d)
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
$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$243)
	.dwattr $C$DW$476, DW_AT_name("__create")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("__create")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$476, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$476, DW_AT_decl_line(0xba)
	.dwattr $C$DW$476, DW_AT_decl_column(0x0f)
$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$245)
	.dwattr $C$DW$477, DW_AT_name("__delete")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("__delete")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$477, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$477, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$477, DW_AT_decl_column(0x10)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$478, DW_AT_name("__label")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("__label")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$478, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$478, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$478, DW_AT_decl_column(0x20)
$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$479, DW_AT_name("__mid")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("__mid")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$479, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$479, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$479, DW_AT_decl_column(0x20)
	.dwendtag $C$DW$T$250

	.dwattr $C$DW$T$250, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$250, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$T$250, DW_AT_decl_column(0x08)
$C$DW$T$871	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_SysFxns")
	.dwattr $C$DW$T$871, DW_AT_type(*$C$DW$T$250)
	.dwattr $C$DW$T$871, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$871, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$871, DW_AT_decl_line(0x130)
	.dwattr $C$DW$T$871, DW_AT_decl_column(0x2a)

$C$DW$T$256	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$256, DW_AT_name("xdc_runtime_Types_SysFxns2")
	.dwattr $C$DW$T$256, DW_AT_byte_size(0x10)
$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$480, DW_AT_name("__create")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("__create")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$480, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$480, DW_AT_decl_line(0xc2)
	.dwattr $C$DW$480, DW_AT_decl_column(0x0f)
$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$245)
	.dwattr $C$DW$481, DW_AT_name("__delete")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("__delete")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$481, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$481, DW_AT_decl_line(0xc3)
	.dwattr $C$DW$481, DW_AT_decl_column(0x10)
$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$249)
	.dwattr $C$DW$482, DW_AT_name("__label")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("__label")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$482, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$482, DW_AT_decl_line(0xc4)
	.dwattr $C$DW$482, DW_AT_decl_column(0x20)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$483, DW_AT_name("__mid")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("__mid")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$483, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$483, DW_AT_decl_line(0xc5)
	.dwattr $C$DW$483, DW_AT_decl_column(0x20)
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
$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$484, DW_AT_name("hi")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("hi")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$484, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$484, DW_AT_decl_line(0x71)
	.dwattr $C$DW$484, DW_AT_decl_column(0x10)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$485, DW_AT_name("lo")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("lo")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$485, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$485, DW_AT_decl_line(0x72)
	.dwattr $C$DW$485, DW_AT_decl_column(0x10)
	.dwendtag $C$DW$T$257

	.dwattr $C$DW$T$257, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$257, DW_AT_decl_line(0x70)
	.dwattr $C$DW$T$257, DW_AT_decl_column(0x08)
$C$DW$T$872	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_Timestamp64")
	.dwattr $C$DW$T$872, DW_AT_type(*$C$DW$T$257)
	.dwattr $C$DW$T$872, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$872, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$872, DW_AT_decl_line(0x128)
	.dwattr $C$DW$T$872, DW_AT_decl_column(0x2e)

$C$DW$T$258	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$258, DW_AT_name("xdc_runtime_Types_Vec")
	.dwattr $C$DW$T$258, DW_AT_byte_size(0x08)
$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$486, DW_AT_name("len")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("len")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$486, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$486, DW_AT_decl_line(0x9c)
	.dwattr $C$DW$486, DW_AT_decl_column(0x0d)
$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$487, DW_AT_name("arr")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("arr")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$487, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$487, DW_AT_decl_line(0x9d)
	.dwattr $C$DW$487, DW_AT_decl_column(0x0d)
	.dwendtag $C$DW$T$258

	.dwattr $C$DW$T$258, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/Types.h")
	.dwattr $C$DW$T$258, DW_AT_decl_line(0x9b)
	.dwattr $C$DW$T$258, DW_AT_decl_column(0x08)
$C$DW$T$873	.dwtag  DW_TAG_typedef, DW_AT_name("xdc_runtime_Types_Vec")
	.dwattr $C$DW$T$873, DW_AT_type(*$C$DW$T$258)
	.dwattr $C$DW$T$873, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$873, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages/xdc/runtime/package/package.defs.h")
	.dwattr $C$DW$T$873, DW_AT_decl_line(0x12b)
	.dwattr $C$DW$T$873, DW_AT_decl_column(0x26)
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

