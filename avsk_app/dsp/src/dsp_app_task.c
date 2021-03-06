

/*!
 * @file    dsp_app_task.c
 * @brief
 *
 * \n
 * @details
 *
 * \n
 * @version 
 * @author  gzd
 * @date    2015-7-25
 * @brief 	BWB6010
 *
 * @history
 *
 *
 *
 * 2016-1-3		解决程序标定总是失败的问题。
 *
 * 标定时，结果总是程序几个5，拿掉摄像头都还是。之前在实车上标定也是这个情况。
 * 后来拿开发板版本的程序进行标定，成功。
 * 断定是我的程序问题。分析是不是资源载入过多，造成标定算法运行失败，经测试后不是这个原因。
 * 在晚上11点，终于找到原因。要在layout(...)里对全局变量赋值。
 *
 * static void layoutChange(int layoutid, cfg4Pointers_t *pFrom_VPSS_M3_TempCmdMsg)
{
	static int curLayoutId = 0;

	pVideoBuf_Synthesis = tpHandle.synthesisBuffer;
	pVideoBuf_Front = pFrom_VPSS_M3_TempCmdMsg->pPointer0;  ///前视
	pVideoBuf_Left = pFrom_VPSS_M3_TempCmdMsg->pPointer2;	///左视
	pVideoBuf_Right = pFrom_VPSS_M3_TempCmdMsg->pPointer1;	///右视
	pVideoBuf_Rear = pFrom_VPSS_M3_TempCmdMsg->pPointer3;	///后视

 *
 *
 *
 *
 */

/*******************************************************************************
 *                                                                             *
 * Copyright (c) 2011 Texas Instruments Incorporated - http://www.ti.com/      *
 *                        ALL RIGHTS RESERVED                                  *
 *                                                                             *
 *=============================================================================*
 *
 *  File: dsp_app_task.c
 *
 ******************************************************************************/
/*
 *   @file  dsp_app_task.c
 *
 *   @brief +
 */
#include <stdio.h>
#include <string.h>
#include <xdc/std.h>
#include <xdc/runtime/System.h>

#include <ti/ipc/Ipc.h>
#include <ti/sysbios/BIOS.h>
#include <ti/sysbios/knl/Task.h>
#include <ti/sysbios/knl/Clock.h>
#include <ti/sysbios/hal/Cache.h>//liuxu, 10/18/2013, open cache operations.
#include <ti/sysbios/knl/Swi.h>//liuxu, 02/14/2014, manupliate swi.

#include "error_codes.h"
#include "common_defs.h"
#include "slave_task_mgr.h"
#include "shared_mem_cfg.h"

#include <c6x.h>//liuxu, 02/10/2014, add for profile.
#include "ti_logo.h"//liuxu, 02/20/2014, add ti logo in ti dsp processing.
#include "osd_array.h"//liuxu, 06/03/2014, add for osd and car box yuv420.
#include "carbox_array.h"

#include "ti_srv_lib.h"
#include "../utility/remote_debug_if.h"//liuxu, 04/23/2014, important ot clarify firstly.
#include "../drivers/spi/spi_flash.h"



#include "bop.h"
#include "slave_task_mgr_priv.h"
#include "command_queue.h"
#include <ti/ipc/SharedRegion.h>
//volatile int gOneframedone;



#include "bar.h"
#include "bar_h.h"
#include "car.h"
#include "menu_colab_clb.h"
#include "menu_colab_clb_h.h"
#include "colab_wp.h"
#include "colab_wp_h.h"
#include "menu_adv.h"
#include "menu_adv_h.h"
#include "menu_cola.h"
#include "menu_cola_h.h"
#include "menu_param.h"
#include "menu_param_h.h"
#include "menu_upd.h"
#include "menu_upd_h.h"
#include "menu_photo.h"
#include "menu_photo_h.h"
#include "ret_err.h"
#include "ret_ok.h"
#include "sep.h"
#include "tip.h"
#include "title_adv.h"
#include "title_colab.h"
#include "title_menu.h"
#include "title_param.h"
#include "title_upg.h"
#include "left.h"
#include "right.h"
#include "front.h"
#include "back.h"
#include "warn.h"




//enabling this macro, DSP will send command to itself, so that algorithm read image datas from DDR, turning it on
//when there is no real camera for customer to develop algorithm.
//#define TALK_TO_SELF

//DSP to A8 communication in seperated task other than the main dspAppTask task.
#define A8_CommInTask

#define FCW_FUNC	//打开使能FCW功能

#ifdef FCW_FUNC

#include "notice1.h"
#include "notice2.h"
#include "num1.h"
#include "num2.h"
#include "m1.h"
#include "m2.h"
#include "g0.h"
#include "g1.h"
#include "g2.h"
#include "g3.h"
#include "g4.h"
#include "g5.h"
#include "g6.h"
#include "g7.h"
#include "g8.h"
#include "g9.h"
#include "gdot.h"
#include "red0.h"
#include "red1.h"
#include "red2.h"
#include "red3.h"
#include "red4.h"
#include "red5.h"
#include "red6.h"
#include "red7.h"
#include "red8.h"
#include "red9.h"
#include "reddot.h"


#define TRACE_FCW	//打印FCW信息，前车距离，报警等级

#define	WARN_NONE		0
#define	WARN_SAFE		1
#define	WARN_LEVEL_1	2
#define	WARN_LEVEL_2	3
#define	WARN_LEVEL_4	4

#endif //FCW_FUNC

//currently only YUV422 is enabled
#define RGBp				0
#define RGBi				0
#define YUV420p             0
#define YUV420sp            0
#define YUV422i             1

/* DSP L1 and L2 cache registers. */
#define MAR64  *(unsigned int*)0x01848100//liuxu, 11/14/2013.

#define MAR128  *(unsigned int*)0x01848200
#define MAR129  *(unsigned int*)0x01848204
#define MAR130  *(unsigned int*)0x01848208
#define MAR131  *(unsigned int*)0x0184820c
#define MAR132  *(unsigned int*)0x01848210
#define MAR133  *(unsigned int*)0x01848214
#define MAR134  *(unsigned int*)0x01848218
#define MAR135  *(unsigned int*)0x0184821c
#define MAR136  *(unsigned int*)0x01848220
#define MAR137  *(unsigned int*)0x01848224
#define MAR138  *(unsigned int*)0x01848228
#define MAR139  *(unsigned int*)0x0184822c
#define MAR140  *(unsigned int*)0x01848230
#define MAR141  *(unsigned int*)0x01848234
#define MAR142  *(unsigned int*)0x01848238
#define MAR143  *(unsigned int*)0x0184823c
#define MAR144  *(unsigned int*)0x01848240
#define MAR192  *(unsigned int*)0x01848300

#define L2CFG  *((volatile unsigned int *)(0x01840000))
#define L1PCFG *((volatile unsigned int *)(L2CFG + 0x20))
#define L1DCFG *((volatile unsigned int *)(L2CFG + 0x40))

#define L1DWB  *((volatile unsigned int *)(0x01845040))//liuxu, 10/18/2013.
#define L2WB  *((volatile unsigned int *)(0x01845000))//liuxu, 10/18/2013.
#define L1PINV  *((volatile unsigned int *)(0x01845028))//liuxu, 10/18/2013.

#define MAR155  *(unsigned int*)0x0184826C//liuxuliuxu

#define MAR145  *(unsigned int*)0x01848244//liuxu, 01/22/2014, China port. Memory Attribute Register 145 9100 0000h - 91FF FFFFh

#define MAR146  *(unsigned int*)0x01848248//liuxu, 01/22/2014, China port. Memory Attribute Register 146 9200 0000h - 92FF FFFFh
#define MAR147  *(unsigned int*)0x0184824C//liuxu, 01/22/2014, China port. Memory Attribute Register 147 9300 0000h - 93FF FFFFh
#define MAR148  *(unsigned int*)0x01848250//liuxu, 01/22/2014, China port. Memory Attribute Register 148 9400 0000h - 94FF FFFFh
#define MAR149  *(unsigned int*)0x01848254//liuxu, 01/22/2014, China port. Memory Attribute Register 149 9500 0000h - 95FF FFFFh
#define MAR150  *(unsigned int*)0x01848258//liuxu, 01/22/2014, China port. Memory Attribute Register 150 9600 0000h - 96FF FFFFh

#define debug_mem (*(volatile int *)(0x86ffff00))//liuxu, 11/19/2013, only 256 bytes for debug.
#define debug_mem2_iput (*(volatile int *)(0x86ffff04))
#define debug_mem3_iget (*(volatile int *)(0x86ffff08))

#ifndef CONFIG_SF_DEFAULT_SPEED
#define CONFIG_SF_DEFAULT_SPEED    1000000
#endif
#ifndef CONFIG_SF_DEFAULT_MODE
#define CONFIG_SF_DEFAULT_MODE            SPI_MODE_3
#endif

#define CM_ALWON_SPI_CLKCTRL		0x08181590//liuxu, 06/18/2014, dsp has different view to A8.
#define SRV_PARAM_START_ADDR		0x100000
#define SRV_PARAM_END_ADDR			0x200000

/*
 * By enabling ENABLE_SINGLE_VIEW_FD Macro in function TI_dsp_Processing (dsp_app_task.c), user can do
 * fisheye distortion correction on single view.Which is split into two stage, the 1st stage is to allocate
 * memory to hold the lut which describe how distortion corrected pixel should be located in original view,
 * the 2nd stage is to apply the LUT during pixel processing.
 */
#define ENABLE_SINGLE_VIEW_FD 0

/*******************************************************************************
 *                           global variables                                 *
 ******************************************************************************/

#ifdef A8_CommInTask

#define TI_DSP_ALG//liuxu, 02/12/2014, disable temporarily//liuxu, 02/11/2014.
//#define TWO_TASKS_SLEEP

volatile cfg8Pointers_t mutualTaskCmdMsg;
int firstSetOfFramesReady = 0;
int ToProcessOneSet = 0;
int DoneProcessedOneSet = 0;

unsigned int mySentToA8Counter = 0;
unsigned short int ChInfoFromA8 = 0xFFFF;//liuxu, 06/19/2014, info from A8.
unsigned short int InfoSwmsLayout = 0;//liuxu, 06/19/2014, info to M3.

#endif //#ifdef A8_CommInTask



unsigned int badcounter = 0;//liuxu, 06/05/2014, stats the percentage of non 40ms for PAL.
int debugStopFlag = 0;// for ccs debug from the most beinning

int win_startX[20] ,win_startY[20] ,win_Width[20] ,win_Height[20], crop_startX[20] ,crop_startY[20];
void *srcBuf[5], *dstBuf[5];

void * pVideoBuf_Synthesis = NULL;
void * pVideoBuf_Front = NULL;
void * pVideoBuf_Left = NULL;
void * pVideoBuf_Right = NULL;
void * pVideoBuf_Rear = NULL;



uint32_t gEdma_ChId, gTcc;//liuxu, 11/12/2013, use edma for simple srv demo.
//Semaphore_Handle hSemaCpyDone;
//liuxu, 02/11/2014, use queue1 for ti dsp. #define FOUR_IN_ONE_D1//liuxu, 12/19/2013.
bopCtxt_t               myBopTaskCtxt;//liuxu, 11/12/2013.

//static Word32 persmatin[] = {1168548, 4691, -29928995, 7274, 2387337, -4112491, -9513, 325, 1048576, 3430890, 83407, 69132337, -221228, 3112890, 115834630, 1160, 2661, 1048576, 1465549, 2723, 51888110, 21501, 2237038, -881129, 7046, -332, 1048576, 3454702, -295296, 104147669, 99852, 2952685, -114814057, 600, -2875, 1048576};
Word32 persmatin[] = {1131601, 81042, 7261885, -38166, 1464216, -22484589, -2277, 823, 1048576, 1782065, -118325, -61070805, -39328, 1583282, 109851828, 717, -707, 1048576, 962336, -67172, 1721768, 24735, 1384077, -6917033, 3589, 251, 1048576, 1580675, 171120, -27832885, -36117, 1451835, -65973417, 779, -513, 1048576};

//FengJing Camera
//unsigned int VendorLUTin[] = {0,1689,3377,5063,6817,8424,10098,11765,13487,15075,16716,18346,19964,21569,23159,24733,26290,27829,29348,30846,32323,33777,35207,36613,37993,39348,40676,41978,43252,44499,45719,46911,48076,49214,50324,51408,52465,53496,54502,55482,56437,57368,58276,59160,60021,60860,61678,62474,63251,64007,64743,65461,66161,66842,67507,68155,68786,69401,70002,70587,71158,71715,72258,72788,73306,73811,74304,74785,75255,75715,76163,76601,77029,77448,77857,78257,78648,79030,79404,79770,80128,80478,80821,81157,81485,81807,82122,82431,82733,83030,83320,83605,83884,84157,84426,84689,84947,85200,85448,85692,85931,86165,86396,86622,86844,87062,87276,87487,87694,87897,88096,88292,88485,88675,88861,89044,89225,89402,89576,89748,89916,90082,90246,90406,90565,90720,90874,91025,91173,91320,91464,91606,91746,91884,92019,92153,92285,92415,92543,92669,92794,92916,93037,93156,93274,93390,93504,93617,93729,93838,93947,94054,94159,94263,94366,94467,94568,94666,94764,94860,94955,95049,95142,95234,95324,95413,95502,95589,95675,95760,95844,95927,96009,96091,96171,96250,96328,96406,96482,96558,96633,96707,96780,96852,96924,96995,97065,97134,97202,97270,97337,97403,97469,97534,97598,97661,97724,97786,97848,97909,97969,98029,98088,98146,98204,98262,98318,98374,98430,98485,98540,98594,98647,98700,98752,98804,98856,98907,98957,99007,99057,99106,99155,99203,99250,99298,99345,99391,99437,99483,99528,99573,99617,99661,99705,99748,99791,99833,99875,99917,99958,99999,100040,100080,100120,100160,100199,100238,100277,100315,100353,100391,100428,100466,100502,100539/*,100575,100611,100647,100682,100717,100752,100786,100820,100854,100888,100922,100955,100988*/};
unsigned int VendorLUTin[] = {0,2018,3972,5981,7914,9897,11862,13805,15776,17682,19601,21457,23339,25198,27039,28808,30589,32348,34089,35782,37428,39092,40709,42279,43805,45478,46785,48243,49677,51072,52432,53791,55050,56333,57574,58774,59936,61126,62214,63333,64418,65470,66491,67482,68443,69377,70343,71228,72083,72978,73786,74634,75399,76205,76927,77694,78378,79108,79803,80457,81132,81778,82380,83013,83597,84174,84754,85282,85850,86406,86893,87418,87884,88395,88890,89316,89791,90206,90647,91093,91508,91890,92309,92718,93087,93446,93830,94207,94551,94873,95228,95575,95911,96204,96513,96835,97115,97395,97699,97998,98291,98553,98801,99075,99347,99616,99880,100107,100330,100579,100825,101041,101250,101474,101704,101920,102115,102308,102524,102736,102946,103152,103355,103529,103701,103880,104071,104259,104431,104591,104749,104920,105095,105267,105422,105569,105713,105867,106028,106186,106337,106472,106606,106737,106867,106995,107121,107250,107391,107530,107667,107794,107911,108027,108141,108261,108388,108514,108637,108755,108861,108966,109070,109172,109273,109373,109472,109569,109669,109778,109885,109992,110097,110197,110287,110376,110464,110551,110637,110723,110807,110891,110973,111055,111136,111216,111295,111373,111451,111527,111612,111698,111783,111867,111950,112032,112108,112179,112249,112318,112387,112455,112522,112589,112655,112721,112786,112850,112913,112977,113039,113101,113162,113223,113283,113343,113402,113460,113518,113576,113633,113689,113745,113801,113856,113911,113964,114018,114071,114123,114176,114227,114278,114329,114380,114430,114479,114529,114577,114626,114674,114722,114769,114816,114862,114908,114954,115000,115045,115089,115134,115178,115221,115265,115307,115350,115392,115434,115476,115517,115558,115599,115640,115680,115719,115759,115798,115837,115876};
//unsigned int ProfileClockticks = 0;

Byte *memRearCamAfterFishEyeCorrection;

static volatile cfg4Pointers_t *pFrom_VPSS_M3_TempCmdMsg = NULL_VALUE;
static volatile cfg4Pointers_t *pDSP_To_VPSS_M3_TempCmdMsg = NULL_VALUE;
static volatile cfg4Pointers_t *pFrom_A8_TempCmdMsg = NULL_VALUE;
static volatile cfg8Pointers_t *pDSP_To_A8_TempCmdMsg = NULL_VALUE;//liuxuliuxu, 8/20/2013. //liuxu, 10/5/2013.
static volatile cfg8Pointers_t *pFrom_VPSS_M3_TempCmdMsg2 = NULL_VALUE;//liuxuliuxu, 8/8/2013, for DSP EDMA downscale and encoder.


/*************************************************************************
 *  @struct        struct drawlinestruct
 *
 *  control draw backup line struct
 *
 ************************************************************************/
 struct drawlinestruct{
	int xin1;
	int yin1;
	int xin2;
	int yin2;
	int xp;
	int yp;
	int angle;
	int xline1_std;
	int xline1_end;
	int yline1;
	int xline2_std;
	int xline2_end;
	int yline2;
	int xline3_std;
	int xline3_end;
	int yline3;
	char line1yuv[4];
	char line2yuv[4];
	char line3yuv[4];
    short *lookuptable;

} ;

 /*two method set initial argment
  * method 1: xin1, yin1, xin2, yin2, xp
  * method 2: xin1, yin1, xin2, xp, angle
  * */
 /*initilal argment */
static struct drawlinestruct t_drawlinestruct ={
		.xin1 = 40+100, //左下角X
		.yin1 = 400, //左上角y
		.xin2 = 220+100, //左上角x
		.yin2 = 100,
		.xp   = 280+100, //右下角x
		.angle = 0,//45, //
};
static const float slope_tan[90]={
		-57.290051,-28.636276,-19.081147,-14.300672,-11.430056,-9.514367,-8.144348,
		-7.115371,-6.313753,-5.671283,-5.144555,-4.704631,-4.331476,-4.010781,-3.732051,
		-3.487415,-3.270853,-3.077684,-2.904211,-2.747478,-2.605089,-2.475087,-2.355853,
		-2.246037,-2.144507,-2.050304,-1.962611,-1.880727,-1.804048,-1.732051,-1.664280,
		-1.600335,-1.539865,-1.482561,-1.428148,-1.376382,-1.327045,-1.279942,-1.234897,
		-1.191754,-1.150368,-1.110613,-1.072369,-1.035530,-1.000000,-0.965689,-0.932515,
		-0.900404,-0.869287,-0.839100,-0.809784,-0.781286,-0.753554,-0.726543,-0.700208,
		-0.674509,-0.649408,-0.624869,-0.600861,-0.577350,-0.554309,-0.531709,-0.509526,
		-0.487733,-0.466308,-0.445229,-0.424475,-0.404026,-0.383864,-0.363970,-0.344328,
		-0.324920,-0.305731,-0.286745,-0.267949,-0.249328,-0.230868,-0.212557,-0.194380,
		-0.176327,-0.158384,-0.140541,-0.122785,-0.105104,-0.087489,-0.069927,-0.052408,
		-0.034921,-0.017455,-0.000000};

static void draw_line(char * framebuffer,struct drawlinestruct * arg);

typedef enum _eMSG_TYPE {
	MSG_FRONT = 0,		/*方向前*/
	MSG_FRONT_FULLVIEW,	/*方向前-全屏*/
	MSG_LEFT,			/*方向左*/
	MSG_LEFT_FULLVIEW,	/*方向左-全屏*/
	MSG_RIGHT,   		/*方向右*/
	MSG_RIGHT_FULLVIEW,	/*方向右-全屏*/
	MSG_REAR,			/*倒车*/
	MSG_ALLVIEW,		/*四路视频同时显示*/
	MSG_SNAPSHOT,	/*标定-摄像头拍照*/
	MSG_CALIBRATING,	/*标定-读取标定参数送给DSP*/
	MSG_SLEEP,			/*休眠*/
	MSG_MENU_BACK,		/*遥控器消息：返回*/
	MSG_MENU_LEFT,	/*遥控器消息：左*/
	MSG_MENU_RIGHT,	/*遥控器消息：右*/
	MSG_MENU_UP,	/*遥控器消息：上*/
	MSG_MENU_DOWN,	/*遥控器消息：下*/
	MSG_MENU_OK,	/*遥控器消息：确定*/
	MSG_MENU_POWER,/*遥控器消息：电源*/
	MSG_UNKNOWN,
} eMSG_TYPE;


#define __UI__
#define	UI_SHOW_TIP_ARROW	//编译开关，打开显示菜单左侧箭头


#ifdef __UI__
/*******************************************************************************
 *
 * 自定义界面显示框架
 *
 ******************************************************************************/


/*
#define VIDEO_BUF_SYNTHESIS     (tpHandle.synthesisBuffer)
#define VIDEO_BUF_LEFT          (pFrom_VPSS_M3_TempCmdMsg->pPointer1)
#define VIDEO_BUF_RIGHT         (pFrom_VPSS_M3_TempCmdMsg->pPointer2)
#define VIDEO_BUF_REAR          (pFrom_VPSS_M3_TempCmdMsg->pPointer3)
#define VIDEO_BUF_FRONT          (pFrom_VPSS_M3_TempCmdMsg->pPointer0)
*/

#define VIDEO_BUF_SYNTHESIS     (pVideoBuf_Synthesis)
#define VIDEO_BUF_LEFT          (pVideoBuf_Left)
#define VIDEO_BUF_RIGHT         (pVideoBuf_Right)
#define VIDEO_BUF_REAR          (pVideoBuf_Rear)
#define VIDEO_BUF_FRONT         (pVideoBuf_Front)

#define VIDEO_BUF_CAR           (yuv_car_yuv) //(Carbox_80_240)
#define VIDEO_BUF_TIPBAR        (OSD_400_224)

#define u16 unsigned short
#define u8 unsigned char
#define u32 unsigned int

/*
 * 显示区域
 */
typedef struct {
	int win_startX;
	int win_startY;
	int win_Width;
	int win_Height;
	int crop_startX;
	int crop_startY;

} tREGION;


/*按键类型*/
typedef enum {
	KEY_ACC = 0,//ACC
	KEY_FRONT,	//前视
	KEY_LEFT,	//左视
	KEY_RIGHT,	//右转
	KEY_REAR,	//后视
//遥控器消息：
	MENU_BACK,	//返回
	MENU_LEFT,	//左翻
	MENU_RIGHT,	//右翻
	MENU_UP,	//上翻
	MENU_DOWN,	//下翻
	MENU_OK,	//确定
	MENU_POWER,	//电源

	KEY_FULL,	//四个视图

	KEY_RESERVED_1,
	KEY_RESERVED_2,

	FCW_DISTANCE,
	FCW_WARNING,

	KEY_END,

	KEY_UNKNOWN = 0xFF	//未知
} eKEYTYPE;

#define MSG_SNAPSHOT_OK		0x01	/*标定-摄像头拍照，成功*/
#define MSG_SNAPSHOT_ERR 	0x00	/*标定-摄像头拍照，失败*/
#define MSG_COLABRATE_OK    0x01  /*标定成功*/
#define MSG_COLABRATE_ERR   0x00  /*标定失败*/


#define		_SCREEN_PIXEL_WIDTH_			736					//屏的宽度
#define		_SCREEN_PIXEL_HEIGHT_			480					//屏的高度
#define		_ITEM_PIXEL_HEIGHT_				100					//屏的高度

//屏显
#define		_PAGE_MAX_ROW_					4					//每页最大显示行数
#define		_PAGE_MAX_COLUMN_				16					//每页最大列数

#define		_BUTTON_WIDTH_1_X_				16					//16个像素
#define		_BUTTON_WIDTH_2_X_				32					//32个像素


#define 	VISIABLE			1	//可见
#define 	INVISIABLE			0	//隐藏

/*!
 * 视图类型
 *
 */
typedef enum {
	VIEW_FRONT = 0,
	VIEW_FONT_FULL,
	VIEW_LEFT,
	VIEW_LEFT_FULL,
	VIEW_RIGHT,
	VIEW_RIGHT_FULL,
	VIEW_REAR,
	VIEW_REAR_FULL,
	VIEW_AllVIEW,
	VIEW_MENU

} eVIEWTYPE;


/*
 * 子视图类型
 */
typedef enum {
	SUBVIEW_SYSTHESIS = 0,
	SUBVIEW_CAR,
	SUBVIEW_SINGLEVIEW_FRONT,
	SUBVIEW_SINGLEVIEW_LEFT,
	SUBVIEW_SINGLEVIEW_RIGHT,
	SUBVIEW_SINGLEVIEW_REAR,

	SUBVIEW_TIPBAR,
	SUBVIEW_FULLSCREEN,
	SUBVIEW_SPLIT_00,	//上左
	SUBVIEW_SPLIT_01,	//上右
	SUBVIEW_SPLIT_10,	//下左
	SUBVIEW_SPLIT_11,	//下右
	SUBVIEW_MENU,

	SUBVIEW_END
} eSUBVIEW;


