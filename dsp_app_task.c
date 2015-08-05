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
 *
 * @history
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
#include "osd_array.h";//liuxu, 06/03/2014, add for osd and car box yuv420.
#include "carbox_array.h";

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
#include "colab_clb.h"
#include "colab_clb_h.h"
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
#include "ret_err.h"
#include "ret_ok.h"
#include "sep.h"
#include "tip.h"
#include "title_adv.h"
#include "title_colab.h"
#include "title_menu.h"
#include "title_param.h"
#include "title_upg.h"


//enabling this macro, DSP will send command to itself, so that algorithm read image datas from DDR, turning it on
//when there is no real camera for customer to develop algorithm.
//#define TALK_TO_SELF

//DSP to A8 communication in seperated task other than the main dspAppTask task.
#define A8_CommInTask

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
#define SRV_PARAM_END_ADDR		0x200000

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

cfg8Pointers_t mutualTaskCmdMsg;
int firstSetOfFramesReady = 0;
int ToProcessOneSet = 0;
int DoneProcessedOneSet = 0;

unsigned int mySentToA8Counter = 0;
unsigned short int ChInfoFromA8 = 0xFFFF;//liuxu, 06/19/2014, info from A8.
unsigned short int InfoSwmsLayout = 0;//liuxu, 06/19/2014, info to M3.

#endif

unsigned int badcounter = 0;//liuxu, 06/05/2014, stats the percentage of non 40ms for PAL.
int debugStopFlag = 0;// for ccs debug from the most beinning

int win_startX[20] ,win_startY[20] ,win_Width[20] ,win_Height[20], crop_startX[20] ,crop_startY[20];
void *srcBuf[20], *dstBuf[20];

uint32_t gEdma_ChId, gTcc;//liuxu, 11/12/2013, use edma for simple srv demo.
//Semaphore_Handle hSemaCpyDone;
//liuxu, 02/11/2014, use queue1 for ti dsp. #define FOUR_IN_ONE_D1//liuxu, 12/19/2013.
bopCtxt_t               myBopTaskCtxt;//liuxu, 11/12/2013.

//static Word32 persmatin[] = {1168548, 4691, -29928995, 7274, 2387337, -4112491, -9513, 325, 1048576, 3430890, 83407, 69132337, -221228, 3112890, 115834630, 1160, 2661, 1048576, 1465549, 2723, 51888110, 21501, 2237038, -881129, 7046, -332, 1048576, 3454702, -295296, 104147669, 99852, 2952685, -114814057, 600, -2875, 1048576};
Word32 persmatin[] = {1131601, 81042, 7261885, -38166, 1464216, -22484589, -2277, 823, 1048576, 1782065,
					  -118325, -61070805, -39328, 1583282, 109851828, 717, -707, 1048576, 962336, -67172,
					  1721768, 24735, 1384077, -6917033, 3589, 251, 1048576, 1580675, 171120, -27832885,
					  -36117, 1451835, -65973417, 779, -513, 1048576};

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



typedef enum _eMSG_TYPE {
	MSG_FRONT = 0,		/*����ǰ*/
	MSG_FRONT_FULLVIEW,	/*����ǰ-ȫ��*/
	MSG_LEFT,			/*������*/
	MSG_LEFT_FULLVIEW,	/*������-ȫ��*/
	MSG_RIGHT,   		/*������*/
	MSG_RIGHT_FULLVIEW,	/*������-ȫ��*/
	MSG_REAR,			/*����*/
	MSG_ALLVIEW,		/*��·��Ƶͬʱ��ʾ*/
	MSG_SNAPSHOT,	/*�궨-����ͷ����*/
	MSG_CALIBRATING,	/*�궨-��ȡ�궨�����͸�DSP*/
	MSG_SLEEP,			/*����*/
	MSG_MENU_BACK,		/*ң������Ϣ������*/
	MSG_MENU_LEFT,	/*ң������Ϣ����*/
	MSG_MENU_RIGHT,	/*ң������Ϣ����*/
	MSG_MENU_UP,	/*ң������Ϣ����*/
	MSG_MENU_DOWN,	/*ң������Ϣ����*/
	MSG_MENU_OK,	/*ң������Ϣ��ȷ��*/
	MSG_MENU_POWER,/*ң������Ϣ����Դ*/
	MSG_UNKNOWN,
} eMSG_TYPE;

void * pVideoBuf_Synthesis = NULL;
void * pVideoBuf_Front = NULL;
void * pVideoBuf_Left = NULL;
void * pVideoBuf_Right = NULL;
void * pVideoBuf_Rear = NULL;

#define __UI__

#ifdef __UI__
/*******************************************************************************
 *
 * �Զ��������ʾ���
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
 * ��ʾ����
 */
typedef struct {
	int win_startX;
	int win_startY;
	int win_Width;
	int win_Height;
	int crop_startX;
	int crop_startY;
	
} tREGION;


/*��������*/
typedef enum {	
	KEY_ACC = 0,//ACC 
	KEY_FRONT,	//ǰ��
	KEY_LEFT,	//����
	KEY_RIGHT,	//��ת
	KEY_REAR,	//����
//ң������Ϣ��
	MENU_BACK,	//����
	MENU_LEFT,	//��
	MENU_RIGHT,	//�ҷ�
	MENU_UP,	//�Ϸ�
	MENU_DOWN,	//�·�
	MENU_OK,	//ȷ��
	MENU_POWER,	//��Դ
	KEY_END,
	
	KEY_UNKNOWN = 0xFF	//δ֪
} eKEYTYPE;


#define		_SCREEN_PIXEL_WIDTH_			736					//���Ŀ��
#define		_SCREEN_PIXEL_HEIGHT_			480					//���ĸ߶�
#define		_ITEM_PIXEL_HEIGHT_				100					//���ĸ߶�

//����
#define		_PAGE_MAX_ROW_					4					//ÿҳ�����ʾ����
#define		_PAGE_MAX_COLUMN_				16					//ÿҳ�������

#define		_BUTTON_WIDTH_1_X_				16					//16������
#define		_BUTTON_WIDTH_2_X_				32					//32������


#define 	VISIABLE			1	//�ɼ�
#define 	INVISIABLE			0	//����

/*!
 * ��ͼ����
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
 * ����ͼ����
 */
typedef enum {
	SUBVIEW_SYSTHESIS = 0,
	SUBVIEW_CAR,
	SUBVIEW_SINGLEVIEW,
	SUBVIEW_TIPBAR,
	SUBVIEW_FULLSCREEN,
	SUBVIEW_SPLIT_00,	//����
	SUBVIEW_SPLIT_01,	//����
	SUBVIEW_SPLIT_10,	//����
	SUBVIEW_SPLIT_11,	//����
	SUBVIEW_MENU,
	
	SUBVIEW_END
} eSUBVIEW;


typedef struct {
	eVIEWTYPE	eType;
	void*		pSrc;		//��ʾԴ�����֣���ƵԴ��ͼƬ����
	u8			bVisable;
} tVIEW;



#define PAGE_DEFAULT 	PAGE_FRONT	//Ĭ��ҳ��Ϊǰ��

//�������������ҳ������
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
	PAGE_MENU,				//�˵�
		PAGE_MENU_SETPARAM, 	//���ò���
		PAGE_MENU_UPG,			//����
		PAGE_MENU_COLABRAT, 	//�궨
		PAGE_MENU_ADVANCEDFUNC,
	
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


//ͼ������
typedef		enum
{
	ICON_UNDEFINE = -1,		
	ICON_TIP = 0,								//����ʾ
	ICON_OK,									//�ɹ�״̬
	ICON_ERR,									//����״̬

	ICON_TYPE_END,
}	eICON;

//ͼ��
typedef		struct
{
	u8				eType;										//ͼ������
//	tREGION			tRegion;									//��ʾ����
//	u8				bVisable;									//�Ƿ�ɼ�
//	u8				u8Row;										//��
//	u8				u8Column;									//��
	u8				u8AttachedItem;								//������ 

}	tICON;

//��ť����
typedef		enum
{
	BUTTON_OK = 0,												//ȷ��
	BUTTON_CANCEL,												//ȡ��

	BUTTON_TYPE_END,
		
}	_eButton_Type;


//��ť
typedef		struct
{
	_eButton_Type	eType;										//��ť����
//	tREGION			tRegion;									//��ʾ����
	u8				u8Row;										//��
	u8				u8Column;									//��

}	tBUTTON;

/*
//������
typedef		struct
{
	void			*pSrc;										//����Դ
}	tTITLEBAR;
*/

//���е���
typedef enum {
	ITEM_MENU_PARAM = 0,				//���ò���
	ITEM_MENU_UPD,						//����
	ITEM_MENU_COLABRATION,				//�궨
	ITEM_MENU_ADVANCEDFUNC,				//�߼�����
	ITEM_MENU_COLABRATION_WRITEPARAM,	//�궨-д����
	ITEM_MENU_COLABRATION_COLABRATE,	//�궨-�궨

	ITEM_MENU_END
} eITEMTYPE;

