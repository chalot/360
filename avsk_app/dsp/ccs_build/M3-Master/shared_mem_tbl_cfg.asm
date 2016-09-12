;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v7.4.8 *
;* Date/Time created: Mon Sep 12 07:22:42 2016                                *
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
	.dwattr $C$DW$CU, DW_AT_name("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/src/shared_mem_tbl_cfg.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C6x C/C++ Codegen PC v7.4.8 Copyright (c) 1996-2014 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\dsp\ccs_build\M3-Master")
	.global	sharedRegionConfigTable
	.sect	".fardata", RW
	.align	4
	.elfsym	sharedRegionConfigTable,SYM_SIZE(100)
sharedRegionConfigTable:
	.bits	2,32			; sharedRegionConfigTable.nNumSharedRegions @ 0
	.bits	67108864,32			; sharedRegionConfigTable.srInfo[0].srType @ 32
	.bits	0,32			; sharedRegionConfigTable.srInfo[0].nIndex @ 64
	.bits	-2052063232,32			; sharedRegionConfigTable.srInfo[0].nBase @ 96
	.bits	1048576,32			; sharedRegionConfigTable.srInfo[0].nSize @ 128
	.bits	0,32			; sharedRegionConfigTable.srInfo[0].bCacheEnable @ 160
	.bits	83886080,32			; sharedRegionConfigTable.srInfo[0].srMemType @ 192
	.bits	67108864,32			; sharedRegionConfigTable.srInfo[1].srType @ 224
	.bits	1,32			; sharedRegionConfigTable.srInfo[1].nIndex @ 256
	.bits	-2122317824,32			; sharedRegionConfigTable.srInfo[1].nBase @ 288
	.bits	66060288,32			; sharedRegionConfigTable.srInfo[1].nSize @ 320
	.bits	0,32			; sharedRegionConfigTable.srInfo[1].bCacheEnable @ 352
	.bits	83886080,32			; sharedRegionConfigTable.srInfo[1].srMemType @ 384
	.bits	67108865,32			; sharedRegionConfigTable.srInfo[2].srType @ 416
	.bits	2,32			; sharedRegionConfigTable.srInfo[2].nIndex @ 448
	.bits	-1978662912,32			; sharedRegionConfigTable.srInfo[2].nBase @ 480
	.bits	98566144,32			; sharedRegionConfigTable.srInfo[2].nSize @ 512
	.bits	1,32			; sharedRegionConfigTable.srInfo[2].bCacheEnable @ 544
	.bits	83886081,32			; sharedRegionConfigTable.srInfo[2].srMemType @ 576
	.bits	67108865,32			; sharedRegionConfigTable.srInfo[3].srType @ 608
	.bits	3,32			; sharedRegionConfigTable.srInfo[3].nIndex @ 640
	.bits	-1880096768,32			; sharedRegionConfigTable.srInfo[3].nBase @ 672
	.bits	589824,32			; sharedRegionConfigTable.srInfo[3].nSize @ 704
	.bits	1,32			; sharedRegionConfigTable.srInfo[3].bCacheEnable @ 736
	.bits	83886080,32			; sharedRegionConfigTable.srInfo[3].srMemType @ 768

$C$DW$1	.dwtag  DW_TAG_variable, DW_AT_name("sharedRegionConfigTable")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("sharedRegionConfigTable")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr sharedRegionConfigTable]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/src/shared_mem_tbl_cfg.c")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$1, DW_AT_decl_column(0x16)
;	c:\ti\ccsv6\tools\compiler\c6000_7.4.8\bin\opt6x.exe C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\010722 C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\010724 

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

$C$DW$T$29	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$29, DW_AT_name("ERRORTYPE")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x04)
$C$DW$2	.dwtag  DW_TAG_enumerator, DW_AT_name("ecNone"), DW_AT_const_value(0x00)
	.dwattr $C$DW$2, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\common\inc\error_codes.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x19)
	.dwattr $C$DW$2, DW_AT_decl_column(0x05)
$C$DW$3	.dwtag  DW_TAG_enumerator, DW_AT_name("ecFail"), DW_AT_const_value(-2147479552)
	.dwattr $C$DW$3, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\common\inc\error_codes.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x1a)
	.dwattr $C$DW$3, DW_AT_decl_column(0x05)