typedef struct {
	eVIEWTYPE	eType;
	void*		pSrc;		//显示源，两种：视频源，图片数组
	u8			bVisable;
} tVIEW;



#define PAGE_DEFAULT 	PAGE_FRONT	//默认页面为前视

//界面包含的所有页面类型
typedef		enum
{
	PAGE_FRONT = 0,
	PAGE_FONT_FULL,
	PAGE_LEFT,
	PAGE_LEFT_FULL,
	PAGE_RIGHT,
	PAGE_RIGHT_FULL,
	PAGE_REAR,
	PAGE_REAR_FULL,
	PAGE_AllVIEW,
	PAGE_MENU,				//菜单
		PAGE_MENU_SETPARAM, 	//设置参数
		PAGE_MENU_UPG,			//升级
		PAGE_MENU_COLABRAT, 	//标定
		PAGE_MENU_ADVANCEDFUNC,		/*高级功能*/

	PAGE_TYPE_END
}	ePAGE_TYPE;

typedef enum {
	TITLE_MENU = 0,
	TITLE_SETPARAM,
	TITLE_UPD,
	TITLE_COLABRATE,
	TITLE_ADVFUNC,

	TITLE_END,

	TITLE_NON = 0xFF
} eTITLE;


//图标类型
typedef		enum
{
	ICON_UNDEFINE = -1,
	ICON_TIP = 0,								//行提示
	ICON_OK,									//成功状态
	ICON_ERR,									//错误状态

	ICON_TYPE_END,
}	eICON;

//图标
typedef		struct
{
	u8				eType;										//图标类型
//	tREGION			tRegion;									//显示区域
//	u8				bVisable;									//是否可见
//	u8				u8Row;										//行
//	u8				u8Column;									//列
	u8				u8AttachedItem;								//所属项

}	tICON;

//按钮类型
typedef		enum
{
	BUTTON_OK = 0,												//确定
	BUTTON_CANCEL,												//取消

	BUTTON_TYPE_END,

}	_eButton_Type;


//按钮
typedef		struct
{
	_eButton_Type	eType;										//按钮类型
//	tREGION			tRegion;									//显示区域
	u8				u8Row;										//行
	u8				u8Column;									//列

}	tBUTTON;

/*
//标题栏
typedef		struct
{
	void			*pSrc;										//数据源
}	tTITLEBAR;
*/

//所有的项
typedef enum {
	ITEM_MENU_PARAM = 0,				//设置参数
	ITEM_MENU_UPD,						//升级
	ITEM_MENU_COLABRATION,				//标定
	ITEM_MENU_ADVANCEDFUNC,				//高级功能
	ITEM_MENU_COLABRATION_WRITEPARAM,	//标定-写参数
	ITEM_MENU_COLABRATION_COLABRATE,	//标定-标定
	ITEM_MENU_COLABRATION_ALLVIEW,		//标定-所有画面
	ITEM_MENU_ADVANCEDFUNC_TAKEPHOTO,	//高级功能-拍照

	ITEM_MENU_END
} eITEMTYPE;

/*命令执行结果*/
typedef enum {
	RET_OK = 1,  	/*成功*/
	RET_FAIL = 0, 	/*失败*/
	RET_TOUT, 		/*超时*/
	RET_UNKOWN
} eRET;

//项，是指屏幕中的一行，一页可最多显示四项
typedef		struct
{
	eITEMTYPE		eItemType;					//数据源
	eICON			eTipIcon;					//当前项提示图标
	eICON			eStatIcon;					//当前项命令执行结果图标
	u8				u8Ret;						//命令项执行结果
} 	tITEM;

//页面,由项、图标、按钮三种元素组成
typedef		struct
{
//	tVIEW*			pViews;										//视图
	eVIEWTYPE		eViewType;									//视图类型
//	void*			pTitleBar;									//标题栏
	eTITLE			eTitle;
	tITEM*			pItems;										//项
	tBUTTON*		pButtons;									//按钮

	u8				u8ItemCnt;									//项数
	u8				u8ButtonCnt;								//按钮个数
	u8				u8FocusItem;								//焦点项
	u8				u8FocusButton;								//焦点按钮

	u8				ePageType;									//页面类型
	u8				u8ParentPageId; 							//父页面号

} 	tPAGE;


//整个界面；由多个页面级联而成
typedef		struct
{
	u8				u8CurPage;									//当前活动页面号
	tPAGE			aPage[PAGE_TYPE_END];						//页面数组

} 	tPAGE_CONTROL_FLOW;


//OLED显示屏控制有限状态机
typedef		struct
{
	u16					u8PendingCommand;					//等待执行的按键命令
	u8					u8CurrentPage;						//当前操作页面
	u8					bPageFresh;							//是否刷新页面
	u8					bRet_TakenSnapshot;					/*拍照结果*/
	u8					bRet_Colabration;					/*标定执行结果*/
	u8					u8ReqTakeSnapshot;					/*请求A8拍照标志*/
	u8					bShowAllView;						/*显示全部视频画面*/

	u8					FCW_u8WarningLevel;					//报警等级
	u16					FCW_u16Distance;					//前车距离

} 	tUIFSM;



//屏初始化
void	UI_Init(void);

//显示页面
void	Show_Page(u8 u8PageType);

//显示视图
void 	Show_View(eVIEWTYPE eViewType);

//显示右下角警告栏
void Show_WarnView(u8 u8PageType);

//显示标题栏
void 	Show_Title(eTITLE eTtitle);


//显示单个列表
void	Show_Item(u8 u8Page, u8 u8ItemIndex, u8 u8ShowType);

//显示标定结果图标
void Show_ColabrationState();

//显示图标
void	Show_Icon(void);

//显示按钮
void	Show_Button(u8 u8Page, u8 u8ButtonIndex, u8 u8ShowType);
void 	Show_Distance(u8 u8WarningLevel, u16 u16Distance);

//显示碰撞报警图标
void Show_CollsionWarning(u8 u8WarningLevel);

//将屏显缓区内一块点位区域输出到屏幕中对应区域显示
void	BitBlt(eVIEWTYPE eViewType, eSUBVIEW eSubView, tREGION *ptRegion, void *pSrc);
void	BitBlt_Raw(int win_startX, int win_startY, int win_Width, int win_Height, int crop_startX, int crop_startY, void *pSrc);


//初始化页面控制流
void	Init_Page(void);

//界面处理
void	UI_Process(void);

//按键消息处理
//void	UI_Key_Process(eKEYTYPE eKeyType);
void	UI_Key_Process(void);


//static 	tVIEW		aView[PAGE_TYPE_END][VIEW_END];			//所有视图
static	tITEM		aItem[PAGE_TYPE_END][4];					//所有项
static	tICON		aIcon[ICON_TYPE_END];						//图标
static	tBUTTON		aButton[2];									//按钮

volatile tUIFSM					tUIFsm;	   			//屏状态机
volatile tPAGE_CONTROL_FLOW		tPage_Flow;			//页面控制流


static uint8_t	menu_Buf[466*480*2];	//菜单背景，黑色


tPAGE		*pCurPage 		= NULL;							//当前页面指针
tPAGE		*pNextPage 		= NULL;							//跳转页面指针
tPAGE		*pParentPage 	= NULL;							//父页面指针

/*!
 * 视图区域
 *
 */
tREGION aViewRegion[SUBVIEW_END] = {
	{0, 0, 320, 480, 0, 0 },	//synthesis view
	{120, 120, 80, 240, 0, 0 },	//car box
	{320, 0, 736-320, 400, 160, 40 },	//single camera view,FRONT
	{320, 0, 736-320, 400, 160, 60 },	//single camera view,LEFT
	{320, 0, 736-320, 400, 160, 60 },	//single camera view,RIGHT
	{320, 0, 736-320, 400, 180, 60 },	//single camera view,REAR

	{320, 400, 736-320, 80, 20, 0 },	//Tip bar
	{0, 0, 736, 480, 0, 0 },   //full screen
	{0, 0, 320, 240, 0, 0 },	//split
	{320, 0, 736 - 320, 240, 0, 0 },	//split
	{0, 240, 320, 240, 0, 0 },	//split
	{320, 240, 736 - 320, 240, 0, 0 },	//split
};


/*!
 * 显示定义
 *
 */
#define	WIN_WITDTH				(736-320)	//(736-320)	//466
#define	WIN_HEIGHT				480
#define	WIN_START_X				320//320	//屏幕起始显示位置
#define WIN_START_Y				0
#define WIN_SEG_WIDTH			50	//60  //每格子宽度
#define	WIN_SEG_AMOUNT			8	//总格子数，注意最后一个是66
//标题栏
#define	TITLE_WIN_START_X		(WIN_START_X)	//屏幕起始显示位置
#define	TITLE_WIN_START_Y		0	//屏幕起始显示位置
#define TITLE_WIDTH				(142)
#define TITLE_HEIGHT			(54)
//分割栏
#define	SEP_START_X				(WIN_START_X)	//屏幕起始显示位置
#define	SEP_START_Y				66	//屏幕起始显示位置
#define SEP_WIDTH				WIN_WITDTH	//466 //(736-320)
#define SEP_HEIGHT				4

//列表项
#define	ITEM_START_X			(WIN_START_X + (WIN_SEG_WIDTH << 1))//屏幕起始显示位置
#define ITEM_HEIGHT				(100)
#define ITEM_START_Y_OFFSET		(80)
#define ITEM_START_Y(i)			(ITEM_START_Y_OFFSET + i * ITEM_HEIGHT)	//起始显示位置
//列表项菜单
#define	ITEM_MENU_WIDTH			(102)
#define ITEM_MENU_HEIGHT		(42)
//列表项高亮条
#define	ITEM_BAR_WIDTH			(240)
#define ITEM_BAR_HEIGHT			(4)
#define ITEM_BAR_START_X		(ITEM_START_X)
#define ITEM_BAR_START_Y(i)		(ITEM_START_Y(i) + ITEM_MENU_HEIGHT + 5)
//提示箭头
#define	ITEM_TIP_WIDTH			(50)
#define ITEM_TIP_HEIGHT			(50)
#define ITEM_TIP_START_X		(330)
#define ITEM_TIP_START_Y(i)		(ITEM_START_Y(i))
//结果状态
#define	ITEM_RET_WIDTH			(50)
#define ITEM_RET_HEIGHT			(50)
#define ITEM_RET_START_X		(630)
#define ITEM_RET_START_Y(i)		(ITEM_START_Y(i))

//FCW
#define FCW_NOTICE_START		(WIN_START_X+72+3)
#define FCW_MI_START			(736-30-20)
#define FCW_NUM_START			(FCW_NOTICE_START+180+10)
#define FCW_NUM_HUNDRED_OFFSET	(FCW_NUM_START)
#define FCW_NUM_TEN_OFFSET		(FCW_NUM_HUNDRED_OFFSET + 20)
#define FCW_NUM_ONE_OFFSET		(FCW_NUM_TEN_OFFSET + 20)
#define FCW_NUM_DOT_OFFSET		(FCW_NUM_ONE_OFFSET + 20)
#define FCW_NUM_TAIL_OFFSET		(FCW_NUM_DOT_OFFSET + 10)


static const void*	tNumPtr_Green[10] =
									{
										yuv_g0_yuv,
										yuv_g1_yuv,
										yuv_g2_yuv,
										yuv_g3_yuv,
										yuv_g4_yuv,
										yuv_g5_yuv,
										yuv_g6_yuv,
										yuv_g7_yuv,
										yuv_g8_yuv,
										yuv_g9_yuv,
									};

static const void*	tNumPtr_Red[10] =
								{
									yuv_red0_yuv,
									yuv_red1_yuv,
									yuv_red2_yuv,
									yuv_red3_yuv,
									yuv_red4_yuv,
									yuv_red5_yuv,
									yuv_red6_yuv,
									yuv_red7_yuv,
									yuv_red8_yuv,
									yuv_red9_yuv,
								};

typedef struct {
	void*		pSrc_Normal;	//常态
	void*		pSrc_Hilight;	//高亮
	int			width;			//宽度
	int			height;			//高度
} tPICYUV;


typedef struct {
	void*	pSrc;
	int		width;
	int		height;
} tTITLE;

static tTITLE	aTitle_YUV[TITLE_END];


/*!
 * 列表项资源图片数组
 *
 */
static tPICYUV aItem_YUV[ITEM_MENU_END];	/*菜单项资源*/
static tPICYUV aBar_YUV;					/*标题栏资源*/

/*!
 * 菜单背景填充黑色，YUV=0x10 0x18
 *
 */
void FillBackground()
{
	u32 i = 0;

	while(i < ((466*480*2) - 1)) {
		menu_Buf[i] = 0x10;
		i++;
		menu_Buf[i] = 0x80;
		i++;
	}
}
/*
 * 屏初始化
 */
void	UI_Init(void)
{
	aTitle_YUV[TITLE_MENU].pSrc = yuv_title_menu_yuv;
	aTitle_YUV[TITLE_MENU].width = 142;
	aTitle_YUV[TITLE_MENU].height = 54;
	aTitle_YUV[TITLE_SETPARAM].pSrc = yuv_title_param_yuv;
	aTitle_YUV[TITLE_SETPARAM].width = 142;
	aTitle_YUV[TITLE_SETPARAM].height = 54;
	aTitle_YUV[TITLE_UPD].pSrc = yuv_title_upg_yuv;
	aTitle_YUV[TITLE_UPD].width = 142;
	aTitle_YUV[TITLE_UPD].height = 54;
	aTitle_YUV[TITLE_COLABRATE].pSrc = yuv_title_colab_yuv;
	aTitle_YUV[TITLE_COLABRATE].width = 142;
	aTitle_YUV[TITLE_COLABRATE].height = 54;
	aTitle_YUV[TITLE_ADVFUNC].pSrc = yuv_title_adv_yuv;
	aTitle_YUV[TITLE_ADVFUNC].width = 142;
	aTitle_YUV[TITLE_ADVFUNC].height = 54;

	aItem_YUV[ITEM_MENU_PARAM].pSrc_Normal = yuv_menu_param_yuv;
	aItem_YUV[ITEM_MENU_PARAM].pSrc_Hilight = yuv_menu_param_h_yuv;
	aItem_YUV[ITEM_MENU_PARAM].width = 102;
	aItem_YUV[ITEM_MENU_PARAM].height = 42;
	aItem_YUV[ITEM_MENU_UPD].pSrc_Normal = yuv_menu_upd_yuv;
	aItem_YUV[ITEM_MENU_UPD].pSrc_Hilight = yuv_menu_upd_h_yuv;
	aItem_YUV[ITEM_MENU_UPD].width = 102;
	aItem_YUV[ITEM_MENU_UPD].height = 42;
	aItem_YUV[ITEM_MENU_COLABRATION].pSrc_Normal = yuv_menu_cola_yuv;
	aItem_YUV[ITEM_MENU_COLABRATION].pSrc_Hilight = yuv_menu_cola_h_yuv;
	aItem_YUV[ITEM_MENU_COLABRATION].width = 102;
	aItem_YUV[ITEM_MENU_COLABRATION].height = 42;
	aItem_YUV[ITEM_MENU_ADVANCEDFUNC].pSrc_Normal = yuv_menu_adv_yuv;
	aItem_YUV[ITEM_MENU_ADVANCEDFUNC].pSrc_Hilight = yuv_menu_adv_h_yuv;
	aItem_YUV[ITEM_MENU_ADVANCEDFUNC].width = 102;
	aItem_YUV[ITEM_MENU_ADVANCEDFUNC].height = 42;
	aItem_YUV[ITEM_MENU_COLABRATION_WRITEPARAM].pSrc_Normal = yuv_colab_wp_yuv;
	aItem_YUV[ITEM_MENU_COLABRATION_WRITEPARAM].pSrc_Hilight = yuv_colab_wp_h_yuv;
	aItem_YUV[ITEM_MENU_COLABRATION_WRITEPARAM].width = 102;
	aItem_YUV[ITEM_MENU_COLABRATION_WRITEPARAM].height = 42;
	aItem_YUV[ITEM_MENU_COLABRATION_COLABRATE].pSrc_Normal = yuv_menu_colab_clb_yuv;
	aItem_YUV[ITEM_MENU_COLABRATION_COLABRATE].pSrc_Hilight = yuv_menu_colab_clb_h_yuv;
	aItem_YUV[ITEM_MENU_COLABRATION_COLABRATE].width = 102;
	aItem_YUV[ITEM_MENU_COLABRATION_COLABRATE].height = 42;

//	aItem_YUV[ITEM_MENU_COLABRATION_ALLVIEW].pSrc_Normal = yuv_menu_photo_yuv;
//	aItem_YUV[ITEM_MENU_COLABRATION_ALLVIEW].pSrc_Hilight = yuv_menu_photo_h_yuv;
//	aItem_YUV[ITEM_MENU_COLABRATION_ALLVIEW].width = 64;
//	aItem_YUV[ITEM_MENU_COLABRATION_ALLVIEW].height = 42;

	aItem_YUV[ITEM_MENU_ADVANCEDFUNC_TAKEPHOTO].pSrc_Normal = yuv_menu_photo_yuv;
	aItem_YUV[ITEM_MENU_ADVANCEDFUNC_TAKEPHOTO].pSrc_Hilight = yuv_menu_photo_h_yuv;
	aItem_YUV[ITEM_MENU_ADVANCEDFUNC_TAKEPHOTO].width = 64;
	aItem_YUV[ITEM_MENU_ADVANCEDFUNC_TAKEPHOTO].height = 42;

	aBar_YUV.pSrc_Normal = yuv_bar_yuv;
	aBar_YUV.pSrc_Hilight = yuv_bar_h_yuv;
	aBar_YUV.width = 200;
	aBar_YUV.height = 4;


	tUIFsm.u8PendingCommand = 0xFF;
	tUIFsm.u8CurrentPage = PAGE_DEFAULT;
	tUIFsm.bPageFresh = FALSE;
	tUIFsm.bRet_Colabration = RET_UNKOWN;
	tUIFsm.bRet_TakenSnapshot = RET_UNKOWN;
	tUIFsm.u8ReqTakeSnapshot = 0;
	tUIFsm.bShowAllView = 0;
	tUIFsm.bRet_Colabration = RET_UNKOWN;
	tUIFsm.FCW_u16Distance = 0;
	tUIFsm.FCW_u8WarningLevel = WARN_NONE;

	//初始化页面
	Init_Page();

	//菜单背景填充黑色，YUV=0x10 0x18
	FillBackground();
}


/*!
 * 初始化页面控制流
 * \n
 *
 * \n
 * @see
 */
void	Init_Page(void)
{
	u8	i = 0;
	u8	u8PageType = 0;
	tPAGE	*pPage = NULL;

   	//清空项
	memset(&aItem, 0, 4 * PAGE_TYPE_END * sizeof(tITEM));
//	memset(&aView, 0, VIEW_END * sizeof(tVIEW));

	//1)初始化所有按钮
	aButton[0].eType = BUTTON_OK;
	aButton[0].u8Row = 2;
	aButton[0].u8Column = 5;
//	aButton[0].u8Width = _BUTTON_WIDTH_2_X_;

	//初始化按钮-取消
	aButton[1].eType = BUTTON_CANCEL;
	aButton[1].u8Row = 2;
	aButton[1].u8Column = 1;
//	aButton[1].u8Width = _BUTTON_WIDTH_2_X_;

	//2)初始化所有页面
	u8PageType = PAGE_FRONT;

	while( u8PageType < PAGE_TYPE_END )
	{
		pPage = &(tPage_Flow.aPage[u8PageType]);

		memset((u8*)pPage, 0, sizeof(tPAGE));

		pPage->ePageType = (ePAGE_TYPE)u8PageType;

		switch( u8PageType )
		{
			//视频显示页面
		case	PAGE_FRONT:
			pPage->eViewType = VIEW_FRONT;
			pPage->eTitle = TITLE_NON;
			break;
		case	PAGE_FONT_FULL:
			pPage->eViewType = VIEW_FONT_FULL;
			pPage->eTitle = TITLE_NON;
			break;
		case	PAGE_LEFT:
			pPage->eViewType = VIEW_LEFT;
			pPage->eTitle = TITLE_NON;
			break;
		case	PAGE_LEFT_FULL:
			pPage->eViewType = VIEW_LEFT_FULL;
			pPage->eTitle = TITLE_NON;
			break;
		case	PAGE_RIGHT:
			pPage->eViewType = VIEW_RIGHT;
			pPage->eTitle = TITLE_NON;
			break;
		case	PAGE_RIGHT_FULL:
			pPage->eViewType = VIEW_RIGHT_FULL;
			pPage->eTitle = TITLE_NON;
			break;
		case	PAGE_REAR:
			pPage->eViewType = VIEW_REAR;
			pPage->eTitle = TITLE_NON;
			break;
		case	PAGE_REAR_FULL:
			pPage->eViewType = VIEW_REAR_FULL;
			pPage->eTitle = TITLE_NON;
			break;
		case	PAGE_AllVIEW:
			pPage->eViewType = VIEW_AllVIEW;
			pPage->eTitle = TITLE_NON;
			break;
		case	PAGE_MENU:	//菜单
			pPage->eViewType = VIEW_MENU;
			pPage->eTitle = TITLE_MENU;
			pPage->pItems = aItem[PAGE_MENU];
			pPage->pButtons = NULL;
			pPage->u8ButtonCnt = 0;
			pPage->u8FocusItem = 0;
			pPage->u8FocusButton = 0;

			pPage->u8ItemCnt = 4;
			pPage->pItems[0].eItemType = ITEM_MENU_PARAM;
			pPage->pItems[0].u8Ret = RET_UNKOWN;
			pPage->pItems[1].eItemType = ITEM_MENU_UPD;
			pPage->pItems[1].u8Ret = RET_UNKOWN;
			pPage->pItems[2].eItemType = ITEM_MENU_COLABRATION;
			pPage->pItems[2].u8Ret = RET_UNKOWN;
			pPage->pItems[3].eItemType = ITEM_MENU_ADVANCEDFUNC;
			pPage->pItems[3].u8Ret = RET_UNKOWN;

			break;

		case	PAGE_MENU_SETPARAM: 	//设置参数

			pPage->eViewType = VIEW_MENU;
			pPage->eTitle = TITLE_SETPARAM;
			pPage->pItems = NULL;
			pPage->pButtons = NULL;
			pPage->u8ButtonCnt = 0;
			pPage->u8FocusItem = 0;
			pPage->u8FocusButton = 0;
			pPage->u8ItemCnt = 0;
			break;

		case	PAGE_MENU_UPG:			//升级

			pPage->eViewType = VIEW_MENU;
			pPage->eTitle = TITLE_UPD;
			pPage->pItems = NULL;
			pPage->pButtons = NULL;
			pPage->u8ButtonCnt = 0;
			pPage->u8FocusItem = 0;
			pPage->u8FocusButton = 0;
			pPage->u8ItemCnt = 0;
			break;

		case	PAGE_MENU_COLABRAT: 	//标定

			pPage->eViewType = VIEW_MENU;
			pPage->eTitle = TITLE_COLABRATE;
			pPage->pItems = aItem[PAGE_MENU_COLABRAT];
			pPage->pButtons = NULL;
			pPage->u8ButtonCnt = 0;
			pPage->u8FocusItem = 0;
			pPage->u8FocusButton = 0;

			pPage->u8ItemCnt = 1;
			pPage->pItems[0].eItemType = ITEM_MENU_COLABRATION_COLABRATE;
			pPage->pItems[0].u8Ret = RET_UNKOWN;

//			pPage->u8ItemCnt = 2;
//			pPage->pItems[0].eItemType = ITEM_MENU_COLABRATION_COLABRATE;
//			pPage->pItems[0].u8Ret = RET_UNKOWN;
//			pPage->pItems[1].eItemType = ITEM_MENU_COLABRATION_WRITEPARAM;
//			pPage->pItems[1].u8Ret = RET_UNKOWN;
//			pPage->pItems[1].eItemType = ITEM_MENU_COLABRATION_WRITEPARAM;
//			pPage->pItems[1].u8Ret = RET_UNKOWN;
			break;


			//高级功能页面
		case	PAGE_MENU_ADVANCEDFUNC:

			pPage->eViewType = VIEW_MENU;
			pPage->eTitle = TITLE_ADVFUNC;
			pPage->pItems = aItem[PAGE_MENU_ADVANCEDFUNC];
			pPage->pButtons = NULL;
			pPage->u8ButtonCnt = 0;
			pPage->u8FocusItem = 0;
			pPage->u8FocusButton = 0;

			pPage->u8ItemCnt = 1;
			pPage->pItems[0].eItemType = ITEM_MENU_ADVANCEDFUNC_TAKEPHOTO;
			pPage->pItems[0].u8Ret = RET_UNKOWN;

			break;
		default:
			break;
		}//end switch

		u8PageType ++;
	}//end while
}