/*����ִ�н��*/
typedef enum {
	RET_OK = 1,  	/*�ɹ�*/
	RET_FAIL = 0, 	/*ʧ��*/
	RET_TOUT, 		/*��ʱ*/
	RET_UNKOWN
} eRET;

//���ָ��Ļ�е�һ�У�һҳ�������ʾ����
typedef		struct
{
	eITEMTYPE		eItemType;					//����Դ	
	eICON			eTipIcon;					//��ǰ����ʾͼ��
	eICON			eStatIcon;					//��ǰ������ִ�н��ͼ��
	u8				u8Ret;						//������ִ�н��
} 	tITEM;

//ҳ��,���ͼ�ꡢ��ť����Ԫ�����
typedef		struct
{
//	tVIEW*			pViews;										//��ͼ			
	eVIEWTYPE		eViewType;									//��ͼ����
//	void*			pTitleBar;									//������
	eTITLE			eTitle;
	tITEM*			pItems;										//��
	tBUTTON*		pButtons;									//��ť

	u8				u8ItemCnt;									//����
	u8				u8ButtonCnt;								//��ť����
	u8				u8FocusItem;								//������
	u8				u8FocusButton;								//���㰴ť

	u8				ePageType;									//ҳ������
	u8				u8ParentPageId; 							//��ҳ���
	
} 	tPAGE;


//�������棻�ɶ��ҳ�漶������
typedef		struct
{	
	u8				u8CurPage;									//��ǰ�ҳ���
	tPAGE			aPage[PAGE_TYPE_END];						//ҳ������
					
} 	tPAGE_CONTROL_FLOW;


//OLED��ʾ����������״̬��
typedef		struct
{
//	u16					u16CurrentState;					//��ǰ״̬
	
	u16					u8PendingCommand;					//�ȴ�ִ�еİ�������
	u8					u8CurrentPage;						//��ǰ����ҳ��
	u8					bPageFresh;							//�Ƿ�ˢ��ҳ��


} 	tUIFSM;
	  
//����ʼ��
void	UI_Init(void);

//��ʾҳ��
void	Show_Page(u8 u8PageType);

//��ʾ��ͼ
void 	Show_View(eVIEWTYPE eViewType);

//��ʾ������
void 	Show_Title(eTITLE eTtitle);


//��ʾ�����б�
void	Show_Item(u8 u8Page, u8 u8ItemIndex, u8 u8ShowType);

//��ʾͼ��
void	Show_Icon(void);

//��ʾ��ť
void	Show_Button(u8 u8Page, u8 u8ButtonIndex, u8 u8ShowType);

//�����Ի�����һ���λ�����������Ļ�ж�Ӧ������ʾ
void	BitBlt(eSUBVIEW eSubView, tREGION *ptRegion, void *pSrc);
void	BitBlt_Raw(int win_startX, int win_startY, int win_Width, int win_Height, int crop_startX, int crop_startY, void *pSrc);


//��ʼ��ҳ�������
void	Init_Page(void);

//���洦��
void	UI_Process(void);

//������Ϣ����
//void	UI_Key_Process(eKEYTYPE eKeyType);
void	UI_Key_Process();


//static 	tVIEW		aView[PAGE_TYPE_END][VIEW_END];			//������ͼ
static	tITEM		aItem[PAGE_TYPE_END][4];					//������
static	tICON		aIcon[ICON_TYPE_END];						//ͼ��
static	tBUTTON		aButton[2];									//��ť

volatile tUIFSM					tUIFsm;	   			//��״̬��
volatile tPAGE_CONTROL_FLOW		tPage_Flow;			//ҳ�������


static uint8_t	menu_Buf[466*480*2];	//�˵���������ɫ


tPAGE		*pCurPage 		= NULL;							//��ǰҳ��ָ��
tPAGE		*pNextPage 		= NULL;							//��תҳ��ָ��
tPAGE		*pParentPage 	= NULL;							//��ҳ��ָ��

/*!
 * ��ͼ����
 *
 */
tREGION aViewRegion[SUBVIEW_END] = {
	{0, 0, 320, 480, 24, 0 },	//synthesis view
	{120-24, 120, 80, 240, 0, 0 },	//car box
	{270, 0, 736-270, 400, 90, 60 },	//single camera view
	{270, 400, 480, 80, 20, 0 },	//Tip bar
	{0, 0, 736, 480, 0, 0 },   //full screen
	{0, 0, 320, 240, 0, 0 },	//split
	{320, 0, 736 - 320, 240, 0, 00 },	//split
	{0, 240, 320, 240, 0, 0 },	//split
	{320, 240, 736 - 320, 240, 0, 0 },	//split
};


/*!
 * ��ʾ����
 *
 */
#define	WIN_WITDTH				(736-270)	//466
#define	WIN_HEIGHT				480
#define	WIN_START_X				270	//��Ļ��ʼ��ʾλ��
#define WIN_START_Y				0
#define WIN_SEG_WIDTH			60  //ÿ���ӿ��
#define	WIN_SEG_AMOUNT			8	//�ܸ�������ע�����һ����66
//������
#define	TITLE_WIN_START_X		(WIN_START_X)	//��Ļ��ʼ��ʾλ��
#define	TITLE_WIN_START_Y		0	//��Ļ��ʼ��ʾλ��
#define TITLE_WIDTH				(142)	
#define TITLE_HEIGHT			(54)
//�ָ���
#define	SEP_START_X				(WIN_START_X)	//��Ļ��ʼ��ʾλ��
#define	SEP_START_Y				66	//��Ļ��ʼ��ʾλ��
#define SEP_WIDTH				466 //(736-270)
#define SEP_HEIGHT				4

//�б���
#define	ITEM_START_X			(WIN_START_X + (WIN_SEG_WIDTH << 1))//��Ļ��ʼ��ʾλ��
#define ITEM_HEIGHT				(100)
#define ITEM_START_Y_OFFSET		(80)
#define ITEM_START_Y(i)			(ITEM_START_Y_OFFSET + i * ITEM_HEIGHT)	//��ʼ��ʾλ��
//�б���˵�
#define	ITEM_MENU_WIDTH			(102)
#define ITEM_MENU_HEIGHT		(42)
//�б��������
#define	ITEM_BAR_WIDTH			(240)
#define ITEM_BAR_HEIGHT			(4)
#define ITEM_BAR_START_X		(ITEM_START_X)
#define ITEM_BAR_START_Y(i)		(ITEM_START_Y(i) + ITEM_MENU_HEIGHT + 5)
//��ʾ��ͷ
#define	ITEM_TIP_WIDTH			(50)
#define ITEM_TIP_HEIGHT			(50)
#define ITEM_TIP_START_X		(330)
#define ITEM_TIP_START_Y(i)		(ITEM_START_Y(i))
//���״̬
#define	ITEM_RET_WIDTH			(50)
#define ITEM_RET_HEIGHT			(50)
#define ITEM_RET_START_X		(630)
#define ITEM_RET_START_Y(i)		(ITEM_START_Y(i))


typedef struct {
	void*		pSrc_Normal;	//��̬
	void*		pSrc_Hilight;	//����
	int			width;			//���
	int			height;			//�߶�
} tPICYUV;

#if 0
extern const unsigned char yuv_menu_param_yuv[] ;
extern const unsigned char yuv_menu_param_h_yuv[] ;
extern const unsigned char yuv_menu_upd_h_yuv[] ;
extern const unsigned char yuv_menu_upd_h_yuv[] ;
extern const unsigned char yuv_menu_cola_yuv[] ;
extern const unsigned char yuv_menu_cola_h_yuv[] ;
extern const unsigned char yuv_menu_adv_yuv[] ;
extern const unsigned char yuv_menu_adv_h_yuv[] ;
extern const unsigned char yuv_colab_wp_yuv[] ;
extern const unsigned char yuv_colab_wp_h_yuv[] ;
extern const unsigned char yuv_colab_clb_yuv[] ;
extern const unsigned char yuv_colab_clb_h_yuv[] ;

extern const unsigned char yuv_tip_yuv[] ;
extern const unsigned char yuv_ret_ok_yuv[] ;
extern const unsigned char yuv_ret_err_yuv[] ;

extern const unsigned char yuv_bar_yuv[] ;
extern const unsigned char yuv_bar_h_yuv[] ;

extern const unsigned char yuv_title_menu_yuv[];
extern const unsigned char yuv_title_param_yuv[];
extern const unsigned char yuv_title_upg_yuv[];
extern const unsigned char yuv_title_colab_yuv[];
extern const unsigned char yuv_title_adv_yuv[];
extern const unsigned char yuv_sep_yuv[];
extern const unsigned char yuv_car_yuv[];


#endif

typedef struct {
	void*	pSrc;
	int		width;
	int		height;
} tTITLE;