$C$DW$4	.dwtag  DW_TAG_enumerator, DW_AT_name("ecUndefined"), DW_AT_const_value(-2147479551)
	.dwattr $C$DW$4, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\common\inc\error_codes.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$4, DW_AT_decl_column(0x05)
$C$DW$5	.dwtag  DW_TAG_enumerator, DW_AT_name("ecAlreadyExists"), DW_AT_const_value(-2147479550)
	.dwattr $C$DW$5, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\common\inc\error_codes.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$5, DW_AT_decl_column(0x05)
$C$DW$6	.dwtag  DW_TAG_enumerator, DW_AT_name("ecBadParameter"), DW_AT_const_value(-2147479549)
	.dwattr $C$DW$6, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\common\inc\error_codes.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$6, DW_AT_decl_column(0x05)
$C$DW$7	.dwtag  DW_TAG_enumerator, DW_AT_name("ecNotImplemented"), DW_AT_const_value(-2147479548)
	.dwattr $C$DW$7, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\common\inc\error_codes.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x1e)
	.dwattr $C$DW$7, DW_AT_decl_column(0x05)
$C$DW$8	.dwtag  DW_TAG_enumerator, DW_AT_name("ecInvalidState"), DW_AT_const_value(-2147479547)
	.dwattr $C$DW$8, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\common\inc\error_codes.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x1f)
	.dwattr $C$DW$8, DW_AT_decl_column(0x05)
$C$DW$9	.dwtag  DW_TAG_enumerator, DW_AT_name("ecTimeOut"), DW_AT_const_value(-2147479546)
	.dwattr $C$DW$9, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\common\inc\error_codes.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x20)
	.dwattr $C$DW$9, DW_AT_decl_column(0x05)
$C$DW$10	.dwtag  DW_TAG_enumerator, DW_AT_name("ecOutOfMemory"), DW_AT_const_value(-2147479545)
	.dwattr $C$DW$10, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\common\inc\error_codes.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0x21)
	.dwattr $C$DW$10, DW_AT_decl_column(0x05)
	.dwendtag $C$DW$T$29

	.dwattr $C$DW$T$29, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\common\inc\error_codes.h")
	.dwattr $C$DW$T$29, DW_AT_decl_line(0x17)
	.dwattr $C$DW$T$29, DW_AT_decl_column(0x0e)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("ERRORTYPE")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$30, DW_AT_decl_file("I:\J5eco_DSP_Project_GA-R1.1_20141120\J5eco_DSP_Project_R1.1\av_bios_sdk_00_10_00_00\avsdk_00_10_00_00\demos\avsk_app\common\inc\error_codes.h")
	.dwattr $C$DW$T$30, DW_AT_decl_line(0x22)
	.dwattr $C$DW$T$30, DW_AT_decl_column(0x03)
$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)
$C$DW$T$31	.dwtag  DW_TAG_typedef, DW_AT_name("__builtin_va_list")
	.dwattr $C$DW$T$31, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$T$31, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$31, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/src/shared_mem_tbl_cfg.c")
	.dwattr $C$DW$T$31, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$T$31, DW_AT_decl_column(0x16)
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$32	.dwtag  DW_TAG_typedef, DW_AT_name("int8_t")
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$32, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$32, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$32, DW_AT_decl_line(0x2a)
	.dwattr $C$DW$T$32, DW_AT_decl_column(0x1d)
$C$DW$T$33	.dwtag  DW_TAG_typedef, DW_AT_name("int_least8_t")
	.dwattr $C$DW$T$33, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$T$33, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$33, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$33, DW_AT_decl_line(0x39)
	.dwattr $C$DW$T$33, DW_AT_decl_column(0x17)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$34	.dwtag  DW_TAG_typedef, DW_AT_name("uint8_t")
	.dwattr $C$DW$T$34, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$34, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$34, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$T$34, DW_AT_decl_column(0x1c)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least8_t")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$35, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$35, DW_AT_decl_line(0x3a)
	.dwattr $C$DW$T$35, DW_AT_decl_column(0x16)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)