/*!
 * 显示默认页面
 * \n
 *
 * \n
 * @see
 */
void	UI_ShowDefaultPage()
{
	//显示默认页面
	tUIFsm.u8CurrentPage = PAGE_DEFAULT;

	Show_Page(PAGE_DEFAULT);
}


/*!
 * 界面处理流程
 * \n
 *
 * \n
 * @see
 */
void	UI_Process()
{
	u8	u8Command = 0xFF;


	//初始化并显示第一个页面即默认页面
	if(tUIFsm.u8CurrentPage == 0xFF)
	{
		//显示默认页面
		tUIFsm.u8CurrentPage = PAGE_DEFAULT;

		Show_Page(PAGE_DEFAULT);

		return;
	}

	//取出按键消息
	u8Command = tUIFsm.u8PendingCommand;

	//按键有效？
	if(u8Command != KEY_END)
	{
		//准备接收新的按键消息
		tUIFsm.u8PendingCommand = KEY_UNKNOWN;

		//按键处理
		UI_Key_Process();
	}

}


/*!
 * 按键消息处理
 * \n
 *
 * \n
 * @see
 */
void	UI_Key_Process()
{
	u8	i = 0;
	u8 	u8FocusItem = 0;
	u8	u8CurrentPage = 0;
	eKEYTYPE eKeyType;

	if(tUIFsm.u8PendingCommand == 0xFF)
		return;

	eKeyType = (eKEYTYPE) tUIFsm.u8PendingCommand;
//	tUIFsm.u8PendingCommand = 0xFF;

	//取当前页面指针
	pCurPage = &(tPage_Flow.aPage[tUIFsm.u8CurrentPage]);

	if(pCurPage == NULL/* || pNextPage == NULL*/)
	{
		printf("取页面指针错！\n");

		return;
	}

	//取当前页面的焦点项索引
	u8FocusItem = pCurPage->u8FocusItem;

	//根据页面类型处理按键消息
	switch(tUIFsm.u8CurrentPage)
	{
	case	PAGE_FRONT:
	case	PAGE_FONT_FULL:
	case	PAGE_LEFT:
	case	PAGE_LEFT_FULL:
	case	PAGE_RIGHT:
	case	PAGE_RIGHT_FULL:
	case	PAGE_REAR:
	case	PAGE_REAR_FULL:
	case	PAGE_AllVIEW:

		if(eKeyType == KEY_LEFT)
		{
			/*
			 * 在左视下，按一次左视进入左视全屏；在左视全屏下，按一次重新进入左视；
			 * 其他页面下，均切换到左视
			 */
			if(tUIFsm.u8CurrentPage == PAGE_LEFT) {
				Show_Page(PAGE_LEFT_FULL);
			}
			else if(tUIFsm.u8CurrentPage == PAGE_LEFT_FULL) {
				Show_Page(PAGE_LEFT);
			}
			else {
				Show_Page(PAGE_LEFT);
			}
		}
		/*
		 * 在右视下，按一次右视进入左视全屏；在右视全屏下，按一次重新进入右视；
		 * 其他页面下，均切换到右视
		 */
		else if(eKeyType == KEY_RIGHT)
		{
			if(tUIFsm.u8CurrentPage == PAGE_RIGHT) {
				Show_Page(PAGE_RIGHT_FULL);
			}
			else if(tUIFsm.u8CurrentPage == PAGE_RIGHT_FULL) {
				Show_Page(PAGE_RIGHT);
			}
			else {
				Show_Page(PAGE_RIGHT);
			}
		}
		/*
		 * 在前视下，按一次前视进入前视全屏；在前视全屏下，按一次重新进入前视；
		 * 其他页面下，均切换到前视
		 */
		else if(eKeyType == KEY_FRONT)
		{
			if(tUIFsm.u8CurrentPage == PAGE_FRONT) {
				Show_Page(PAGE_FONT_FULL);
			}
			else if(tUIFsm.u8CurrentPage == PAGE_FONT_FULL) {
				Show_Page(PAGE_FRONT);
			}
			else {
				Show_Page(PAGE_FRONT);
			}
		}
		/*
		 * 后视页面，按一次后视，进入全屏；按两次，恢复；
		 * 其他页面下，均切换到前视
		 */
		else if(eKeyType == KEY_REAR)
		{
			if(tUIFsm.u8CurrentPage == PAGE_REAR) {
				Show_Page(PAGE_REAR_FULL);
//				Vps_rprintf("\n[DSP] Show_Page(PAGE_REAR_FULL) -------------------- \n");
			}
			else if(tUIFsm.u8CurrentPage == PAGE_REAR_FULL) {
				Show_Page(PAGE_REAR);
//				Vps_rprintf("\n[DSP] Show_Page(PAGE_REAR) -------------------- \n");
			}
			else {
				Show_Page(PAGE_REAR);
			}
		}
		/*遥控器消息:电源，打开菜单页面*/
		else if(eKeyType == MENU_POWER)
		{
			Show_Page(PAGE_MENU);
		}
		/*取消键，返回默认主页面：前视*/
		else if(eKeyType == MENU_BACK)
		{
			if(tUIFsm.u8CurrentPage != PAGE_FRONT)
			{
				Show_Page(PAGE_FRONT);
			}
			else {
				Show_Page(PAGE_AllVIEW);

			}
		}
		/*其他翻页消息不响应*/
		else {
		}

		break;
	/*主菜单*/
	case	PAGE_MENU:

		/*对于视图切换信号，直接切换到相应页面*/
		if(eKeyType == KEY_FRONT)
		{
			Show_Page(PAGE_FRONT);
		}
		else if(eKeyType == KEY_LEFT)
		{
			Show_Page(PAGE_LEFT);
		}
		else if(eKeyType == KEY_RIGHT)
		{
			Show_Page(PAGE_RIGHT);
		}
		else if(eKeyType == KEY_REAR)
		{
			Show_Page(PAGE_REAR);
		}
		else{
			if(eKeyType == MENU_UP)
			{
				if(pCurPage->u8FocusItem == 0)
					break;

				//正常显示当前项
				Show_Item(PAGE_MENU, pCurPage->u8FocusItem, 0 );

				//焦点切换到下一项
				pCurPage->u8FocusItem --;

				//高亮显示下一项
				Show_Item(PAGE_MENU, pCurPage->u8FocusItem, 1 );

			}
			else if(eKeyType == MENU_DOWN)
			{
				if(pCurPage->u8FocusItem == (pCurPage->u8ItemCnt - 1))
					break;

				//正常显示当前项
				Show_Item(PAGE_MENU, pCurPage->u8FocusItem, 0 );

				//焦点切换到下一项
				pCurPage->u8FocusItem ++;

				//高亮显示下一项
				Show_Item(PAGE_MENU, pCurPage->u8FocusItem, 1 );
			}
			else if(eKeyType == MENU_OK)
			{
				//当前位置页面
				if(pCurPage->u8FocusItem == 0)
				{
					//指向待跳转页面，组织项显示内容
					pNextPage = &(tPage_Flow.aPage[PAGE_MENU_SETPARAM]);
					pNextPage->u8ParentPageId = tUIFsm.u8CurrentPage;

					Show_Page(PAGE_MENU_SETPARAM);
				}
				//当前位置页面
				else if(pCurPage->u8FocusItem == 1)
				{
					//指向待跳转页面，组织项显示内容
					pNextPage = &(tPage_Flow.aPage[PAGE_MENU_UPG]);
					pNextPage->u8ParentPageId = tUIFsm.u8CurrentPage;

					Show_Page(PAGE_MENU_UPG);
				}
				//当前位置页面
				else if(pCurPage->u8FocusItem == 2)
				{
					//指向待跳转页面，组织项显示内容
					pNextPage = &(tPage_Flow.aPage[PAGE_MENU_COLABRAT]);
					pNextPage->u8ParentPageId = tUIFsm.u8CurrentPage;

					FillBackground();	//预填充背景色
					Show_Page(PAGE_MENU_COLABRAT);
				}
				//当前位置页面
				else if(pCurPage->u8FocusItem == 3)
				{
					//指向待跳转页面，组织项显示内容
					pNextPage = &(tPage_Flow.aPage[PAGE_MENU_ADVANCEDFUNC]);
					pNextPage->u8ParentPageId = tUIFsm.u8CurrentPage;

					FillBackground();	//预填充背景色
					Show_Page(PAGE_MENU_ADVANCEDFUNC);
				}
				else {
				}
			}
			/*返回键，直接退回到主界面*/
			else if(eKeyType == MENU_BACK)
			{
				Show_Page(PAGE_FRONT);
			}
		}
		break;

	case	PAGE_MENU_COLABRAT:	//标定

		if(eKeyType == KEY_FRONT)
		{
			Show_Page(PAGE_FRONT);
		}
		else if(eKeyType == KEY_LEFT)
		{
			Show_Page(PAGE_LEFT);
		}
		else if(eKeyType == KEY_RIGHT)
		{
			Show_Page(PAGE_RIGHT);
		}
		else if(eKeyType == KEY_REAR)
		{
			Show_Page(PAGE_REAR);
		}
		else{
			if(eKeyType == MENU_UP)
			{
				if(pCurPage->u8FocusItem == 0)
						break;

				//正常显示当前项
				Show_Item(PAGE_MENU_COLABRAT, pCurPage->u8FocusItem, 0 );

				//焦点切换到下一项
				pCurPage->u8FocusItem --;

				//高亮显示下一项
				Show_Item(PAGE_MENU_COLABRAT, pCurPage->u8FocusItem, 1 );

			}
			else if(eKeyType == MENU_DOWN)
			{
				if(pCurPage->u8FocusItem == (pCurPage->u8ItemCnt - 1))
					break;

				//正常显示当前项
				Show_Item(PAGE_MENU_COLABRAT, pCurPage->u8FocusItem, 0 );

				//焦点切换到下一项
				pCurPage->u8FocusItem ++;

				//高亮显示下一项
				Show_Item(PAGE_MENU_COLABRAT, pCurPage->u8FocusItem, 1 );
			}
			else if(eKeyType == MENU_OK)
			{
				if(pCurPage->pItems[pCurPage->u8FocusItem].eItemType == ITEM_MENU_COLABRATION_COLABRATE)
				{
					/*设置标定请求，触发标定过程*/
					*(unsigned int*)0x80000888 = 0x88888888;
				}
//				else if(pCurPage->pItems[pCurPage->u8FocusItem].eItemType == ITEM_MENU_COLABRATION_ALLVIEW)
//				{
//					//查看所有摄像头画面
//					Show_Page(PAGE_AllVIEW);
//				}
			}
			else if(eKeyType == MENU_BACK)
			{
				Show_Page(PAGE_MENU);
			}
			else {
				/*其他按键消息不响应*/
			}
		}
		break;

	case	PAGE_MENU_ADVANCEDFUNC: //高级功能

		if(eKeyType == KEY_FRONT)
		{
			Show_Page(PAGE_FRONT);
		}
		else if(eKeyType == KEY_LEFT)
		{
			Show_Page(PAGE_LEFT);
		}
		else if(eKeyType == KEY_RIGHT)
		{
			Show_Page(PAGE_RIGHT);
		}
		else if(eKeyType == KEY_REAR)
		{
			Show_Page(PAGE_REAR);
		}
		else {
			if(eKeyType == MENU_UP)
			{
				if(pCurPage->u8FocusItem == 0)
						break;

				//正常显示当前项
				Show_Item(PAGE_MENU_ADVANCEDFUNC, pCurPage->u8FocusItem, 0 );

				//焦点切换到下一项
				pCurPage->u8FocusItem --;

				//高亮显示下一项
				Show_Item(PAGE_MENU_ADVANCEDFUNC, pCurPage->u8FocusItem, 1 );

			}
			else if(eKeyType == MENU_DOWN)
			{
				if(pCurPage->u8FocusItem == (pCurPage->u8ItemCnt - 1))
					break;

				//正常显示当前项
				Show_Item(PAGE_MENU_ADVANCEDFUNC, pCurPage->u8FocusItem, 0 );

				//焦点切换到下一项
				pCurPage->u8FocusItem ++;

				//高亮显示下一项
				Show_Item(PAGE_MENU_ADVANCEDFUNC, pCurPage->u8FocusItem, 1 );
			}
			else if(eKeyType == MENU_OK)
			{
				/*DSP将拍照命令通过消息队列传给A8*/
				if(pCurPage->pItems[pCurPage->u8FocusItem].eItemType == ITEM_MENU_ADVANCEDFUNC_TAKEPHOTO)
				{
//					//查看所有摄像头画面
//					Show_Page(PAGE_AllVIEW);
//
//					tUIFsm.bShowAllView = 1;
//
//					tUIFsm.u8ReqTakeSnapshot = 1;	/*设置拍照请求*/
/*
		            mutualTaskCmdMsg.cmdType = 0x555;

		            mutualTaskCmdMsg.pY_Pointer0 = (void *)0;
		            mutualTaskCmdMsg.pUV_Pointer0 = (void *)0;

		            mutualTaskCmdMsg.pY_Pointer1 = (void *)0;
		            mutualTaskCmdMsg.pUV_Pointer1 = (void *)0;

		            mutualTaskCmdMsg.pY_Pointer2 = (void *)0;
		            mutualTaskCmdMsg.pUV_Pointer2 = (void *)0;

		            mutualTaskCmdMsg.pY_Pointer3 = (void *)0;
		            mutualTaskCmdMsg.pUV_Pointer3 = (void *)0;
*/
				}
			}
			else if(eKeyType == MENU_BACK)
			{
				Show_Page(PAGE_MENU);
			}
			else
			{
			}
		}
		break;

		/*升级和参数设置界面暂无内容，保留*/
	case	PAGE_MENU_UPG:
	case 	PAGE_MENU_SETPARAM:

		if(eKeyType == KEY_FRONT)
		{
			Show_Page(PAGE_FRONT);
		}
		else if(eKeyType == KEY_LEFT)
		{
			Show_Page(PAGE_LEFT);
		}
		else if(eKeyType == KEY_RIGHT)
		{
			Show_Page(PAGE_RIGHT);
		}
		else if(eKeyType == KEY_REAR)
		{
			Show_Page(PAGE_REAR);
		}
		else if(eKeyType == MENU_BACK)
		{
			Show_Page(PAGE_MENU);
		}
		else
		{
		}
		break;

	default:
		break;

	}
}


/*!
 * 显示页面
 * \n
 *
 * @param u8PageType	页面类型
 * \n
 * @see
 */
void	Show_Page(u8 u8PageType)
{
	volatile	u8	i = 0;

	tPAGE *pPage = NULL;

	//页面合法性检查
	if( u8PageType < PAGE_DEFAULT || u8PageType > PAGE_TYPE_END )
		return;

	tUIFsm.u8CurrentPage = u8PageType;	/*保存当前显示页面*/

	/*四视图页面无需任何处理*/
	if(tUIFsm.u8CurrentPage == PAGE_AllVIEW)
		return;

	//首先清除显存内容，填充底色
//	memset(menu_Buf, 0xFF, 466*480*2);
//	BitBlt_Raw(WIN_START_X, WIN_START_Y, WIN_WITDTH, WIN_HEIGHT, 0, 0, menu_Buf);

	//得到当前页面指针
	pPage = &(tPage_Flow.aPage[u8PageType]);

	//显示视频画面
	Show_View(pPage->eViewType);

	//只有前、后、左、右四个视图，需要显示右下角的警告栏
	if((u8PageType == PAGE_FRONT) ||
			(u8PageType == PAGE_LEFT) ||
			(u8PageType == PAGE_RIGHT) ||
			(u8PageType == PAGE_REAR))
	{
		Show_WarnView(u8PageType);
	}

	//显示标题栏
	if(pPage->eTitle != TITLE_NON)
	{
		Show_Title(pPage->eTitle);
	}

	//其他类型页面，显示项目
	if( pPage->pItems != NULL )
	{
		for(i = 0; i < pPage->u8ItemCnt; i++)
		{
			if(i == pPage->u8FocusItem)
			{
				Show_Item( u8PageType, i, 1 );	/*高亮*/
			}
			else
			{
				Show_Item( u8PageType, i, 0 );	/*常亮*/
			}
		}
	}


	//显示按钮
	if( pPage->pButtons != NULL )
	{
		for(i = 0; i < pPage->u8ButtonCnt; i++)
		{
			if(pPage->u8FocusButton == i)
			{
				Show_Button( u8PageType, i, 1 );
			}
			else
			{
				Show_Button( u8PageType, i, 0 );
			}
		}
	}

	//显示标定状态图标
//	Show_ColabrationState();

    edmaWarpImgCpy4(myBopTaskCtxt.hEdma, (void *)(tpHandle.outputBuffer), (void *)(pFrom_VPSS_M3_TempCmdMsg->pPointer0),
		736*2, 480, 736*2, 736*2);//liuxu, 06/17/2014.
}

void Show_ColabrationState()
{
	void *pSrc;
	tREGION tRegion;

	/*!
	 * 如果有执行结果，还需要显示结果状态图标，目前只有标定触发、和拍照两个命令有结果反馈图标
	 *
	 */
	/*标定触发结果图标*/
	if(tUIFsm.bRet_Colabration == RET_OK) {
		pSrc = yuv_ret_ok_yuv;
	}
	else if(tUIFsm.bRet_Colabration == RET_FAIL) {
		pSrc = yuv_ret_err_yuv;
	}
	else {
		pSrc = (void *)0;
		return;
	}

	if(pSrc) {
		tRegion.win_startX = ITEM_RET_START_X;
		tRegion.crop_startY = ITEM_RET_START_Y(2);
		tRegion.win_Width = ITEM_RET_WIDTH;
		tRegion.win_Height = ITEM_RET_HEIGHT;
		tRegion.crop_startX = 0;
		tRegion.crop_startY = 0;

		BitBlt_Raw(ITEM_RET_START_X,
					ITEM_RET_START_Y(2),
					ITEM_RET_WIDTH,
					ITEM_RET_HEIGHT,
					0,
					0,
					pSrc);
	}

	/*拍照结果图标*/
	if(tUIFsm.bRet_TakenSnapshot == RET_OK) {
		pSrc = yuv_ret_ok_yuv;
	}
	else if(tUIFsm.bRet_TakenSnapshot == RET_FAIL) {
		pSrc = yuv_ret_err_yuv;
	}
	else {
		pSrc = (void *)0;
	}

	if(pSrc) {
		tRegion.win_startX = ITEM_RET_START_X;
		tRegion.crop_startY = ITEM_RET_START_Y(2);
		tRegion.win_Width = ITEM_RET_WIDTH;
		tRegion.win_Height = ITEM_RET_HEIGHT;
		tRegion.crop_startX = 0;
		tRegion.crop_startY = 0;

		BitBlt_Raw(ITEM_RET_START_X,
					ITEM_RET_START_Y(2),
					ITEM_RET_WIDTH,
					ITEM_RET_HEIGHT,
					0,
					0,
					pSrc);
	}
}


#if 0
/*!
 * 显示视频画面
 * \n
 *
 * @param eViewType
 * \n
 * @see
 */
void Show_View(eVIEWTYPE eViewType)
{
	//以下拼接显示画面Buffer后，DMA传输送交显示
	tREGION *ptRegion;

	ptRegion = &aViewRegion[eViewType];

	switch(eViewType)
	{
	case	VIEW_FRONT:
	case	VIEW_FONT_FULL:
	case	VIEW_LEFT:
	case	VIEW_LEFT_FULL:
	case	VIEW_RIGHT:
	case	VIEW_RIGHT_FULL:
	case	VIEW_REAR:
	case	VIEW_REAR_FULL:

		//window 0: synthesis view
		if(win_Width[0] != 0 && win_Height[0] != 0){
			edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
				(void *)(srcBuf[0] + 736 * 2 * crop_startY[0] + crop_startX[0] * 2),
				(void *)(tpHandle.outputBuffer + win_startX[0] * 2 + 736 * 2 * win_startY[0]),
				win_Width[0] *2, win_Height[0], 736*2, 736*2);//liuxu, 06/19/2014, single view in output buffer first.
		}

		//window 1: single camera view
		if(win_Width[1] != 0 && win_Height[1] != 0){
			edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
				(void *)(srcBuf[1] + 736 * 2 * crop_startY[1] + crop_startX[1] * 2),
				(void *)(tpHandle.outputBuffer + win_startX[1] * 2 + 736 * 2 * win_startY[1]),
				win_Width[1] *2, win_Height[1], 736*2, 736*2);//liuxu, 06/19/2014, single view in output buffer first.
		}
		//window 2: car box
		if(win_Width[2] != 0 && win_Height[2] != 0){
			edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
				(void *)(srcBuf[2]	+ 736 * 2 * crop_startY[2] + crop_startX[2] * 2),
				(void *)(tpHandle.outputBuffer + win_startX[2] * 2 + 736 * 2 * win_startY[2]),
				win_Width[2] * 2, win_Height[2], win_Width[2] * 2, 736*2);//liuxu, 02/20/2014, for Y logo.
		}

		//window 3: osd
		if(win_Width[3] != 0 && win_Height[3] != 0){
			edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
				(void *)(srcBuf[3] + 736 * 2 * crop_startY[3] + crop_startX[3] * 2),
				(void *)(tpHandle.outputBuffer + win_startX[3] * 2 + 736 * 2 * win_startY[3] ),
				win_Width[3] * 2, win_Height[3], 480*2, 736*2);//liuxu, 06/17/2014.
		}


		break;


	case	VIEW_AllVIEW:
		BitBlt(&aViewRegion[SUBVIEW_SPLIT_00], VIDEO_BUF_FRONT);
		BitBlt(&aViewRegion[SUBVIEW_SPLIT_01], VIDEO_BUF_LEFT);
		BitBlt(&aViewRegion[SUBVIEW_SPLIT_10], VIDEO_BUF_RIGHT);
		BitBlt(&aViewRegion[SUBVIEW_SPLIT_11], VIDEO_BUF_REAR);
 		break;
	case	VIEW_MENU:
		BitBlt(&aViewRegion[SUBVIEW_SYSTHESIS], VIDEO_BUF_SYNTHESIS);
		break;
	default:
		break;
	}
}
#endif


/*!
 * 显示视图页面
 * \n
 *
 * @param pView		图像视
 * \n
 * @see
 */