static tTITLE	aTitle_YUV[TITLE_END];


/*!
 * �б�����ԴͼƬ����
 *
 */
static tPICYUV aItem_YUV[ITEM_MENU_END];

static tPICYUV aBar_YUV;



//����ʼ��
void	UI_Init(void)
{
	u32 i = 0;

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
	aItem_YUV[ITEM_MENU_COLABRATION_COLABRATE].pSrc_Normal = yuv_colab_clb_yuv;
	aItem_YUV[ITEM_MENU_COLABRATION_COLABRATE].pSrc_Hilight = yuv_colab_clb_h_yuv;
	aItem_YUV[ITEM_MENU_COLABRATION_COLABRATE].width = 102;
	aItem_YUV[ITEM_MENU_COLABRATION_COLABRATE].height = 42;

	aBar_YUV.pSrc_Normal = yuv_bar_yuv;
	aBar_YUV.pSrc_Hilight = yuv_bar_h_yuv;
	aBar_YUV.width = 200;
	aBar_YUV.height = 4;


	tUIFsm.u8PendingCommand = 0xFF;
	tUIFsm.u8CurrentPage = PAGE_DEFAULT;
	tUIFsm.bPageFresh = FALSE;




	
	//��ʼ��ҳ��
	Init_Page();

	//�˵���������ɫ
	while(i < ((466*480*2) - 1)) {
		menu_Buf[i] = 0x10;
		i++;
		menu_Buf[i] = 0x80;
		i++;
	}
}


/*!
 * ��ʼ��ҳ�������
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

   	//�����
	memset(&aItem, 0, 4 * PAGE_TYPE_END * sizeof(tITEM));
//	memset(&aView, 0, VIEW_END * sizeof(tVIEW));

	//1)��ʼ�����а�ť
	aButton[0].eType = BUTTON_OK;
	aButton[0].u8Row = 2;
	aButton[0].u8Column = 5;
//	aButton[0].u8Width = _BUTTON_WIDTH_2_X_;

	//��ʼ����ť-ȡ��
	aButton[1].eType = BUTTON_CANCEL;
	aButton[1].u8Row = 2;
	aButton[1].u8Column = 1;
//	aButton[1].u8Width = _BUTTON_WIDTH_2_X_;

	//2)��ʼ������ҳ��
	u8PageType = PAGE_FRONT;

	while( u8PageType < PAGE_TYPE_END )
	{
		pPage = &(tPage_Flow.aPage[u8PageType]);

		memset((u8*)pPage, 0, sizeof(tPAGE));
		
		pPage->ePageType = (ePAGE_TYPE)u8PageType;
		
		switch( u8PageType )
		{
			//��Ƶ��ʾҳ��
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
		case	PAGE_MENU:	//�˵�
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
		
		case	PAGE_MENU_SETPARAM: 	//���ò���

			pPage->eViewType = VIEW_MENU;
			pPage->eTitle = TITLE_SETPARAM;
			pPage->pItems = NULL;
			pPage->pButtons = NULL;
			pPage->u8ButtonCnt = 0;
			pPage->u8FocusItem = 0;
			pPage->u8FocusButton = 0;
			pPage->u8ItemCnt = 0;
			break;

		case	PAGE_MENU_UPG:			//����

			pPage->eViewType = VIEW_MENU;
			pPage->eTitle = TITLE_UPD;
			pPage->pItems = NULL;
			pPage->pButtons = NULL;
			pPage->u8ButtonCnt = 0;
			pPage->u8FocusItem = 0;
			pPage->u8FocusButton = 0;
			pPage->u8ItemCnt = 0;
			break;

		case	PAGE_MENU_COLABRAT: 	//�궨

			pPage->eViewType = VIEW_MENU;
			pPage->eTitle = TITLE_COLABRATE;
			pPage->pItems = aItem[PAGE_MENU_COLABRAT];
			pPage->pButtons = NULL;
			pPage->u8ButtonCnt = 0;
			pPage->u8FocusItem = 0;
			pPage->u8FocusButton = 0;

			pPage->u8ItemCnt = 2;
			pPage->pItems[0].eItemType = ITEM_MENU_COLABRATION_WRITEPARAM;
			pPage->pItems[0].u8Ret = RET_UNKOWN;
			pPage->pItems[1].eItemType = ITEM_MENU_COLABRATION_COLABRATE;
			pPage->pItems[1].u8Ret = RET_UNKOWN;
			break;


			//�߼�����ҳ��
		case	PAGE_MENU_ADVANCEDFUNC:
			
			pPage->eViewType = VIEW_MENU;
			pPage->eTitle = TITLE_ADVFUNC;
			pPage->pItems = NULL;
			pPage->pButtons = NULL;
			pPage->u8ButtonCnt = 0;
			pPage->u8FocusItem = 0;
			pPage->u8FocusButton = 0;
			pPage->u8ItemCnt = 0;
			break;
		default:
			break;
		}//end switch

		u8PageType ++;
	}//end while
}
	
/*!
 * ��ʾĬ��ҳ��
 * \n
 *
 * \n
 * @see
 */
void	UI_ShowDefaultPage()
{
	//��ʾĬ��ҳ��
	tUIFsm.u8CurrentPage = PAGE_DEFAULT;

	Show_Page(PAGE_DEFAULT);
}


/*!
 * ���洦������
 * \n
 *
 * \n
 * @see
 */
void	UI_Process()
{
	u8	u8Command = 0xFF;


	//��ʼ������ʾ��һ��ҳ�漴Ĭ��ҳ��
	if(tUIFsm.u8CurrentPage == 0xFF)
	{
		//��ʾĬ��ҳ��
		tUIFsm.u8CurrentPage = PAGE_DEFAULT;

		Show_Page(PAGE_DEFAULT);

		return;
	}

	//ȡ��������Ϣ				  
	u8Command = tUIFsm.u8PendingCommand;
	
	//������Ч��
	if(u8Command != KEY_END)
	{
		//׼�������µİ�����Ϣ
		tUIFsm.u8PendingCommand = KEY_UNKNOWN;

		//��������
		UI_Key_Process(u8Command);
	}

}