$C$DW$T$36	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$36, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$36, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$36, DW_AT_decl_line(0x2c)
	.dwattr $C$DW$T$36, DW_AT_decl_column(0x1d)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("int_least16_t")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$37, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$37, DW_AT_decl_line(0x3c)
	.dwattr $C$DW$T$37, DW_AT_decl_column(0x17)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)
$C$DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$38, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$38, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$38, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$38, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$T$38, DW_AT_decl_column(0x1c)
$C$DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least16_t")
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$T$39, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$39, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$39, DW_AT_decl_line(0x3d)
	.dwattr $C$DW$T$39, DW_AT_decl_column(0x16)
$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x04)
$C$DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("int32_t")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$19, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x2e)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x1d)
$C$DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast16_t")
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$40, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$T$40, DW_AT_decl_column(0x17)
$C$DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast32_t")
	.dwattr $C$DW$T$41, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$41, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$41, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$T$41, DW_AT_decl_column(0x17)
$C$DW$T$42	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast8_t")
	.dwattr $C$DW$T$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$42, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$42, DW_AT_decl_line(0x49)
	.dwattr $C$DW$T$42, DW_AT_decl_column(0x17)
$C$DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("int_least32_t")
	.dwattr $C$DW$T$43, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$43, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$43, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$43, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$T$43, DW_AT_decl_column(0x17)
$C$DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("intptr_t")
	.dwattr $C$DW$T$44, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$44, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$44, DW_AT_decl_line(0x58)
	.dwattr $C$DW$T$44, DW_AT_decl_column(0x1a)
$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x04)
$C$DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("uint32_t")
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$25, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$T$25, DW_AT_decl_column(0x1c)
$C$DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast16_t")
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$45, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$45, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$T$45, DW_AT_decl_column(0x16)
$C$DW$T$46	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast32_t")
	.dwattr $C$DW$T$46, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$46, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$46, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$T$46, DW_AT_decl_column(0x16)
$C$DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast8_t")
	.dwattr $C$DW$T$47, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$47, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$47, DW_AT_decl_line(0x4a)
	.dwattr $C$DW$T$47, DW_AT_decl_column(0x16)
$C$DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least32_t")
	.dwattr $C$DW$T$48, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$48, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$48, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$48, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$T$48, DW_AT_decl_column(0x16)
$C$DW$T$49	.dwtag  DW_TAG_typedef, DW_AT_name("uintptr_t")
	.dwattr $C$DW$T$49, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$49, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$49, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$49, DW_AT_decl_line(0x59)
	.dwattr $C$DW$T$49, DW_AT_decl_column(0x1a)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("__int40_t")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$12, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$12, DW_AT_bit_offset(0x18)
$C$DW$T$50	.dwtag  DW_TAG_typedef, DW_AT_name("int40_t")
	.dwattr $C$DW$T$50, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$50, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$50, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$50, DW_AT_decl_line(0x31)
	.dwattr $C$DW$T$50, DW_AT_decl_column(0x21)
$C$DW$T$51	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast40_t")
	.dwattr $C$DW$T$51, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$51, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$51, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$51, DW_AT_decl_line(0x51)
	.dwattr $C$DW$T$51, DW_AT_decl_column(0x17)
$C$DW$T$52	.dwtag  DW_TAG_typedef, DW_AT_name("int_least40_t")
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$52, DW_AT_decl_line(0x41)
	.dwattr $C$DW$T$52, DW_AT_decl_column(0x17)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned __int40_t")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x08)
	.dwattr $C$DW$T$13, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$13, DW_AT_bit_offset(0x18)
$C$DW$T$53	.dwtag  DW_TAG_typedef, DW_AT_name("uint40_t")
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$53, DW_AT_decl_line(0x32)
	.dwattr $C$DW$T$53, DW_AT_decl_column(0x20)
$C$DW$T$54	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast40_t")
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$54, DW_AT_decl_line(0x52)
	.dwattr $C$DW$T$54, DW_AT_decl_column(0x16)
$C$DW$T$55	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least40_t")
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$55, DW_AT_decl_line(0x42)
	.dwattr $C$DW$T$55, DW_AT_decl_column(0x16)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)