void Show_View(eVIEWTYPE eViewType)
{
	switch(eViewType)
	{
	case	VIEW_FRONT:
		BitBlt(eViewType, SUBVIEW_SYSTHESIS, (tREGION*)&(aViewRegion[SUBVIEW_SYSTHESIS]), VIDEO_BUF_SYNTHESIS);
		BitBlt(eViewType, SUBVIEW_CAR, &aViewRegion[SUBVIEW_CAR], VIDEO_BUF_CAR);
		BitBlt(eViewType, SUBVIEW_SINGLEVIEW_FRONT, &aViewRegion[SUBVIEW_SINGLEVIEW_FRONT], VIDEO_BUF_FRONT);
//		BitBlt(SUBVIEW_TIPBAR, &aViewRegion[SUBVIEW_TIPBAR], VIDEO_BUF_TIPBAR);
		break;
	case	VIEW_FONT_FULL:
		BitBlt(eViewType, SUBVIEW_FULLSCREEN, &aViewRegion[SUBVIEW_FULLSCREEN], VIDEO_BUF_FRONT);
		break;
	case	VIEW_LEFT:
		BitBlt(eViewType, SUBVIEW_SYSTHESIS, &aViewRegion[SUBVIEW_SYSTHESIS], VIDEO_BUF_SYNTHESIS);
		BitBlt(eViewType, SUBVIEW_CAR, &aViewRegion[SUBVIEW_CAR], VIDEO_BUF_CAR);
		BitBlt(eViewType, SUBVIEW_SINGLEVIEW_LEFT, &aViewRegion[SUBVIEW_SINGLEVIEW_LEFT], VIDEO_BUF_LEFT);
//		BitBlt(SUBVIEW_TIPBAR, &aViewRegion[SUBVIEW_TIPBAR], VIDEO_BUF_TIPBAR);
		break;
	case	VIEW_LEFT_FULL:
		BitBlt(eViewType, SUBVIEW_FULLSCREEN, &aViewRegion[SUBVIEW_FULLSCREEN], VIDEO_BUF_LEFT);
		break;
	case	VIEW_RIGHT:
		BitBlt(eViewType, SUBVIEW_SYSTHESIS, &aViewRegion[SUBVIEW_SYSTHESIS], VIDEO_BUF_SYNTHESIS);
		BitBlt(eViewType, SUBVIEW_CAR, &aViewRegion[SUBVIEW_CAR], VIDEO_BUF_CAR);
		BitBlt(eViewType, SUBVIEW_SINGLEVIEW_RIGHT, &aViewRegion[SUBVIEW_SINGLEVIEW_RIGHT], VIDEO_BUF_RIGHT);
//		BitBlt(SUBVIEW_TIPBAR, &aViewRegion[SUBVIEW_TIPBAR], VIDEO_BUF_TIPBAR);
 		break;
	case	VIEW_RIGHT_FULL:
		BitBlt(eViewType, SUBVIEW_FULLSCREEN, &aViewRegion[SUBVIEW_FULLSCREEN], VIDEO_BUF_RIGHT);
		break;
	case	VIEW_REAR:
		BitBlt(eViewType, SUBVIEW_SYSTHESIS, &aViewRegion[SUBVIEW_SYSTHESIS], VIDEO_BUF_SYNTHESIS);
		BitBlt(eViewType, SUBVIEW_CAR, &aViewRegion[SUBVIEW_CAR], VIDEO_BUF_CAR);
		BitBlt(eViewType, SUBVIEW_SINGLEVIEW_REAR, &aViewRegion[SUBVIEW_SINGLEVIEW_REAR], VIDEO_BUF_REAR);
//		BitBlt(SUBVIEW_TIPBAR, &aViewRegion[SUBVIEW_TIPBAR], VIDEO_BUF_TIPBAR);
		break;
	case	VIEW_REAR_FULL:
		BitBlt(eViewType, SUBVIEW_FULLSCREEN, &aViewRegion[SUBVIEW_FULLSCREEN], VIDEO_BUF_REAR);
		break;
	case	VIEW_AllVIEW:
//		BitBlt(SUBVIEW_SPLIT_00, &aViewRegion[SUBVIEW_SPLIT_00], VIDEO_BUF_FRONT);
//		BitBlt(&aViewRegion[SUBVIEW_SPLIT_01], VIDEO_BUF_LEFT);
//		BitBlt(&aViewRegion[SUBVIEW_SPLIT_10], VIDEO_BUF_RIGHT);
//		BitBlt(&aViewRegion[SUBVIEW_SPLIT_11], VIDEO_BUF_REAR);
 		break;
	case	VIEW_MENU:
		BitBlt(eViewType, SUBVIEW_SYSTHESIS, &aViewRegion[SUBVIEW_SYSTHESIS], VIDEO_BUF_SYNTHESIS);
		BitBlt(eViewType, SUBVIEW_CAR, &aViewRegion[SUBVIEW_CAR], VIDEO_BUF_CAR);
		break;
	default:
		break;
	}
}

#if 0
/*!
 * 显示右下角警告栏
 * \n
 *
 * @param u8PageType	页面类型
 * \n
 * @see
 */
void Show_WarnView(u8 u8PageType)
{
	//刷新黑色背景
	BitBlt_Raw(320, 400, 736-320, 80, 0,0, menu_Buf);

	 if(u8PageType == PAGE_FRONT)
	 {
		 //画出前向图标
		 BitBlt_Raw(WIN_START_X+8,
						400+9,
						64,
						62,
						0,
						0,
						yuv_front_yuv);
	 }
	 else if(u8PageType == PAGE_LEFT)
	 {
		 //画出左转向图标
		 BitBlt_Raw(WIN_START_X+8,
				 400+9,
						64,
						62,
						0,
						0,
						yuv_left_yuv);
	 }
	 else if(u8PageType == PAGE_RIGHT)
	 {
		 //画出右转向图标
		 BitBlt_Raw(WIN_START_X+8,
				 400+9,
						64,
						62,
						0,
						0,
						yuv_right_yuv);
	 }
	 else if(u8PageType == PAGE_REAR)
	 {
		 //画出后视图标
		 BitBlt_Raw(WIN_START_X+8,
				 400+9,
						64,
						62,
						0,
						0,
						yuv_back_yuv);
	 }
	 else {
		 return;
	 }

	 //画出右侧警告文本
	 BitBlt_Raw(WIN_START_X+80+5/*((736-350-296)/2)*/,
					400+((80-36)/2),
					296,
					36,
					0,
					0,
					yuv_warn_yuv);

}
#endif

#if 1
/*!
 * 显示右下角警告栏
 * \n
 *
 * @param u8PageType	页面类型
 * \n
 * @see
 */
void Show_WarnView(u8 u8PageType)
{
	void* ptr = NULL;

	//刷新黑色背景
	BitBlt_Raw(320, 400, 736-320, 80, 0,0, menu_Buf);

	 if(u8PageType == PAGE_FRONT)
	 {
		 //画出前向图标
		 BitBlt_Raw(WIN_START_X+8,
						400+9,
						64,
						62,
						0,
						0,
						yuv_front_yuv);
	 }
	 else if(u8PageType == PAGE_LEFT)
	 {
		 //画出左转向图标
		 BitBlt_Raw(WIN_START_X+8,
				 400+9,
						64,
						62,
						0,
						0,
						yuv_left_yuv);
	 }
	 else if(u8PageType == PAGE_RIGHT)
	 {
		 //画出右转向图标
		 BitBlt_Raw(WIN_START_X+8,
				 400+9,
						64,
						62,
						0,
						0,
						yuv_right_yuv);
	 }
	 else if(u8PageType == PAGE_REAR)
	 {
		 //画出后视图标
		 BitBlt_Raw(WIN_START_X+8,
				 	 	400+9,
						64,
						62,
						0,
						0,
						yuv_back_yuv);
	 }
	 else {
		 //其他页面下，不显示FCW信息
		 return;
	 }

#if 1
	 if(tUIFsm.FCW_u8WarningLevel == WARN_NONE)
	 {
		 //画出右侧警告文本“请注意观察周围”
		 BitBlt_Raw(WIN_START_X+80+5,
						400+((80-36)/2),
						296,
						36,
						0,
						0,
						yuv_warn_yuv);
		 return;
	 }

	 //画右侧警告文本“注意前车距离”
	 if(tUIFsm.FCW_u8WarningLevel < 3)
		 ptr = yuv_notice1_yuv;
	 else
		 ptr = yuv_notice2_yuv;

	 BitBlt_Raw(FCW_NOTICE_START,
					400+((80-30)/2),
					180,
					30,
					0,
					0,
					ptr);

		 //画“米”
	 if(tUIFsm.FCW_u8WarningLevel < 3)
		 ptr = yuv_m1_yuv;
	 else
		 ptr = yuv_m2_yuv;

	 BitBlt_Raw(736 - 30 - 30,
						400+((80-30)/2),
						30,
						30,
						0,
						0,
						ptr);

	 //画距离数字
	 if(tUIFsm.FCW_u16Distance <= 9999) //最大表示范围999.9米，防止越界
	 {
		 Show_Distance(tUIFsm.FCW_u8WarningLevel, tUIFsm.FCW_u16Distance);
	 }
#endif

}
#endif

void Show_Distance(u8 u8WarningLevel, u16 u16Distance)
{
	void* ptr = NULL;
	u8 bFirstNonZero = 0;
	u8 volatile u8Hundred = 0;
	u8 volatile u8Ten = 0;
	u8 volatile u8One = 0;
	u8 volatile u8Tail = 0;

	if(tUIFsm.FCW_u16Distance >= 1000)
	{
		u8Hundred = (u8)(tUIFsm.FCW_u16Distance / 1000);
	}

	if(tUIFsm.FCW_u16Distance >= 100)
	{
		u8Ten = (u8)((tUIFsm.FCW_u16Distance - u8Hundred*1000) / 100);
	}

//	u8One = (tUIFsm.FCW_u16Distance - (u8Hundred*1000) - (u8Ten*100)) / 10;
	u8One = (tUIFsm.FCW_u16Distance % 100) / 10;
	u8Tail = tUIFsm.FCW_u16Distance % 10;

//	Vps_rprintf("[DSP] Distance %d, Parse: %d : %d : %d : %d\n", tUIFsm.FCW_u16Distance, u8Hundred, u8Ten, u8One, u8Tail);

	 //画百位数字
	 if(u8Hundred > 0)
	 {
		 if(u8WarningLevel < 3)
			 ptr = tNumPtr_Green[u8Hundred];
		 else
			 ptr = tNumPtr_Red[u8Hundred];

		 BitBlt_Raw(FCW_NUM_HUNDRED_OFFSET,
						400+((80-25)/2),
						20,
						25,
						0,
						0,
						ptr);
		 bFirstNonZero = 1;
	 }

	 //画十位数字
	 if(u8WarningLevel < 3)
		 ptr = tNumPtr_Green[u8Ten];
	 else
		 ptr = tNumPtr_Red[u8Ten];

	 if(u8Ten > 0)
	 {
		 BitBlt_Raw(FCW_NUM_TEN_OFFSET,
						400+((80-25)/2),
						20,
						25,
						0,
						0,
						ptr);
		 bFirstNonZero = 1;
	 }
	 else
	 {
		 if(bFirstNonZero)
		 {
			 BitBlt_Raw(FCW_NUM_TEN_OFFSET,
							400+((80-25)/2),
							20,
							25,
							0,
							0,
							ptr);
		 }
	 }

	 //画个位数字，不管是否为0都必须显示
	 if(u8WarningLevel < 3)
		 ptr = tNumPtr_Green[u8One];
	 else
		 ptr = tNumPtr_Red[u8One];

	 BitBlt_Raw(FCW_NUM_ONE_OFFSET,
					400+((80-25)/2),
					20,
					25,
					0,
					0,
					ptr);

	 //画小数点
	 if(u8WarningLevel < 3)
		 ptr = yuv_gdot_yuv;
	 else
		 ptr = yuv_reddot_yuv;
	 BitBlt_Raw(FCW_NUM_DOT_OFFSET,
					400+((80-25)/2),
					10,
					25,
					0,
					0,
					ptr);

	 //画小数位数字，不管是否为0都必须显示
	 if(u8WarningLevel < 3)
		 ptr = tNumPtr_Green[u8Tail];
	 else
		 ptr = tNumPtr_Red[u8Tail];
	 BitBlt_Raw(FCW_NUM_TAIL_OFFSET,
					400+((80-25)/2),
					20,
					25,
					0,
					0,
					ptr);

}


/*!
 * 显示列表
 * \n
 *
 * @param u8ItemIndex		项序号
 * @param u8PageType		页面类型
 * @param u8ShowType		高亮/常量显示
 * \n
 * @see
 */
void	Show_Item(const u8 u8PageType, const u8 u8ItemIndex, u8 u8ShowType)
{
	tPAGE *pPage = NULL;
	tITEM	*ptItem;
	void *pSrc;
	tREGION tRegion;

	//得到当前页面指针
	pPage = &(tPage_Flow.aPage[u8PageType]);

	ptItem = &pPage->pItems[u8ItemIndex];
	if(ptItem == NULL)
		return;

	//判断显示亮度
	if(u8ShowType == 0)
		pSrc = (void*)aItem_YUV[ptItem->eItemType].pSrc_Normal;
	else
		pSrc = (void*)aItem_YUV[ptItem->eItemType].pSrc_Hilight;

	//根据显示位置刷新到显存
	tRegion.win_startX = ITEM_START_X;
	tRegion.crop_startY = ITEM_START_Y(u8ItemIndex);
	tRegion.win_Width = aItem_YUV[ptItem->eItemType].width;
	tRegion.win_Height = aItem_YUV[ptItem->eItemType].height;
	tRegion.crop_startX = 0;
	tRegion.crop_startY = 0;

//	BitBlt(SUBVIEW_MENU, &tRegion, pSrc);
	BitBlt_Raw(ITEM_START_X,
				ITEM_START_Y(u8ItemIndex),
				aItem_YUV[ptItem->eItemType].width,
				aItem_YUV[ptItem->eItemType].height,
				0,
				0,
				pSrc);

	/*!
	 * 显示底条
	 *
	 */
	if(u8ShowType == 0)
		pSrc = aBar_YUV.pSrc_Normal;
	else
		pSrc = aBar_YUV.pSrc_Hilight;

	tRegion.win_startX = ITEM_BAR_START_X;
	tRegion.crop_startY = ITEM_BAR_START_Y(u8ItemIndex);
	tRegion.win_Width = ITEM_BAR_WIDTH;
	tRegion.win_Height = ITEM_BAR_HEIGHT;
	tRegion.crop_startX = 0;
	tRegion.crop_startY = 0;

//	BitBlt(SUBVIEW_MENU, &tRegion, pSrc);

	BitBlt_Raw(ITEM_BAR_START_X,
				ITEM_BAR_START_Y(u8ItemIndex),
				ITEM_BAR_WIDTH,
				ITEM_BAR_HEIGHT,
				0,
				0,
				pSrc);

#ifdef UI_SHOW_TIP_ARROW
	/*!
	 * 如果是焦点项，还要在左边显示提示箭头
	 *
	 */
	if(u8ShowType == 1)
	{
		pSrc = yuv_tip_yuv;

		tRegion.win_startX = ITEM_TIP_START_X;
		tRegion.crop_startY = ITEM_TIP_START_Y(u8ItemIndex);
		tRegion.win_Width = ITEM_TIP_WIDTH;
		tRegion.win_Height = ITEM_TIP_HEIGHT;
		tRegion.crop_startX = 0;
		tRegion.crop_startY = 0;

//		BitBlt(SUBVIEW_MENU, &tRegion, pSrc);
		BitBlt_Raw(ITEM_TIP_START_X,
			ITEM_TIP_START_Y(u8ItemIndex),
			ITEM_TIP_WIDTH,
			ITEM_TIP_HEIGHT,
			0,
			0,
			pSrc);
	}
#endif

	if(ptItem->u8Ret == RET_OK) {
		pSrc = yuv_ret_ok_yuv;
	}
	else if(ptItem->u8Ret == RET_FAIL) {
		pSrc = yuv_ret_err_yuv;
	}
	else {
		pSrc = (void *)0;
	}

	if(pSrc) {
		tRegion.win_startX = ITEM_RET_START_X;
		tRegion.crop_startY = ITEM_RET_START_Y(u8ItemIndex);
		tRegion.win_Width = ITEM_RET_WIDTH;
		tRegion.win_Height = ITEM_RET_HEIGHT;
		tRegion.crop_startX = 0;
		tRegion.crop_startY = 0;

		BitBlt_Raw(ITEM_RET_START_X,
					ITEM_RET_START_Y(u8ItemIndex),
					ITEM_RET_WIDTH,
					ITEM_RET_HEIGHT,
					0,
					0,
					pSrc);
	}


	/*!
	 * 如果有执行结果，还需要显示结果状态图标，目前只有标定触发、和拍照两个命令有结果反馈图标
	 *
	 */
	/*标定触发结果图标*/
	if(ptItem->eItemType == ITEM_MENU_COLABRATION_COLABRATE) {
		if(tUIFsm.bRet_Colabration == RET_OK) {
			pSrc = yuv_ret_ok_yuv;
		}
		else if(tUIFsm.bRet_Colabration == RET_FAIL) {
			pSrc = yuv_ret_err_yuv;
		}
		else {
			pSrc = (void *)0;
		}

		if(pSrc) {
			tRegion.win_startX = ITEM_RET_START_X;
			tRegion.crop_startY = ITEM_RET_START_Y(u8ItemIndex);
			tRegion.win_Width = ITEM_RET_WIDTH;
			tRegion.win_Height = ITEM_RET_HEIGHT;
			tRegion.crop_startX = 0;
			tRegion.crop_startY = 0;

			BitBlt_Raw(ITEM_RET_START_X,
						ITEM_RET_START_Y(u8ItemIndex),
						ITEM_RET_WIDTH,
						ITEM_RET_HEIGHT,
						0,
						0,
						pSrc);
		}
	}

	/*拍照结果图标*/
	if(ptItem->eItemType == ITEM_MENU_ADVANCEDFUNC_TAKEPHOTO) {
		if(tUIFsm.bRet_TakenSnapshot == RET_OK) {
			pSrc = yuv_ret_ok_yuv;
		}
		else if(tUIFsm.bRet_TakenSnapshot == RET_FAIL) {
			pSrc = yuv_ret_err_yuv;
		}
		else {
			pSrc = (void *)0;
		}

		if(pSrc) {
			tRegion.win_startX = ITEM_RET_START_X;
			tRegion.crop_startY = ITEM_RET_START_Y(u8ItemIndex);
			tRegion.win_Width = ITEM_RET_WIDTH;
			tRegion.win_Height = ITEM_RET_HEIGHT;
			tRegion.crop_startX = 0;
			tRegion.crop_startY = 0;

			BitBlt_Raw(ITEM_RET_START_X,
						ITEM_RET_START_Y(u8ItemIndex),
						ITEM_RET_WIDTH,
						ITEM_RET_HEIGHT,
						0,
						0,
						pSrc);
		}
	}
}


/*!
 * 显示标题栏
 * \n
 *
 * \n
 * @see
 */
void Show_Title(eTITLE eTitle)
{
//	tREGION tRegion;

	//刷新黑色背景
	BitBlt_Raw(320, 0, 736-320, 480, 0,0, menu_Buf);

	//显示标题栏
	BitBlt_Raw(TITLE_WIN_START_X,TITLE_WIN_START_Y,
				aTitle_YUV[eTitle].width, aTitle_YUV[eTitle].height, 0,0,
				aTitle_YUV[eTitle].pSrc);

	//再显示分隔条

	BitBlt_Raw(SEP_START_X,SEP_START_Y,SEP_WIDTH,SEP_HEIGHT,0,0,yuv_sep_yuv);
}



/*!
 * 显示内容提交到显示缓区
 * \n
 *
 * @param pSrc
 * @param tRegion
 * \n
 * @see
 */
void	BitBlt(eVIEWTYPE eViewType, eSUBVIEW eSubView, tREGION *ptRegion, void *pSrc)
{
	if((ptRegion == NULL) || (pSrc == NULL))
		return;

	if((0 == ptRegion->win_Width) || (0 == ptRegion->win_Height))
		return;

	//window 0 : synthesis view
	if(eSubView == SUBVIEW_SYSTHESIS) {
		edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
			(void *)(pSrc + 736 * 2 * ptRegion->crop_startY + ptRegion->crop_startX * 2),
			(void *)(tpHandle.outputBuffer + ptRegion->win_startX * 2 + 736 * 2 * ptRegion->win_startY),
			ptRegion->win_Width *2, ptRegion->win_Height, 736*2, 736*2);//liuxu, 06/19/2014, single view in output buffer first.
	}
	//window 2: car box
	else if(eSubView == SUBVIEW_CAR) {
		edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
			(void *)(pSrc + 736 * 2 * ptRegion->crop_startY + ptRegion->crop_startX * 2),
			(void *)(tpHandle.outputBuffer + ptRegion->win_startX * 2 + 736 * 2 * ptRegion->win_startY),
			ptRegion->win_Width *2, ptRegion->win_Height, ptRegion->win_Width*2, 736*2);//liuxu, 06/19/2014, single view in output buffer first.
	}
	//window 1: single camera view,支持旋转
	else if(eSubView == SUBVIEW_SINGLEVIEW_LEFT) { //左视图，图像旋转拷贝
/*
		edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
			(void *)(pSrc + 736 * 2 * ptRegion->crop_startY + ptRegion->crop_startX * 2),
			(void *)(tpHandle.outputBuffer + ptRegion->win_startX * 2 + 736 * 2 * ptRegion->win_startY),
			ptRegion->win_Width *2, ptRegion->win_Height, 736*2, 736*2);
*/

  		//旋转后颜色失真！好像是UV值反了的效果
		edmaWarpImgCpy5(myBopTaskCtxt.hEdma,
						(void *)(pSrc + 736 * 2 * ptRegion->crop_startY + ptRegion->crop_startX * 2 + (ptRegion->win_Width - 1) *2),
						(void *)(tpHandle.outputBuffer + ptRegion->win_startX * 2 + 736 * 2 * ptRegion->win_startY),
						ptRegion->win_Width *2, ptRegion->win_Height, 736*2, 736*2);//liuxu, 06/19/2014, single view in output buffer first.

	}
	else if(eSubView == SUBVIEW_SINGLEVIEW_RIGHT)  { //右视图，图像旋转拷贝
		edmaWarpImgCpy6(myBopTaskCtxt.hEdma,
						(void *)(pSrc + 736 * 2 * ptRegion->crop_startY + ptRegion->crop_startX * 2 + 736 *(ptRegion->win_Height - 1) *2),
						(void *)(tpHandle.outputBuffer + ptRegion->win_startX * 2 + 736 * 2 * ptRegion->win_startY),
						ptRegion->win_Width *2, ptRegion->win_Height, 736*2, 736*2);//liuxu, 06/19/2014, single view in output buffer first.
	}
	else if(eSubView == SUBVIEW_SINGLEVIEW_FRONT) {
		edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
			(void *)(pSrc + 736 * 2 * ptRegion->crop_startY + ptRegion->crop_startX * 2),
			(void *)(tpHandle.outputBuffer + ptRegion->win_startX * 2 + 736 * 2 * ptRegion->win_startY),
			ptRegion->win_Width *2, ptRegion->win_Height, 736*2, 736*2);
	}
	else if(eSubView == SUBVIEW_SINGLEVIEW_REAR) {

		//		draw_line((char *)pSrc, &t_drawlinestruct);

		edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
			(void *)(pSrc + 736 * 2 * ptRegion->crop_startY + ptRegion->crop_startX * 2),
			(void *)(tpHandle.outputBuffer + ptRegion->win_startX * 2 + 736 * 2 * ptRegion->win_startY),
			ptRegion->win_Width *2, ptRegion->win_Height, 736*2, 736*2);

	}
	else if(eSubView == SUBVIEW_FULLSCREEN) {
		edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
			(void *)(pSrc + 736 * 2 * ptRegion->crop_startY + ptRegion->crop_startX * 2),
			(void *)(tpHandle.outputBuffer + ptRegion->win_startX * 2 + 736 * 2 * ptRegion->win_startY),
			ptRegion->win_Width *2, ptRegion->win_Height, 736*2, 736*2);
	}
	//window 3: osd
	else if(eSubView == SUBVIEW_TIPBAR) {
		edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
			(void *)(pSrc + 736 * 2 * ptRegion->crop_startY + ptRegion->crop_startX * 2),
			(void *)(tpHandle.outputBuffer + ptRegion->win_startX * 2 + 736 * 2 * ptRegion->win_startY),
			ptRegion->win_Width *2, ptRegion->win_Height, 480*2, 736*2);//liuxu, 06/19/2014, single view in output buffer first.
	}
	else {
		edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
			(void *)(pSrc + 736 * 2 * ptRegion->crop_startY + ptRegion->crop_startX * 2),
			(void *)(tpHandle.outputBuffer + ptRegion->win_startX * 2 + 736 * 2 * ptRegion->win_startY),
			ptRegion->win_Width *2, ptRegion->win_Height, ptRegion->win_Width*2, 736*2);//liuxu, 06/19/2014, single view in output buffer first.

	}
}


/*!
 * 原始格式刷新显存
 * \n
 *
 * @param crop_startX
 * @param crop_startY
 * @param pSrc
 * @param win_Height
 * @param win_startX
 * @param win_startY
 * @param win_Width
 * \n
 * @see
 */
void	BitBlt_Raw(int win_startX, int win_startY, int win_Width, int win_Height, int crop_startX, int crop_startY, void *pSrc)
{
	if(pSrc == NULL)
		return;

	edmaWarpImgCpy4(
		myBopTaskCtxt.hEdma,
		(void *)(pSrc + 736 * 2 * crop_startY + crop_startX * 2),
		(void *)(tpHandle.outputBuffer + win_startX * 2 + 736 * 2 * win_startY ),
		win_Width * 2,
		win_Height,
		win_Width*2, 736*2
		);//liuxu, 06/17/2014.
}

/*!
 * 显示按钮
 * \n
 *
 * @param u8ButtonIndex
 * @param u8Page
 * @param u8ShowType
 * \n
 * @see
 */
void	Show_Button(u8 u8Page, u8 u8ButtonIndex, u8 u8ShowType)
{


}


/*!
 * 显示碰撞报警图标
 * \n
 *
 * @param u8WarningLevel	报警等级
 * \n
 * @see
 */
void Show_CollsionWarning(u8 u8WarningLevel)
{
	void *pSrc;
	tREGION tRegion;


	/*标定触发结果图标*/
	if(u8WarningLevel == 1) {
		pSrc = yuv_ret_ok_yuv;
	}
	else {
		pSrc = (void *)0;
		return;
	}

	if(pSrc) {
		tRegion.win_startX = 150;
		tRegion.crop_startY = 20;
		tRegion.win_Width = ITEM_RET_WIDTH;
		tRegion.win_Height = ITEM_RET_HEIGHT;
		tRegion.crop_startX = 0;
		tRegion.crop_startY = 0;

		BitBlt_Raw(150,
					20,
					ITEM_RET_WIDTH,
					ITEM_RET_HEIGHT,
					0,
					0,
					pSrc);
	}

}