/*!
 * ������Ϣ����
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

	if(0xFF == tUIFsm.u8PendingCommand)
		return;
	
	if(0 == tUIFsm.u8PendingCommand)
		eKeyType = KEY_FRONT;
	else if(1 == tUIFsm.u8PendingCommand)
			eKeyType = KEY_LEFT;
	else if(2 == tUIFsm.u8PendingCommand)
			eKeyType = KEY_RIGHT;
	else if(3 == tUIFsm.u8PendingCommand)
			eKeyType = KEY_REAR;
	else if(4 == tUIFsm.u8PendingCommand)
			eKeyType = MENU_POWER;
	else
			eKeyType = KEY_UNKNOWN;
	
	tUIFsm.u8PendingCommand = 0xFF;

	//ȡ��ǰҳ��ָ��		 
	pCurPage = &(tPage_Flow.aPage[tUIFsm.u8CurrentPage]);

	if(pCurPage == NULL/* || pNextPage == NULL*/)
	{
		printf("ȡҳ��ָ���\n");	
	
		return;
	}

	//ȡ��ǰҳ��Ľ���������
	u8FocusItem = pCurPage->u8FocusItem;

	//����ҳ�����ʹ�������Ϣ
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

		if(eKeyType == KEY_LEFT)	//ң������Ϣ:��Դ
		{
			if(tUIFsm.u8CurrentPage == PAGE_LEFT) {
				//�޸���״̬����ǰҳ��Ϊ��ҳ��
				tUIFsm.u8CurrentPage = PAGE_LEFT_FULL;

				//��ʾ��ҳ��
				Show_Page(PAGE_LEFT_FULL);
			}
			else {

				//�޸���״̬����ǰҳ��Ϊ��ҳ��
				tUIFsm.u8CurrentPage = PAGE_LEFT;

				//��ʾ��ҳ��
				Show_Page(PAGE_LEFT);
			}
		}		
		else if(eKeyType == KEY_RIGHT)	//����
		{
			if(tUIFsm.u8CurrentPage == PAGE_RIGHT) {
			
				//�޸���״̬����ǰҳ��Ϊ��ҳ��
				tUIFsm.u8CurrentPage = PAGE_RIGHT_FULL;
			
				//��ʾ��ҳ��
				Show_Page(PAGE_RIGHT_FULL);
			}
			else {
			
				//�޸���״̬����ǰҳ��Ϊ��ҳ��
				tUIFsm.u8CurrentPage = PAGE_RIGHT;
			
				//��ʾ��ҳ��
				Show_Page(PAGE_RIGHT);
			}
		}
		//ǰ��
		else if(eKeyType == KEY_FRONT)			
		{
			if(tUIFsm.u8CurrentPage == PAGE_FRONT) {
			
				//�޸���״̬����ǰҳ��Ϊ��ҳ��
				tUIFsm.u8CurrentPage = PAGE_FONT_FULL;
			
				//��ʾ��ҳ��
				Show_Page(PAGE_FONT_FULL);
			}
			else {
			
				//�޸���״̬����ǰҳ��Ϊ��ҳ��
				tUIFsm.u8CurrentPage = PAGE_FRONT;
			
				//��ʾ��ҳ��
				Show_Page(PAGE_FRONT);
			}
		}
		//����
		else if(eKeyType == KEY_REAR)			
		{
			if(tUIFsm.u8CurrentPage == PAGE_REAR) {
			
				//�޸���״̬����ǰҳ��Ϊ��ҳ��
				tUIFsm.u8CurrentPage = PAGE_REAR_FULL;
			
				//��ʾ��ҳ��
				Show_Page(PAGE_REAR_FULL);
			}
			else {
			
				//�޸���״̬����ǰҳ��Ϊ��ҳ��
				tUIFsm.u8CurrentPage = PAGE_REAR;
			
				//��ʾ��ҳ��
				Show_Page(PAGE_REAR);
			}
		}
		//ң������Ϣ:��Դ
		else if(eKeyType == MENU_POWER) 
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_MENU].u8ParentPageId = tUIFsm.u8CurrentPage;
		
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_MENU;
		
			//��ʾ��ҳ��
			Show_Page(PAGE_MENU);
		}
		//������ҳ��Ϣ����Ӧ
		else {
		}
		
		break;
	//���˵�
	case	PAGE_MENU:	
			
		if(eKeyType == KEY_FRONT)	
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_FRONT].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_FRONT;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_FRONT);
		}
		else if(eKeyType == KEY_LEFT)	
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_LEFT].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_LEFT;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_LEFT);
		}
		else if(eKeyType == KEY_RIGHT)	//ң������Ϣ:��Դ
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_RIGHT].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_RIGHT;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_RIGHT);
		}
		else if(eKeyType == KEY_REAR)	
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_REAR].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_REAR;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_REAR);
		}			
		else{
			if(eKeyType == MENU_UP)   
			{
				if(pCurPage->u8FocusItem == 0)
					break;
				
				//������ʾ��ǰ��
				Show_Item(PAGE_MENU, pCurPage->u8FocusItem, 0 );

				//�����л�����һ��
				pCurPage->u8FocusItem --;
				
				//������ʾ��һ��
				Show_Item(PAGE_MENU, pCurPage->u8FocusItem, 1 ); 
				
			}
			else if(eKeyType == MENU_DOWN)   
			{
				//������ʾ��ǰ��
				Show_Item(PAGE_MENU, pCurPage->u8FocusItem, 0 );

				//�����л�����һ��
				if(pCurPage->u8FocusItem < pCurPage->u8ItemCnt - 1)
					pCurPage->u8FocusItem ++;
				
				//������ʾ��һ��
				Show_Item(PAGE_MENU, pCurPage->u8FocusItem, 1 ); 		
			}
			else if(eKeyType == MENU_OK)   
			{
				//��ǰλ��ҳ��
				if(pCurPage->u8FocusItem == 0) 
				{
					//ָ�����תҳ�棬��֯����ʾ����
					pNextPage = &(tPage_Flow.aPage[PAGE_MENU_SETPARAM]);
					pNextPage->u8ParentPageId = tUIFsm.u8CurrentPage;

					tUIFsm.u8CurrentPage = PAGE_MENU_SETPARAM;
					Show_Page(PAGE_MENU_SETPARAM);
				}
				//��ǰλ��ҳ��
				else if(pCurPage->u8FocusItem == 1) 
				{
					//ָ�����תҳ�棬��֯����ʾ����
					pNextPage = &(tPage_Flow.aPage[PAGE_MENU_UPG]);
					pNextPage->u8ParentPageId = tUIFsm.u8CurrentPage;

					tUIFsm.u8CurrentPage = PAGE_MENU_UPG;
					Show_Page(PAGE_MENU_UPG);
				}
				//��ǰλ��ҳ��
				else if(pCurPage->u8FocusItem == 2) 
				{
					//ָ�����תҳ�棬��֯����ʾ����
					pNextPage = &(tPage_Flow.aPage[PAGE_MENU_COLABRAT]);
					pNextPage->u8ParentPageId = tUIFsm.u8CurrentPage;

					tUIFsm.u8CurrentPage = PAGE_MENU_COLABRAT;
					Show_Page(PAGE_MENU_COLABRAT);
				}
				//��ǰλ��ҳ��
				else if(pCurPage->u8FocusItem == 3) 
				{
					//ָ�����תҳ�棬��֯����ʾ����
					pNextPage = &(tPage_Flow.aPage[PAGE_MENU_ADVANCEDFUNC]);
					pNextPage->u8ParentPageId = tUIFsm.u8CurrentPage;

					tUIFsm.u8CurrentPage = PAGE_MENU_ADVANCEDFUNC;
					Show_Page(PAGE_MENU_ADVANCEDFUNC);
				}
				else {
				}
			}
			else if(eKeyType == MENU_BACK)   
			{
				tUIFsm.u8CurrentPage = pCurPage->u8ParentPageId;
				Show_Page(tUIFsm.u8CurrentPage);
			}
			
		}
		break;
	
	case	PAGE_MENU_COLABRAT:	//�궨
		
		if(eKeyType == KEY_FRONT)	
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_FRONT].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_FRONT;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_FRONT);
		}
		else if(eKeyType == KEY_LEFT)	
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_LEFT].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_LEFT;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_LEFT);
		}
		else if(eKeyType == KEY_RIGHT)	//ң������Ϣ:��Դ
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_RIGHT].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_RIGHT;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_RIGHT);
		}
		else if(eKeyType == KEY_REAR)	
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_REAR].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_REAR;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_REAR);
		}			
		else{
			if(eKeyType == MENU_UP)   
			{
				if(pCurPage->u8FocusItem == 0)
						break;
					
				//������ʾ��ǰ��
				Show_Item(PAGE_MENU_COLABRAT, pCurPage->u8FocusItem, 0 );
			
				//�����л�����һ��
				pCurPage->u8FocusItem --;
				
				//������ʾ��һ��
				Show_Item(PAGE_MENU_COLABRAT, pCurPage->u8FocusItem, 1 ); 
				
			}
			else if(eKeyType == MENU_DOWN)	 
			{
				//������ʾ��ǰ��
				Show_Item(PAGE_MENU_COLABRAT, pCurPage->u8FocusItem, 0 );
		
				//�����л�����һ��
				if(pCurPage->u8FocusItem < pCurPage->u8ItemCnt - 1)
						pCurPage->u8FocusItem ++;
				
				//������ʾ��һ��
				Show_Item(PAGE_MENU_COLABRAT, pCurPage->u8FocusItem, 1 ); 		
			}
			else if(eKeyType == MENU_OK)   
			{
				//�궨-д����ҳ��
				if(pCurPage->u8FocusItem == 0) 
				{


				}
				//�궨-ִ�б궨ҳ��
				else if(pCurPage->u8FocusItem == 1) 
				{


				}
			}
			else 	 
			{
			}
			
		}
		break;
		
	case	PAGE_MENU_UPG: //����
		
		if(eKeyType == KEY_FRONT)	
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_FRONT].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_FRONT;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_FRONT);
		}
		else if(eKeyType == KEY_LEFT)	
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_LEFT].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_LEFT;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_LEFT);
		}
		else if(eKeyType == KEY_RIGHT)	//ң������Ϣ:��Դ
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_RIGHT].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_RIGHT;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_RIGHT);
		}
		else if(eKeyType == KEY_REAR)	
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_REAR].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_REAR;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_REAR);
		}			
		else{
		}
		break;
		
	case	PAGE_MENU_ADVANCEDFUNC: //����
		
		if(eKeyType == KEY_FRONT)	
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_FRONT].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_FRONT;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_FRONT);
		}
		else if(eKeyType == KEY_LEFT)	
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_LEFT].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_LEFT;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_LEFT);
		}
		else if(eKeyType == KEY_RIGHT)	
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_RIGHT].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_RIGHT;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_RIGHT);
		}
		else if(eKeyType == KEY_REAR)	
		{
			//��¼��ҳ���
			tPage_Flow.aPage[PAGE_REAR].u8ParentPageId = PAGE_DEFAULT;
	
			//�޸���״̬����ǰҳ��Ϊ��ҳ��
			tUIFsm.u8CurrentPage = PAGE_REAR;
	
			//��ʾ��ҳ��
			Show_Page(PAGE_REAR);
		}			
		else{
		}
		break;
	default:
		break;
			
	}
}


/*!
 * ��ʾҳ��
 * \n
 *
 * @param u8PageType	ҳ������
 * \n
 * @see
 */
