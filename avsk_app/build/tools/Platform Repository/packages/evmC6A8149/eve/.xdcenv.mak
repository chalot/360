#
_XDCBUILDCOUNT = 0
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = L:/av_bios_sdk_01_02_00_00/xdctools_3_24_06_54_eng/packages;L:/av_bios_sdk_01_02_00_00/bios_6_34_04_22/packages;L:/av_bios_sdk_01_02_00_00/ipc_3_00_00_04_eng/packages
override XDCROOT = l:/AVSDK/xdctools_3_24_03_33
override XDCBUILDCFG = ./config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = 
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = L:/av_bios_sdk_01_02_00_00/xdctools_3_24_06_54_eng/packages;L:/av_bios_sdk_01_02_00_00/bios_6_34_04_22/packages;L:/av_bios_sdk_01_02_00_00/ipc_3_00_00_04_eng/packages;l:/AVSDK/xdctools_3_24_03_33/packages;../..
HOSTOS = Windows
endif