#endif // #ifdef __UI__




/*******************************************************************************
 *                           Function Declaration                              *
 ******************************************************************************/
void TI_dsp_Processing(UArg arg0, UArg arg1);//liuxu, 01/22/2014, China port.
int main(void);
void dspAppTask(UArg arg0, UArg arg1);


/*******************************************************************************
 *                           Function implementation                           *
 ******************************************************************************/

/*************************************************************************
 *  @func       spiFlashRead
 *
 *  @brief      API to read into buffer from SPI flash.
 *
 *  @param[in]  offset : argument 0
 *  @param[in]  len : argument 1
 *  @param[out]  buffer_address : argument 2
 *
 *  @returns    1:success
 *  			0:fail
 ************************************************************************/
int spiFlashRead(unsigned int offset, unsigned int len, char * buffer_address)
{
   unsigned int bus = 0;
   struct spi_flash *flash = 0;

   unsigned int cs = 0;
   unsigned int speed = CONFIG_SF_DEFAULT_SPEED;
   unsigned int mode = CONFIG_SF_DEFAULT_MODE;

   if(len > 65536)
	   return -1;

   static Byte buffer_addr[65536];
   memset(buffer_addr, 0, 65536);


   int ret;
   if(offset < SRV_PARAM_START_ADDR || offset > SRV_PARAM_END_ADDR )
   {
	   return 0;
   }

   unsigned int i = 0;
   char temp = 0;
   unsigned int * pCmAlwonSpiClkctrl = CM_ALWON_SPI_CLKCTRL;
   *(pCmAlwonSpiClkctrl) = 0x2;//liuxu, 06/18/2014, enable the spi register clk byself, because kernel would disable it(uboot enabled it actually) by default. Pinmux is under control by ROM(SPI boot) or uboot/kernel.

   //probe flash
   flash = spi_flash_probe(bus, cs, speed, mode);
   if (!flash)  {
         printf("Failed to initialize SPI flash at %u:%u\n", bus, cs);
         return 0;
   }

   ret = spi_flash_read(flash, offset, 4096, buffer_addr);
   if (ret) {
         printf("SPI flash read failed\n");
         return 0;
   }

   if(flash->type == 0xef) //winbond
   {
	   /*if write 0x00123456, which in bytes 0x56 0x34 0x12 0x00, then read from flash,
	    * it becomes 0x00 0x12 0x34 0x56*/
	   for(i= 0 ; i< 65536/4; i++)
	   {
		   temp = buffer_addr[3+i*4]; buffer_addr[3+i*4] = buffer_addr[0+i*4]; buffer_addr[0+i*4] = temp;
		   temp = buffer_addr[2+i*4]; buffer_addr[2+i*4] = buffer_addr[1+i*4]; buffer_addr[1+i*4] = temp;
	   }
   }

   memcpy(buffer_address,buffer_addr, len);

   System_printf("\nliuxu, 06/18/2014, test of spi flash done.\n");
   spi_flash_free(flash);
   return 1;
}

/*************************************************************************
 *  @func       spiFlashWrite
 *
 *  @brief      API to write from buffer to SPI flash.
 *
 *  @param[in]  offset : argument 0
 *  @param[in]  len : argument 1
 *  @param[out]  buffer_address : argument 2
 *
 *  @returns    1:success
 *  			0:fail
 ************************************************************************/
int spiFlashWrite(unsigned int offset, unsigned int len, char * buffer_address)
{
   unsigned int bus = 0;
   struct spi_flash *flash = 0;
   unsigned int cs = 0;
   unsigned int speed = CONFIG_SF_DEFAULT_SPEED;
   unsigned int mode = CONFIG_SF_DEFAULT_MODE;

   if(len > 65536)
	   return -1;

   static Byte buffer_addr[65536];
   memset(buffer_addr, 0, 65536);
   Byte * Buffer_pointer = NULL;
   int ret;

   unsigned int i = 0;
   unsigned int j = 0;
   char temp = 0;
   unsigned int * pCmAlwonSpiClkctrl = CM_ALWON_SPI_CLKCTRL;
   *(pCmAlwonSpiClkctrl) = 0x2;//liuxu, 06/18/2014, enable the spi register clk byself, because kernel would disable it(uboot enabled it actually) by default. Pinmux is under control by ROM(SPI boot) or uboot/kernel.

   if(offset < SRV_PARAM_START_ADDR || offset > SRV_PARAM_END_ADDR )   {
	   return 0;
   }

   //probe flash
   flash = spi_flash_probe(bus, cs, speed, mode);
   if (!flash)
   {
         printf("Failed to initialize SPI flash at %u:%u\n", bus, cs);
         return 0;
   }

   ret = spi_flash_read(flash, offset, 65536, buffer_addr);

   if(flash->type == 0xef) //winbond
   {
   	   /*if write 0x00123456, which in bytes 0x56 0x34 0x12 0x00, then read from flash,
   	    * it becomes 0x00 0x12 0x34 0x56*/
   	   for(i= 0 ; i< 65536/4; i++)
   	   {
   		   temp = buffer_addr[3+i*4]; buffer_addr[3+i*4] = buffer_addr[0+i*4]; buffer_addr[0+i*4] = temp;
   		   temp = buffer_addr[2+i*4]; buffer_addr[2+i*4] = buffer_addr[1+i*4]; buffer_addr[1+i*4] = temp;
   	   }
   }
   if (ret) {
	   printf("SPI flash read failed\n");
	   return 0;
   }


   System_printf("\nliuxu, 06/18/2014, %u KiB %s at %u:%u is now current device\n",flash->size >> 10, flash->name, bus, cs);

   ret = spi_flash_erase(flash, offset, 65536 ); /*page size*page per sector 256*256*/
   if (ret) {
         printf("SPI flash erase failed\n");
         return 0;
   }

   memcpy(buffer_addr, buffer_address, len);

   ret = spi_flash_write(flash, offset, 65536, buffer_addr );
   if (ret) {  printf("SPI flash write failed\n");
         return 0;
   }

   spi_flash_free(flash);
   return 1;

}


int spiFlashErase(unsigned int offset, unsigned int len)
{
   unsigned int bus = 0;
   struct spi_flash *flash = 0;
   unsigned int cs = 0;
   unsigned int speed = CONFIG_SF_DEFAULT_SPEED;
   unsigned int mode = CONFIG_SF_DEFAULT_MODE;

   if(len > 65536)
	   return -1;

   static Byte buffer_addr[65536];
   memset(buffer_addr, 0, 65536);
   Byte * Buffer_pointer = NULL;
   int ret;

   unsigned int i = 0;
   unsigned int j = 0;
   char temp = 0;
   unsigned int * pCmAlwonSpiClkctrl = CM_ALWON_SPI_CLKCTRL;
   *(pCmAlwonSpiClkctrl) = 0x2;//liuxu, 06/18/2014, enable the spi register clk byself, because kernel would disable it(uboot enabled it actually) by default. Pinmux is under control by ROM(SPI boot) or uboot/kernel.

   if(offset < SRV_PARAM_START_ADDR || offset > SRV_PARAM_END_ADDR )   {
	   return 0;
   }

   //probe flash
   flash = spi_flash_probe(bus, cs, speed, mode);
   if (!flash)
   {
         printf("Failed to initialize SPI flash at %u:%u\n", bus, cs);
         return 0;
   }

   System_printf("\nliuxu, 06/18/2014, %u KiB %s at %u:%u is now current device\n",flash->size >> 10, flash->name, bus, cs);

   ret = spi_flash_erase(flash, offset, 65536 ); /*page size*page per sector 256*256*/
   if (ret) {
         printf("SPI flash erase failed\n");
         return 0;
   }

   spi_flash_free(flash);
   return 1;

}


/*************************************************************************
 *  @func       allocSlaveTaskMgrCtxt_Lite
 * 
 *  @brief      Perform IPC init with other cores.
 *
 *  @param[in]  
 * 
 *  @returns    ecNone
 *              ecFail
 ************************************************************************/
static void *allocSlaveTaskMgrCtxt_Lite(void)
{
    slaveTaskMgrCtxt_t *pSlaveTaskMgrCtxt = NULL_VALUE;

    do {
        MEM_ALLOC(pSlaveTaskMgrCtxt, slaveTaskMgrCtxt_t);
        if (NULL == pSlaveTaskMgrCtxt) {
            System_printf("\n%s: %d: DSP_LITE_Slave Task Manager context allocation failed. \n", __FUNCTION__, __LINE__);
            break;
        }
    } while(0);
    return ((void *) pSlaveTaskMgrCtxt);
}


/*************************************************************************
 *  @func       INVALIDATE_DSP_CACHE
 *
 *  @brief      Writeback cache,
 *  			call this function before copy from memory to memory
 *
 *  @returns    none
 ************************************************************************/
inline void INVALIDATE_DSP_CACHE()
{
	L1DWB = 0x1u;
	while((L1DWB & 1)!=0);
	L2WB = 0x1u;
	while((L2WB & 1)!=0);
	L1PINV = 0x1u;
	while((L1PINV & 1)!=0);
}

/*************************************************************************
 *  @func       INVALIDATE_DSP_CACHE
 *
 *  @param[in]  layoutid: id identify which layout to use
 *  @param[in]  pFrom_VPSS_M3_TempCmdMsg: structure included the pointer
 *              pointed to image data for four camera in
 *  @brief      Specify the position of each sub window,
 *  			call this function to change GUI layout
 *
 *  @returns    none
 ************************************************************************/
static void layoutChange(int layoutid, cfg4Pointers_t *pFrom_VPSS_M3_TempCmdMsg)
{
	static int curLayoutId = 0;

	pVideoBuf_Synthesis = tpHandle.synthesisBuffer;
	pVideoBuf_Front = pFrom_VPSS_M3_TempCmdMsg->pPointer0;  ///前视
	pVideoBuf_Left = pFrom_VPSS_M3_TempCmdMsg->pPointer2;	///左视
	pVideoBuf_Right = pFrom_VPSS_M3_TempCmdMsg->pPointer1;	///右视
	pVideoBuf_Rear = pFrom_VPSS_M3_TempCmdMsg->pPointer3;	///后视

	return; //2016-09-12

	srcBuf[0] = tpHandle.synthesisBuffer;

	//update srcBuf
	if(curLayoutId == 0){
		srcBuf[1] = memRearCamAfterFishEyeCorrection;
		//srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer0;
	}
	else if(curLayoutId == 1)		srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer1;
	else if(curLayoutId == 2)		srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer2;
	else if(curLayoutId == 3)		srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer3;
	else		srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer0;

	srcBuf[2] = Carbox_80_240;
	srcBuf[3] = OSD_400_224;

	if(curLayoutId == layoutid)
		return;
	else{
		curLayoutId = layoutid;
		memset((void *)tpHandle.outputBuffer, 0x00, 736*480*2);
	}

	if(curLayoutId == 0)	{
		//synthesis image
		win_startX[0] = 0,win_startY[0] = 0,win_Width[0] = 320,win_Height[0] = 480;
		crop_startX[0] = 0, crop_startY[0] = 0;
		//single camera view
		win_startX[1] = 320, win_startY[1] = 0,win_Width[1] = 736 - 320,win_Height[1] = 400;
		crop_startX[1] = 160, crop_startY[1] = 40;
		//car box
		win_startX[2] = 120 + win_startX[0], win_startY[2] = 120,win_Width[2] = 80,win_Height[2] = 240;
		crop_startX[2] = 0, crop_startY[2] = 0;
		//OSD
		win_startX[3] = 320, win_startY[3] = 400,win_Width[3] = 400,win_Height[3] = 80;
		crop_startX[3] = 40, crop_startY[3] = 0;

	} else if(curLayoutId == 1) {
		//synthesis image
		win_startX[0] = 400,win_startY[0] = 0,win_Width[0] = 320,win_Height[0] = 480;
		crop_startX[0] = 0, crop_startY[0] = 0;
		//single camera view
		win_startX[1] = 0, win_startY[1] = 0,win_Width[1] = 736 - 320,win_Height[1] = 480;
		crop_startX[1] = 90, crop_startY[1] = 0;
		//car box
		win_startX[2] = 120 + win_startX[0], win_startY[2] = 120,win_Width[2] = 80,win_Height[2] = 240;
		crop_startX[2] = 0, crop_startY[2] = 0;
		//OSD
		win_startX[3] = 320, win_startY[3] = 400,win_Width[3] = 0,win_Height[3] = 0;
		crop_startX[3] = 0, crop_startY[3] = 0;
	} else if(curLayoutId == 2) {
		//synthesis image
		win_startX[0] = 0,win_startY[0] = 0,win_Width[0] = 320,win_Height[0] = 480;
		crop_startX[0] = 24, crop_startY[0] = 0;
		//single camera view
		win_startX[1] = 270, win_startY[1] = 0,win_Width[1] = 736 - 270,win_Height[1] = 400;
		crop_startX[1] = 90, crop_startY[1] = 60;
		//car box
		win_startX[2] = 120 + win_startX[0] - crop_startX[0], win_startY[2] = 120,win_Width[2] = 80,win_Height[2] = 240;
		crop_startX[2] = 0, crop_startY[2] = 0;
		//OSD
		win_startX[3] = 270, win_startY[3] = 400,win_Width[3] = 480,win_Height[3] = 80;
		crop_startX[3] = 20, crop_startY[3] = 0;
	} else if(curLayoutId == 3) {

		//synthesis image
		win_startX[0] = 0,win_startY[0] = 0,win_Width[0] = 0,win_Height[0] = 0;
		crop_startX[0] = 0, crop_startY[0] = 0;
		//single camera view
		win_startX[1] = 0, win_startY[1] = 0,win_Width[1] = 736 ,win_Height[1] = 480;
		crop_startX[1] = 0, crop_startY[1] = 0;
		//car box
		win_startX[2] = 120 + win_startX[0], win_startY[2] = 120,win_Width[2] = 0,win_Height[2] = 0;
		crop_startX[2] = 0, crop_startY[2] = 0;
		//OSD
		win_startX[3] = 320, win_startY[3] = 400,win_Width[3] = 0,win_Height[3] = 0;
		crop_startX[3] = 0, crop_startY[3] = 0;

	} else {

		//synthesis image
		win_startX[0] = 0,win_startY[0] = 0,win_Width[0] = 320,win_Height[0] = 480;
		crop_startX[0] = 0, crop_startY[0] = 0;
		//single camera view
		win_startX[1] = 320, win_startY[1] = 0,win_Width[1] = 736 - 320,win_Height[1] = 400;
		crop_startX[1] = 90, crop_startY[1] = 60;
		//car box
		win_startX[2] = 120 + win_startX[0], win_startY[2] = 120,win_Width[2] = 80,win_Height[2] = 240;
		crop_startX[2] = 0, crop_startY[2] = 0;
		//OSD
		win_startX[3] = 320, win_startY[3] = 400,win_Width[3] = 400,win_Height[3] = 80;
		crop_startX[3] = 40, crop_startY[3] = 0;

	}
}

/*************************************************************************
 *  @func       GenColorBarToMemory
 *
 *  @brief      Generate Color bar in memory,
 *  			call this function for test
 *
 *  @returns    none
 ************************************************************************/
//#define GEN_COLOR_BAR_PATTERN
static void GenColorBarToMemory(int width, int height)//liuxuliuxu, 6/29/2013, YUV422, the width should be multiple of 16 for color bar.
{
    int i=0,j=0;

    for(i=0; i<height; i++)
    {
        for(j=0; j<(width/16); j++)        {
            *(int *)(0x91000000+i*width*2+j*4) = 0x80B480B4;//HDTV, white.
            *(int *)(0x91000000+i*width*2+width/4+j*4) = 0x88A82CA8;//HDTV, yellow.
            *(int *)(0x91000000+i*width*2+2*width/4+j*4) = 0x2C919391;//HDTV, cyan.
            *(int *)(0x91000000+i*width*2+3*width/4+j*4) = 0x34853F85;//HDTV, green.
            *(int *)(0x91000000+i*width*2+4*width/4+j*4) = 0xCC3FC13F;//HDTV, magenta.
            *(int *)(0x91000000+i*width*2+5*width/4+j*4) = 0xD4336D33;//HDTV, red.
            *(int *)(0x91000000+i*width*2+6*width/4+j*4) = 0x781CD41C;//HDTV, blue.
            *(int *)(0x91000000+i*width*2+7*width/4+j*4) = 0x80108010;//HDTV, black.
        }
    }
}


/*************************************************************************
 *  @func       edmaInit
 *
 *  @param[in]   pBopTaskCtxt:structure included handle of edma channel requested
 *  @brief      initialize edma handle
 *  			requestion edma channel for use, call this function before
 *  			edma copy.
 *
 *  @returns    none
 ************************************************************************/
static void edmaInit(bopCtxt_t *pBopTaskCtxt)
{
    EDMA3_DRV_Result edmaResult = EDMA3_DRV_SOK;
    do {
        memset(pBopTaskCtxt->hEdma,0,sizeof(pBopTaskCtxt->hEdma));
        pBopTaskCtxt->hEdma = (EDMA3_DRV_Handle) edma3init(0, &edmaResult);
        if (!pBopTaskCtxt->hEdma)
        {
            System_printf("edma3init() Failed, error code: %d\n", edmaResult);
            break;
        }

        gTcc = EDMA3_DRV_TCC_ANY;
        gEdma_ChId = EDMA3_DRV_DMA_CHANNEL_ANY;
        edmaResult = EDMA3_DRV_requestChannel (pBopTaskCtxt->hEdma, &gEdma_ChId, &gTcc,
            (EDMA3_RM_EventQueue)0,
            &edmaDoneCb, NULL);
        if (edmaResult != EDMA3_DRV_SOK)
        {
            System_printf("EDMA3_DRV_requestChannel() Failed, error code: %d\n", edmaResult);
            break;
        }
    } while(0);

    if (edmaResult != EDMA3_DRV_SOK)    {
        edmaResult = edma3deinit(0,pBopTaskCtxt->hEdma);
        if (edmaResult != EDMA3_DRV_SOK)
        {
            System_printf("edma3deinit() Failed, error code: %d\n", edmaResult);
        }
    }

    return;
}


#ifdef A8_CommInTask

static    cmdQParams_t* pA8TaskCmdQ = NULL_VALUE;

static    cfg8Pointers_t *pDSP_To_A8_TempCmdMsg_intask = NULL_VALUE;
/*************************************************************************
 *  @func       A8CommTask
 *
 *  @param[in]   arg0: task argument0
 *  @param[in]   arg1: task argument1
 *  @brief
 *               task which talk to A8, pass image pointer of four camera to A8
 *
 *  @returns    none
 ************************************************************************/