$C$DW$T$56	.dwtag  DW_TAG_typedef, DW_AT_name("int64_t")
	.dwattr $C$DW$T$56, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$56, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$56, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$56, DW_AT_decl_line(0x34)
	.dwattr $C$DW$T$56, DW_AT_decl_column(0x21)
$C$DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("int_fast64_t")
	.dwattr $C$DW$T$57, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$57, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$57, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$57, DW_AT_decl_line(0x54)
	.dwattr $C$DW$T$57, DW_AT_decl_column(0x17)
$C$DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("int_least64_t")
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$58, DW_AT_decl_line(0x44)
	.dwattr $C$DW$T$58, DW_AT_decl_column(0x17)
$C$DW$T$59	.dwtag  DW_TAG_typedef, DW_AT_name("intmax_t")
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$59, DW_AT_decl_line(0x5c)
	.dwattr $C$DW$T$59, DW_AT_decl_column(0x20)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)
$C$DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("uint64_t")
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$60, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$60, DW_AT_decl_column(0x20)
$C$DW$T$61	.dwtag  DW_TAG_typedef, DW_AT_name("uint_fast64_t")
	.dwattr $C$DW$T$61, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$61, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$61, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$61, DW_AT_decl_line(0x55)
	.dwattr $C$DW$T$61, DW_AT_decl_column(0x16)
$C$DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("uint_least64_t")
	.dwattr $C$DW$T$62, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$T$62, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$62, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$62, DW_AT_decl_line(0x45)
	.dwattr $C$DW$T$62, DW_AT_decl_column(0x16)
$C$DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("uintmax_t")
	.dwattr $C$DW$T$63, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$T$63, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$63, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/tools/c6000_7_4_1/include/stdint.h")
	.dwattr $C$DW$T$63, DW_AT_decl_line(0x5d)
	.dwattr $C$DW$T$63, DW_AT_decl_column(0x20)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

$C$DW$T$26	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$26, DW_AT_name("eSharedRegionMemoryType_t")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x04)
$C$DW$11	.dwtag  DW_TAG_enumerator, DW_AT_name("sharedRegionMemoryTypeControl"), DW_AT_const_value(0x5000000)
	.dwattr $C$DW$11, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x22)
	.dwattr $C$DW$11, DW_AT_decl_column(0x05)
$C$DW$12	.dwtag  DW_TAG_enumerator, DW_AT_name("sharedRegionMemoryTypeData"), DW_AT_const_value(0x5000001)
	.dwattr $C$DW$12, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x23)
	.dwattr $C$DW$12, DW_AT_decl_column(0x05)
	.dwendtag $C$DW$T$26

	.dwattr $C$DW$T$26, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$T$26, DW_AT_decl_line(0x20)
	.dwattr $C$DW$T$26, DW_AT_decl_column(0x0e)
$C$DW$T$27	.dwtag  DW_TAG_typedef, DW_AT_name("eSharedRegionMemoryType_t")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$T$27, DW_AT_decl_line(0x24)
	.dwattr $C$DW$T$27, DW_AT_decl_column(0x03)

$C$DW$T$23	.dwtag  DW_TAG_enumeration_type
	.dwattr $C$DW$T$23, DW_AT_name("eSharedRegionType_t")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x04)
$C$DW$13	.dwtag  DW_TAG_enumerator, DW_AT_name("sharedRegionTypeMaster"), DW_AT_const_value(0x4000000)
	.dwattr $C$DW$13, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x1b)
	.dwattr $C$DW$13, DW_AT_decl_column(0x05)
$C$DW$14	.dwtag  DW_TAG_enumerator, DW_AT_name("sharedRegionTypeSlave"), DW_AT_const_value(0x4000001)
	.dwattr $C$DW$14, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x1c)
	.dwattr $C$DW$14, DW_AT_decl_column(0x05)
	.dwendtag $C$DW$T$23

	.dwattr $C$DW$T$23, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$T$23, DW_AT_decl_line(0x19)
	.dwattr $C$DW$T$23, DW_AT_decl_column(0x0e)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("eSharedRegionType_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$T$24, DW_AT_decl_line(0x1d)
	.dwattr $C$DW$T$24, DW_AT_decl_column(0x03)

$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("sharedRegionConfig_t")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x64)
$C$DW$15	.dwtag  DW_TAG_member
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$15, DW_AT_name("nNumSharedRegions")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("nNumSharedRegions")
	.dwattr $C$DW$15, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$15, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$15, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0xcc)
	.dwattr $C$DW$15, DW_AT_decl_column(0x0d)