void	Show_Page(u8 u8PageType)
{
	volatile	u8	i = 0;
	
	tPAGE *pPage = NULL;

	//ҳ��Ϸ��Լ��
	if( u8PageType < PAGE_DEFAULT || u8PageType > PAGE_TYPE_END )
		return;

	//��������Դ����ݣ�����ɫ
//	memset(menu_Buf, 0xFF, 466*480*2);
//	BitBlt_Raw(WIN_START_X, WIN_START_Y, WIN_WITDTH, WIN_HEIGHT, 0, 0, menu_Buf);

	//�õ���ǰҳ��ָ��
	pPage = &(tPage_Flow.aPage[u8PageType]);

	//��ʾ��Ƶ����
	Show_View(pPage->eViewType);

	//��ʾ������
	if(pPage->eTitle != TITLE_NON)
	{
		Show_Title(pPage->eTitle);
	}

	//��������ҳ�棬��ʾ��Ŀ
	if( pPage->pItems != NULL )
	{
		for(i = 0; i <= 3; i++)
		{
			if(i == pPage->u8FocusItem && pPage->u8FocusItem != 0xFF)
			{
				Show_Item( u8PageType, i, 1 );
			}
			else
			{
				Show_Item( u8PageType, i, 0 );
			}
		}
	}


	//��ʾ��ť
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

    edmaWarpImgCpy4(myBopTaskCtxt.hEdma, (void *)(tpHandle.outputBuffer), (void *)(pFrom_VPSS_M3_TempCmdMsg->pPointer0),
		736*2, 480, 736*2, 736*2);//liuxu, 06/17/2014.
}

#if 0
/*!
 * ��ʾ��Ƶ����
 * \n
 *
 * @param eViewType
 * \n
 * @see
 */
void Show_View(eVIEWTYPE eViewType)
{
	//����ƴ����ʾ����Buffer��DMA�����ͽ���ʾ
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

#if 1
/*!
 * ��ʾ��ͼҳ��
 * \n
 *
 * @param pView		ͼ����
 * \n
 * @see
 */
void Show_View(eVIEWTYPE eViewType)
{
	switch(eViewType)
	{
	case	VIEW_FRONT:
		BitBlt(SUBVIEW_SYSTHESIS, (tREGION*)&(aViewRegion[SUBVIEW_SYSTHESIS]), VIDEO_BUF_SYNTHESIS);
		BitBlt(SUBVIEW_CAR, &aViewRegion[SUBVIEW_CAR], VIDEO_BUF_CAR);
		BitBlt(SUBVIEW_SINGLEVIEW, &aViewRegion[SUBVIEW_SINGLEVIEW], VIDEO_BUF_FRONT);
		BitBlt(SUBVIEW_TIPBAR, &aViewRegion[SUBVIEW_TIPBAR], VIDEO_BUF_TIPBAR);
		break;
	case	VIEW_FONT_FULL:
		BitBlt(SUBVIEW_FULLSCREEN, &aViewRegion[SUBVIEW_FULLSCREEN], VIDEO_BUF_FRONT);
		break;
	case	VIEW_LEFT:
		BitBlt(SUBVIEW_SYSTHESIS, &aViewRegion[SUBVIEW_SYSTHESIS], VIDEO_BUF_SYNTHESIS);
		BitBlt(SUBVIEW_CAR, &aViewRegion[SUBVIEW_CAR], VIDEO_BUF_CAR);
		BitBlt(SUBVIEW_SINGLEVIEW, &aViewRegion[SUBVIEW_SINGLEVIEW], VIDEO_BUF_LEFT);
		BitBlt(SUBVIEW_TIPBAR, &aViewRegion[SUBVIEW_TIPBAR], VIDEO_BUF_TIPBAR);
		break;
	case	VIEW_LEFT_FULL:
		BitBlt(SUBVIEW_FULLSCREEN, &aViewRegion[SUBVIEW_FULLSCREEN], VIDEO_BUF_LEFT);
		break;
	case	VIEW_RIGHT:
		BitBlt(SUBVIEW_SYSTHESIS, &aViewRegion[SUBVIEW_SYSTHESIS], VIDEO_BUF_SYNTHESIS);
		BitBlt(SUBVIEW_CAR, &aViewRegion[SUBVIEW_CAR], VIDEO_BUF_CAR);
		BitBlt(SUBVIEW_SINGLEVIEW, &aViewRegion[SUBVIEW_SINGLEVIEW], VIDEO_BUF_RIGHT);
		BitBlt(SUBVIEW_TIPBAR, &aViewRegion[SUBVIEW_TIPBAR], VIDEO_BUF_TIPBAR);
 		break;
	case	VIEW_RIGHT_FULL:
		BitBlt(SUBVIEW_FULLSCREEN, &aViewRegion[SUBVIEW_FULLSCREEN], VIDEO_BUF_RIGHT);
		break;
	case	VIEW_REAR:
		BitBlt(SUBVIEW_SYSTHESIS, &aViewRegion[SUBVIEW_SYSTHESIS], VIDEO_BUF_SYNTHESIS);
		BitBlt(SUBVIEW_CAR, &aViewRegion[SUBVIEW_CAR], VIDEO_BUF_CAR);
		BitBlt(SUBVIEW_SINGLEVIEW, &aViewRegion[SUBVIEW_SINGLEVIEW], VIDEO_BUF_REAR);
		BitBlt(SUBVIEW_TIPBAR, &aViewRegion[SUBVIEW_TIPBAR], VIDEO_BUF_TIPBAR);
		break;
	case	VIEW_REAR_FULL:
		BitBlt(SUBVIEW_FULLSCREEN, &aViewRegion[SUBVIEW_FULLSCREEN], VIDEO_BUF_REAR);
		break;
	case	VIEW_AllVIEW:
//		BitBlt(SUBVIEW_SPLIT_00, &aViewRegion[SUBVIEW_SPLIT_00], VIDEO_BUF_FRONT);
//		BitBlt(&aViewRegion[SUBVIEW_SPLIT_01], VIDEO_BUF_LEFT);
//		BitBlt(&aViewRegion[SUBVIEW_SPLIT_10], VIDEO_BUF_RIGHT);
//		BitBlt(&aViewRegion[SUBVIEW_SPLIT_11], VIDEO_BUF_REAR);
 		break;
	case	VIEW_MENU:
		BitBlt(SUBVIEW_SYSTHESIS, &aViewRegion[SUBVIEW_SYSTHESIS], VIDEO_BUF_SYNTHESIS);
		BitBlt(SUBVIEW_CAR, &aViewRegion[SUBVIEW_CAR], VIDEO_BUF_CAR);
		break;
	default:
		break;
	}
}
#endif


/*!
 * ��ʾ�б�
 * \n
 *
 * @param u8ItemIndex		�����
 * @param u8PageType		ҳ������
 * @param u8ShowType		����/������ʾ
 * \n
 * @see
 */
void	Show_Item(const u8 u8PageType, const u8 u8ItemIndex, u8 u8ShowType)
{
	tPAGE *pPage = NULL;
	tITEM	*ptItem;
	void *pSrc;
	tREGION tRegion;

	//�õ���ǰҳ��ָ��
	pPage = &(tPage_Flow.aPage[u8PageType]);

	ptItem = &pPage->pItems[u8ItemIndex];
	if(ptItem == NULL)
		return;

	//�ж���ʾ����
	if(u8ShowType == 0)
		pSrc = (void*)aItem_YUV[ptItem->eItemType].pSrc_Normal;
	else
		pSrc = (void*)aItem_YUV[ptItem->eItemType].pSrc_Hilight;

	//������ʾλ��ˢ�µ��Դ�
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
	 * ��ʾ����
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

	/*!
	 * ����ǽ������Ҫ�������ʾ��ʾ��ͷ
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

	/*!
	 * �����ִ�н��������Ҫ��ʾ���״̬ͼ��
	 *
	 */
	if(ptItem->u8Ret != RET_UNKOWN)
	{
		if(ptItem->u8Ret == RET_OK)
		{
			pSrc = yuv_ret_ok_yuv;
		}
		if(ptItem->u8Ret == RET_FAIL)
		{
			pSrc = yuv_ret_err_yuv;
		}
	
		tRegion.win_startX = ITEM_RET_START_X;
		tRegion.crop_startY = ITEM_RET_START_Y(u8ItemIndex);
		tRegion.win_Width = ITEM_RET_WIDTH;
		tRegion.win_Height = ITEM_RET_HEIGHT;
		tRegion.crop_startX = 0;
		tRegion.crop_startY = 0;
		
//		BitBlt(SUBVIEW_MENU, &tRegion, pSrc); 

		BitBlt_Raw(ITEM_RET_START_X, 
					ITEM_RET_START_Y(u8ItemIndex),
					ITEM_RET_WIDTH,	
					ITEM_RET_HEIGHT,
					0,
					0, 
					pSrc);
	}
}


/*!
 * ��ʾ������
 * \n
 *
 * \n
 * @see
 */
void Show_Title(eTITLE eTitle)
{
//	tREGION tRegion;

	//ˢ�º�ɫ����
	BitBlt_Raw(270, 0, 736-270, 480, 0,0, menu_Buf);

	//��ʾ������
	BitBlt_Raw(TITLE_WIN_START_X,TITLE_WIN_START_Y,
				aTitle_YUV[eTitle].width, aTitle_YUV[eTitle].height, 0,0,
				aTitle_YUV[eTitle].pSrc);

	//����ʾ�ָ���
	BitBlt_Raw(SEP_START_X,SEP_START_Y,SEP_WIDTH,SEP_HEIGHT,0,0,yuv_sep_yuv);
}



/*!
 * ��ʾ�����ύ����ʾ����
 * \n
 *
 * @param pSrc
 * @param tRegion
 * \n
 * @see
 */
void	BitBlt(eSUBVIEW eSubView, tREGION *ptRegion, void *pSrc)
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
	//window 1: single camera view
	else if(eSubView == SUBVIEW_SINGLEVIEW) {
		//window 1: single camera view
		edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
			(void *)(pSrc + 736 * 2 * ptRegion->crop_startY + ptRegion->crop_startX * 2),
			(void *)(tpHandle.outputBuffer + ptRegion->win_startX * 2 + 736 * 2 * ptRegion->win_startY),
			ptRegion->win_Width *2, ptRegion->win_Height, 736*2, 736*2);//liuxu, 06/19/2014, single view in output buffer first.
	}
	else if(eSubView == SUBVIEW_FULLSCREEN) {
		edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
			(void *)(pSrc + 736 * 2 * ptRegion->crop_startY + ptRegion->crop_startX * 2),
			(void *)(tpHandle.outputBuffer + ptRegion->win_startX * 2 + 736 * 2 * ptRegion->win_startY),
			ptRegion->win_Width *2, ptRegion->win_Height, 736*2, 736*2);//liuxu, 06/19/2014, single view in output buffer first.
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
 * ԭʼ��ʽˢ���Դ�
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
 * ��ʾ��ť
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

