/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 ******************************************************************************/

/*
 *   @file  vlibapis.h
 *
 */

#ifndef VLIB_APIS_H_
#define VLIB_APIS_H_

#define VLIB_nonMaximumSuppressionCanny_i  (VLIB_nonMaximumSuppressionCanny)
#define VLIB_gaussianFilter7X7_i (VLIB_gaussianFilter7X7)
#define VLIB_convertUYVYtoLuma_i (VLIB_convertUYVYtoLuma)
#define VLIB_xyGradientsAndMagnitude_i (VLIB_xyGradientsAndMagnitude)
#define VLIB_houghLineFromList_i (VLIB_houghLineFromList)
#define VLIB_hysteresisThresholding_i (VLIB_hysteresisThresholding)
#define VLIB_imagePyramid16_i (VLIB_imagePyramid16)
#define VLIB_imagePyramid8_i  (VLIB_imagePyramid8)
#define VLIB_integralImage16_i (VLIB_integralImage16)
#define VLIB_integralImage8_i (VLIB_integralImage8)
#define VLIB_mixtureOfGaussiansS16_i  (VLIB_mixtureOfGaussiansS16)
#define VLIB_mixtureOfGaussiansS32_i  (VLIB_mixtureOfGaussiansS32)
#define VLIB_subtractBackgroundS16_i (VLIB_subtractBackgroundS16)
#define VLIB_subtractBackgroundS32_i (VLIB_subtractBackgroundS32)
#define VLIB_updateEWRMeanS16_i (VLIB_updateEWRMeanS16)
#define VLIB_updateEWRMeanS16_i (VLIB_updateEWRMeanS16)
#define VLIB_updateEWRMeanS32_i (VLIB_updateEWRMeanS32)
#define VLIB_updateEWRVarianceS16_i (VLIB_updateEWRVarianceS16)
#define VLIB_updateEWRVarianceS32_i (VLIB_updateEWRVarianceS32)
#define VLIB_updateUWRMeanS16_i (VLIB_updateUWRMeanS16)
#define VLIB_updateUWRVarianceS16_i (VLIB_updateUWRVarianceS16)
#define VLIB_dilate_bin_cross_i (VLIB_dilate_bin_cross)
#define VLIB_dilate_bin_mask_i  (VLIB_dilate_bin_mask)
#define VLIB_dilate_bin_square_i (VLIB_dilate_bin_square)
#define VLIB_erode_bin_cross_i (VLIB_erode_bin_cross)
#define VLIB_erode_bin_mask_i (VLIB_erode_bin_mask)
#define VLIB_erode_bin_square_i (VLIB_erode_bin_square)
#define VLIB_legendreMoments_i (VLIB_legendreMoments)
#define VLIB_initVarWithConstS32_i  (VLIB_initVarWithConstS32)
#define VLIB_initVarWithConstS16_i  (VLIB_initVarWithConstS16)
#define VLIB_initMeanWithLumaS32_i (VLIB_initMeanWithLumaS32)
#define VLIB_initMeanWithLumaS16_i (VLIB_initMeanWithLumaS16)
#define VLIB_weightedHistogram_nD_U16_i (VLIB_weightedHistogram_nD_U16)
#define VLIB_weightedHistogram_1D_U16_i (VLIB_weightedHistogram_1D_U16)
#define VLIB_weightedHistogram_1D_U8_i  (VLIB_weightedHistogram_1D_U8)
#define VLIB_histogram_nD_U16_i  (VLIB_histogram_nD_U16)
#define VLIB_histogram_1D_U16_i (VLIB_histogram_1D_U16)
#define VLIB_histogram_1D_U8_i  (VLIB_histogram_1D_U8)
#define VLIB_histogram_1D_Init_U16_i (VLIB_histogram_1D_Init_U16)
#define VLIB_histogram_1D_Init_U8_i (VLIB_histogram_1D_Init_U8)
#define VLIB_trackFeaturesLucasKanade_7x7_i  (VLIB_trackFeaturesLucasKanade_7x7)
#define VLIB_recursiveFilterVert1stOrder_i  (VLIB_recursiveFilterVert1stOrder)
#define VLIB_recursiveFilterHoriz1stOrder_i (VLIB_recursiveFilterHoriz1stOrder)
#define VLIB_nonMaxSuppress_7x7_S16_i (VLIB_nonMaxSuppress_7x7_S16)
#define VLIB_nonMaxSuppress_5x5_S16_i  (VLIB_nonMaxSuppress_5x5_S16)
#define VLIB_nonMaxSuppress_3x3_S16_i  (VLIB_nonMaxSuppress_3x3_S16)
#define VLIB_harrisScore_7x7_i  (VLIB_harrisScore_7x7)
#define VLIB_convertRGB565_to_HSV_i  (VLIB_convertRGB565_to_HSV)
#define VLIB_convertRGB565_to_HSI_i  (VLIB_convertRGB565_to_HSI)
#define VLIB_convertRGB32_to_HSV_i  (VLIB_convertRGB32_to_HSV)
#define VLIB_convertRGB32_to_HSI_i  (VLIB_convertRGB32_to_HSI)
#define VLIB_gradientH5x5PyramidKernel_8_i  (VLIB_gradientH5x5PyramidKernel_8)
#define VLIB_gradientV5x5PyramidKernel_8_i  (VLIB_gradientV5x5PyramidKernel_8)
#define VLIB_gauss5x5PyramidKernel_16_i  (VLIB_gauss5x5PyramidKernel_16)
#define VLIB_gauss5x5PyramidKernel_8_i  (VLIB_gauss5x5PyramidKernel_8)
#define VLIB_convertUYVYint_to_HSLpl_i (VLIB_convertUYVYint_to_HSLpl)
#define VLIB_convertUYVYint_to_LABpl_i (VLIB_convertUYVYint_to_LABpl)
#define VLIB_convertUYVYint_to_RGBpl_i (VLIB_convertUYVYint_to_RGBpl)
#define VLIB_convertUYVYint_to_YUVpl_i (VLIB_convertUYVYint_to_YUVpl)
#define VLIB_BhattacharyaDistance_U32_i (VLIB_BhattacharyaDistance_U32)
#define VLIB_extractLumaFromUYUV_i (VLIB_extractLumaFromUYUV)
#define VLIB_L1DistanceS16_i                         (VLIB_L1DistanceS16)                 
#define VLIB_extract8bitBackgroundS16_i              (VLIB_extract8bitBackgroundS16)      
#define VLIB_packMask32_i                            (VLIB_packMask32)                    
#define VLIB_recursiveFilterHoriz1stOrderS16_i       (VLIB_recursiveFilterHoriz1stOrderS16)
#define VLIB_recursiveFilterVert1stOrderS16_i        (VLIB_recursiveFilterVert1stOrderS16)
#define VLIB_unpackMask32_i                          (VLIB_unpackMask32)    

#endif /* VLIB_APIS_H_ */