$C$DW$16	.dwtag  DW_TAG_member
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$16, DW_AT_name("srInfo")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("srInfo")
	.dwattr $C$DW$16, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$16, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$16, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0xcd)
	.dwattr $C$DW$16, DW_AT_decl_column(0x18)
	.dwendtag $C$DW$T$22

	.dwattr $C$DW$T$22, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$T$22, DW_AT_decl_line(0xca)
	.dwattr $C$DW$T$22, DW_AT_decl_column(0x10)
$C$DW$T$64	.dwtag  DW_TAG_typedef, DW_AT_name("sharedRegionConfig_t")
	.dwattr $C$DW$T$64, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$64, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$T$64, DW_AT_decl_line(0xce)
	.dwattr $C$DW$T$64, DW_AT_decl_column(0x03)

$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("sharedRegionInfo_t")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x18)
$C$DW$17	.dwtag  DW_TAG_member
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$17, DW_AT_name("srType")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("srType")
	.dwattr $C$DW$17, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$17, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$17, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$17, DW_AT_decl_line(0xb9)
	.dwattr $C$DW$17, DW_AT_decl_column(0x19)
$C$DW$18	.dwtag  DW_TAG_member
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$18, DW_AT_name("nIndex")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("nIndex")
	.dwattr $C$DW$18, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$18, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$18, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$18, DW_AT_decl_line(0xba)
	.dwattr $C$DW$18, DW_AT_decl_column(0x0e)
$C$DW$19	.dwtag  DW_TAG_member
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$19, DW_AT_name("nBase")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("nBase")
	.dwattr $C$DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$19, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$19, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$19, DW_AT_decl_line(0xbb)
	.dwattr $C$DW$19, DW_AT_decl_column(0x0e)
$C$DW$20	.dwtag  DW_TAG_member
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$20, DW_AT_name("nSize")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("nSize")
	.dwattr $C$DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$20, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$20, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$20, DW_AT_decl_line(0xbc)
	.dwattr $C$DW$20, DW_AT_decl_column(0x0e)
$C$DW$21	.dwtag  DW_TAG_member
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$21, DW_AT_name("bCacheEnable")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("bCacheEnable")
	.dwattr $C$DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$21, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$21, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$21, DW_AT_decl_line(0xbd)
	.dwattr $C$DW$21, DW_AT_decl_column(0x0e)
$C$DW$22	.dwtag  DW_TAG_member
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$22, DW_AT_name("srMemType")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("srMemType")
	.dwattr $C$DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$22, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$22, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$22, DW_AT_decl_line(0xbe)
	.dwattr $C$DW$22, DW_AT_decl_column(0x1f)
	.dwendtag $C$DW$T$28

	.dwattr $C$DW$T$28, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$T$28, DW_AT_decl_line(0xb7)
	.dwattr $C$DW$T$28, DW_AT_decl_column(0x10)
$C$DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("sharedRegionInfo_t")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$20, DW_AT_decl_file("I:/J5eco_DSP_Project_GA-R1.1_20141120/J5eco_DSP_Project_R1.1/av_bios_sdk_00_10_00_00/avsdk_00_10_00_00/demos/avsk_app/common/inc/shared_mem_cfg.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0xbf)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x03)

$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x60)
$C$DW$23	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$23, DW_AT_upper_bound(0x03)
	.dwendtag $C$DW$T$21

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
	.dwcfi	undefined, 10
	.dwcfi	undefined, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	undefined, 14
	.dwcfi	undefined, 15
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
	.dwcfi	undefined, 26
	.dwcfi	undefined, 27
	.dwcfi	undefined, 28
	.dwcfi	undefined, 29
	.dwcfi	undefined, 30
	.dwcfi	undefined, 31
	.dwcfi	undefined, 32
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