#endif




/*******************************************************************************
 *                           Function Declaration                              *
 ******************************************************************************/

//void InitParams(SV_Global_CreationParamsStruct* svGlobalCP, TPstruct* tp);
//void ProcessArgs(int argc, char *argv[], TPstruct* tp);
//void SaveToneCurve(TPstruct *tp, svPAlignStruct *sv);
//void edmaWarpImgCpy4(EDMA3_DRV_Handle hEdma, void *srcBuf, void *dstBuf, Uint32 width, Uint32 height, Uint32 user_srcbidx, Uint32 user_desbidx)//liuxu, 02/13/2014.

void TI_dsp_Processing(UArg arg0, UArg arg1);//liuxu, 01/22/2014, China port.
int main(void);
Void dspAppTask(UArg arg0, UArg arg1);


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

#if 1
static void layoutChange(int layoutid, cfg4Pointers_t *pFrom_VPSS_M3_TempCmdMsg)
{
//		static int curLayoutId = MSG_FRONT;

		pVideoBuf_Synthesis = tpHandle.synthesisBuffer;

		pVideoBuf_Front = pFrom_VPSS_M3_TempCmdMsg->pPointer0;  ///ǰ��
		pVideoBuf_Left = pFrom_VPSS_M3_TempCmdMsg->pPointer1;	///����
		pVideoBuf_Right = pFrom_VPSS_M3_TempCmdMsg->pPointer2;	///����
		pVideoBuf_Rear = pFrom_VPSS_M3_TempCmdMsg->pPointer3;	///����

		switch(layoutid) {
			case	0:
				tUIFsm.u8CurrentPage = PAGE_FRONT;
				break;
			case	1:
				tUIFsm.u8CurrentPage = PAGE_LEFT;
				break;
			case	2:
				tUIFsm.u8CurrentPage = PAGE_RIGHT;
				break;
			case	3:
				tUIFsm.u8CurrentPage = PAGE_REAR;
				break;
			case	4:
				tUIFsm.u8CurrentPage = PAGE_MENU;
				break;
			default:
				break;
		}

}
#endif

#if 0
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
/*
	���沼��˵����
	curLayoutId     ����
	0				ȫ��+ǰ��
	1				ȫ��+����
	2				ȫ��+����
	3				����
	4				ǰ��
	5				����
	6 				����
	7				��·��Ƶ
*/

	/*
	 *  srcBuf[0] �������ͼ��ȫ��
	 *  srcBuf[1]��������ͼ
	 *  srcBuf[2]��������ͼ������
	 *  srcBuf[3]��������ͼ����ʾ��
	 */
	static int curLayoutId = MSG_FRONT;
	srcBuf[0] = tpHandle.synthesisBuffer;
	//update srcBuf
	if((curLayoutId == MSG_FRONT) || (curLayoutId == MSG_FRONT_FULLVIEW)) {
/*
		srcBuf[1] = memRearCamAfterFishEyeCorrection;
		//srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer0;
*/
		srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer0;  ///ǰ��
	}
	else if((curLayoutId == MSG_RIGHT) || (curLayoutId == MSG_RIGHT_FULLVIEW))	srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer2;	///����
	else if((curLayoutId == MSG_LEFT) || (curLayoutId == MSG_LEFT_FULLVIEW))	srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer1;	///����
	else if(curLayoutId == MSG_REAR) 		srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer3;	///����
	else		srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer0;	///ǰ��


#if 0  ///gzd, add channel
	if(curLayoutId == 0){
/*
		srcBuf[1] = memRearCamAfterFishEyeCorrection;
		//srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer0;
*/
		srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer0;
	}
	else if(curLayoutId == 1)		srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer1;
	else if(curLayoutId == 2)		srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer2;
	else if(curLayoutId == 3)		srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer3;
	else		srcBuf[1] = pFrom_VPSS_M3_TempCmdMsg->pPointer0;
#endif

	srcBuf[2] = yuv_car_yuv;//Carbox_80_240;
	srcBuf[3] = OSD_400_224;


	/*
	 * test
	 */
/*

	srcBuf[4] = title_yuv;//capture3_yuv;
	srcBuf[5] = yuv_sep_yuv;
	srcBuf[6] = step1_yuv;
	srcBuf[7] = s2_yuv;
	srcBuf[8] = s3_yuv;

*/


	if(curLayoutId == layoutid)
		return;
	else{
		curLayoutId = layoutid;
		memset((void *)tpHandle.outputBuffer, 0x00, 736*480*2);
	}

//	gzd, 20150415,�ü���λ�ü���С����Ҫ����ʵ��Ч������
	System_printf(" [DSP]: view curLayoutId = %d ", curLayoutId);


#if 0
	if(curLayoutId == MSG_FRONT) {
//		memset((void *)tpHandle.outputBuffer, 0x19, 736*480*2);
//		memset((void *)menu_Buf, 0x10, 466*480*2);
//		ǰ����ͷȫ����ʾ
		//synthesis image
		win_startX[0] = 0,win_startY[0] = 0,win_Width[0] = 320,win_Height[0] = 480;
		crop_startX[0] = 24, crop_startY[0] = 0;
		//single camera view
		win_startX[1] = 270, win_startY[1] = 0,win_Width[1] = 736 - 270,win_Height[1] = 480;
		crop_startX[1] = 90, crop_startY[1] = 60;
		//car box
		win_startX[2] = 120 + win_startX[0] - crop_startX[0], win_startY[2] = 120,win_Width[2] = 80,win_Height[2] = 240;
		crop_startX[2] = 0, crop_startY[2] = 0;

		//�Զ�����棬400*80
		win_startX[4] = 270,win_startY[4] = 0,win_Width[4] = 132,win_Height[4] = 60;
			crop_startX[4] = 0, crop_startY[4] = 0;

		win_startX[5] = 270,win_startY[5] = 61, win_Width[5] = 736 - 270,win_Height[5] = 7;
		crop_startX[5] = 0, crop_startY[5] = 0;

		win_startX[6] = 270 + 50,win_startY[6] = 100,win_Width[6] = 322,win_Height[6] = 48;
		crop_startX[6] = 0, crop_startY[6] = 0;

		win_startX[7] = 270 + 50,win_startY[7] = 170,win_Width[7] = 322,win_Height[7] = 48;
		crop_startX[7] = 0, crop_startY[7] = 0;

		win_startX[8] = 270 + 50,win_startY[8] = 240,win_Width[8] = 322,win_Height[8] = 48;
		crop_startX[8] = 0, crop_startY[8] = 0;
//		//����
		win_startX[9] = 270,win_startY[9] = 0,win_Width[9] = 736 - 270,win_Height[9] = 480;
		crop_startX[9] = 0, crop_startY[9] = 0;

//			win_startX[4] = 200,win_startY[4] = 10,win_Width[4] = 358,win_Height[4] = 56;
//				crop_startX[4] = 0, crop_startY[4] = 0;
		//���Գ���
//		win_startX[4] = 200,win_startY[4] = 200,win_Width[4] = 80,win_Height[4] = 240;
//		crop_startX[4] = 0, crop_startY[4] = 0;


	}