void A8CommTask(UArg arg0, UArg arg1)
{
//    cmdQParams_t* pA8TaskCmdQ = NULL_VALUE;

//    cfg8Pointers_t *pDSP_To_A8_TempCmdMsg_intask = NULL_VALUE;
    int nStatus;
    ERRORTYPE nRetVal = ecNone;
    MessageQ_Msg pTempCmdMsg_intask = NULL_VALUE;
    uint16_t nSRId_intask = 0u;
    SharedRegion_SRPtr srPtr_intask = {0u};
//    cfg4Pointers_t *pFrom_A8_TempCmdMsg_intask = NULL_VALUE;
    cfgCmdMsg_t *pFrom_A8_TempCmdMsg_intask = NULL_VALUE;
    uint16_t u16CmdProfile = 0;

    RemoteDebug_init();//liuxu, 04/22/2014, add remote debug support to A8 console.

#ifdef TWO_TASKS_SLEEP
    Task_sleep(1000u*10000);//liuxu, 12/1/2013, don't drain the CPU here.
#endif

    MEM_ALLOC(pA8TaskCmdQ, cmdQParams_t);//liuxu, 11/20/2013, let it comes from heap for IPC.
    System_printf("[C674x]: liuxu, pA8TaskCmdQ from system heap is 0x%x\n", pA8TaskCmdQ);

    /*
     * 这个消息队列由DSP创建，拥有者是DSP
     */
    pA8TaskCmdQ->hCmdQ = commandQCreate("DSP_CMD_Q_TO_A8", NULL_VALUE);
    if (NULL == pA8TaskCmdQ->hCmdQ)    {
        System_printf("\n%s: %d: A8CommTask command Q creation failed for Q %s. \n", __FUNCTION__, __LINE__, "DSP_CMD_Q_TO_A8");
        while(1);
    }

    pDSP_To_A8_TempCmdMsg_intask = (cfg8Pointers_t *)commandQAlloc(MSGQ_HEAPID1, sizeof(cfg8Pointers_t));//liuxuliuxu, don't forget to free at last.//liuxu, 10/5/2013.
    System_printf("[C674x]: liuxu, pDSP_To_A8_TempCmdMsg_intask from commandQAlloc should be in sr0 is 0x%x\n", pDSP_To_A8_TempCmdMsg_intask);//liuxu, 11/20/2013.

    if (NULL == pDSP_To_A8_TempCmdMsg_intask)    {
        while(1){;}
    }
    /* Send the ACK command to the remote task. */
    memset(pDSP_To_A8_TempCmdMsg_intask, 0, sizeof(cfg8Pointers_t));

    // writeback dirty lines globally for A8 Syslink IPC issue.
    INVALIDATE_DSP_CACHE();

    System_printf("[C674x]: A8CommTask, before DSP and A8 attach...\n");

    do    {
        Task_sleep(1000u);//liuxu, 12/1/2013, don't drain the CPU here.
        nStatus = Ipc_attach(HOST_CORE_ID);//liuxuliuxu, 8/19/2013, communicate with A8 for encoding.
    } while (nStatus < 0);

    System_printf("[C674x]: A8CommTask, DSP and A8 attach is done!\n");

    do    {
        nRetVal = commandQOpen("A8_CMD_Q_TO_DSP_LITE", &(pA8TaskCmdQ->nCmdQId));
    }while(nRetVal != ecNone);


    while(1)
    {
         if((mutualTaskCmdMsg.cmdType == 0x777) && (mutualTaskCmdMsg.pY_Pointer0 != NULL))
         {
			pDSP_To_A8_TempCmdMsg_intask->cmdType = 0x777;

			pDSP_To_A8_TempCmdMsg_intask->pY_Pointer0 = (void *)(mutualTaskCmdMsg.pY_Pointer0);
			pDSP_To_A8_TempCmdMsg_intask->pUV_Pointer0 = (void *)(mutualTaskCmdMsg.pUV_Pointer0);

			pDSP_To_A8_TempCmdMsg_intask->pY_Pointer1 = (void *)(mutualTaskCmdMsg.pY_Pointer1);
			pDSP_To_A8_TempCmdMsg_intask->pUV_Pointer1 = (void *)(mutualTaskCmdMsg.pUV_Pointer1);

			pDSP_To_A8_TempCmdMsg_intask->pY_Pointer2 = (void *)(mutualTaskCmdMsg.pY_Pointer2);
			pDSP_To_A8_TempCmdMsg_intask->pUV_Pointer2 = (void *)(mutualTaskCmdMsg.pUV_Pointer2);

			pDSP_To_A8_TempCmdMsg_intask->pY_Pointer3 = (void *)(mutualTaskCmdMsg.pY_Pointer3);
			pDSP_To_A8_TempCmdMsg_intask->pUV_Pointer3 = (void *)(mutualTaskCmdMsg.pUV_Pointer3);

			nStatus = commandQPut(pA8TaskCmdQ->nCmdQId, (MessageQ_Msg )pDSP_To_A8_TempCmdMsg_intask);
			mySentToA8Counter++;//liuxu, 05/08/2014, debug for ipc to A8 issue.

			if (nStatus < 0) {
				System_printf("\n%s: %d: CommandQ put failed\n", __FUNCTION__, __LINE__);
				while(1){;}
			}

			Vps_rprintf("\n[DSP] send { %d } frame to A8, cmd = 0x777, P0=%x",
					mySentToA8Counter, mutualTaskCmdMsg.pY_Pointer0);

			mutualTaskCmdMsg.cmdType = 0;
			mutualTaskCmdMsg.pY_Pointer0 = NULL;
         }

		/*
		 * DSP循环检查从A8消息队列里传来的消息，提取用户界面切换控制命令ChInfoFromA8值
		 */
		nStatus = commandQGet(pA8TaskCmdQ->hCmdQ, &(pTempCmdMsg_intask), (uint32_t)MessageQ_FOREVER);
		if (nStatus < 0) {
			System_printf("\n%s: %d: CommandQ get failed\n", __FUNCTION__, __LINE__);
			 while(1){;}
		}

		if(MessageQ_S_SUCCESS != nStatus) {
			Task_sleep(1u);
			continue;
		}

		if(pTempCmdMsg_intask == NULL) {
			Task_sleep(1u);
			continue;
		}

		/* Get the id of the address if id is not already known. */
		nSRId_intask = SharedRegion_getId(pTempCmdMsg_intask);
		/* Get the shared region pointer for the address */
		srPtr_intask = SharedRegion_getSRPtr(pTempCmdMsg_intask, nSRId_intask);
		/* Get the address back from the shared region pointer */
		pFrom_A8_TempCmdMsg_intask = SharedRegion_getPtr(srPtr_intask);

		u16CmdProfile = pFrom_A8_TempCmdMsg_intask->cmdType >> 16;

		if( (u16CmdProfile != 0x666) && (u16CmdProfile != 0x678))//liuxu, 06/19/2014, RISK...Be careful for rev mapping.
		{
			Vps_rprintf("[DSP] Unknown Message. pFrom_A8_TempCmdMsg_intask->cmdType = 0x%x\n", u16CmdProfile);
			continue;
		}

		/**
		* 按键消息
		*/
		if(u16CmdProfile == 0x666) {
			ChInfoFromA8 = pFrom_A8_TempCmdMsg_intask->cmdType & 0xFFFF;
			tUIFsm.u8PendingCommand = ChInfoFromA8;
			Vps_rprintf("\n[DSP] ChInfoFromA8 = %d  -------------------- \n", ChInfoFromA8);
		}
		else if(u16CmdProfile == 0x678) {
		/**
		 * FCW消息
		 */
		u16 u16CmdFCW = (pFrom_A8_TempCmdMsg_intask->cmdType & 0xFFFF);

		if(u16CmdFCW == FCW_DISTANCE) {
			tUIFsm.FCW_u16Distance = ((u16)(pFrom_A8_TempCmdMsg_intask->cmdParam[0]) << 8)
					+ pFrom_A8_TempCmdMsg_intask->cmdParam[1];
		#ifdef TRACE_FCW
			Vps_rprintf("[DSP] FCW_DISTANCE : par[0,1] = 0x%x%x, Distance = %d\n",
						pFrom_A8_TempCmdMsg_intask->cmdParam[0],
						pFrom_A8_TempCmdMsg_intask->cmdParam[1],
						tUIFsm.FCW_u16Distance);
		#endif
		}

		if(u16CmdFCW == FCW_WARNING) {
			tUIFsm.FCW_u8WarningLevel = pFrom_A8_TempCmdMsg_intask->cmdParam[0];
		#ifdef TRACE_FCW
			Vps_rprintf("[DSP] FCW_WARNING: Warning Level = %d\n", tUIFsm.FCW_u8WarningLevel);
		#endif
		}
		} else {	//if(u16CmdProfile == 0x678)
		//never reach here.
		}

		Task_sleep(1u);

     }//end of while(1)



#if 0
    while(1)
    {
        if((mutualTaskCmdMsg.cmdType == 0x777) && (mutualTaskCmdMsg.pY_Pointer0 != NULL))
        {

#ifdef TI_DSP_ALG//liuxu, 02/11/2014, ti dsp processing...

#ifndef YUV422i

            #if 1//liuxu, 02/19/2014, twist for test. 	
            tpHandle.frmBuffer[0] = (void *)(mutualTaskCmdMsg.pY_Pointer0);//liuxu, 05/27/2014, front view.
			tpHandle.frmBuffer[1] = (void *)(mutualTaskCmdMsg.pY_Pointer1);//liuxu, 05/27/2014, right view.  
			tpHandle.frmBuffer[2] = (void *)(mutualTaskCmdMsg.pY_Pointer3);//liuxu, 05/27/2014, back view.  
			tpHandle.frmBuffer[3] = (void *)(mutualTaskCmdMsg.pY_Pointer2);//liuxu, 05/27/2014, left view.  


			//tpHandle.frmBuffer[0] = (void *)(mutualTaskCmdMsg.pY_Pointer2);//liuxu, 02/11/2014, left view.
			//tpHandle.frmBuffer[1] = (void *)(mutualTaskCmdMsg.pY_Pointer0);//liuxu, 02/11/2014, front view.  
			//tpHandle.frmBuffer[2] = (void *)(mutualTaskCmdMsg.pY_Pointer1);//liuxu, 02/11/2014, right view.  
			//tpHandle.frmBuffer[3] = (void *)(mutualTaskCmdMsg.pY_Pointer3);//liuxu, 02/11/2014, back view.  
            #else
            tpHandle.frmBuffer[0] = (void *)(mutualTaskCmdMsg.pY_Pointer1);//liuxu, 02/11/2014, left view.
			tpHandle.frmBuffer[1] = (void *)(mutualTaskCmdMsg.pY_Pointer3);//liuxu, 02/11/2014, front view.  
			tpHandle.frmBuffer[2] = (void *)(mutualTaskCmdMsg.pY_Pointer2);//liuxu, 02/11/2014, right view.  
			tpHandle.frmBuffer[3] = (void *)(mutualTaskCmdMsg.pY_Pointer0);//liuxu, 02/11/2014, back view. 
            #endif
			//System_printf("\n\n\n\n[C674x]: liuxu, 02/12/2014, pY_Pointer0=0x%x\n", mutualTaskCmdMsg.pY_Pointer0);
			//System_printf("[C674x]: liuxu, 02/12/2014, pY_Pointer1=0x%x\n", mutualTaskCmdMsg.pY_Pointer1);
			//System_printf("[C674x]: liuxu, 02/12/2014, pY_Pointer2=0x%x\n", mutualTaskCmdMsg.pY_Pointer2);
			//System_printf("[C674x]: liuxu, 02/12/2014, pY_Pointer3=0x%x\n\n\n\n", mutualTaskCmdMsg.pY_Pointer3);



            firstSetOfFramesReady = 1;
            ToProcessOneSet = 1;
            while(DoneProcessedOneSet!=1)
            {
                Task_sleep(1);//liuxu, 02/11/2014, 1ms. 
            }
            DoneProcessedOneSet = 0;
            //edma
            //liuxu, 02/12/2014, disable EDMA, and use hard pointer of "outputBuffer" at A8 side directly. 
            //edmaWarpImgCpy3(myBopTaskCtxt.hEdma, (void *)outputBuffer, (mutualTaskCmdMsg.pY_Pointer0), 720, 480);
            //edmaWarpImgCpy3(myBopTaskCtxt.hEdma, (void *)(outputBuffer+736*480), (mutualTaskCmdMsg.pUV_Pointer0), 720, 240);  
#endif

#endif 

			pDSP_To_A8_TempCmdMsg_intask->cmdType = 0x777;

			pDSP_To_A8_TempCmdMsg_intask->pY_Pointer0 = (void *)(mutualTaskCmdMsg.pY_Pointer0);
			pDSP_To_A8_TempCmdMsg_intask->pUV_Pointer0 = (void *)(mutualTaskCmdMsg.pUV_Pointer0);

			pDSP_To_A8_TempCmdMsg_intask->pY_Pointer1 = (void *)(mutualTaskCmdMsg.pY_Pointer1);
			pDSP_To_A8_TempCmdMsg_intask->pUV_Pointer1 = (void *)(mutualTaskCmdMsg.pUV_Pointer1);

			pDSP_To_A8_TempCmdMsg_intask->pY_Pointer2 = (void *)(mutualTaskCmdMsg.pY_Pointer2);
			pDSP_To_A8_TempCmdMsg_intask->pUV_Pointer2 = (void *)(mutualTaskCmdMsg.pUV_Pointer2);

			pDSP_To_A8_TempCmdMsg_intask->pY_Pointer3 = (void *)(mutualTaskCmdMsg.pY_Pointer3);
			pDSP_To_A8_TempCmdMsg_intask->pUV_Pointer3 = (void *)(mutualTaskCmdMsg.pUV_Pointer3);

			nStatus = commandQPut(pA8TaskCmdQ->nCmdQId, (MessageQ_Msg )pDSP_To_A8_TempCmdMsg_intask);
			mySentToA8Counter++;//liuxu, 05/08/2014, debug for ipc to A8 issue.

			if (nStatus < 0) {
				System_printf("\n%s: %d: CommandQ put failed\n", __FUNCTION__, __LINE__);
				while(1){;}
			}

			Vps_rprintf("\n[DSP] send { %d } frame to A8, cmd = 0x777, P0=%x",
					mySentToA8Counter, mutualTaskCmdMsg.pY_Pointer0);

			/*
			 * DSP循环检查从A8消息队列里传来的消息，提取用户界面切换控制命令ChInfoFromA8值
			 */
			nStatus = commandQGet(pA8TaskCmdQ->hCmdQ, &(pTempCmdMsg_intask), (uint32_t)MessageQ_FOREVER);
			if (nStatus < 0) {
				System_printf("\n%s: %d: CommandQ get failed\n", __FUNCTION__, __LINE__);
                while(1){;}
			}

			/* Get the id of the address if id is not already known. */
			nSRId_intask = SharedRegion_getId(pTempCmdMsg_intask);
			/* Get the shared region pointer for the address */
			srPtr_intask = SharedRegion_getSRPtr(pTempCmdMsg_intask, nSRId_intask);
			/* Get the address back from the shared region pointer */
			pFrom_A8_TempCmdMsg_intask = SharedRegion_getPtr(srPtr_intask);

			u16CmdProfile = pFrom_A8_TempCmdMsg_intask->cmdType >> 16;

            if( (u16CmdProfile != 0x666) && (u16CmdProfile != 0x678))//liuxu, 06/19/2014, RISK...Be careful for rev mapping.
            {
				Vps_rprintf("[DSP] Unknown Message. pFrom_A8_TempCmdMsg_intask->cmdType = 0x%x\n", u16CmdProfile);
				continue;
            }

            /**
             * 按键消息
             */
			if(u16CmdProfile == 0x666) {
				ChInfoFromA8 = pFrom_A8_TempCmdMsg_intask->cmdType & 0xFFFF;
				tUIFsm.u8PendingCommand = ChInfoFromA8;
				Vps_rprintf("\n[DSP] ChInfoFromA8 = %d  -------------------- \n", ChInfoFromA8);
			}
			else if(u16CmdProfile == 0x678) {
				/**
				 * FCW消息
				 */
				u16 u16CmdFCW = (pFrom_A8_TempCmdMsg_intask->cmdType & 0xFFFF);

				if(u16CmdFCW == FCW_DISTANCE) {
					tUIFsm.FCW_u16Distance = ((u16)(pFrom_A8_TempCmdMsg_intask->cmdParam[0]) << 8)
							+ pFrom_A8_TempCmdMsg_intask->cmdParam[1];
	#ifdef TRACE_FCW
					Vps_rprintf("[DSP] FCW_DISTANCE : par[0,1] = 0x%x%x, Distance = %d\n",
								pFrom_A8_TempCmdMsg_intask->cmdParam[0],
								pFrom_A8_TempCmdMsg_intask->cmdParam[1],
								tUIFsm.FCW_u16Distance);
	#endif
				}

				if(u16CmdFCW == FCW_WARNING) {
					tUIFsm.FCW_u8WarningLevel = pFrom_A8_TempCmdMsg_intask->cmdParam[0];
	#ifdef TRACE_FCW
					Vps_rprintf("[DSP] FCW_WARNING: Warning Level = %d\n", tUIFsm.FCW_u8WarningLevel);
	#endif
				}
			} else {	//if(u16CmdProfile == 0x678)
				//never reach here.
			}

            mutualTaskCmdMsg.cmdType = 0;
            mutualTaskCmdMsg.pY_Pointer0 = NULL;

//			UI_Key_Process(ChInfoFromA8);
	   } else  {
		   Task_sleep(1u);
	   }

    }//end of while(1)
#endif

}


#if 0
			ChInfoFromA8 = (pFrom_A8_TempCmdMsg_intask->cmdType & 0xFFFF);//liuxu, 06/19/2014, add info channel among of A8 to DSP/M3.
			if(ChInfoFromA8 == FCW_DISTANCE)
			{
				tUIFsm.FCW_u16Distance = ((u16)(pFrom_A8_TempCmdMsg_intask->cmdParam[0]) << 8)
						+ pFrom_A8_TempCmdMsg_intask->cmdParam[1];
#ifdef TRACE_FCW
				Vps_rprintf("[DSP] FCW_DISTANCE : par[0,1] = 0x%x%x, Distance = %d\n",
							pFrom_A8_TempCmdMsg_intask->cmdParam[0],
							pFrom_A8_TempCmdMsg_intask->cmdParam[1],
							tUIFsm.FCW_u16Distance
							);
#endif
			}
			else if(ChInfoFromA8 == FCW_WARNING)
			{
				tUIFsm.FCW_u8WarningLevel = pFrom_A8_TempCmdMsg_intask->cmdParam[0];
#ifdef TRACE_FCW
				Vps_rprintf("[DSP] FCW_WARNING: Warning Level = %d\n", tUIFsm.FCW_u8WarningLevel);
#endif
			}
			else
			{
				tUIFsm.u8PendingCommand = ChInfoFromA8;
				Vps_rprintf("\n[DSP] ChInfoFromA8 = %d  -------------------- \n", ChInfoFromA8);
			}
#endif

/*************************************************************************
 *  @func       A8CommCreate
 *
 *  @param[in]   arg0: task argument0
 *  @param[in]   arg1: task argument1
 *  @brief
 *               API to create A8 communication task
 *
 *  @returns    none
 ************************************************************************/
ERRORTYPE A8CommCreate(Void)
{
    ERRORTYPE               nRetVal = ecNone;
    Task_Params             taskParams = {0};

    do   {
        Task_Params_init(&taskParams);
        taskParams.arg0 = 1u;
        taskParams.arg1 = 0u;
        taskParams.stackSize = (1024u * 10u);
        taskParams.priority = 12;//liuxu, 11/18/2013, bigger means higher priority. 12 for is dsp_app_task. 
     
		/*
		 * 启动通信线程
		 */
        if (NULL == Task_create((Task_FuncPtr) &A8CommTask, &taskParams, NULL))  {
            System_printf("[%s] %s: %d: A8 Comm Process Task creation failed for task\n",
                "A8Comm",__FUNCTION__,__LINE__);
            nRetVal = ecFail;
            break;
        }
        System_printf("[%s] %s: %d: A8CommTask created well.\n", "A8CommTask", __FUNCTION__, __LINE__);

    } while(0);

    return nRetVal;
}
#endif //#ifdef A8_CommInTask



/*************************************************************************
 *  @func       init_draw_line
 *  initial draw backup car line of static
 *
 *
 *  @returns    short * buffer draw line array
 ************************************************************************/
static short * init_draw_line(struct drawlinestruct * arg)
{
	int j=0;
	int i=0;
	int x1 = arg->xin1;
	int y1 = arg->yin1;
	int x2 = arg->xin2;
	int y2 = arg->yin2;
	short *lookuptable ;
	lookuptable = (short*) AllocatePersisGlobalMemory(736*480);//[720][480];

	float slope = (y2 - y1)/(x2 - x1);
	float offsetY = 0;
	if(arg->angle != 0){
         slope = slope_tan[90 - arg->angle];
         y2 = (x2-x1) * slope + y1;
	}
	/*Format
	 * |short X			|	short Y		|
	 * |char Y	|char U	|char V |Alpha	|
	 * */
	for(i = x1, j = 0; i< x2; i++, j+= 6)
	{
		//offsetY = x1 + (i-x1) * slope;
		offsetY = (i-x1) * slope;
		lookuptable[j] = i;
		lookuptable[j+1] = y1 + offsetY;

		if(i < x1+ (x2-x1) / 3)
		{
			lookuptable[j+2] = 76; //Y
			lookuptable[j+3] = 84; //U
			lookuptable[j+4] = 255;  //V
			lookuptable[j+5] = 128;
		}else if (i <x1+ (x2-x1) * 2 / 3)
		{
			lookuptable[j+2] = 225; //Y
			lookuptable[j+3] = 0; //U
			lookuptable[j+4] = 148;  //V
			lookuptable[j+5] = 128;
		} else
		{
			lookuptable[j+2] = 149; //Y
			lookuptable[j+3] = 43; //U
			lookuptable[j+4] = 21;  //V
			lookuptable[j+5] = 128;

		}

		Vps_printf("[%d,%d] %x,%x,%x,%x\n",
				lookuptable[j],lookuptable[j+1],lookuptable[j+2], lookuptable[j+3],
				lookuptable[j+4],lookuptable[j+5]);
	}

	/*draw red line*/
	arg->xline1_std = x1 + (x2-x1) / 3;
	arg->xline1_end = (2*(arg->xp) - (x1 + (x2-x1) / 3));
	arg->yline1 = y1 + ((x2 - x1)/3)*slope;
	arg->line1yuv[0] = 76;//Y
	arg->line1yuv[1] = 84;//U
	arg->line1yuv[2] = 255;//V
	arg->line1yuv[3] = 128;//
	/*draw yellow line*/
	arg->xline2_std = x1 + (x2-x1)*2 /3;
	arg->xline2_end = (2*(arg->xp) - (x1 + (x2-x1)*2 / 3));
	arg->yline2 = y1 + ((x2 - x1)*2/3)*slope;
	arg->line2yuv[0] = 255;//Y
	arg->line2yuv[1] = 0;//U
	arg->line2yuv[2] = 148;//V
	arg->line2yuv[3] = 128;//
	/*draw green line*/
	arg->xline3_std = x2;
	arg->xline3_end = 2*(arg->xp) - x2;
	arg->yline3 = y1 + (x2 - x1)*slope;
	arg->line3yuv[0] = 149;//Y
	arg->line3yuv[1] = 43;//U
	arg->line3yuv[2] = 21;//V
	arg->line3yuv[3] = 128;//

	arg->lookuptable = lookuptable;
	return lookuptable;
}

/*************************************************************************
 *  @func       draw_line
 *  @param[in]   arg1: xp // 2 times center point
 *  @param[in]   arg0: framebuffer
 *  @param[in]   arg1: struct drawlinestruct
 *  @brief
 *
 *
 *  @returns    none
 ************************************************************************/
void draw_line(char * framebuffer,struct drawlinestruct * arg)
{
	int j=0;
	int i=0;
	int indexLum = 0;
	int indexLum1= 0;
	int x1 = arg->xin1;
	int x2 = arg->xin2;
	int xp = arg->xp << 1;
	short * lookuptable = arg->lookuptable;
	for(j = 0; j< (x2 - x1) * 6; j+= 6)
	{
/*
    if(counter % 100 == 0)
    {
			Vps_printf("x:%d y:%d  %x ,%x, %x,%x",
				BackupLineLut[j], BackupLineLut[j+1], BackupLineLut[j+2], BackupLineLut[j+3],
				BackupLineLut[j+4],BackupLineLut[j+4]);
    }
 */
	indexLum = (lookuptable[j] + lookuptable[j+1]*736) * 2;
	indexLum1 = ((xp-lookuptable[j])  + lookuptable[j+1]*736) * 2;
	framebuffer[indexLum] = lookuptable[j+2];
	framebuffer[indexLum+ 2] = lookuptable[j+2];
	framebuffer[indexLum+ 4] = lookuptable[j+2];
	framebuffer[indexLum+ 6] = lookuptable[j+2];
	//framebuffer[indexLum+ 8] = lookuptable[j+2];
	//framebuffer[indexLum+ 10] = lookuptable[j+2];

	framebuffer[indexLum1] = lookuptable[j+2];
	framebuffer[indexLum1+ 2] = lookuptable[j+2];
	framebuffer[indexLum1+ 4] = lookuptable[j+2];
	framebuffer[indexLum1+ 6] = lookuptable[j+2];
	//framebuffer[indexLum1+ 8] = lookuptable[j+2];
	//framebuffer[indexLum1+ 10] = lookuptable[j+2];

	if(lookuptable[j] % 2 == 1)
	{
		framebuffer[indexLum-1] = lookuptable[j+3];
		framebuffer[indexLum+1] = lookuptable[j+4];
		framebuffer[indexLum+3] = lookuptable[j+3];
		framebuffer[indexLum+5] = lookuptable[j+4];
		framebuffer[indexLum+7] = lookuptable[j+3];
	//	framebuffer[indexLum+9] = lookuptable[j+4];
	//	framebuffer[indexLum+11] = lookuptable[j+3];

		framebuffer[indexLum1-1] = lookuptable[j+3];
		framebuffer[indexLum1+1] = lookuptable[j+4];
		framebuffer[indexLum1+3] = lookuptable[j+3];
		framebuffer[indexLum1+5] = lookuptable[j+4];
		framebuffer[indexLum1+7] = lookuptable[j+3];
	//	framebuffer[indexLum1+9] = lookuptable[j+4];
	//	framebuffer[indexLum1+11] = lookuptable[j+4];
	}
	else{
		framebuffer[indexLum-1] = lookuptable[j+4];
		framebuffer[indexLum+1] = lookuptable[j+3];
		framebuffer[indexLum+3] = lookuptable[j+4];
		framebuffer[indexLum+5] = lookuptable[j+3];
		framebuffer[indexLum+7] = lookuptable[j+4];
	//	framebuffer[indexLum+9] = lookuptable[j+3];
	//	framebuffer[indexLum+11] = lookuptable[j+4];

		framebuffer[indexLum1-1] = lookuptable[j+4];
		framebuffer[indexLum1+1] = lookuptable[j+3];
		framebuffer[indexLum1+3] = lookuptable[j+4];
		framebuffer[indexLum1+5] = lookuptable[j+3];
		framebuffer[indexLum1+7] = lookuptable[j+4];
	//	framebuffer[indexLum1+9] = lookuptable[j+3];
	//	framebuffer[indexLum1+11] = lookuptable[j+4];
	}
	}

	x1= arg->xline1_std;
	x2= arg->xline1_end;
	indexLum = (arg->xline1_std + arg->yline1 * 736) *2;
	for(j = x1; j< x2; j++){
		for(i=0 ;  i < 3;i++){
		indexLum = (j + (arg->yline1 + i) * 736) *2;
		framebuffer[indexLum] = arg->line1yuv[0];
		//framebuffer[indexLum +2 ] = arg->line1yuv[0];
		if(j % 2 == 1){
			framebuffer[indexLum+1] = arg->line1yuv[2];
			//framebuffer[indexLum+3] = arg->line1yuv[1];
		}else{
			framebuffer[indexLum+1] = arg->line1yuv[1];
			//framebuffer[indexLum+3] = arg->line1yuv[2];
		}
		}
	}

	x1= arg->xline2_std;
	x2= arg->xline2_end;
	indexLum = (arg->xline2_std + arg->yline2 * 736) *2;
	for(j = x1; j< x2; j++){
		for(i=0 ;  i < 3;i++){
		indexLum = (j + (arg->yline2 + i) * 736) *2;
		framebuffer[indexLum] = arg->line2yuv[0];
		//framebuffer[indexLum +2 ] = arg->line2yuv[0];
		if(j % 2 == 1){
			framebuffer[indexLum+1] = arg->line2yuv[2];
		//	framebuffer[indexLum+3] = arg->line2yuv[1];
		}else{
			framebuffer[indexLum+1] = arg->line2yuv[1];
		//	framebuffer[indexLum+3] = arg->line2yuv[2];
		}
		}
	}

	x1= arg->xline3_std;
	x2= arg->xline3_end;
	indexLum = (arg->xline3_std + arg->yline3 * 736) *2;
	for(j = x1; j< x2; j++){
		for(i=0 ;  i < 3;i++){
		indexLum = (j + (arg->yline3 + i)* 736) *2;
		framebuffer[indexLum] = arg->line3yuv[0];
		//framebuffer[indexLum +2 ] = arg->line3yuv[0];
		if(j % 2 == 1){
			framebuffer[indexLum+1] = arg->line3yuv[2];
		//	framebuffer[indexLum+3] = arg->line3yuv[1];
		}else{
			framebuffer[indexLum+1] = arg->line3yuv[1];
		//	framebuffer[indexLum+3] = arg->line3yuv[2];
		}
		}
	}
}





/*************************************************************************
 *  @func       dspAppTask
 *
 *  @brief      Main application task. enable main IPC thread back
 *
 *  @param[in]  arg0    : Task argument 0
 *  @param[in]  arg1    : Task argument 1
 *
 *  @returns    None
 ************************************************************************/
