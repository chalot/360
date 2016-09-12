/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  uart_menu_strings.h
 *
 */

#ifndef UART_MENU_STRINGS_H
#define UART_MENU_STRINGS_H

#ifdef _cplusplus
extern "C"
{
#endif /* _cplusplus */

static char gcMainMenu[] = 
{
    "\r\n========================="
    "\r\n Main Menu: "
    "\r\n========================="
    "\r\n a. Show Application Demo List"
    "\r\n b. Show Current Configuration"
    "\r\n c. Execute Selected Application Demo"
    "\r\n========================="
    "\r\n Select Option: \r\n"
};

static char gcVMVMEDemoConfigurationMenu[] = 
{
    "\r\n===================================================="
    "\r\n Demos supported on both Vision-Mid & Vision-Mid EVE"
    "\r\n===================================================="
    "\r\n a. 1-Channel TVP5158 Capture --> M2M De-Interlacer --> On-chip HDMI Display"
    "\r\n b. 1-Channel OV10630 HDVPSS Capture --> HDVPSS Scalar --> On-chip HDMI Display"
    "\r\n c. 1-Channel OV10630 ISS Capture --> On-chip HDMI Display"
    "\r\n d. 1-Channel OV10630 ISS Capture (with ISS on-the-fly Resizer) --> On-chip HDMI Display"
    "\r\n e. 1-Channel OV10630 HDVPSS Capture --> DSP VLIB --> On-chip HDMI Display"
    "\r\n f. 1-Channel MT9V022 ISS Capture --> DSP Processing (for display) --> On-chip HDMI Display"
    "\r\n g. 3-Channel Demo (Ch-0 = OV10630 HDVPSS - Crop Frame - Display, Ch-1 = OV10630 HDVPSS - HDVPSS Scalar - Display, Ch-2 = MT9V022 ISS - DSP Processing (for display) - Display)"
    "\r\n h. 1-Channel MT9M024 HDVPSS Capture --> DSP Processing (bayer to yuyv) --> On-chip HDMI Display"
    "\r\n i. 4-Channel TVP5158 Capture --> M2M De-Interlacer --> On-chip HDMI Display"
    "\r\n j. 1-Channel OV10630 HDVPSS Capture --> 4-Channel PCIE SINK"
    "\r\n k. 4-Channel PCIE SOURCE --> HDVPSS Scalar --> On-chip HDMI Display"
    "\r\n l. 1-Channel OV10630 HDVPSS Capture --> Raw Ethernet SINK"
    "\r\n m. 1-Channel Raw Ethernet SOURCE --> On-chip HDMI Display"
    "\r\n n. 1-Channel TVP5158 Capture --> M2M De-Interlacer --> BoP (DSP-only) --> On-chip HDMI Display"
    "\r\n===================================================="
	"\r\n===================================================="
	"\r\n Demos supported on with FPDLink hardware"
	"\r\n===================================================="
	"\r\n u. 1-Channel OV10630 HDVPSS Capture (FPDLink) --> HDVPSS Scalar --> On-chip HDMI Display"
/*	"\r\n v. 1-Channel MT9V022 ISS Capture (FPDLink) --> DSP Processing (for display) --> On-chip HDMI Display" */
/*	"\r\n w. 2-Channel Demo (Ch-0 = OV10630 HDVPSS - VICP Warp - Display, Ch-1 = MT9V022 ISS - DSP Processing (for display) - Display)" */
	"\r\n===================================================="

};



static char gcVMDemoConfigurationMenu[] = 
{
    "\r\n==================================="
    "\r\n Demos supported only on Vision-Mid"
    "\r\n==================================="
    "\r\n p. 1-Channel OV10630 ISS Capture --> DSP Passthrough --> VICP Image Warp --> On-chip HDMI Display"
    "\r\n q. 1-Channel MT9P031 ISS Capture --> DSP Passthrough --> VICP Image Warp --> On-chip HDMI Display"
    "\r\n r. 2-Channel Demo (Ch-0 = OV10630 HDVPSS - VICP Warp - Display, Ch-1 = MT9V022 ISS - DSP Processing (for display) - Display)"
	"\r\n s. 4-Channel (Frame Based ) MJPEG Memory Source --> MJPEG Decoder --> HDVPSS Scalar --> On-chip HDMI Display"
    "\r\n t. 4-Channel (Frame Based ) MJPEG Memory Source --> AVB SINK"
	"\r\n v. 4-Channel AVB Memory Source --> MJPEG Decoder --> HDVPSS Scalar --> On-chip HDMI Display"

    "\r\n==================================="
};

static char gcChooseDemo[] = 
{
    "\r\n Choose Demo: \r\n"
};

static char Command_Menu[] = {
    "\r\n========================="
    "\r\n   Command Menu"
    "\r\n========================="
    "\r\nPress 's' to Start"
    "\r\nPress 'q' to Stop"
    "\r\nPress 'm' to Start Profiling FPS"
    "\r\nPress 'n' to Stop  Profiling FPS"
    "\r\nPress 'l' to start Profiling system Load"
    "\r\nPress 't' to stop  Profiling system Load"
    "\r\n========================="
    "\r\n"
};

static char *ImgWarpType[] = {
        "VICP",
        "NONE"
};

static char *PassThroughType[] = {
        "DSP",
        "DSP, source MT9V022",
        "DSP, source MT9M024",
        "NONE"
};

static char *DisplayType[] = {
        "OnChip HDMI",
        "SD",
        "NONE"
};

static char *ColorFormatType[] = {
        "YUV422Interleaved - YUYV",
        "YUV422Interleaved - UYVY",
        "YUV420SemiPlanar",
        "YUV422SemiPlanar",
        "RGB88824bit",
        "NONE"

};

static char *CaptSrcNames[] = {
        "TVP5158",
        "OV10630",
        "MT9P031",
        "MT9V022",
        "MT9M024",
        "NONE"
};

static char *CaptTypeNames[] = {
        "HDVPSS",
        "ISS",
        "NONE"
};

static char  *OvFmtParam[] = {
        "YUV4228bit",
        "YUV42216bit",
        "DS8bit",
        "DS10bit",
        "DS16bit",
        "Raw8bit",
        "Raw10bit",
        "Raw16bit",
};

static char *ScalarType[] = {
        "HDVPSS",
        "ISS",
        "NONE"
};

static char *VlibType[] = {
        "VLIB DSP",
        "VLIB None"
};

static char *AptinaFmtParam[] = {
        "Bayer12bit",
        "Monochrome",
        "Raw8bit",
        "Raw10bit",
};

static char *DeiType[] = {
        "DEI M2M",        
        "NONE"
};

static char *ScanFmt[] = {
    "Interlaced Scan",
    "Progressive Scan",
    "NONE"
};

static char *BopType[] = {
    "BOP on DSP",
    "NONE"
};

static char *pcieType[] = {
    "PCIE Sink",
    "PCIE Source",
    "NONE"
};

static char *rawEthType[] = {
    "RAW Ethernet Sink",
    "RAW Ethernet Source",
    "NONE"
};

#ifdef _cplusplus
}
#endif /* _cplusplus */

#endif /* UART_MENU_STRINGS_H */
