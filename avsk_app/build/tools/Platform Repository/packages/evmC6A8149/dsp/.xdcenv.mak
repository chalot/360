#
_XDCBUILDCOUNT = 0
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = 
override XDCROOT = c:/a0219169/Projects/Delphi_Branch/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33
override XDCBUILDCFG = ./config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = 
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = c:/a0219169/Projects/Delphi_Branch/av_bios_sdk_00_10_00_00/xdctools_3_24_03_33/packages;../..
HOSTOS = Windows
endif