Void dspAppTask(UArg arg0, UArg arg1)
{
    ERRORTYPE nRetVal = ecNone;

    Vps_rprintf("inside dspAppTask");



#define ENABLE_DRAWING_LINE 0
#if ENABLE_DRAWING_LINE
	 char * ptrImageBUffer;
	 int indexLum;
	Vps_rprintf("create Single View lookup Table");

	ptrImageBUffer = (char*)pSrc;

	//DrawLine
	int x1 = 20+40,y1 = 20,x2 = 300+40,y2 = 300;
	//int x1 = 160,y1 = 400,x2 = 318,y2 = 200;
	float slope = (y2 - y1)/(x2 - x1);
	float offsetY = 0;

	for(i = x1, j = 0; i< x2; i++, j+= 6)
	{
		offsetY = x1 + (i-x1) * slope;
		BackupLineLut[j] = i;
		BackupLineLut[j+1] = y1 + offsetY;
		if(i < x1+ (x2-x1) / 3)
		{
			BackupLineLut[j+2] = 76; //Y
			BackupLineLut[j+3] = 84; //U
			BackupLineLut[j+4] = 255;  //V
			BackupLineLut[j+5] = 128;
		} else if (i <x1+ (x2-x1) * 2 / 3)
		{
			BackupLineLut[j+2] = 225; //Y
			BackupLineLut[j+3] = 0; //U
			BackupLineLut[j+4] = 148;  //V
			BackupLineLut[j+5] = 128;
		} else
		{
			BackupLineLut[j+2] = 149; //Y
			BackupLineLut[j+3] = 43; //U
			BackupLineLut[j+4] = 21;  //V
			BackupLineLut[j+5] = 128;

		}

		Vps_printf("[%d,%d] %x,%x,%x,%x\n",
				BackupLineLut[j],BackupLineLut[j+1],BackupLineLut[j+2], BackupLineLut[j+3],
				BackupLineLut[j+4],BackupLineLut[j+5]);
	}
#endif


#ifdef GEN_COLOR_BAR_PATTERN
    //GenColorBarToMemory(288, 200);//liuxuliuxu, 6/29/2013, for standalone SRV demo.
#endif

    do
    {
        slaveTaskMgrCtxt_t *pSlaveTaskMgrCtxt = NULL_VALUE;
        cmdQParams_t *pSlaveTaskMgrCmdQ = NULL_VALUE;
        cmdQParams_t *pMasterTaskMgrCmdQ = NULL_VALUE;
        int nStatus;
        MessageQ_Msg pTempCmdMsg = NULL_VALUE;
        uint16_t nSRId = 0u;
        SharedRegion_SRPtr srPtr = {0u};
        cfgCmds_t *p2TempCmdMsg = NULL_VALUE;
#if 0
//fix by gzd. 改成全局变量
        cfg4Pointers_t *pFrom_VPSS_M3_TempCmdMsg = NULL_VALUE;
        cfg4Pointers_t *pDSP_To_VPSS_M3_TempCmdMsg = NULL_VALUE;
        cfg4Pointers_t *pFrom_A8_TempCmdMsg = NULL_VALUE;
        cfg8Pointers_t *pDSP_To_A8_TempCmdMsg = NULL_VALUE;//liuxuliuxu, 8/20/2013. //liuxu, 10/5/2013.
        cfg8Pointers_t *pFrom_VPSS_M3_TempCmdMsg2 = NULL_VALUE;//liuxuliuxu, 8/8/2013, for DSP EDMA downscale and encoder.
#endif
        frame_t InFrame, OutFrame;
        frame_t* pInFrame;
        frame_t* pOutFrame;
        int i = 0;

        /* Allocate and obtain the slave task manager context. */
        pSlaveTaskMgrCtxt = (slaveTaskMgrCtxt_t * ) allocSlaveTaskMgrCtxt_Lite();
        System_printf("[C674x]: liuxu-11/21/2013, pSlaveTaskMgrCtxt from system heap is 0x%x\n", pSlaveTaskMgrCtxt);

        if (NULL == pSlaveTaskMgrCtxt)        {
            System_printf("\n%s: %d: Slave Task Manager context allocation error. \n", __FUNCTION__, __LINE__);
            nRetVal = ecOutOfMemory;
            break;
        }

#ifdef A8_CommInTask
        //Create Task which will talk to A8 in seperated task.
//        创建通信线程
        nRetVal = A8CommCreate();
#ifdef TWO_TASKS_SLEEP
        Task_sleep(1000u*10000);//liuxu, 12/1/2013, don't drain the CPU here.
#endif
        if (nRetVal != ecNone) {
            while(1);
        }
#endif

        pInFrame = &InFrame;
        pOutFrame = &OutFrame;
        pInFrame->nBufIdx = pOutFrame->nBufIdx = 0;//liuxuliuxu, don't reply on default memory data.

#ifdef TALK_TO_SELF
        uint32_t framesizebytes = 518400;//720*480*1.5;

        pInFrame->colorFmtType = pOutFrame->colorFmtType = colorFormatYUV420Planar;//liuxu, 11/18/2013, moving inside of task_to_self.
        pInFrame->nWidth = pOutFrame->nWidth = 720;
        pInFrame->nHeight = pOutFrame->nHeight = 480;
        pInFrame->nPitch = pOutFrame->nPitch = 720;
        pInFrame->nChanNum = pOutFrame->nChanNum = 0;

        System_printf( "Loading %d %s graphics frames of size %dx%d to location: 0x%x\n",
        			182, "NV12", 720, 480, 0x91000000);
#else
        pInFrame->nChanNum = pOutFrame->nChanNum = 1;//liuxuliuxu, i'm leveraging it to do some swOSD on DSP.
#endif

        /* Setup the shared regions on Master. */
//        创建共享存储区
        nRetVal = initSharedRegion(); //liuxu, DSP is the owner of share region.
        if (nRetVal != ecNone)  {
            System_printf("\n%s: %d: DSP LITE as HOST initSharedRegion failed. \n", __FUNCTION__, __LINE__);
            System_abort("\n DSP LITE as HOST initSharedRegion failed.\n");
        }
        System_printf("[C674x]: DSP and Video-M3 attach is done\n");

//        先创建堆，在附着到slaves
//liuxuliuxu, 8/21/2013, creat heap first, then attach to slavers!!
#ifdef TALK_TO_SELF
        nRetVal = commandQInit(MASTER, &(pSlaveTaskMgrCtxt->hMsgQHeap));
#else
        nRetVal = commandQInitJ5ecoProject(MASTER, &(pSlaveTaskMgrCtxt->hMsgQHeap));
#endif

        if (nRetVal != ecNone) {
            break;
        }

        /* Create the slave task manager command queue */
        pSlaveTaskMgrCmdQ = &(pSlaveTaskMgrCtxt->slaveTaskMgrCmdQ);

        System_sprintf((xdc_Char *)pSlaveTaskMgrCmdQ->cQName, "%s", MultiProc_getName(MultiProc_self()));
        strcat((char *) pSlaveTaskMgrCmdQ->cQName, "_CMD_Q_TO_VPSS-M3");
        pSlaveTaskMgrCmdQ->hCmdQ = commandQCreate(pSlaveTaskMgrCmdQ->cQName, NULL_VALUE);
        System_printf("[C674x]: liuxu, pSlaveTaskMgrCmdQ->hCmdQ from commandQCreate/sr0 is 0x%x\n", pSlaveTaskMgrCmdQ->hCmdQ);

        if (NULL == pSlaveTaskMgrCmdQ->hCmdQ)  {
            System_printf("\n%s: %d: Slave Task Mgr command Q creation failed for Q %s. \n", __FUNCTION__, __LINE__, pSlaveTaskMgrCmdQ->cQName);
            nRetVal = ecFail;
            break;
        }

#ifndef TALK_TO_SELF
        /* Allocate the command msg. */
        pDSP_To_VPSS_M3_TempCmdMsg = (cfg4Pointers_t *)commandQAlloc(MSGQ_HEAPID, sizeof(cfg4Pointers_t));//liuxuliuxu, don't forget to free at last.
        if (NULL == pDSP_To_VPSS_M3_TempCmdMsg)
        {
            while(1){;}
        }
        System_printf("[C674x]: liuxu, pDSP_To_VPSS_M3_TempCmdMsg from commandQAlloc should be in sr0 is 0x%x\n", pDSP_To_VPSS_M3_TempCmdMsg);//liuxu, 11/20/2013.

        /* Send the ACK command to the remote task. */
        memset(pDSP_To_VPSS_M3_TempCmdMsg, 0, sizeof(cfg4Pointers_t));

        do {
            nStatus = Ipc_attach(VPSS_M3_CORE_ID);//liuxuliuxu, j5eco hdvpss example is runing on core 2.
            Task_sleep(1u);
        } while (nStatus < 0);

#endif//#ifndef TALK_TO_SELF

       System_printf("[C674x]: LIUXULIUXU1_after, DSP and Video-M3 attach is done, sizeof(cfg4Pointers_t)=%d\n", sizeof(cfg4Pointers_t));

#ifdef TALK_TO_SELF
        nRetVal = commandQOpen(pSlaveTaskMgrCmdQ->cQName, &(pSlaveTaskMgrCmdQ->nCmdQId));
        if (nRetVal != ecNone)
        {
            break;
        }
#else//liuxuliuxu, ipc b/w M3 and DSP.
        do {
            nRetVal = commandQOpen("VPSS-M3_CMD_Q_TO_DSP_LITE", &(pSlaveTaskMgrCmdQ->nCmdQId));
        }while(nRetVal != ecNone);

#endif//#ifdef TALK_TO_SELF


#ifdef TALK_TO_SELF
        if (nRetVal == ecNone)
        {
            /* Allocate the command msg. */
            pSlaveTaskMgrCtxt->pCmdMsg = (cfgCmds_t *) commandQAlloc(MSGQ_HEAPID, sizeof(cfgCmds_t));
            if (NULL == pSlaveTaskMgrCtxt->pCmdMsg)
            {
                System_printf("\n%s: %d: CommandQ Message Allocation failed. \n", __FUNCTION__, __LINE__);
                nRetVal = ecOutOfMemory;
                break;
            }

            cfgCmds_t * pCmdMsg;
            pCmdMsg = pSlaveTaskMgrCtxt->pCmdMsg;

            /* Send the ACK command to the remote task. */
            memset(pCmdMsg, 0, sizeof(cfgCmds_t));
            pCmdMsg->cmdType = 0x88888888;
            pCmdMsg->pCmdData = NULL_VALUE;

            pSlaveTaskMgrCtxt->msgQMsg = (MessageQ_Msg ) pCmdMsg;

            nStatus = commandQPut(pSlaveTaskMgrCmdQ->nCmdQId, pSlaveTaskMgrCtxt->msgQMsg);
            if (nStatus < 0)
            {
                System_printf("\n%s: %d: CommandQ put failed\n", __FUNCTION__, __LINE__);
                nRetVal = ecFail;
                break;
            }
        }

        nStatus = commandQGet(pSlaveTaskMgrCmdQ->hCmdQ, &(pTempCmdMsg), (uint32_t)MessageQ_FOREVER);

        /* Get the id of the address if id is not already known. */
        nSRId = SharedRegion_getId(pTempCmdMsg);
        /* Get the shared region pointer for the address */
        srPtr = SharedRegion_getSRPtr(pTempCmdMsg, nSRId);
        /* Get the address back from the shared region pointer */
        p2TempCmdMsg = SharedRegion_getPtr(srPtr);
        System_printf("\n liuxuliuxu, test result is %x.\n", p2TempCmdMsg->cmdType);

        for(i = 0; i<182; i++)
        {
            System_printf("\nliuxuliuxu, for, i = %d\n", i);
            gOneframedone = 0xbb;
            pInFrame->pBuffer = (void *)(0x91000000 + i*framesizebytes);
            pOutFrame->pBuffer = (void *)(0x91000000 + (i)*framesizebytes);
            /*
            liuxu, 11/19/2013, Write your own algo here!!!!
            */
        }

        while(1);

#else//liuxuliuxu, ipc b/w M3 and DSP.
        int i_put=0;
        int i_get=0;

        #ifdef FG_DEMO//liuxu, 11/12/2013.
            unsigned char *outTmpbuf;
        	outTmpbuf =(unsigned char*)0x87300000;//liuxu, 11/12/2013, hard memory for output frame, according to 128MB memory layout, 11/21/2013, 0x87000000 to 0x87200000 is for DSP_HEAP.
        #endif

		//初始化页面
        UI_Init();

         /*determine which layout to use at the first time*/
        layoutChange(0, pFrom_VPSS_M3_TempCmdMsg);
		Show_Page(PAGE_FRONT);

        while(1)
        {
            debug_mem = 0x901;
            nStatus = commandQGet(pSlaveTaskMgrCmdQ->hCmdQ, &(pTempCmdMsg), (uint32_t)MessageQ_FOREVER);
            debug_mem = 0x902;

            if (nStatus < 0) {
                System_printf("\n%s: %d: CommandQ get failed\n", __FUNCTION__, __LINE__);
                while(1){;}
            }
            debug_mem = 0x903;

            /* Get the id of the address if id is not already known. */
            nSRId = SharedRegion_getId(pTempCmdMsg);
            /* Get the shared region pointer for the address */
            srPtr = SharedRegion_getSRPtr(pTempCmdMsg, nSRId);
            /* Get the address back from the shared region pointer */
            pFrom_VPSS_M3_TempCmdMsg = SharedRegion_getPtr(srPtr);
            debug_mem = 0x904;

            if(pFrom_VPSS_M3_TempCmdMsg->cmdType != 0x888) {
                System_printf("\nliuxu, first pFrom_VPSS_M3_TempCmdMsg->cmdType != 0x888, is 0x%x\n", pFrom_VPSS_M3_TempCmdMsg->cmdType);
                while(1){;}
            }
            debug_mem = 0x905;

            nStatus = commandQGet(pSlaveTaskMgrCmdQ->hCmdQ, &(pTempCmdMsg), (uint32_t)MessageQ_FOREVER);
            debug_mem = 0x907;

            if (nStatus < 0) {
                System_printf("\n%s: %d: CommandQ get failed\n", __FUNCTION__, __LINE__);
                while(1){;}
            }

            /* Get the id of the address if id is not already known. */
            nSRId = SharedRegion_getId(pTempCmdMsg);
            /* Get the shared region pointer for the address */
            srPtr = SharedRegion_getSRPtr(pTempCmdMsg, nSRId);
            /* Get the address back from the shared region pointer */
            pFrom_VPSS_M3_TempCmdMsg2 = SharedRegion_getPtr(srPtr);
            debug_mem = 0x909;

            if(pFrom_VPSS_M3_TempCmdMsg2->cmdType != 0x111)
            {
                System_printf("\nliuxu, second pFrom_VPSS_M3_TempCmdMsg2->cmdType != 0x111, is 0x%x\n", pFrom_VPSS_M3_TempCmdMsg2->cmdType);
                while(1){;}
            }

            static unsigned int lastClockticks = 0;
            static unsigned int thisTimeClockticks = 0;

            thisTimeClockticks = Clock_getTicks();
            System_printf("\nliuxu, 06/04/2014, one frame@%d, counter_get0_1=%d, badcounter=%d\n", thisTimeClockticks, ++counter_get0_1, badcounter);//liuxu, 06/04/2014, support ms tick in DSP similar to M3.

            if(lastClockticks != 0) {
                if((thisTimeClockticks - lastClockticks)>44 || (thisTimeClockticks - lastClockticks)<36)
                {
                    badcounter++;//while(1);
                }
            }
            lastClockticks = thisTimeClockticks;


#if defined(TI_DSP_ALG) && defined(YUV422i)
            tpHandle.frmBuffer[0] = (void *)(pFrom_VPSS_M3_TempCmdMsg->pPointer0);//liuxu, 05/27/2014, front view.
			tpHandle.frmBuffer[1] = (void *)(pFrom_VPSS_M3_TempCmdMsg->pPointer1);//liuxu, 05/27/2014, right view.
			tpHandle.frmBuffer[2] = (void *)(pFrom_VPSS_M3_TempCmdMsg->pPointer3);//liuxu, 05/27/2014, back view.
			tpHandle.frmBuffer[3] = (void *)(pFrom_VPSS_M3_TempCmdMsg->pPointer2);//liuxu, 05/27/2014, left view.

            firstSetOfFramesReady = 1;

            if(counter_get0_1 == 1) {
            	/*the flag indicate whether perspective matrix(PM) is valid or not,
            	  need to set the flag to invalid, otherwise, GA will read random
            	  PM and get crashed.*/
            	*(unsigned int*)0x80000000 = 0xffffffff;
            }

            /*wait until TI 2d surrund view algorithm is done, and synthesis image is ready*/
//            等待2D全景算法运算完成，并且拼接画面就绪
            ToProcessOneSet = 1;
            while(DoneProcessedOneSet!=1) {
            	Task_sleep(10);//liuxu, 02/11/2014, 1ms.
            }
            DoneProcessedOneSet = 0;

            static unsigned int totalTicks_task = 0;
            static Word32 counter_task = 0;
            static long unsigned int profiletick1_task = 0;
            static long unsigned int profiletick2_task = 0;
            profiletick1_task = _TSC_read();


            layoutChange(ChInfoFromA8,pFrom_VPSS_M3_TempCmdMsg);
//            if(ChInfoFromA8 == 4) {
            if(tUIFsm.u8CurrentPage == PAGE_AllVIEW) {
            	InfoSwmsLayout = 4;
             } else {
            	/*invalidate cache before edma copy from memory to memory*/
            	INVALIDATE_DSP_CACHE();

            	InfoSwmsLayout = 0;
            }

			Show_Page(tUIFsm.u8CurrentPage);
			UI_Key_Process();
			tUIFsm.u8PendingCommand = 0xFF;
#endif

#ifdef A8_CommInTask
            #ifdef FOUR_IN_ONE_D1//liuxu, 12/19/2013.
            edmaWarpImgCpy3(myBopTaskCtxt.hEdma, (pFrom_VPSS_M3_TempCmdMsg2->pY_Pointer1), (pFrom_VPSS_M3_TempCmdMsg2->pY_Pointer0)+360, 360, 240);
            edmaWarpImgCpy3(myBopTaskCtxt.hEdma, (pFrom_VPSS_M3_TempCmdMsg2->pY_Pointer2), (pFrom_VPSS_M3_TempCmdMsg2->pY_Pointer0)+736*240, 360, 240);
            edmaWarpImgCpy3(myBopTaskCtxt.hEdma, (pFrom_VPSS_M3_TempCmdMsg2->pY_Pointer3), (pFrom_VPSS_M3_TempCmdMsg2->pY_Pointer0)+736*240+360, 360, 240);

            edmaWarpImgCpy3(myBopTaskCtxt.hEdma, (pFrom_VPSS_M3_TempCmdMsg2->pUV_Pointer1), (pFrom_VPSS_M3_TempCmdMsg2->pUV_Pointer0)+360, 360, 120);
            edmaWarpImgCpy3(myBopTaskCtxt.hEdma, (pFrom_VPSS_M3_TempCmdMsg2->pUV_Pointer2), (pFrom_VPSS_M3_TempCmdMsg2->pUV_Pointer0)+736*120, 360, 120);
            edmaWarpImgCpy3(myBopTaskCtxt.hEdma, (pFrom_VPSS_M3_TempCmdMsg2->pUV_Pointer3), (pFrom_VPSS_M3_TempCmdMsg2->pUV_Pointer0)+736*120+360, 360, 120);
            #endif

            mutualTaskCmdMsg.pY_Pointer0 = (void *)(pFrom_VPSS_M3_TempCmdMsg2->pY_Pointer0);
            mutualTaskCmdMsg.pUV_Pointer0 = (void *)(pFrom_VPSS_M3_TempCmdMsg2->pUV_Pointer0);

            mutualTaskCmdMsg.pY_Pointer1 = (void *)(pFrom_VPSS_M3_TempCmdMsg2->pY_Pointer1);
            mutualTaskCmdMsg.pUV_Pointer1 = (void *)(pFrom_VPSS_M3_TempCmdMsg2->pUV_Pointer1);

            mutualTaskCmdMsg.pY_Pointer2 = (void *)(pFrom_VPSS_M3_TempCmdMsg2->pY_Pointer2);
            mutualTaskCmdMsg.pUV_Pointer2 = (void *)(pFrom_VPSS_M3_TempCmdMsg2->pUV_Pointer2);

            mutualTaskCmdMsg.pY_Pointer3 = (void *)(pFrom_VPSS_M3_TempCmdMsg2->pY_Pointer3);
            mutualTaskCmdMsg.pUV_Pointer3 = (void *)(pFrom_VPSS_M3_TempCmdMsg2->pUV_Pointer3);

            mutualTaskCmdMsg.cmdType = 0x777;
//            System_printf("\nliuxu, 111--02/12/2014, mutualTaskCmdMsg.pY_Pointer0 == 0x%x\n", mutualTaskCmdMsg.pY_Pointer0);//liuxu, 11/20/2013, dsp print could make the flow very slow.
static unsigned long s_cunt = 0;
		Vps_rprintf("[M3] send { %d } frame to DSP, cmd = 0x777, pY_Pointer0 = %x\n", s_cunt++, mutualTaskCmdMsg.pY_Pointer0);
#endif


		//改为直接转发给A8
/*
	if((NULL_VALUE != pDSP_To_A8_TempCmdMsg_intask) && (NULL_VALUE != pA8TaskCmdQ)) {
		pDSP_To_A8_TempCmdMsg_intask->cmdType = 0x777;

        pDSP_To_A8_TempCmdMsg_intask->pY_Pointer0 = (void *)(mutualTaskCmdMsg.pY_Pointer0);
        pDSP_To_A8_TempCmdMsg_intask->pUV_Pointer0 = (void *)(mutualTaskCmdMsg.pUV_Pointer0);

        pDSP_To_A8_TempCmdMsg_intask->pY_Pointer1 = (void *)(mutualTaskCmdMsg.pY_Pointer1);
        pDSP_To_A8_TempCmdMsg_intask->pUV_Pointer1 = (void *)(mutualTaskCmdMsg.pUV_Pointer1);

        pDSP_To_A8_TempCmdMsg_intask->pY_Pointer2 = (void *)(mutualTaskCmdMsg.pY_Pointer2);
        pDSP_To_A8_TempCmdMsg_intask->pUV_Pointer2 = (void *)(mutualTaskCmdMsg.pUV_Pointer2);

        pDSP_To_A8_TempCmdMsg_intask->pY_Pointer3 = (void *)(mutualTaskCmdMsg.pY_Pointer3);
        pDSP_To_A8_TempCmdMsg_intask->pUV_Pointer3 = (void *)(mutualTaskCmdMsg.pUV_Pointer3);

        nStatus = commandQPut(pA8TaskCmdQ->nCmdQId, (MessageQ_Msg )pDSP_To_A8_TempCmdMsg_intask);

        mySentToA8Counter++;//liuxu, 05/08/2014, debug for ipc to A8 issue.

        if (nStatus < 0) {
            System_printf("\n%s: %d: CommandQ put failed\n", __FUNCTION__, __LINE__);
            while(1){;}
        }

        Vps_rprintf("\n[DSP] send { %d } frame to A8, cmd = 0x777, P0=%x",
        		mySentToA8Counter, mutualTaskCmdMsg.pY_Pointer0);
	}
*/



#ifdef FG_DEMO

            profiletick1 = _TSC_read();
            surroundViewProcess(pFrom_VPSS_M3_TempCmdMsg->pPointer0, pFrom_VPSS_M3_TempCmdMsg->pPointer2,  \
            		pFrom_VPSS_M3_TempCmdMsg->pPointer3, pFrom_VPSS_M3_TempCmdMsg->pPointer1, (void*)outTmpbuf);
            profiletick2 = _TSC_read();
            System_printf("\n%lu: liuxu, surroundViewProcess!!!", (profiletick2-profiletick1));

            pInFrame->pBuffer = (void *)(outTmpbuf);
            pOutFrame->pBuffer = (void *)(pFrom_VPSS_M3_TempCmdMsg->pPointer0);
            profiletick3 = _TSC_read();

            edmaWarpImgCpy2(myBopTaskCtxt.hEdma, pInFrame->pBuffer, pOutFrame->pBuffer, 736, 480);//liuxu, 11/12/2013.
            profiletick4 = _TSC_read();
            System_printf("\n%lu: liuxu, edmaWarpImgCpy2!!!\n\n", (profiletick4-profiletick3));
#endif

            profiletick2_task = _TSC_read();
            counter_task ++;
            totalTicks_task += (profiletick2_task-profiletick1_task);

            if(counter_task % 20 == 0)
            {
            	if(counter_task % 600 == 0)
            		Vps_rprintf(" %lu:dspAppTask!!!\n", totalTicks_task/20);
            	totalTicks_task = 0;
            }

            //liuxu, ACK back to M3 to procceed the next frame.
            pDSP_To_VPSS_M3_TempCmdMsg->cmdType = (0x999 << 16) | InfoSwmsLayout;//liuxu, 06/19/2014, RISK... Be careful rev of mapping.
            debug_mem = 0x917;

            nStatus = commandQPut(pSlaveTaskMgrCmdQ->nCmdQId, (MessageQ_Msg )pDSP_To_VPSS_M3_TempCmdMsg);
            debug_mem = 0x918;

            if (nStatus < 0)  {
                System_printf("\n%s: %d: CommandQ put failed\n", __FUNCTION__, __LINE__);
                while(1){;}
            }
            debug_mem = 0x919;
        }
#endif
    }while(0);
    System_printf("\nliuxuliuxu, %s: %d: DSP Lite shouldn't be here \n", __FUNCTION__, __LINE__);
}