#else

	if(curLayoutId == MSG_FRONT)	{
//ȫ��+ǰ��
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
/**
		//synthesis image ȫ��
		win_startX[0] = 0,win_startY[0] = 0,win_Width[0] = 320,win_Height[0] = 480;
		crop_startX[0] = 0, crop_startY[0] = 0;  //ԭʼͼ��ü���ʼλ��
		//single camera view
		win_startX[1] = 320, win_startY[1] = 0,win_Width[1] = 736 - 320,win_Height[1] = 400;
		crop_startX[1] = 160, crop_startY[1] = 40;
		//car box
		win_startX[2] = 120 + win_startX[0], win_startY[2] = 120,win_Width[2] = 80,win_Height[2] = 240;
		crop_startX[2] = 0, crop_startY[2] = 0;
		//OSD
		win_startX[3] = 320, win_startY[3] = 400,win_Width[3] = 400,win_Height[3] = 80;
		crop_startX[3] = 40, crop_startY[3] = 0;
**/
/*
        	ȫ��ͼƬ   |	����ͼ
                  | ��������
                  | TI logo,height=80
*/
	}
#endif
	else if(curLayoutId == MSG_LEFT) {
		//ȫ��+����
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

/*
		  ȫ��ͼƬ   |	����ͼ
				  | ��������
				  | TI logo,height=80
*/
	} else if(curLayoutId == MSG_RIGHT) {
//		ȫ��+����
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
/*
			ȫ��ͼƬ   |	����ͼ
				  | ��������
				  | TI logo,height=80
*/
	} else if(curLayoutId == MSG_REAR) {
///�������ӵ�����ͷȫ����
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

	}
	else if(curLayoutId == MSG_FRONT_FULLVIEW) {
//		ǰ����ͷȫ����ʾ
		//synthesis image
		win_startX[0] = 0,win_startY[0] = 0,win_Width[0] = 0,win_Height[0] = 0;
		crop_startX[0] = 0, crop_startY[0] = 0;
		//single camera view
		win_startX[1] = 0, win_startY[1] = 0,win_Width[1] = 736,win_Height[1] = 480;
		crop_startX[1] = 0, crop_startY[1] = 0;
		//car box
		win_startX[2] = 0, win_startY[2] = 0,win_Width[2] = 0,win_Height[2] = 0;
		crop_startX[2] = 0, crop_startY[2] = 0;
		//OSD
		win_startX[3] = 0, win_startY[3] = 0,win_Width[3] = 0,win_Height[3] = 0;
		crop_startX[3] = 0, crop_startY[3] = 0;

	}
	else if(curLayoutId == MSG_LEFT_FULLVIEW) {
//		������ͷȫ����ʾ
	//synthesis image
		win_startX[0] = 0,win_startY[0] = 0,win_Width[0] = 0,win_Height[0] = 0;
		crop_startX[0] = 0, crop_startY[0] = 0;
		//single camera view
		win_startX[1] = 0, win_startY[1] = 0,win_Width[1] = 736,win_Height[1] = 480;
		crop_startX[1] = 0, crop_startY[1] = 0;
		//car box
		win_startX[2] = 0, win_startY[2] = 0,win_Width[2] = 0,win_Height[2] = 0;
		crop_startX[2] = 0, crop_startY[2] = 0;
		//OSD
		win_startX[3] = 0, win_startY[3] = 0,win_Width[3] = 0,win_Height[3] = 0;
		crop_startX[3] = 0, crop_startY[3] = 0;
	}
	else if(curLayoutId == MSG_RIGHT_FULLVIEW) {
//����ȫ��
		//synthesis image
		win_startX[0] = 0,win_startY[0] = 0,win_Width[0] = 0,win_Height[0] = 0;
		crop_startX[0] = 0, crop_startY[0] = 0;
		//single camera view
		win_startX[1] = 0, win_startY[1] = 0,win_Width[1] = 736,win_Height[1] = 480;
		crop_startX[1] = 0, crop_startY[1] = 0;
		//car box
		win_startX[2] = 0, win_startY[2] = 0,win_Width[2] = 0,win_Height[2] = 0;
		crop_startX[2] = 0, crop_startY[2] = 0;
		//OSD
		win_startX[3] = 0, win_startY[3] = 0,win_Width[3] = 0,win_Height[3] = 0;
		crop_startX[3] = 0, crop_startY[3] = 0;
	}
	else if(curLayoutId == MSG_ALLVIEW) {
///��·����ͷͬʱ��ʾ
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
	else {
		System_printf("error! unknown cmd %d", curLayoutId);
	}

}
#endif


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
    cmdQParams_t* pA8TaskCmdQ = NULL_VALUE;

    cfg8Pointers_t *pDSP_To_A8_TempCmdMsg_intask = NULL_VALUE; 
    int nStatus;
    ERRORTYPE nRetVal = ecNone;
    MessageQ_Msg pTempCmdMsg_intask = NULL_VALUE;
    uint16_t nSRId_intask = 0u;
    SharedRegion_SRPtr srPtr_intask = {0u};
    cfg4Pointers_t *pFrom_A8_TempCmdMsg_intask = NULL_VALUE;

    RemoteDebug_init();//liuxu, 04/22/2014, add remote debug support to A8 console.

#ifdef TWO_TASKS_SLEEP
    Task_sleep(1000u*10000);//liuxu, 12/1/2013, don't drain the CPU here.
#endif    

    MEM_ALLOC(pA8TaskCmdQ, cmdQParams_t);//liuxu, 11/20/2013, let it comes from heap for IPC.
    System_printf("[C674x]: liuxu, pA8TaskCmdQ from system heap is 0x%x\n", pA8TaskCmdQ);

    /*
     * �����Ϣ������DSP������ӵ������DSP
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

#ifdef TI_DSP_ALG//liuxu, 02/11/2014, ti dsp processing...

#ifndef YUV422i
??
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
            /*
             * DSP����·��Ƶ֡����ָ���������Ϣ����͸�A8
             */
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

            /*
             * DSPѭ������A8��Ϣ�����ﴫ������Ϣ����ȡ�û������л���������ChInfoFromA8ֵ
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

            if( (pFrom_A8_TempCmdMsg_intask->cmdType >> 16) != 0x666)//liuxu, 06/19/2014, RISK...Be careful for rev mapping.
            {
                System_printf("\nliuxu,  pFrom_A8_TempCmdMsg_intask->cmdType != 0x666, is 0x%x\n", pFrom_A8_TempCmdMsg_intask->cmdType);
                while(1){;}
            }

            mutualTaskCmdMsg.cmdType = 0;
            mutualTaskCmdMsg.pY_Pointer0 = NULL;

            ChInfoFromA8 = (pFrom_A8_TempCmdMsg_intask->cmdType & 0xFFFF);//liuxu, 06/19/2014, add info channel among of A8 to DSP/M3.
            tUIFsm.u8PendingCommand = ChInfoFromA8;
        } else  {
            Task_sleep(1u);
        }
    }
}

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
		 * ����ͨ���߳�
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
//fix by gzd. �ĳ�ȫ�ֱ���
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
//        ����ͨ���߳�
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
//        ��������洢��
        nRetVal = initSharedRegion(); //liuxu, DSP is the owner of share region.
        if (nRetVal != ecNone)  {
            System_printf("\n%s: %d: DSP LITE as HOST initSharedRegion failed. \n", __FUNCTION__, __LINE__);
            System_abort("\n DSP LITE as HOST initSharedRegion failed.\n");
        }
        System_printf("[C674x]: DSP and Video-M3 attach is done\n");

//        �ȴ����ѣ��ڸ��ŵ�slaves
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

		//��ʼ��ҳ��
        UI_Init();

         /*determine which layout to use at the first time*/
        layoutChange(0, pFrom_VPSS_M3_TempCmdMsg);

		//��ʾĬ��ҳ��
//		Show_Page(tUIFsm.u8CurrentPage);

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
//            �ȴ�2Dȫ���㷨������ɣ�����ƴ�ӻ������
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


            layoutChange(ChInfoFromA8,pFrom_VPSS_M3_TempCmdMsg);//���沼���л��Ļ����������沼��
///- gzd            if(ChInfoFromA8 == 4) {
///-gzd             	InfoSwmsLayout = 4;
///+gzd ԭ���ǰ������� = 4ʱ��ͬʱ��ʾ��·�����ڸ�Ϊ������7�ΰ��£�Ҳ�������һ�����棬����·ͬʱ��ʾ
            if(ChInfoFromA8 == 7) {
                 	InfoSwmsLayout = 4;
                //edmaWarpImgCpy4(myBopTaskCtxt.hEdma, (void *)(pFrom_VPSS_M3_TempCmdMsg->pPointer3), (void *)(tpHandle.outputBuffer+320*2), 416*2, 480, 736*2, 736*2);//liuxu, 06/19/2014, single view in output buffer first.
                //edmaWarpImgCpy4(myBopTaskCtxt.hEdma, (void *)(tpHandle.outputBuffer), (void *)(pFrom_VPSS_M3_TempCmdMsg->pPointer0), 736*2, 480, 736*2, 736*2);//liuxu, 06/17/2014.
            } else {
            	/*invalidate cache before edma copy from memory to memory*/
            	INVALIDATE_DSP_CACHE();


/*
 * �Զ��������
 */

#if 1
				Show_Page(tUIFsm.u8CurrentPage);
				UI_Key_Process();
//				Show_Title(TITLE_MENU);

//				Show_View(VIEW_FRONT);
//edmaWarpImgCpy4(myBopTaskCtxt.hEdma, (void *)(tpHandle.outputBuffer), (void *)(pFrom_VPSS_M3_TempCmdMsg->pPointer0),
//		736*2, 480, 736*2, 736*2);//liuxu, 06/17/2014.



//				if(tUIFsm.u8PendingCommand != 0xFF) {
//					UI_Key_Process(tUIFsm.u8PendingCommand);
//					tUIFsm.u8PendingCommand = 0xFF;
//				}
#endif

#if 0
            	//����ƴ����ʾ����Buffer��DMA�����ͽ���ʾ
            	//window 0 : synthesis view
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
                		(void *)(srcBuf[2] 	+ 736 * 2 * crop_startY[2] + crop_startX[2] * 2),
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

#if 0
              //window 4: �Զ������
                if(win_Width[4] != 0 && win_Height[4] != 0){
//            		memset((void *)tpHandle.outputBuffer, 0x80, 736*480*2); //����ɫ������ǻ�ɫ������

                    edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
                		(void *)(menu_Buf + 736 * 2 * crop_startY[9] + crop_startX[9] * 2),
                		(void *)(tpHandle.outputBuffer + win_startX[9] * 2 + 736 * 2 * win_startY[9] ),
                		win_Width[9] * 2, win_Height[9], win_Width[9]*2, 736*2);//liuxu, 06/17/2014.

                    edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
                		(void *)(srcBuf[4] + 736 * 2 * crop_startY[4] + crop_startX[4] * 2),
                		(void *)(tpHandle.outputBuffer + win_startX[4] * 2 + 736 * 2 * win_startY[4] ),
                		win_Width[4] * 2, win_Height[4], win_Width[4]*2, 736*2);//liuxu, 06/17/2014.

            		edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
                		(void *)(srcBuf[5] + 736 * 2 * crop_startY[5] + crop_startX[5] * 2),
                		(void *)(tpHandle.outputBuffer + win_startX[5] * 2 + 736 * 2 * win_startY[5] ),
                		win_Width[5] * 2, win_Height[5], win_Width[5]*2, 736*2);//liuxu, 06/17/2014.

            		edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
                		(void *)(srcBuf[6] + 736 * 2 * crop_startY[6] + crop_startX[6] * 2),
                		(void *)(tpHandle.outputBuffer + win_startX[6] * 2 + 736 * 2 * win_startY[6] ),
                		win_Width[6] * 2, win_Height[4], win_Width[6]*2, 736*2);//liuxu, 06/17/2014.

            		edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
                		(void *)(srcBuf[7] + 736 * 2 * crop_startY[7] + crop_startX[7] * 2),
                		(void *)(tpHandle.outputBuffer + win_startX[7] * 2 + 736 * 2 * win_startY[7] ),
                		win_Width[7] * 2, win_Height[7], win_Width[7]*2, 736*2);//liuxu, 06/17/2014.

            		edmaWarpImgCpy4(myBopTaskCtxt.hEdma,
                		(void *)(srcBuf[8] + 736 * 2 * crop_startY[8] + crop_startX[8] * 2),
                		(void *)(tpHandle.outputBuffer + win_startX[8] * 2 + 736 * 2 * win_startY[8] ),
                		win_Width[8] * 2, win_Height[8], win_Width[8]*2, 736*2);//liuxu, 06/17/2014.
               }
#endif
                edmaWarpImgCpy4(myBopTaskCtxt.hEdma, (void *)(tpHandle.outputBuffer), (void *)(pFrom_VPSS_M3_TempCmdMsg->pPointer0),
                		736*2, 480, 736*2, 736*2);//liuxu, 06/17/2014.

#endif
                InfoSwmsLayout = 0;
            }
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
            //System_printf("\nliuxu, 111--02/12/2014, mutualTaskCmdMsg.pY_Pointer0 == 0x%x\n", mutualTaskCmdMsg.pY_Pointer0);//liuxu, 11/20/2013, dsp print could make the flow very slow. 

#endif

#ifdef FG_DEMO
??
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

	/*
	 * ���ó���ͼ��ߴ�
	 */
	ti_srv_control_static(GA_S_CARBOX_SIZE_H, 240, NULL );
	ti_srv_control_static(GA_S_CARBOX_SIZE_W, 80, NULL ); //
	/*
	 * ���ý���
	 * Set focal length in pixel unit which will be also used in Math model,
	 * default value is 255. Typically get it from lens vendor or estimation.
	 */
	ti_srv_control_static(GA_S_FOCAL_LENGTH, 247, NULL );
	/*
	 * ���û������
	 * Set the width of blending region in pixel unit, blending will smooth the transition between two regions.
	 * but will introduce ghosting in blended area.
	 */
	ti_srv_control_static(SYNT_S_BLENDING_LENGTH, 25, NULL ); //127
	/*
	 * ����ˮƽ��ת�Ƕ�
	 * Adjust the rotation angle of synthesis seam, to avoid selecting images from lens edge which
	 * will have bad quality(low resolution).
	 */
	ti_srv_control_static(SYNT_S_SEAM_HORIZONTAL_SHIFT, -70, NULL ); //-100
	/*
	 * ����˫���Բ�ֵ
	 * Enable Bilinear interpolation features during synthesis process,
	 * which will cause the ti_srv_create takes longer time to initialize the Bilinear coefficient table,
	 * only make performance degrade in run time, which means sProcessFunc takes longer time as well.
	 */
	ti_srv_control_static(SYNT_S_BILINEAR_INTERPOLATION, 2, NULL); //select 2 Enable Bilinear Intepolation
	/*
	 * equisolid model ��ʵ��ģ��
	 * Set math model which mostly matches the lens, by default,value 0 indicate that equisolid model is used,
	 */
	ti_srv_control_static(GA_S_SELECTLENSMODEL, 0, VendorLUTin ); //select 0 which means default equisolid model

	/* call create at the first time to initialize Library*/
//	��ʼ��TI�㷨��
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

	/* main process block*/
	while(1) {
        if(ToProcessOneSet)   {
            ToProcessOneSet = 0;
            flagGASuccess = 0;

            //long push of trigger button
            /*	��鳤����־�������־����A8��������λ�����õ�
             *  L1653 *((unsigned int *)(coreObjVirtBaseAddr2 + 0x888)) = 0x88888888;
             *  MATLAB���ɵ�DSP_Persmat.dat�ļ�������SD����A8�����ȡ���ļ������ù����ڴ棬��DSP���ʣ�
             *  A8ͬʱ���ó�������־����DSP��ѯ���
             */
            if(*(unsigned int*)0x80000888 == 0x88888888 )
            {
            	/* in case of calibration for 4 cameras give 1,
            	 * inc case of calibration for 3 cameras(L,R,B), give 2
            	*/
            	/*
            	 * trigger Geometric alignment process.
            	 */
            	ti_srv_control_dynnamic(GA_S_TRIGGER, 1, NULL);

            	/*check 0x80000000, see if app_host put permatrix here*/
            	if(bPersmatSrc == PERSMAT_DDR &&  ( *(unsigned int *)0x80000000 ) != 0xFFFFFFFF  )//liuxu, 04/24/2014, dump the memory snapshot of sv->persmat.
            	{
            		Vps_rprintf("[Alg_GeometricAlignmentProcess]copy from DDR 0x80000000");
            		///+ gzd���˴���DSP_Persmat.dat����144�ֽڲ������ݣ��������ļ���С
            		memcpy((void *)inpersmatPtr, (void *) 0x80000000, 4*9*4);//liuxu, 04/24/2014, updated from A8 FS.

            	}

        		*(unsigned int*)0x80000888 = 0x0;
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

               	    /*
               	     * Get Matched features in overlapped region, GA may fail if features found in two neighbor
               	     * region is not enough.The order of Four values is region 1, region 0, region 3, region 2.
               	     */
             		ti_srv_control_dynnamic(GA_G_GETMATCHES, 0, get_value);
             		Vps_rprintf("[ti_srv_process] GAFlag:%d 2_1reg1:%d 1_0reg0:%d 0_3reg3:%d 3_2reg2:%d",
             				flagGASuccess,get_value[0], get_value[1],get_value[2], get_value[3]);


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