/*************************************************************************
 *  @func       TI_dsp_Processing
 *
 *  @param[in]   arg0: task argument0
 *  @param[in]   arg1: task argument1
 *  @brief
 *               main task in which TI 2D
 *
 *  @returns    none
 ************************************************************************/
Void TI_dsp_Processing(UArg arg0, UArg arg1)//liuxu, 01/22/2014, China port. 
{	
	static Word32 *inpersmatPtr;
	static int flagGASuccess = 0;
	static FlashStruct FS;
	static PERSMAT_SRC bPersmatSrc = 0;
	static int eraseFlash = 0;

	Word32 j =0 , i = 0;
	static Word32 counter = 0;
	static unsigned int totalTicks = 0;
	static unsigned int totalTicks1 = 0;
	static unsigned int totalTicks2 = 0;

	static long unsigned int profiletick1 = 0;
	static long unsigned int profiletick2 = 0;
	static long unsigned int profiletick3 = 0;
	static long unsigned int profiletick4 = 0;


	//liuxu, 02/14/2014, init edma in the exact thread using it.
	edmaInit(&myBopTaskCtxt);

	while(debugStopFlag)
	{
		Task_sleep(1);
	}

	spiFlashRead(SRV_PARAM_START_ADDR, sizeof(FlashStruct)/*4+4+3*3*9*4*/, &FS);
	//read flash, fill FS
	if(FS.magicNumber == 0x123456){
		//flash has been written once
		if(FS.updateFlag == 1){
			inpersmatPtr = FS.inpersmatPtr;
			bPersmatSrc = PERSMAT_FLASH;
		}
	} else {
		inpersmatPtr = persmatin;
		bPersmatSrc = PERSMAT_HARDCODING;
	}

	/*for debug: during process, check if 0x80000000 is not 0xFFFFFFFF, which means
	 app_host has put valid persmat*/
	bPersmatSrc = PERSMAT_DDR;

	Vps_rprintf("[TI_dsp_Processing] %x %x,%x %x %x\n",
			FS.magicNumber, FS.updateFlag, inpersmatPtr[0],inpersmatPtr[1],inpersmatPtr[2]);

//	ti_srv_control_static(MIS_S_CAMMODE, 1, NULL );
	ti_srv_control_static(GA_S_CARBOX_SIZE_H, 240, NULL );
	ti_srv_control_static(GA_S_CARBOX_SIZE_W, 80, NULL );
	ti_srv_control_static(GA_S_FOCAL_LENGTH, 247, NULL );
	ti_srv_control_static(SYNT_S_BLENDING_LENGTH, 50, NULL ); //127
	ti_srv_control_static(SYNT_S_SEAM_HORIZONTAL_SHIFT, -70, NULL ); //-100
	ti_srv_control_static(SYNT_S_BILINEAR_INTERPOLATION, 0, NULL); //select 2 Enable Bilinear Intepolation

	ti_srv_control_static(GA_S_SELECTLENSMODEL, 0, VendorLUTin ); //select 0 which means default equisolid model

	/* call create at the first time to initialize Library*/
	ti_srv_create(inpersmatPtr);

#if ENABLE_SINGLE_VIEW_FD
	/* create Single view Lookup Table*/
	Vps_rprintf("create Single View lookup Table");
	int *singleViewLut ;
	singleViewLut = AllocatePersisGlobalMemory(736*480);//[720][480];
	float in,jn;
	for(j = 0; j < 480; j++)
	{
		for(i = 0; i < 736; i++)
		{
			singleCamFisheyeTransform(240,1.8, i-30, j ,736, 480,&in,&jn );
			 int t1 = ( int)in;
			 t1 <<= 16;
			 int t2 = ( int)jn;
			singleViewLut[j*736+i] = t1+t2;
		}
	}
	memRearCamAfterFishEyeCorrection = (Byte *)AllocatePersisGlobalMemory(736*480/2);

#endif


   short *BackupLineLut0 = init_draw_line(&t_drawlinestruct);


#define ENABLE_DRAWING_LINE 0
#if ENABLE_DRAWING_LINE
	 char * ptrImageBUffer;
	 int indexLum;
	Vps_rprintf("create Single View lookup Table");
	/*Format
	 * |short X			|	short Y		|
	 * |char Y	|char U	|char V |Alpha	|
	 * */
	short *BackupLineLut ;
	BackupLineLut = (short*) AllocatePersisGlobalMemory(736*480);//[720][480];

	//DrawLine
	int x1 = 20+40,y1 = 20,x2 = 300+40,y2 = 300;
	//int x1 = 160,y1 = 400,x2 = 318,y2 = 200;
	float slope = (y2 - y1)/(x2 - x1);
	float offsetY = 0;

	for(i = x1, j = 0; i< x2; i++, j+= 6)
	{
		offsetY = x1 + (i-x1) * slope;
		BackupLineLut[j] = i;
		BackupLineLut[j+1] = y1 + offsetY;
		if(i < x1+ (x2-x1) / 3)
		{
			BackupLineLut[j+2] = 76; //Y
			BackupLineLut[j+3] = 84; //U
			BackupLineLut[j+4] = 255;  //V
			BackupLineLut[j+5] = 128;
		} else if (i <x1+ (x2-x1) * 2 / 3)
		{
			BackupLineLut[j+2] = 225; //Y
			BackupLineLut[j+3] = 0; //U
			BackupLineLut[j+4] = 148;  //V
			BackupLineLut[j+5] = 128;
		} else
		{
			BackupLineLut[j+2] = 149; //Y
			BackupLineLut[j+3] = 43; //U
			BackupLineLut[j+4] = 21;  //V
			BackupLineLut[j+5] = 128;

		}

		Vps_printf("[%d,%d] %x,%x,%x,%x\n",
				BackupLineLut[j],BackupLineLut[j+1],BackupLineLut[j+2], BackupLineLut[j+3],
				BackupLineLut[j+4],BackupLineLut[j+5]);
	}
	//DrawCurve

#endif

//#define 	DRAW_LEFT_RIGHT_LINE  1

#if DRAW_LEFT_RIGHT_LINE

    short *leftCameraLineLut ;
    short *rightCameraLineLut ;
    char * ptrImageBUffer;
    int left_x1 = 100,left_y1 = 240,left_x2 = 400,left_y2 = 240;
    leftCameraLineLut = (short*) AllocatePersisGlobalMemory((left_x2-left_x1+1 )*3);//[720][480];

    int right_x1 = 100,right_y1 = 240,right_x2 = 400,right_y2 = 240;
    rightCameraLineLut = (short*) AllocatePersisGlobalMemory((right_x2-right_x1+1 )*3);//[720][480];

    float ftmpSqrt = 0;
    //right camera
    for(i = right_x1, j = 0; i< right_x2; i++, j+= 6)
    {

        rightCameraLineLut[j] = i;
        //rightCameraLineLut[j+1] = right_y1;

        ftmpSqrt = 90100 - (250- i)*(250-i);
        ftmpSqrt = sqrt(ftmpSqrt);
        rightCameraLineLut[j+1] = ftmpSqrt;
        rightCameraLineLut[j+2] = 225; //Y
        rightCameraLineLut[j+3] = 0; //U
        rightCameraLineLut[j+4] = 148;  //V
        rightCameraLineLut[j+5] = 128;
    }

    //left camera
    for(i = left_x1, j = 0; i< left_x2; i++, j+= 6)
    {
        leftCameraLineLut[j] = i;
        leftCameraLineLut[j+1] = left_y1;
        leftCameraLineLut[j+2] = 225; //Y
        leftCameraLineLut[j+3] = 0; //U
        leftCameraLineLut[j+4] = 148;  //V
        leftCameraLineLut[j+5] = 128;
    }
#endif
	/* main process block*/
	while(1) {
        if(ToProcessOneSet)   {
            ToProcessOneSet = 0;
            flagGASuccess = 0;

            //long push of trigger button
            if(*(unsigned int*)0x80000888 == 0x88888888 )
            {
            	/* in case of calibration for 4 cameras give 1,
            	 * inc case of calibration for 3 cameras(L,R,B), give 2
            	*/
            	ti_srv_control_dynnamic(GA_S_TRIGGER, 1, NULL);

            	/*check 0x80000000, see if app_host put permatrix here*/
            	if(bPersmatSrc == PERSMAT_DDR &&  ( *(unsigned int *)0x80000000 ) != 0xFFFFFFFF  )//liuxu, 04/24/2014, dump the memory snapshot of sv->persmat.
            	{
            		Vps_rprintf("[Alg_GeometricAlignmentProcess]copy from DDR 0x80000000");
            		memcpy((void *)inpersmatPtr, (void *) 0x80000000, 4*9*4);//liuxu, 04/24/2014, updated from A8 FS.
            	}

        		*(unsigned int*)0x80000888 = 0x0;

        		tUIFsm.bRet_Colabration = RET_UNKOWN;
            }

            /*main process block*/
            //int ti_srv_process(Word32 *inpersmatPtr, int *flagGASuccess)
            {
            	//retreive frame pointer
                for(j=0;j<tpHandle.numCameras; j++){	//liuxu, 02/11/2014, refill the input frames pointers.
            		inPtr[0][j] = (uWord32 *)tpHandle.frmBuffer[j]; // For Y plane
            		inPtr[1][j] = (uWord32 *)(tpHandle.frmBuffer[j]+Input_GridSize); // For UV plane
            	}
                //UInt hwiKey;
                //hwiKey = Hwi_disable();//liuxu, 06/06/2014, this disable hwi too long to impact the timer/clock_ticks and so on.


                //PROFILING..........
                profiletick1 = _TSC_read();

                sProcessFunc(svSHandle,  inPtr, inPitch,
                                         outPtr, outPitch,
            							 (uWord32 *)GPtr1, (uWord32 *)GPtr2,
            							 PPtr4,  PPtr3, //outStatLUTPtr
            							 dataFormat,
            							 (uWord32)tpHandle.SYN_method,  (uWord32)tpHandle.SYN_Intepolation_mode

                 );

            	//PROFILING..........
            	 profiletick2 = _TSC_read();
            	 totalTicks += (profiletick2-profiletick1);

                 //liuxu, 05/16/2014, add the support for PA frame by frame!!!
                 if(counter_get0_1 % counter_get0_1_freq == 0)//liuxu, 06/05/2014, do PA every 100 frames/3s.
                 {
                	 pProcessFunc(svPHandle, PPtr3, PPtr4,
                                         dataFormat, PHOTOMETRIC_ALIGNMENT_ON);
                 }

                 //PROFILING..........
            	 profiletick3 = _TSC_read();
            	 totalTicks1 += (profiletick3-profiletick2);



            	 /*旋转左右视图*/
           		char * pptrImageBUffer;
 				if(tUIFsm.u8CurrentPage == PAGE_LEFT){
 						pptrImageBUffer = (char *)inPtr[0][3];
 						for(j = 0; j < 480; j+=2)
 						{
 							for(i = 0; i < 1472; i+=4)
 							{
 								pptrImageBUffer[j* 736*2 + i+3] = pptrImageBUffer[j* 736*2 + i+1]; // + pptrImageBUffer[j* 736+ i+5];
                         //pptrImageBUffer[j* 736 + i+3] >>= 1;
 							}
 						}
 						for(j = 1; j < 480; j+=2)
 						{
 							for(i = 0; i < 1472; i+=4)
 							{
 								pptrImageBUffer[j* 736*2 + i+1] = pptrImageBUffer[j* 736*2 + i+3]; // + pptrImageBUffer[j* 736+ i+5];
                         //pptrImageBUffer[j* 736 + i+3] >>= 1;
 							}
 						}
 				}else if (tUIFsm.u8CurrentPage == PAGE_RIGHT){
 						pptrImageBUffer = (char *)inPtr[0][1];
 	                    for(j = 0; j < 480; j+=2)
 	                    {
 	                        pptrImageBUffer = (char *)inPtr[0][1];

 	                        for(i = 0; i < 1472/* 736 * 2 */; i+=4)
 	                        {
 	                            //clockwise
 	                            pptrImageBUffer[j* 736*2 + i+1] = pptrImageBUffer[j* 736*2 + i+3]; // + pptrImageBUffer[j* 736+ i+5];
 	                        }
 	                    }
 	                    for(j = 1; j < 480; j+=2)
 	                    {
 	                        pptrImageBUffer = (char *)inPtr[0][1];
 	                        for(i = 0; i < 1472; i+=4)
 	                        {
 	                            pptrImageBUffer[j* 736*2 + i+3] = pptrImageBUffer[j* 736*2 + i+1]; // + pptrImageBUffer[j* 736+ i+5];
 	                        }
 	                    }
 				}else {
 					/*后视视频叠加显示倒车轨迹线*/
 	            	 if((tUIFsm.u8CurrentPage == PAGE_REAR) || (tUIFsm.u8CurrentPage == PAGE_REAR_FULL) ) {
 						draw_line((char *)inPtr[0][2],&t_drawlinestruct);
 	            	 }
 				}


#if ENABLE_SINGLE_VIEW_FD

            	for(j = 40; j < 440; j++)
            	{
            		unsigned short *pSingleViewLut = (unsigned short*)(singleViewLut+j*736);
            		Byte * pMemRearCam = memRearCamAfterFishEyeCorrection + j*736*2 ;
            		unsigned short t1;
            		unsigned short t2;
            		for(i = 160; i < 560; i++)
            		{
            			//unsigned short t1 = singleViewLut[j*736+i] >> 16;
            			//unsigned short t2 = singleViewLut[j*736+i] & 0xFFFF;
#if 0
            			//t1 = pSingleViewLut[i+i+1];
            			//t2 = pSingleViewLut[i+i+2];

            			//pMemRearCam[i+i] = ((Byte *)inPtr[0][2])[  t2*1472+t1+t1];
              			//pMemRearCam[i+i+1] = ((Byte *)inPtr[0][2])[  t2*1472+t1+t1 + 1];
#endif
            			pMemRearCam[i+i] = ((Byte *)inPtr[0][2])[  pSingleViewLut[i+i+2]*1472+pSingleViewLut[i+i+1]+pSingleViewLut[i+i+1]];
            			pMemRearCam[i+i+1] = ((Byte *)inPtr[0][2])[  pSingleViewLut[i+i+2]*1472+pSingleViewLut[i+i+2]+pSingleViewLut[i+i+2] + 1];


#if 0
            			memRearCamAfterFishEyeCorrection[(j*736+i) * 2] = 		((Byte *)inPtr[0][2])[  (t2*736+t1) * 2];
            			if(i&1 == t1&1)
            				memRearCamAfterFishEyeCorrection[(j*736+i) * 2 + 1] =	((Byte *)inPtr[0][2])[  (t2*736+t1) * 2 + 1];
            			else
            				memRearCamAfterFishEyeCorrection[(j*736+i) * 2 + 1] =	((Byte *)inPtr[0][2])[  (t2*736+t1+1) * 2 + 1];
#endif
            		}
            	}
#endif
            	profiletick4 = _TSC_read();
            	totalTicks2 += (profiletick4-profiletick3);


                 if(triggerGA)
                 {
              		int get_value[4];
               	    gProcessFunc(svGHandle,inPtr,	inPitch,	GPtr1,	GPtr2,	inpersmatPtr,
             								1,	dataFormat,	0,	&flagGASuccess);

             		ti_srv_control_dynnamic(GA_G_GETMATCHES, 0, get_value);
             		Vps_rprintf("[ti_srv_process] GAFlag:%d 2_1reg1:%d 1_0reg0:%d 0_3reg3:%d 3_2reg2:%d",
             				flagGASuccess,get_value[0], get_value[1],get_value[2], get_value[3]);

             		if(flagGASuccess == 1) {
             			tUIFsm.bRet_Colabration = RET_OK;
                    	Vps_rprintf("------------- COLABRATE OK ------------");
                    }
                    else {
                    	tUIFsm.bRet_Colabration = RET_FAIL;
                       	Vps_rprintf("????????? COLABRATE FAILED ?????????");
                    }
            		triggerGA = 0;
            	}


            	counter ++;
                if(counter % 20 == 0)
                {
                	if(counter % 200 == 0)
                	{
                		Vps_rprintf("-------------");
                		Vps_rprintf(" %lu:Alg_SynthesisProcess cycles[%lu]!!!\n", totalTicks/20, counter);
                		Vps_rprintf(" %lu:Alg_PAProcess cycles[%lu]!!!\n", totalTicks1/20, counter);
                		Vps_rprintf(" %lu:single view cycles[%lu]!!!\n", totalTicks2/20, counter);
                		                		Vps_rprintf("-------------\n\n");
                	}
                	totalTicks = 0;
                	totalTicks1 = 0;
                	totalTicks2 = 0;

                }
                 ti_srv_process_post(inpersmatPtr,&flagGASuccess);

            }

            /* save perspective matrix parameter to flash if GA succeed*/
            if(flagGASuccess == 1) {

            	/*print out GA result if necessary */
            	int get_value[4];
            	ti_srv_control_dynnamic(GA_G_GETMATCHES, 0, get_value);

            	FS.magicNumber = 0x123456;
            	FS.updateFlag = 1;
            	memcpy(FS.inpersmatPtr , inpersmatPtr , 36 * 4);
            	spiFlashWrite(SRV_PARAM_START_ADDR,sizeof(FlashStruct)/* 4+4+3*3*9*4*/, &FS);
           }

            if(eraseFlash)
            {
            	spiFlashErase(SRV_PARAM_START_ADDR, sizeof(FlashStruct));
				eraseFlash = 0;
            }

            DoneProcessedOneSet = 1;
            //Hwi_restore(hwiKey);//liuxu, 06/06/2014, this disable hwi too long to impact the timer/clock_ticks and so on.
        } else  {
            Task_sleep(1);//liuxu, 02/11/2014, 1ms.
        }
    }

	//Close the test platform
	//CloseTP(&tpHandle);//liuxu, 01/22/2014, China port.
	return 0;
}


/*************************************************************************
 *  @func       main
 *  @brief      Entry point for the application.
 *  @param[in]  None
 *  @returns    None
 ************************************************************************/
int main(void)
{ 
    int32_t nStatus = 0;

    /* DSP L1 and L2 cache configurations. */
    L1PCFG |= 0x00000004u;   /* L1 program cache is configured to 32K */
    L1DCFG |= 0x00000004u;   /* L1 data cache is configured to 32K */

    //L2CFG  |= 0x00000004u;   /* L2 is configured to 256K. */
    L2CFG  |= 0x00000003u;   //liuxu, 02/13/2014, L2 is configured to 128K, and leave the other 128KB to customer algo.

#if 0
    MAR64  |= 0x00000001u;     /* liuxu, 11/14/2013, cache for OCMC. 0x40000000 - 0x40FFFFFF is made cacheable */
#else//liuxu, 02/14/2014, diable caching of OCRAM since it hasn't been used, RISK... 
    MAR64  = 0x00000000u;     /* liuxu, 11/14/2013, cache for OCMC. 0x40000000 - 0x40FFFFFF is made cacheable */
#endif
    //MAR128 |= 0x00000001u;   /* 0x80000000 - 0x80FFFFFF is made cacheable */

    //MAR133 |= 0x00000001u;   /* 0x85000000 - 0x85FFFFFF is made cacheable */
    //MAR134 |= 0x00000001u;   /* 0x86000000 - 0x86FFFFFF is made cacheable */

    //MAR135 |= 0x00000001u;   /* 0x87000000 - 0x87FFFFFF is made cacheable */

    //MAR137 |= 0x00000001u;   /* 0x89000000 - 0x89FFFFFF is made cacheable */ //liuxu, 10/18/2013, disable cacheable of shared regions to avoid IPC issue.
    //MAR138 |= 0x00000001u;   /* 0x8a000000 - 0x8aFFFFFF is made cacheable */
    //MAR139 |= 0x00000001u;   /* 0x8b000000 - 0x8bFFFFFF is made cacheable */
    //MAR140 |= 0x00000001u;   /* 0x8c000000 - 0x8cFFFFFF is made cacheable */
    //MAR141 |= 0x00000001u;   /* 0x8d000000 - 0x8dFFFFFF is made cacheable */
    //MAR142 |= 0x00000001u;   /* 0x8e000000 - 0x8eFFFFFF is made cacheable */
    //MAR143 |= 0x00000001u;   /* 0x8f000000 - 0x8fFFFFFF is made cacheable */ //liuxu, 10/18/2013, till here.

    //MAR144 |= 0x00000001u;   /* 0x90000000 - 0x90FFFFFF is made cacheable */

    //liuxuliuxu, 8/20/2013, disable the cache for ARM. MAR155 |= 0x00000001u;   /* 0x9B000000 - 0x9BFFFFFF is made cacheable *///liuxuliuxu
    //liuxuliuxu, 8/21/2013, currently i'm using 0x9FB00000 for non-cached shared region.

    //liuxu, 10/22/2013, overwrite the default settings from packages maybe.
    MAR137 = 0x00000000u;   /* 0x89000000 - 0x89FFFFFF is made un-cacheable */ 
    MAR138 = 0x00000000u;   /* 0x8a000000 - 0x8aFFFFFF is made un-cacheable */
    MAR139 = 0x00000000u;   /* 0x8b000000 - 0x8bFFFFFF is made un-cacheable */
    MAR140 = 0x00000000u;   /* 0x8c000000 - 0x8cFFFFFF is made un-cacheable */
    MAR141 = 0x00000000u;   /* 0x8d000000 - 0x8dFFFFFF is made un-cacheable */
    MAR142 = 0x00000000u;   /* 0x8e000000 - 0x8eFFFFFF is made un-cacheable */
    MAR143 = 0x00000000u;   /* 0x8f000000 - 0x8fFFFFFF is made un-cacheable */ 
    MAR144 = 0x00000000u;   /* 0x90000000 - 0x90FFFFFF is made un-cacheable *///liuxu, 11/5/2013, for mem_size_128MB.

    MAR128 = 0x00000000u;   /* 0x80000000 - 0x80FFFFFF is made un-cacheable */

    //christian allow customer to use 0x85f00000-86c00000
    MAR133 = 0x00000000u;   /* 0x85000000 - 0x85FFFFFF is made un-cacheable *///liuxu, 11/5/2013, for mem_size_128MB. Actually, all DSP code has been uncached, be careful of the performance and try to use L1/L2/OCMC as fixed code sections.
    //liuxu, 11/14/2013, caching can improve performance dramatically.
    //MAR134 = 0x00000000u;   /* 0x86000000 - 0x86FFFFFF is made un-cacheable *///liuxu, 10/23/2013, disable the cache of that, because messageQ use it for internal data structure and may impacts ipc.

#if 0//liuxu, 05/08/2014, RISK...try to trigger the issue.....
    MAR135 = 0x00000000u;   /* 0x87000000 - 0x87FFFFFF is made un-cacheable */
#else
    MAR135 |= 0x00000001u;   /* 0x87000000 - 0x87FFFFFF is made un-cacheable */
#endif


    //liuxu, 10/22/2013, 0184 827Ch MAR159 Memory Attribute Register 159 9F00 0000h - 9FFF FFFFh

    MAR144 |= 0x00000001u;   /* 0x90000000 - 0x90FFFFFF is made cacheable *///liuxu, 01/22/2014, China port. cacheable.
    MAR145 |= 0x00000001u;   /* 0x91000000 - 0x90FFFFFF is made cacheable */

    MAR146 |= 0x00000001u;//liuxu, 01/22/2014, China port, 80MB, firstly.
    MAR147 |= 0x00000001u;
    MAR148 |= 0x00000001u;   
    MAR149 |= 0x00000001u;   
    MAR150 |= 0x00000001u;   

    MAR143 |= 0x00000001u;   /* 0x8f000000 - 0x8fFFFFFF is made cacheable */ //liuxu, 02/13/2014. 

#if 0//liuxu, 02/14/2014, uncache all frame buffers. 
    MAR131 = 0x00000000u;   /* 0x83000000 - 0x83FFFFFF is made un-cacheable *///liuxu, 02/12/2014, frame buffers shouldn't be cached, should they??
    MAR132 = 0x00000000u;   /* 0x84000000 - 0x84FFFFFF is made un-cacheable */
    //MAR143 = 0x00000000u;   /* 0x8f000000 - 0x8fFFFFFF is made un-cacheable */ 
#endif
    
    nStatus = Ipc_start();
    if (nStatus < 0)
    {
        System_abort("Ipc_start failed\n");
    }

    BIOS_start();
    return 0;
}
