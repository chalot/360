/*
 * Copyright (c) 2012, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/*
 *  ======== main_host.c ========
 *
 */

/* cstdlib header files */
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>//liuxu, 12/19/2013.

//liuxu, 8/21/2013, for mpeg4 encoder.
#define IVI_GETTIME		// enable IviGetTime() in IviTypedef.h
#include <math.h>
#include <time.h>
#include <string.h>

#include "IviTypedef.h"//liuxu, 02/12/2014, for "IviGetTime()".

//#define LEGACY_MAIN   ///原来的main
#define NEW_MAIN
//#define INPUT_PAR "MP4Enc.cfg"
//#define MPEG4_ENCODER//liuxu, 8/21/2013, enable this mpeg4 encoder function.

#ifdef MPEG4_ENCODER
#include <pthread.h>//liuxu, 12/19/2013, creat a seperated thread for mpeg4 encoding.
#include "MP4VEncSP.h"
#include "ParaParser.h"
#include "IviTypedef.h"
#include "IviReturn.h"
#endif 
/* package header files */
#include <ti/syslink/Std.h>     /* must be first */
#include <ti/syslink/IpcHost.h>
#include <ti/syslink/SysLink.h>

#include <ti/ipc/MultiProc.h>

#include <ti/ipc/HeapBufMP.h>//liuxu, 8/20/2013.
#include <ti/ipc/MessageQ.h>//liuxu, 8/20/2013.
//#include <xdc/runtime/IHeap.h>
#include <ti/ipc/SharedRegion.h> 
#include <ti/syslink/utils/Cache.h>//liuxu, 8/20/2013.
#include <ti/syslink/utils/IHeap.h>//liuxu, 8/20/2013.

#define SYSLINK_TRACE_ENABLE//liuxu, 8/19/2013.

#include <ti/syslink/utils/Trace.h>//liuxu, 8/19/2013.

/* local header files */
#include "App.h"

//#define CARIT_KEY			///使用开发板按键
#define A8_MCU_COMM_UART  	///+ gzd, 20150520 核心板与底板通信串口


#ifdef CARIT_KEY
	static void CaritBoardKeyProc(void);
	int CreateCaritKeyboardProcThread(void);

	static pthread_t keyProc_threadid;
	static int fd_gpio = 0;
#endif

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
	KEY_END,

	KEY_UNKNOWN = 0xFF	//未知
} eKEYTYPE;

typedef enum _eMSG_TYPE {
	MSG_FRONT = 0,		/*方向前*/
	MSG_FRONT_FULLVIEW,	/*方向前-全屏*/
	MSG_LEFT,			/*方向左，实测是右摄像头图像*/
	MSG_LEFT_FULLVIEW,	/*方向左-全屏*/
	MSG_RIGHT,   		/*方向右，，实测是右摄像头图像*/
	MSG_RIGHT_FULLVIEW,	/*方向右-全屏*/
	MSG_REAR,			/*倒车*/
	MSG_ALLVIEW,		/*四路视频同时显示*/
	MSG_SNAPSHOT,		/*标定-摄像头拍照*/
	MSG_SNAPSHOT_OK,	/*标定-摄像头拍照，成功*/
	MSG_SNAPSHOT_ERR,	/*标定-摄像头拍照，失败*/
	MSG_CALIBRATING,	/*标定-读取标定参数送给DSP*/
	MSG_CALIBRATING_OK,	/*标定-读取标定参数送给DSP*/
	MSG_CALIBRATING_ERR,	/*标定-读取标定参数送给DSP*/

	MSG_SLEEP,			/*休眠*/

	MSG_MENU_POWER,			/*菜单消息：电源*/
	MSG_MENU_RETURN,		/*菜单消息：返回*/
	MSG_MENU_LEFT_VIEW,		/*菜单消息：左视*/
	MSG_MENU_RIGHT_VIEW,	/*菜单消息：右视*/
	MSG_MENU_FRONT_VIEW,	/*菜单消息：前视*/
	MSG_MENU_REAR_VIEW,		/*菜单消息：后视*/
	MSG_MENU_UP,			/*菜单消息：上*/
	MSG_MENU_DOWN,			/*菜单消息：下*/
	MSG_MENU_LEFT,			/*菜单消息：左*/
	MSG_MENU_RIGHT,			/*菜单消息：右*/
	MSG_MENU_OK				/*菜单消息：确定*/

} eMSG_TYPE;


#ifdef A8_MCU_COMM_UART
#include <termios.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <termios.h>
#include <errno.h>
#include <pthread.h>


#define DEVICE "/dev/ttyO1"  ///核心板与底板通信串口，UART2

static int COMM_CreateTask(void);

#endif ///#ifdef A8_MCU_COMM_UART


static int TakeCalibrating(void);
static int TakeSnapshot(void);



//disable, gzd
#define GFX_CUBE//liuxu, 8/28/2013, enable GFX demo, which should be enabled exclusively with MP4 encoder.

//#include <sys/ioctl.h>
////#include <fcntl.h>//liuxu, 12/19/2013, move to outside.
//#include <sys/mman.h>
//#include <unistd.h>
//#include <getopt.h>
//#include <signal.h>
//#include <sys/time.h>
//#include <bc_cat.h>
//#include "common.h"

#ifdef GFX_CUBE
#include <sys/ioctl.h>
//#include <fcntl.h>//liuxu, 12/19/2013, move to outside.
#include <sys/mman.h>
#include <unistd.h>
#include <getopt.h>
#include <signal.h>
#include <sys/time.h>
#include <bc_cat.h>
#include "common.h"

// + a0220402, add support carit board key
#define CONFIG_CARIT
// - a0220402,

#define NO_MEMCPY//liuxu, 10/10/2013.

#ifdef NO_MEMCPY

#if 0//liuxu, 10/12/2013, option 1, 4 frames are combined to one big texture buffer.
#define FRAME_WIDTH     736*2
#define FRAME_HEIGHT    480*2
#define FRAME_SIZE      736*480*6//liuxu, 9/7/2013. (FRAME_WIDTH * FRAME_HEIGHT * 1.5)
#define MAX_FRAMES      6
#define YUV_PIXEL_FMT   BC_PIX_FMT_NV12
#define MAX_BUFFERS     6
#else //liuxu, 10/12/2013, option 2, use one of 4 frames to constitute to a texture buffer at size of 736x480x1.5 for YUV420.
#define FRAME_WIDTH     736
#define FRAME_HEIGHT    480
#define FRAME_SIZE      736*480*3/2//liuxu, 9/7/2013. (FRAME_WIDTH * FRAME_HEIGHT * 1.5)

#ifdef TI_DSP_PROCESSING
#define MAX_FRAMES      25//liuxu, 02/12/2014, add one for outputbuf of ti dsp. 
#define YUV_PIXEL_FMT   BC_PIX_FMT_NV12
#define MAX_BUFFERS     25
#else
#define MAX_FRAMES      24//liuxu, 10/18/2013.
#define YUV_PIXEL_FMT   BC_PIX_FMT_NV12
#define MAX_BUFFERS     24//liuxu, 10/18/2013.
#endif

#define InterChannelIndexOffset 6//liuxu, 10/18/2013, to support 4 channels.

#define M3_FRAMEBUFFER_PA_0 0x83c6c0c0//liuxu, 02/12/2014. //liuxu, 11/19/2013, this would change when frame buffer memory map changes at M3 side.
#define M3_FRAMEBUFFER_PA_1 0x83e718c0
#define M3_FRAMEBUFFER_PA_2 0x840770c0
#define M3_FRAMEBUFFER_PA_3 0x8427c8c0
#define M3_FRAMEBUFFER_PA_4 0x844820c0
#define M3_FRAMEBUFFER_PA_5 0x846878c0//liuxu, 02/12/2014. 

#endif

#else
#define FRAME_WIDTH     720
#define FRAME_HEIGHT    480
#define FRAME_SIZE      518400//liuxu, 9/7/2013. (FRAME_WIDTH * FRAME_HEIGHT * 1.5)
#define MAX_FRAMES      3//liuxu, 9/7/2013, help to deal with low mem???
#define YUV_PIXEL_FMT   BC_PIX_FMT_NV12
#define MAX_BUFFERS     3

#define InterChannelIndexOffset 6//liuxu, 10/18/2013, to support 4 channels.
#endif


static char *frame[MAX_FRAMES];
static char *yuv_data = NULL;
static int   fr_idx = 0;
static int   bcdev_id = 0;
static tex_buffer_info_t buf_info;

int frame_init(bc_buf_params_t *p)
{
    int   ii;
#if 0//liuxu, 9/7/2013, use pointers from M3 through MMU. 
    yuv_data = malloc(FRAME_SIZE * MAX_FRAMES);
    if (yuv_data == NULL) {
        fprintf(stdout, "no enough memory for input file\n");
        return -1;
    }

    for (ii = 0; ii < MAX_FRAMES; ii++) {
        frame[ii] = &yuv_data[ii * FRAME_SIZE];
    }
#endif 
    if (p) {
        p->count = MAX_FRAMES;
        p->width = FRAME_WIDTH;
        p->height = FRAME_HEIGHT;
        p->fourcc = YUV_PIXEL_FMT;

#ifdef NO_MEMCPY
        p->type = BC_MEMORY_USERPTR;//liuxu, 10/10/2013.
#else
        p->type = BC_MEMORY_MMAP;
#endif

    }

    return 0;
}

char *frame_get(bc_buf_ptr_t *p)
{
    char *va;
    va = frame[fr_idx];
    pattern_uyvy(fr_idx, va, FRAME_WIDTH, FRAME_HEIGHT);
    fr_idx = (fr_idx + 1) % MAX_FRAMES;

    if (p)
        p->pa = 0;

    return va;
}

void frame_cleanup(void)
{
    if (yuv_data)
        free(yuv_data);
}


#ifdef GLES_20
void drawCube(int bufferindex, int sidebufferindex)//liuxu, 06/02/2014, add second parameter for side view select.
{
    static float rot_x = 0.0;
    static float rot_y = 0.0;
    float sx, cx, sy, cy;
    int tex_sampler;


#if 1    
    /* rotate the cube */
    sx = sin(rot_x);
    cx = cos(rot_x);
    sy = sin(rot_y);
    cy = cos(rot_y);
#else//liuxu, 10/12/2013, disable rotation because of floating point performance issue.
    /* rotate the cube */
    sx = (rot_x);
    cx = (rot_x);
    sy = (rot_y);
    cy = (rot_y);
#endif   

#ifndef DIRECT_SHOW//liuxu, 02/16/2014.

    modelview[0] = cy;
    modelview[1] = 0;
    modelview[2] = -sy;
    modelview[4] = sy * sy;
    modelview[5] = cx;
    modelview[6] = cy * sx;
    modelview[8] = sy * cx;
    modelview[9] = -sx;
    modelview[10] = cx * cy;
#endif   


    glClearColor (0.0, 0.0, 0.0, 1.0);

    
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);



#ifndef DIRECT_SHOW

    glUseProgram(program[0]);
   
    glUniformMatrix4fv(model_view_idx[0], 1, GL_FALSE, modelview);
    glUniformMatrix4fv(proj_idx[0], 1, GL_FALSE, projection);

    glDrawArrays(GL_TRIANGLE_STRIP, 0, 8);
    glDrawArrays(GL_TRIANGLE_STRIP, 8, 8);
#endif


    /* associate the stream texture */
    tex_sampler = glGetUniformLocation(program[1], "streamtexture");



    glUseProgram(program[1]);


    if (ptex_objs) {

    
        /* activate texture unit */
        glActiveTexture(GL_TEXTURE0);


        
        glBindTexture(GL_TEXTURE_STREAM_IMG, ptex_objs[bufferindex]);

   
        /* associate the sampler to a texture unit
         * 0 matches GL_TEXTURE0 */
        glUniform1i(tex_sampler, 0);
   
        glUniformMatrix4fv(model_view_idx[1], 1, GL_FALSE, modelview);
        glUniformMatrix4fv(proj_idx[1], 1, GL_FALSE, projection);


#ifndef DIRECT_SHOW

        glDrawArrays (GL_TRIANGLE_STRIP, 0, 8);
        glDrawArrays (GL_TRIANGLE_STRIP, 8, 8);
#else

        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, cube_vertices);
        glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, 0, cube_tex_coords);
        glUniformMatrix4fv(model_view_idx[1], 1, GL_FALSE, modelview);

        glDrawArrays (GL_TRIANGLES, 0, 6);//liuxu, 02/16/2014.//liuxu, 06/03/2014, disable the gfx0 pipeline in run-time will block this function under flip mode...RISK...
//printf("\n14\n");
        #ifdef SIDE_VIEW//liuxu, 06/02/2014.
        glBindTexture(GL_TEXTURE_STREAM_IMG, ptex_objs[sidebufferindex]);
        glDrawArrays (GL_TRIANGLES, 6, 6);//liuxu, 02/16/2014.
        #endif

        //sleep(1);

        //glFinish();//liuxu, 02/19/2014.

        #ifdef TINY_CUBE//liuxu, 02/18/2014.

        #define MY_DISPLAY_WIDTH (704.0)//liuxu, 04/21/2014, change from 720 to 704 due to "eglCreateWindowSurface" can not work under 720/32=22.5.
        #define MY_DISPLAY_HEIGHT (480.0)
        #define TINY_CUBE_LINE (90.0)

        float my_ratio1 = TINY_CUBE_LINE/MY_DISPLAY_HEIGHT;
        float my_ratio2 = MY_DISPLAY_HEIGHT/MY_DISPLAY_WIDTH;

        
        modelview_tiny[0] = cy*my_ratio1*my_ratio2;
        modelview_tiny[1] = 0;
        modelview_tiny[2] = -sy*my_ratio1;
        modelview_tiny[4] = sy * sy*my_ratio1*my_ratio2;
        modelview_tiny[5] = cx*my_ratio1;
        modelview_tiny[6] = cy * sx*my_ratio1;
        modelview_tiny[8] = sy * cx*my_ratio1*my_ratio2;
        modelview_tiny[9] = -sx*my_ratio1;
        modelview_tiny[10] = cx * cy*my_ratio1;


        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, cube_vertices_tiny);
        glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, 0, cube_tex_coords_tiny);

        glUniformMatrix4fv(model_view_idx[1], 1, GL_FALSE, modelview_tiny);

        glDrawArrays (GL_TRIANGLE_STRIP, 0, 8);
        glDrawArrays (GL_TRIANGLE_STRIP, 8, 8);

        rot_x += 0.01;
        rot_y += 0.01;

        //sleep(1);


        #endif
#endif

    }

    eglSwapBuffers(dpy, surface);


    
#ifndef DIRECT_SHOW
    rot_x += 0.01;
    rot_y += 0.01;
#endif

}
#else

/*画立方体*/
void drawCube(int bufferindex)
{
    static GLfloat m_fAngleX = 0.0f;
    static GLfloat m_fAngleY = 0.0f;

    glClear(GL_COLOR_BUFFER_BIT);
    glEnable(GL_TEXTURE_STREAM_IMG);

    glPushMatrix();

    // Rotate the cube model
    glRotatef(m_fAngleX, 1.0f, 0.0f, 0.0f);
    glRotatef(m_fAngleY, 0.0f, 1.0f, 0.0f);

    glTexBindStreamIMG(bcdev_id, bufferindex);
/*    glBindTexture(GL_TEXTURE_STREAM_IMG, bufferindex);*/

    // Enable 3 types of data
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_NORMAL_ARRAY);
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);

    // Set pointers to the arrays
    glVertexPointer(3, GL_FLOAT, 0, cube_vertices);
    glNormalPointer(GL_FLOAT, 0, cube_normals);
    glTexCoordPointer(2, GL_FLOAT, 0, cube_tex_coords);

    glDrawArrays(GL_TRIANGLE_STRIP, 0, 8);
    glDrawArrays(GL_TRIANGLE_STRIP, 8, 8);

    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
    glDisableClientState(GL_NORMAL_ARRAY);

    glPopMatrix();

    glDisable(GL_TEXTURE_STREAM_IMG);
    eglSwapBuffers(dpy, surface);

    m_fAngleX += 0.25f;
    m_fAngleY += 0.25f;
}
#endif

void usage(char *arg)
{
    printf("Usage:\n"
           "    %s [-b <id> | -p | -w <width> | -t <height> | -h]\n"
           "\t-b - bc device id [default: 0]\n"
           "\t-p - enable profiling\n"
           "\t-w - width of texture buffer in pixel, multiple of 8 (for ES3.x)\n"
           "\t     or 32 (for ES2.x)\n"
           "\t-t - height of texture buffer in pixel\n"
           "\t-h - print this message\n\n", arg);
}


#endif 

/* private functions */
static Int Main_main(Void);
static Int Main_parseArgs(Int argc, Char *argv[]);


#define Main_USAGE "\
Usage:\n\
    app_host [options] proc\n\
\n\
Arguments:\n\
    proc      : the name of the remote processor\n\
\n\
Options:\n\
    h   : print this help message\n\
    l   : list the available remote names\n\
\n\
Examples:\n\
    app_host DSP\n\
    app_host -l\n\
    app_host -h\n\
\n"

/* private data */
static String   Main_remoteProcName = NULL;

extern Int curTrace;//liuxu, 8/9/2013.

extern int test111();


/*
 *  ======== main ========
 */
Int main(Int argc, Char* argv[])
{
    Int status;
    
    printf("--> liuxu, main:, curTrace=0x%x\n", curTrace);
    
    //test111();

#if 0//liuxu, 8/19/2013.    
    /* parse command line */
    status = Main_parseArgs(argc, argv);

    if (status < 0) {
        goto leave;
    }
#endif

    GT_setTrace ((GT_TraceState_Enable | GT_TraceSetFailure_Enable | (4 << (32 - GT_TRACECLASS_SHIFT))), GT_TraceType_User);//liuxu, 8/19/2013, enable trace.


    /* SysLink initialization */
    SysLink_setup();

    /* application create, exec, delete */
    status = Main_main();

    /* SysLink finalization */
    SysLink_destroy();

leave:
    printf("<-- main:\n");
    status = (status >= 0 ? 0 : status);
    
    return (status);
}


/*
 *  ======== Main_main ========
 */
typedef struct cfg4Pointers_t
{
    MessageQ_MsgHeader msgHdr;
    UInt32 cmdType;
    UInt8 cmdParam[4];	///+ gzd, 增加命令参数
    void *pPointer0;
    void *pPointer1;
    void *pPointer2;
    void *pPointer3;
} cfg4Pointers_t;

typedef struct cfg8Pointers_t
{
    MessageQ_MsgHeader msgHdr;
    UInt32 cmdType;
    void *pY_Pointer0;
    void *pY_Pointer1;
    void *pY_Pointer2;
    void *pY_Pointer3;
    void *pUV_Pointer0;
    void *pUV_Pointer1;
    void *pUV_Pointer2;
    void *pUV_Pointer3;
} cfg8Pointers_t;//liuxu, 10/5/2013.
 
#define MSGQ_HEAP_NAME      "msgQHeap"//liuxu, 8/20/2013.
HeapBufMP_Handle hHeap = NULL;
#define MSGQ_HEAPID         0u

MessageQ_Handle hMessageQ = NULL;
cfg4Pointers_t* cmdMsg = NULL;
UInt32 RemoteDspQId;

#define ROUNDUP_SIZE(a, b) (UInt32)((((UInt32)(a)) + (((UInt32)(b)) - 1)) & ~((UInt32)(b) - 1))

/*消息如队列*/
Int32 commandQPut(UInt32 remoteQId, void *pCmdMsg)
{
    Int32 nRetVal = 0;

    /* Flush and invalidate  pCmdMsg except MessageQ_MsgHeader. */
    //Cache_wbInv((Ptr) ((Int8 *) pCmdMsg), sizeof(cfg4Pointers_t), (UInt16)Cache_Type_ALL, (Bool)TRUE);

    nRetVal = MessageQ_put((MessageQ_QueueId) remoteQId, pCmdMsg);

    /* Flush and invalidate only MessageQ_MsgHeader in pCmdMsg. */
    //Cache_wbInv((Ptr) pCmdMsg , sizeof(MessageQ_MsgHeader), (UInt16)Cache_Type_ALL, (Bool)TRUE);

    return nRetVal;
}

/*从消息队列取消息*/
Int32 commandQGet(void *hCmdQ, void *ppMsg, UInt32 nTimeOut)
{
    /* Invalidate cache. */
    //Cache_inv((cfg4Pointers_t *)(*(cfg4Pointers_t **) ppMsg), sizeof(cfg4Pointers_t), (UInt16)Cache_Type_ALL, (Bool)TRUE);

    return (MessageQ_get((MessageQ_Handle) hCmdQ, (MessageQ_Msg *) ppMsg, nTimeOut));
}

#ifdef MPEG4_ENCODER
#include <ti/syslink/ProcMgr.h>
void * pEncoder = NULL;
FRAME_STRUCT InputFrame;

unsigned int writeIdx = 0;
unsigned int readIdx = 0;

ivi8u* video_Y_PointerFifo[4]={NULL};
ivi8u* video_UV_PointerFifo[4]={NULL};

//#define ONE_THREAD_TEST//liuxu, 12/23/2013, just for test.

void mpeg4_encoding_task(void)
{

    int k = 0;
    int time1, time2;
    int sum_time = 0;

    printf("\n\n\n\n\n\n\n\n\n\nliuxu, mpeg4_encoding_task\n\n\n\n\n\n\n\n\n\n");

    while(1)
    {

        if(writeIdx > readIdx)
        {
            k++;

            printf("\nliuxu, readIdx = %d in mpeg4_encoding_task", readIdx);
        
        	InputFrame.pY = video_Y_PointerFifo[readIdx%4];//pInputYUV + alignoffset;
        	InputFrame.pU = video_UV_PointerFifo[readIdx%4];//InputFrame.pY + lumalen;
        	InputFrame.pV = NULL;//InputFrame.pU + chromalen;//liuxu, 8/21/2013, just two points for NV12.

#ifndef ONE_THREAD_TEST//liuxu, 12/23/2013, just for test.
        	readIdx++;
#endif
        	InputFrame.TimeStamp = k;		// time stamp!
    		InputFrame.userDoNotEncode = iviFalse;		// encode this frame!
    		
    		//If the user decides to drop the frame, then no matter what rc has decided the frame will be dropped.
    		if (InputFrame.userDoNotEncode)
    			InputFrame.DoNotEncode = InputFrame.userDoNotEncode;
    		
    		time1 = IviGetTime();

    		if ( FAILED(MP4VEncSP_EncodeFrame(pEncoder, &InputFrame)) )
    		{
    		    printf("\nliuxu, MP4VEncSP_EncodeFrame Failed!!\n");
    		}

    		time2 = IviGetTime() - time1;

            printf("\nliuxu, k=%d, encoding per frame=%d-ms", k, time2);

    		
    		sum_time += time2;

    		if(k == 1200)
    		{
                //printf("\nliuxu, k=%d, pointerY=0x%x, pointerUV=0x%x, pFrom_DSP_TempCmdMsg->pY_Pointer0=0x%x, pFrom_DSP_TempCmdMsg->pUV_Pointer0=0x%x\n", k, vitrualY, vitrualUV, pFrom_DSP_TempCmdMsg->pY_Pointer0, pFrom_DSP_TempCmdMsg->pUV_Pointer0);
                printf("liuxu, timestamp=%d, Average FPS is %f!\n", time1+time2, 1200 * 1000.0 / sum_time);

                while(1)
                {
                    sleep(5000);//liuxu, 12/24/2013, sleep 5000s. 
                }

    		}

        }
        else
        {
            ;//usleep(10000);//liuxu, 12/23/2013, usleep 20ms to yield to mpeg4 encoder thread. 
        }
	}
}
#endif

#ifdef GFX_CUBE
#include <ti/syslink/ProcMgr.h>
#endif

#define SAVE_PERSMAT_TO_FS//liuxu, 04/24/2014.

#ifdef LEGACY_MAIN   ///原来的main

#if 0
Int Main_main(Void)
{
    UInt16      remoteProcId;
    Int         status = 0;
    Int         printremoteProcId = 0xff;
    int ret = -1;

    MessageQ_Msg pTempCmdMsg = NULL;//liuxu, 8/20/2013.
    UInt16 nSRId = 0u;
    SharedRegion_SRPtr srPtr = {0u};
    cfg8Pointers_t *pFrom_DSP_TempCmdMsg = NULL;

    unsigned char *vitrualY;
    unsigned char *vitrualUV;

    unsigned char *vitrualY1;//liuxu, 10/5/2013.
    unsigned char *vitrualY2;
    unsigned char *vitrualY3;

    unsigned char *vitrualUV1;
    unsigned char *vitrualUV2;
    unsigned char *vitrualUV3;

    int time1_profile, time2_profile, time3_profile, time4_profile, time5_profile, time6_profile, time7_profile, time8_profile, time9_profile;//liuxu, 10/12/2013.


    printf("--> Main_main:\n");

#if 0 ///- GZD
#ifdef SAVE_PERSMAT_TO_FS

        unsigned char *coreObjVirtBaseAddr2;

        unsigned int memDevFd2;
        memDevFd2 = open("/dev/mem",O_RDWR|O_SYNC);
        if(memDevFd2 < 0)
        {
            printf("\nliuxu, 04/24/2014, ERROR: /dev/mem open failed for load!!!\n");
            return -1;
        }

        coreObjVirtBaseAddr2 = mmap(
                (void	*)0x80000000,
                0x1000,
				PROT_READ|PROT_WRITE|PROT_EXEC,
				MAP_SHARED,
				memDevFd2,
				0x80000000
				);

		if (coreObjVirtBaseAddr2 == NULL)
    	{
    		printf("\nliuxu, 04/24/2014, ERROR: mmap() failed for load!!!\n");
    		return -1;
    	}

        *((unsigned int *)coreObjVirtBaseAddr2) = 0xFFFFFFFF;//liuxu, 04/24/2014, clear to tag in case no exsiting persmat.dat, so that the DSP use the one built in code.

        FILE * dumpfilePersmat_ForLoad;

        dumpfilePersmat_ForLoad = fopen("/media/mmcblk0p1/DSP_Persmat.dat", "r");//liuxu, 04/24/2014, just failed if no exsiting.


        if(dumpfilePersmat_ForLoad == NULL)
        {
            printf("\nliuxu, 04/24/2014, /media/mmcblk0p1/DSP_Persmat.dat doesn't exist\n");
        }
        else
        {
            int i_readPersmatcount = fread (coreObjVirtBaseAddr2, 1, 4*9*4, dumpfilePersmat_ForLoad);
            printf("\nliuxu, 04/22/2014, i_readPersmatcount=%d bytes\n", i_readPersmatcount);
            fclose(dumpfilePersmat_ForLoad);
            close(memDevFd2);
        }
#endif
#endif

    remoteProcId = MultiProc_getId("DSP");

    /* attach to the remote processor */
    printremoteProcId = MultiProc_getId("HOST");

    Osal_printf("\nliuxu, remoteProcId=%d, host-printremoteProcId=0x%x\n", remoteProcId, printremoteProcId);


    void *ipc_vector = (0x85c00400);//liuxu, 07/01/2014, this is the address of ipc header.

    #if 1
    status = Ipc_control(remoteProcId, Ipc_CONTROLCMD_LOADCALLBACK, &ipc_vector);//liuxu, 07/01/2014, support late attach.
    #else
    status = Ipc_control(remoteProcId, Ipc_CONTROLCMD_LOADCALLBACK, NULL);
    #endif

    if (status < 0) {
        printf("Main_main: load callback failed, remoteProcId=%d\n", remoteProcId);
        goto leave;
    }

    /* invoke the SysLink start callback */
    status = Ipc_control(remoteProcId, Ipc_CONTROLCMD_STARTCALLBACK, NULL);

    if (status < 0) {
        printf("Main_main: start callback failed\n");
        goto leave;
    }

    /* BEGIN application phase */
    printf("--> liuxu App_create:\n");//liuxu, 8/9/2013.

    do
    {
		/* Open the heap created by the other processor. Loop until opened. */
		do
		{
			status = HeapBufMP_open(MSGQ_HEAP_NAME, &hHeap);
			/*
			 *  Sleep for 1 clock tick to avoid inundating remote processor
			 *  with interrupts if open failed
			 */
			if (status < 0)
			{
				sleep(1);//liuxu, 8/20/2013, sleep of linux.
			}
		} while (status < 0);

		/* Register this heap with MessageQ */
		MessageQ_registerHeap((IHeap_Handle) hHeap, MSGQ_HEAPID);

    } while(0);

    hMessageQ = MessageQ_create((String) "A8_CMD_Q_TO_DSP_LITE", NULL);
    cmdMsg = (cfg4Pointers_t *)MessageQ_alloc(MSGQ_HEAPID, ROUNDUP_SIZE(sizeof(cfg4Pointers_t), 128));//liuxuliuxu, don't forget to free at the end.

    do
    {
        status = MessageQ_open("DSP_CMD_Q_TO_A8", &RemoteDspQId);
    }while(status != 0);

#ifdef A8_MCU_COMM_UART
    ret = COMM_CreateTask();
    if(ret < 0) {
        printf("\n\n gzd, ERROR! Create UART comm task failed. \n");
    }
    else {
    	printf("\n\n gzd, OK to Create UART comm task. \n");
    }
#endif

    int fd_gpio;
    char ch;
    int pressing, released;
    int channelNo = 0;
    int long_press_counter = 0;
    int long_pressed_trigger = 0;

    int ChInfoToDSP = 0;

// + a0220402, add support carit board key
#ifdef CONFIG_CARIT
    fd_gpio = open("/sys/class/gpio/gpio4/value", O_RDONLY | O_NONBLOCK );
#else
    fd_gpio = open("/sys/class/gpio/gpio39/value", O_RDONLY | O_NONBLOCK );//liuxu, 10/18/2013, for detecting sw9 of J5eco EVM.
#endif
// - a0220402,
	if (fd_gpio < 0) {
		perror("\nliuxu, gpio/fd_open\n");
	}

	printf("\n\n\nliuxu, 10/18/2013, fd_gpio=%d\n\n\n", fd_gpio);

#if 0 ///- gzd
	//以下代码保存摄像头图片
    //liuxu, 02/20/2014, ti photo_snapshot.
        ProcMgr_Handle   handle = NULL;
        unsigned char *hardFrameOutput0;
        unsigned char *hardFrameOutput1;
        unsigned char *hardFrameOutput2;
        unsigned char *hardFrameOutput3;//liuxu, 02/20/2014, 0x8ff00000.

        unsigned char *phyAddrToBeChecked;//liuxu, 02/20/2014, 0x8ff00000.

    	status = ProcMgr_open (&handle, 0);
    	printf("\nliuxu, ProcMgr_open successful, handle=0x%x\n", handle);
    	if (status < 0)
        {
            printf("\nliuxu, ProcMgr_open error, status=0x%x\n", status);
            while(1);
        }

#define NV12_FRAMESIZE 529920//(736*480*1.5)
    	ProcMgr_translateAddr (handle,
                       &hardFrameOutput0,
                       ProcMgr_AddrType_MasterUsrVirt,
                       (void *)M3_FRAMEBUFFER_PA_0,
                       ProcMgr_AddrType_SlaveVirt);

        ProcMgr_translateAddr (handle,
                       &hardFrameOutput1,
                       ProcMgr_AddrType_MasterUsrVirt,
                       (void *)(M3_FRAMEBUFFER_PA_0 + NV12_FRAMESIZE),
                       ProcMgr_AddrType_SlaveVirt);

        ProcMgr_translateAddr (handle,
                       &hardFrameOutput2,
                       ProcMgr_AddrType_MasterUsrVirt,
                       (void *)(M3_FRAMEBUFFER_PA_0 + NV12_FRAMESIZE*2),
                       ProcMgr_AddrType_SlaveVirt);

        ProcMgr_translateAddr (handle,
                       &hardFrameOutput3,
                       ProcMgr_AddrType_MasterUsrVirt,
                       (void *)(M3_FRAMEBUFFER_PA_0 + NV12_FRAMESIZE*3),
                       ProcMgr_AddrType_SlaveVirt);

    	printf("\nliuxu, 02/20/2014, virtual addr of hardFrameOutput0 = 0x%x\n", hardFrameOutput0);
    	printf("\nliuxu, 02/20/2014, virtual addr of hardFrameOutput1 = 0x%x\n", hardFrameOutput1);
    	printf("\nliuxu, 02/20/2014, virtual addr of hardFrameOutput2 = 0x%x\n", hardFrameOutput2);
    	printf("\nliuxu, 02/20/2014, virtual addr of hardFrameOutput3 = 0x%x\n", hardFrameOutput3);


    	ProcMgr_translateAddr (handle,
                       &phyAddrToBeChecked,
                       ProcMgr_AddrType_MasterPhys,
                       (void *)(0xd5604800),
                       ProcMgr_AddrType_MasterKnlVirt);

        printf("\nliuxu, 05/08/2014, 2, phy addr of phyAddrToBeChecked = 0x%x\n", phyAddrToBeChecked);//liuxu, 05/08/2014, leverage procMgr to sniff phy addr of entry->flag, which in SR0.

        FILE * dumpfile0;
        FILE * dumpfile1;
        FILE * dumpfile2;
        FILE * dumpfile3;

        dumpfile0 = fopen("/media/mmcblk0p1/TI_top.yuv", "w");
//+ a0220402, R1.1 add protection for the case of the absence of SD card
	if( dumpfile0 == NULL ) {
		printf ("SD card is needed for snopshot for developing!\n");
	}else{

		dumpfile1 = fopen("/media/mmcblk0p1/TI_right.yuv", "w");
		dumpfile2 = fopen("/media/mmcblk0p1/TI_left.yuv", "w");
		dumpfile3 = fopen("/media/mmcblk0p1/TI_back.yuv", "w");

        time1_profile = IviGetTime();

        fwrite(hardFrameOutput0, 1, 736*480*1.5, dumpfile0);
        fwrite(hardFrameOutput1, 1, 736*480*1.5, dumpfile1);
        fwrite(hardFrameOutput2, 1, 736*480*1.5, dumpfile2);
        fwrite(hardFrameOutput3, 1, 736*480*1.5, dumpfile3);

        time2_profile = IviGetTime() - time1_profile;
        printf("\nliuxu, time per dump 4 files = %d ms!!\n\n\n", time2_profile);
        printf("\n\nliuxu, 222,02/20/2014, dump 4 files well.\n\n");

        fclose(dumpfile0);
        fclose(dumpfile1);
        fclose(dumpfile2);
        fclose(dumpfile3);

	system("sync"); ///刷新存储区迫使缓冲块数据立即写盘并更新超级块，其中包含已修改的 i-node、已延迟的块 I/O 和读写映射文件
}
#endif

//- a0220402

        //fileSize += fread (buffer_addr, 1, 57600, yuvfp) ;//liuxu, 11/30/2013, rgb888.

/*
        //Y of YUV420sp.
        for(ii2=0; ii2<160; ii2++)
            for(jj2=0; jj2<240; jj2++)
            {
                *(hardFrameOutput+736*160+ii2*736+240+jj2) = buffer_addr[ii2*240+jj2];
            }

        //UV of YUV420sp.
        for(ii2=0; ii2<80; ii2++)
            for(jj2=0; jj2<240; jj2++)
            {
                *(hardFrameOutput+736*480+736*80+ii2*736+240+jj2) = buffer_addr[240*160+ii2*240+jj2];
            }
*/

#ifdef MPEG4_ENCODER

    static const int alignment = 32;		// cache line alignment!
	unsigned int alignoffset, lumalen, chromalen;
	unsigned char *pInputYUV;

	MP4VEncSP_OpenOptions OpenOptions;
	ENC_STATUS EncStatus;
	FILE *parfile, *rawfile;
	FILE *resultFile;

	parfile = fopen("./mp4enc.cfg", "r");

	if ( !parfile ) {
		printf ("Can't open input Par file!\n");
		return -1;
	}

	resultFile = fopen("MP4EncPerf.txt", "wt");

	if ( !resultFile ) {
		printf ("Can't open performance result file!\n");
		return -1;
	}

	memset(&OpenOptions, sizeof(MP4VEncSP_OpenOptions),0);

	Get_MPEG4Par_File (&OpenOptions, parfile);

	ConfigureStandardPar_MPEG4(&OpenOptions);


    if ( FAILED(MP4VEncSP_Create(&pEncoder)) )
	    return -1;


    if( FAILED(MP4VEncSP_Open(pEncoder, &OpenOptions)) )
	    return -1;

     //The first frame will always be encoded.
	InputFrame.DoNotEncode = iviFalse;		// encode this frame!

	InputFrame.SrcEncodeRate = OpenOptions.iSrcEncodeRate;
	InputFrame.FrameType = OpenOptions.iColorFormat;			// input frame type, not support RGB565 yet

    InputFrame.YStride = OpenOptions.iFrameWidth + 16;//liuxu, 10/17/2013, support for stride.
	InputFrame.UVStride = (InputFrame.FrameType==NV12) ? (InputFrame.YStride):(InputFrame.YStride>>1);
    lumalen = (OpenOptions.iFrameWidth + 16) * OpenOptions.iFrameHeight;

	chromalen = (InputFrame.FrameType == YUV422) ? (lumalen>>1) : (lumalen>>2);

///-gzd,redefinition	ProcMgr_Handle handle = NULL;//liuxu, 10/17/2013, moved from do-while, otherwise the first frame would be slow and pipeline was breaked.

	status = ProcMgr_open (&handle, 0);

	//printf("\nliuxu, ProcMgr_open successful, handle=0x%x\n", handle);//liuxuliuxu.


	if (status < 0)
    {
        printf("\nliuxu, ProcMgr_open error, status=0x%x\n", status);//liuxuliuxu.
        while(1);
    }

    pthread_t thread_id;
    int err;

#if 1//liuxu, 12/24/2013
    err = pthread_create (&thread_id, NULL, mpeg4_encoding_task, NULL);

    if (err != 0)
    {
        printf("\n\n\nliuxu, can't create thread: %s\n", strerror(err));

        while(1);
    }

    printf("\n\n\nliuxu, thread_id = %d\n", thread_id);
#endif


#endif

    //printf("\nliuxu, start, timestamp=%d!!!!\n", IviGetTime());//liuxuliuxu.
#ifdef GFX_CUBE
        int bcfd = -1;
        char bcdev_name[] = "/dev/bccatX";
        BCIO_package ioctl_var;
        bc_buf_params_t buf_param;
        bc_buf_ptr_t buf_pa;

        unsigned long buf_paddr[MAX_BUFFERS];
        char *buf_vaddr[MAX_BUFFERS] = { MAP_FAILED };
        char *frame = NULL;

        char *frameUV = NULL;

        int buf_size = 0;
        int c, idx/*, ret = -1*/;
        char opts[] = "pw:t:b:h";

        int   ii;
        int   frame_w, frame_h;
        int   min_w = 0, min_h = 0;;
        int   cp_offset = 0;

        struct timeval tvp, tv, tv0 = {0,0};
        unsigned long tdiff = 0;
        unsigned long fcount = 0;

        if (frame_init(&buf_param))
            return -1;

        bcdev_name[strlen(bcdev_name)-1] = '0' + bcdev_id;

        if ((bcfd = open(bcdev_name, O_RDWR|O_NDELAY)) == -1) {
            printf("ERROR: open %s failed\n", bcdev_name);
            goto err_ret;
        }

        frame_w = buf_param.width;
        frame_h = buf_param.height;

        if (min_w > 0 && !(min_w % 8))
            buf_param.width = min_w;

        if (min_h > 0)
            buf_param.height = min_h;

printf("\n-->liuxu, 06/19/2014, frame_w=%d, frame_h=%d, min_w=%d, min_h=%d", frame_w, frame_h, min_w, min_h);

        int check = 0;

#ifndef NO_MEMCPY
        if ((check = ioctl(bcfd, BCIOREQ_BUFFERS, &buf_param)) != 0) {
            printf("ERROR: BCIOREQ_BUFFERS failed, check=%d\n", check);
            goto err_ret;
        }

        if (ioctl(bcfd, BCIOGET_BUFFERCOUNT, &ioctl_var) != 0) {
            goto err_ret;
        }


        if (ioctl_var.output == 0) {
            printf("ERROR: no texture buffer available\n");
            goto err_ret;
        }
#else
        if ((check = ioctl(bcfd, BCIOREQ_BUFFERS, &buf_param)) != 0) {
            printf("ERROR: BCIOREQ_BUFFERS failed, check=%d\n", check);
            goto err_ret;
        }

        bc_buf_ptr_t buf_pa_init;

/*liuxu, 10/18/2013, channel 0*/
        buf_pa_init.pa = M3_FRAMEBUFFER_PA_0;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 0;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_1;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 1;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_2;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 2;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_3;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 3;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_4;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 4;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_5;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 5;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

/*liuxu, 10/18/2013, channel 1*/
        buf_pa_init.pa = M3_FRAMEBUFFER_PA_0+FRAME_SIZE;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 0+InterChannelIndexOffset;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_1+FRAME_SIZE;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 1+InterChannelIndexOffset;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_2+FRAME_SIZE;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 2+InterChannelIndexOffset;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_3+FRAME_SIZE;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 3+InterChannelIndexOffset;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_4+FRAME_SIZE;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 4+InterChannelIndexOffset;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_5+FRAME_SIZE;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 5+InterChannelIndexOffset;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

/*liuxu, 10/18/2013, channel 2*/
        buf_pa_init.pa = M3_FRAMEBUFFER_PA_0+FRAME_SIZE*2;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 0+InterChannelIndexOffset*2;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_1+FRAME_SIZE*2;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 1+InterChannelIndexOffset*2;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_2+FRAME_SIZE*2;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 2+InterChannelIndexOffset*2;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_3+FRAME_SIZE*2;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 3+InterChannelIndexOffset*2;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_4+FRAME_SIZE*2;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 4+InterChannelIndexOffset*2;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_5+FRAME_SIZE*2;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 5+InterChannelIndexOffset*2;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

/*liuxu, 10/18/2013, channel 3*/
        buf_pa_init.pa = M3_FRAMEBUFFER_PA_0+FRAME_SIZE*3;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 0+InterChannelIndexOffset*3;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_1+FRAME_SIZE*3;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 1+InterChannelIndexOffset*3;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_2+FRAME_SIZE*3;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 2+InterChannelIndexOffset*3;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_3+FRAME_SIZE*3;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 3+InterChannelIndexOffset*3;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_4+FRAME_SIZE*3;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 4+InterChannelIndexOffset*3;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_5+FRAME_SIZE*3;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 5+InterChannelIndexOffset*3;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        #ifdef TI_DSP_PROCESSING
        buf_pa_init.pa = 0x8ff00000;//liuxu, 02/12/2014, add one/idx24 for outputbuf of ti dsp processing, hard coding.
        buf_pa_init.index = 24;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }
        #endif

#endif //NO_MEMCPY

        if (initEGL(ioctl_var.output)) {
            printf("ERROR: init EGL failed\n");
            goto err_ret;
        }

        if ((ret = initTexExt(bcdev_id, &buf_info)) < 0) {
            printf("ERROR: initTexExt() failed [%d]\n", ret);
            goto err_ret;
        }

        if (buf_info.n > MAX_BUFFERS) {
            printf("ERROR: number of texture buffer exceeds the limit\n");
            goto err_ret;
        }

printf("\n--> liuxu buf number 10/12/2013, buf_info.n=%d\n", buf_info.n);

        /*FIXME calc stride instead of 2*/
        buf_size = buf_info.w * buf_info.h * 1.5;//liuxu, 9/7/2013. ?????
        min_w    = buf_info.w < frame_w ? buf_info.w : frame_w;
        min_h    = buf_info.h < frame_h ? buf_info.h : frame_h;

        if (buf_info.h > frame_h)
            cp_offset = (buf_info.h - frame_h) * buf_info.w;

        if (buf_info.w > frame_w)
            cp_offset += buf_info.w - frame_w;

printf("\n\n\n--> liuxu checkpoint, cp_offset=%d 10/12/2013\n\n\n", cp_offset);


        if (buf_param.type == BC_MEMORY_USERPTR) {
            ;//liuxu, 10/10/2013, space holder.
        }
        else if (buf_param.type == BC_MEMORY_MMAP) {
            for (idx = 0; idx < buf_info.n; idx++) {
                ioctl_var.input = idx;

                if (ioctl(bcfd, BCIOGET_BUFFERPHYADDR, &ioctl_var) != 0) {
                    printf("ERROR: BCIOGET_BUFFERADDR failed\n");
                    goto err_ret;
                }


                buf_paddr[idx] = ioctl_var.output;
                buf_vaddr[idx] = (char *)mmap(NULL, buf_size,
                                  PROT_READ | PROT_WRITE, MAP_SHARED,
                                  bcfd, buf_paddr[idx]);

                if (buf_vaddr[idx] == MAP_FAILED) {
                    printf("ERROR: mmap failed\n");
                    goto err_ret;
                }

            }
        }

        ret = 0;
        idx = 0;
#endif ///#ifdef GFX_CUBE

/*
 * 以下部分进入主循环，从消息队列提取按键消息并处理，包括画面切换显示、各通道抓取图片、校正和保存参数
 */
    int i_put = 0;
    int i_get = 0;

    do
    {

        time1_profile = IviGetTime();

        //printf("\nliuxu, before commandQGet");

//#ifdef GFX_CUBE//liuxu, 06/19/2014, disable gpu by default.
        lseek(fd_gpio, 0, SEEK_SET);
        read(fd_gpio, &ch, 1);
//#endif
        ///从消息队列提取消息
        status = commandQGet(hMessageQ, &(pTempCmdMsg), (UInt32)MessageQ_FOREVER);

#if 0
///以下部分保存校正参数
#ifdef SAVE_PERSMAT_TO_FS  ///+，gzd， 保存校正参数到SD卡

        static int i_saveFirstTime = 0; ///首次保存标志
        if(i_saveFirstTime == 0)
        {
            i_saveFirstTime++;
            FILE * dumpfilePersmat;

            dumpfilePersmat = fopen("/media/mmcblk0p1/DSP_Persmat.dat", "w");//dingding change write folder to SD fat

            if(dumpfilePersmat == NULL)
            {
                printf("\nliuxu, 04/24/2014, why creat/write /media/mmcblk0p1/DSP_Persmat.dat failed??\n");
                return -1;
            }

            unsigned int memDevFd;
            memDevFd = open("/dev/mem",O_RDWR|O_SYNC);
            if(memDevFd < 0)
            {
                printf("\nliuxu, 04/24/2014, ERROR: /dev/mem open failed !!!\n");
                return -1;
            }

            unsigned char *coreObjVirtBaseAddr;
            coreObjVirtBaseAddr = mmap(
	                (void	*)0x80000000,
	                0x1000,
					PROT_READ|PROT_WRITE|PROT_EXEC,
					MAP_SHARED,
					memDevFd,
					0x80000000
					);

			if (coreObjVirtBaseAddr == NULL)
        	{
        		printf("\nliuxu, 04/24/2014, ERROR: mmap() failed !!!\n");
        		return -1;
        	}

        	int i_writePersmatcount = fwrite(coreObjVirtBaseAddr, 1, 4*9*4, dumpfilePersmat);

        	printf("\nliuxu, 04/22/2014, i_writePersmatcount=%d\n", i_writePersmatcount);

        	fclose(dumpfilePersmat);
        	close(memDevFd);

        }
#endif ///SAVE_PERSMAT_TO_FS
#endif

        //printf("\nliuxu, after commandQGet");

        if (status < 0)
        {
            printf("\nliuxu, commandQGet error, status=0x%x\n", status);//liuxuliuxu.
            while(1);
        }

        time5_profile = IviGetTime() - time1_profile;
        //printf("\nliuxu, input IPC get per frame = %d ms!!", time5_profile);

        time8_profile = IviGetTime();

///从消息字段中提取共享存储区
        /* Get the id of the address if id is not already known. */
        nSRId = SharedRegion_getId(pTempCmdMsg);
        /* Get the shared region pointer for the address */
        srPtr = SharedRegion_getSRPtr(pTempCmdMsg, nSRId);
        /* Get the address back from the shared region pointer */
        pFrom_DSP_TempCmdMsg = SharedRegion_getPtr(srPtr);

        while(pFrom_DSP_TempCmdMsg->cmdType != 0x777)
        {
            printf("\nliuxu, pFrom_DSP_TempCmdMsg->cmdType != 0x777\n");
        }

        i_get++;

        time9_profile = IviGetTime() - time8_profile;
        //printf("\nliuxu, share region parser for ipc per frame = %d ms, iget=%d!!", time9_profile, i_get);

        //k++;
        //printf("\nliuxu, k=%d, pointerY=0x%x, pointerUV=0x%x\n", k, pFrom_DSP_TempCmdMsg->pPointer0, pFrom_DSP_TempCmdMsg->pPointer1);


#ifdef GFX_CUBE
        //frame = frame_get(&buf_pa);

#ifndef NO_MEMCPY
        ProcMgr_Handle               handle = NULL;

    	status = ProcMgr_open (&handle, 0);

    	//printf("\nliuxu, ProcMgr_open successful, handle=0x%x\n", handle);//liuxuliuxu.


    	if (status < 0)
        {
            printf("\nliuxu, ProcMgr_open error, status=0x%x\n", status);//liuxuliuxu.
            while(1);
        }


    	ProcMgr_translateAddr (handle,
                       &vitrualY,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pY_Pointer0,
                       ProcMgr_AddrType_SlaveVirt);

    	ProcMgr_translateAddr (handle,
                       &vitrualUV,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pUV_Pointer0,
                       ProcMgr_AddrType_SlaveVirt);

        ProcMgr_translateAddr (handle,
                       &vitrualY1,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pY_Pointer1,
                       ProcMgr_AddrType_SlaveVirt);

    	ProcMgr_translateAddr (handle,
                       &vitrualUV1,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pUV_Pointer1,
                       ProcMgr_AddrType_SlaveVirt);

        ProcMgr_translateAddr (handle,
                       &vitrualY2,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pY_Pointer2,
                       ProcMgr_AddrType_SlaveVirt);

    	ProcMgr_translateAddr (handle,
                       &vitrualUV2,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pUV_Pointer2,
                       ProcMgr_AddrType_SlaveVirt);

        ProcMgr_translateAddr (handle,
                       &vitrualY3,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pY_Pointer3,
                       ProcMgr_AddrType_SlaveVirt);

    	ProcMgr_translateAddr (handle,
                       &vitrualUV3,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pUV_Pointer3,
                       ProcMgr_AddrType_SlaveVirt);

        frame = vitrualY3;//liuxu, 10/5/2013, either 0,1,2,3 can be used here or you can use them together in your app!!!!!!!!
        frameUV = vitrualUV3;
#else

        if(pFrom_DSP_TempCmdMsg->pY_Pointer0 == M3_FRAMEBUFFER_PA_0)
            idx = 0;
        else if(pFrom_DSP_TempCmdMsg->pY_Pointer0 == M3_FRAMEBUFFER_PA_1)
            idx = 1;
        else if(pFrom_DSP_TempCmdMsg->pY_Pointer0 == M3_FRAMEBUFFER_PA_2)
            idx = 2;
        else if(pFrom_DSP_TempCmdMsg->pY_Pointer0 == M3_FRAMEBUFFER_PA_3)
            idx = 3;
        else if(pFrom_DSP_TempCmdMsg->pY_Pointer0 == M3_FRAMEBUFFER_PA_4)
            idx = 4;
        else if(pFrom_DSP_TempCmdMsg->pY_Pointer0 == M3_FRAMEBUFFER_PA_5)
            idx = 5;
        else
            idx = 0;;//liuxu, 06/19/2014, here is a RISK...//liuxu, 06/05/2014, test for PAL cam..//printf("\n\nliuxu, error!!!!\n\n");

#endif ///GFX_CUBE

#ifndef NO_MEMCPY
        time3_profile = IviGetTime();

        if (frame == (char *) -1)
            break;

        if (frame) {
            if (buf_param.type == BC_MEMORY_MMAP) {
                for (ii = 0; ii < min_h; ii++)
                      /*FIXME calc stride instead of 2*/
                    memcpy(buf_vaddr[idx] + buf_info.w * ii + cp_offset,
                           frame + 736 * ii, min_w);//liuxu, 9/7/2013.

                for (ii = 0; ii < min_h/2; ii++)
                    memcpy(buf_info.w * buf_info.h + buf_vaddr[idx] + buf_info.w * ii + cp_offset,
                           frameUV + 736 * ii, min_w);//liuxu, 9/7/2013, for UV of NV12.

            }
            else    /*buf_param.type == BC_MEMORY_USERPTR*/
                idx = buf_pa.index;
        }

        time4_profile = IviGetTime() - time3_profile;
        printf("\nliuxu, memory copy time per frame = %d ms!!", time4_profile);
#else
        if (buf_param.type == BC_MEMORY_USERPTR)
        {
            //printf("\nliuxu, 10/10/2013, good, idx=%d!!!\n", idx);
        }

///响应按键消息，切换显示画面
        if (ch == '0')  ///按键状态：触发
    	{
    		pressing = 1;
    		long_press_counter++;
    		long_pressed_trigger = 0;
    	}
    	else if (pressing == 1) ///按键状态：按下
    	{
    		 released = 1;
    		 if(long_press_counter > 30*5)//liuxu, 06/03/2014, 5s for long press.  检测长按
    		 {
    		    long_press_counter = 0;
    		    long_pressed_trigger = 1;
    		 }
    	}
    	else ///按键状态：释放
    	{
    	    pressing = 0;
    	    released = 0;
    	    long_press_counter = 0;
    	    long_pressed_trigger = 0;
    	}

    	//printf("\nliuxu, 6/3/2014, ch=%c, pressing=%d, released=%d!!!\n", ch, pressing, released);
        if(long_pressed_trigger == 1) //长按，存储拼接校正参数
        {
            pressing = 0;
    	    released = 0;
    	    long_press_counter = 0;
    	    long_pressed_trigger = 0;

    	    printf("\nliuxu, 06/03/2014, long pressed triggered\n");

/*
#ifdef SAVE_PERSMAT_TO_FS

            unsigned char *coreObjVirtBaseAddr2;

            unsigned int memDevFd2;
            memDevFd2 = open("/dev/mem",O_RDWR|O_SYNC);
            if(memDevFd2 < 0)
            {
                printf("\nliuxu, 04/24/2014, ERROR: /dev/mem open failed for load!!!\n");
                return -1;
            }

            coreObjVirtBaseAddr2 = mmap(
                    (void	*)0x80000000,
                    0x1000,
    				PROT_READ|PROT_WRITE|PROT_EXEC,
    				MAP_SHARED,
    				memDevFd2,
    				0x80000000
    				);

    		if (coreObjVirtBaseAddr2 == NULL)
        	{
        		printf("\nliuxu, 04/24/2014, ERROR: mmap() failed for load!!!\n");
        		return -1;
        	}

            *((unsigned int *)coreObjVirtBaseAddr2) = 0xFFFFFFFF;//liuxu, 04/24/2014, clear to tag in case no exsiting persmat.dat, so that the DSP use the one built in code.

            FILE * dumpfilePersmat_ForLoad;

            dumpfilePersmat_ForLoad = fopen("/media/mmcblk0p1/DSP_Persmat.dat", "r");//liuxu, 04/24/2014, just failed if no exsiting.


            if(dumpfilePersmat_ForLoad == NULL)
            {
                printf("\nliuxu, 06/03/2014, /media/mmcblk0p1/DSP_Persmat.dat doesn't exist, no GA this time\n");
            }
            else
            {
                int i_readPersmatcount = fread (coreObjVirtBaseAddr2, 1, 4*9*4, dumpfilePersmat_ForLoad);
                printf("\nliuxu, 06/03/2014, for GA this time, i_readPersmatcount=%d bytes\n", i_readPersmatcount);
                fclose(dumpfilePersmat_ForLoad);
                close(memDevFd2);

                *((unsigned int *)(coreObjVirtBaseAddr2 + 0x888)) = 0x88888888;
///                i_saveFirstTime = 0;//liuxu, 06/03/2014, ready for fwrite/saving permat during next frame.

            }
#endif
*/

        }
    	else if((pressing == 1) && (released == 1))//liuxu, 10/18/2013, bug to improve, when rapidly press and release, the behavior may depends by chance.
    	{
    	    printf("\n\nliuxu, 10/18/2013, a normal key detected!!!\n\n");
    	    pressing = 0;
    	    released = 0;

    	    channelNo++;
    	    channelNo = channelNo%4; ///循环计数通道，总共四路摄像头

    	    ChInfoToDSP++;
///-gzd, 20150515    	ChInfoToDSP = ChInfoToDSP%7;//liuxu, 06/20/2014, add two cases for shuffling grx and video pipeline.//liuxu, 06/19/2014, for 5 layouts pattern of DSP and M3.
    	    ChInfoToDSP = ChInfoToDSP%8;///+ gzd,20150515 根据显示效果，取消立方体显示

     	    printf("\n\n >>> channelNo = %d, ChInfoToDSP = %d\n",channelNo, ChInfoToDSP);

    	    if(ChInfoToDSP == 5)
    	    {
//    	        system("echo 1,0/0/0/0 > /sys/devices/platform/vpss/display2/order");//liuxu, 06/20/2014, grx0 up.
    	    }
    	    else if (ChInfoToDSP == 6)
    	    {
    	    	///gzd 取消立方体显示
    	    	///- gzd system("echo 1,3/0/0/0 > /sys/devices/platform/vpss/display2/order");//liuxu, 06/20/2014, video up.
    	    }

    	    //liuxu, 02/19/2014, add key pad function.
    	    if(channelNo == 1)
    	    {
                //system("echo 1,3/0/0/0 > /sys/devices/platform/vpss/display2/order");//liuxu, 06/03/2014, video pipeline on the top.
    	        //system("echo 0 > /sys/devices/platform/vpss/graphics0/enabled");
    	        //liuxu, 06/03/2014, no grx2 now. system("echo 0 > /sys/devices/platform/vpss/graphics2/enabled");
    	    }
    	    else if (channelNo == 2)
    	    {
    	        //system("echo 1,0/0/0/0 > /sys/devices/platform/vpss/display2/order");//liuxu, 06/03/2014, grx0 pipeline on the top.
    	        //system("echo 1 > /sys/devices/platform/vpss/graphics0/enabled");
    	    }
    	    else if (channelNo == 3)
    	    {
    	        //system("echo 1 > /sys/devices/platform/vpss/graphics2/enabled");
    	    }
    	}
    	//printf("\nliuxu, after drawCube, ch=%d, pressing=%d, released=%d", ch, pressing, released);
#endif

        time3_profile = IviGetTime();

 #ifdef TI_DSP_PROCESSING

        if(idx == 24)
            drawCube(24, 24);//liuxu, 02/12/2014//liuxu, 06/02/2014, add 2nd parameter for side view.
        else
            drawCube(24, idx+channelNo*InterChannelIndexOffset);//liuxu, 02/12/2014//liuxu, 06/02/2014, add 2nd parameter for side view.

 #else
///- gzd 20150515        drawCube(idx+channelNo*InterChannelIndexOffset, 0);//liuxu, 06/19/2014, snd para is useless when disabled "DIRECT_SHOW" and "SIDE_VIEW"
 #endif
        time4_profile = IviGetTime() - time3_profile;
       // printf("\nliuxu, drawCube time per frame = %d ms!!", time4_profile);

#ifndef NO_MEMCPY
        idx = (idx + 1) % buf_info.n;
#endif

#endif

#ifdef MPEG4_ENCODER//liuxu, 8/21/2013, MPEG4 Encoder.

    	//pInputYUV = (unsigned char *)malloc(sizeof(unsigned char) * (lumalen + chromalen * 2) + alignment);
    	//alignoffset = alignment - (((unsigned int) pInputYUV) % alignment);

    	ProcMgr_translateAddr (handle,
                       &vitrualY,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pY_Pointer0,
                       ProcMgr_AddrType_SlaveVirt);

    	ProcMgr_translateAddr (handle,
                       &vitrualUV,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pUV_Pointer0,
                       ProcMgr_AddrType_SlaveVirt);

#if 0//liuxu, 12/24/2013. //liuxu, 12/19/2013, move to another thread.
        static int k = 0;
        int time1, time2;
        static int sum_time = 0;

        k++;


    	InputFrame.pY = vitrualY;//pInputYUV + alignoffset;
    	InputFrame.pU = vitrualUV;//InputFrame.pY + lumalen;
    	InputFrame.pV = NULL;//InputFrame.pU + chromalen;//liuxu, 8/21/2013, just two points for NV12.

    	InputFrame.TimeStamp = k;		// time stamp!
		InputFrame.userDoNotEncode = iviFalse;		// encode this frame!

		//If the user decides to drop the frame, then no matter what rc has decided the frame will be dropped.
		if (InputFrame.userDoNotEncode)
			InputFrame.DoNotEncode = InputFrame.userDoNotEncode;

		time1 = IviGetTime();

		if ( FAILED(MP4VEncSP_EncodeFrame(pEncoder, &InputFrame)) )
		{
		    printf("\nliuxu, MP4VEncSP_EncodeFrame Failed!!\n");
		}

		time2 = IviGetTime() - time1;

        printf("\nliuxu, k=%d, encoding per frame=%d-ms", k, time2);


		sum_time += time2;

		if(k == 1200)
		{
            printf("\nliuxu, k=%d, pointerY=0x%x, pointerUV=0x%x, pFrom_DSP_TempCmdMsg->pY_Pointer0=0x%x, pFrom_DSP_TempCmdMsg->pUV_Pointer0=0x%x\n", k, vitrualY, vitrualUV, pFrom_DSP_TempCmdMsg->pY_Pointer0, pFrom_DSP_TempCmdMsg->pUV_Pointer0);
            printf("liuxu, timestamp=%d, Average FPS is %f!\n", time1+time2, 1200 * 1000.0 / sum_time);

            while(1);

		}
#else
        video_Y_PointerFifo[writeIdx%4] = vitrualY;
    	video_UV_PointerFifo[writeIdx%4] = vitrualUV;
    	writeIdx++;
    	printf("\nliuxu, 12/19/2013, writeIdx = %d, readIdx = %d!!", writeIdx, readIdx);

#ifdef ONE_THREAD_TEST
    	sleep(5000);//liuxu, 12/19/2013, this is in unit of second???
#endif

#endif

#endif

//liuxu, 11/19/2013, ACK to DSP.
        time6_profile = IviGetTime();

//        将按键消息通过Queue传给DSP，ChInfoToDSP是按键消息
        cmdMsg->cmdType = (0x666 << 16 ) | ChInfoToDSP;//liuxu, 06/19/2014, pass info to DSP then M3 through DSP.//liuxu, 8/20/2013, ACK only.

        status = commandQPut(RemoteDspQId, (MessageQ_Msg )cmdMsg);

        if (status < 0)
        {
            printf("\nliuxu, commandQPut error, status=0x%x\n", status);//liuxuliuxu.
            while(1);
        }

        i_put++;

        time7_profile = IviGetTime() - time6_profile;
        //printf("\nliuxu, output IPC put per frame = %d ms, iput=%d!!", time7_profile, i_put);


        time2_profile = IviGetTime() - time1_profile;
        //liuxu, 06/16/2014, printf("\nliuxu, total time per frame = %d ms!!\n\n\n", time2_profile);

        //usleep(20000);//liuxu, 12/23/2013, usleep 20ms to yield to mpeg4 encoder thread.


    }while(1);

leave:
    printf("<-- Main_main leave:\n");//liuxu, 8/19/2013.

#ifdef MPEG4_ENCODER
     pthread_join (thread_id, NULL);//liuxu, 12/19/2013.
#endif

    status = (status >= 0 ? 0 : status);
    return (status);

#ifdef GFX_CUBE
err_ret:
        if (buf_param.type == BC_MEMORY_MMAP) {
            for (idx = 0; idx < buf_info.n; idx++) {
                if (buf_vaddr[idx] != MAP_FAILED)
                    munmap(buf_vaddr[idx], buf_size);
            }
        }
        if (bcfd > -1)
            close(bcfd);

        deInitEGL(buf_info.n);
        frame_cleanup();

        close(fd_gpio);

        printf("liuxu, CUBE done\n");
        return ret;
#endif

}
#endif ///LEGACY_MAIN
#endif

#if 0//liuxu, 10/17/2013, quicktest is just a test for 3D cube of color bar.
Int quicktest_Main_main(Void)
{
    UInt16      remoteProcId;
    Int         status = 0;
    Int         printremoteProcId = 0xff;

    MessageQ_Msg pTempCmdMsg = NULL;//liuxu, 8/20/2013.
    UInt16 nSRId = 0u;
    SharedRegion_SRPtr srPtr = {0u};
    cfg4Pointers_t *pFrom_DSP_TempCmdMsg = NULL;
    Int         k = 0;

    unsigned char *vitrualY;
    unsigned char *vitrualUV;
     int bcfd = -1; 
        char bcdev_name[] = "/dev/bccatX";
        BCIO_package ioctl_var;
        bc_buf_params_t buf_param;
        bc_buf_ptr_t buf_pa;

        unsigned long buf_paddr[MAX_BUFFERS];
        char *buf_vaddr[MAX_BUFFERS] = { MAP_FAILED };
        char *frame = NULL;
        int buf_size = 0;
        int c, idx, ret = -1;
        char opts[] = "pw:t:b:h";

        int   ii;
        int   frame_w, frame_h;
        int   min_w = 0, min_h = 0;;
        int   cp_offset = 0;

        struct timeval tvp, tv, tv0 = {0,0};
        unsigned long tdiff = 0;
        unsigned long fcount = 0;
    

    printf("--> Main_main:\n");
    


        if (frame_init(&buf_param))
            return -1;

        bcdev_name[strlen(bcdev_name)-1] = '0' + bcdev_id;

        if ((bcfd = open(bcdev_name, O_RDWR|O_NDELAY)) == -1) {
            printf("ERROR: open %s failed\n", bcdev_name);
            goto err_ret;
        }

        frame_w = buf_param.width;
        frame_h = buf_param.height;

        if (min_w > 0 && !(min_w % 8))
            buf_param.width = min_w;

        if (min_h > 0)
            buf_param.height = min_h;
     
        if (ioctl(bcfd, BCIOREQ_BUFFERS, &buf_param) != 0) {
            printf("ERROR: BCIOREQ_BUFFERS failed\n");
            goto err_ret;
        }

        if (ioctl(bcfd, BCIOGET_BUFFERCOUNT, &ioctl_var) != 0) {
            goto err_ret;
        }

        if (ioctl_var.output == 0) {
            printf("ERROR: no texture buffer available\n");
            goto err_ret;
        }

        if (initEGL(ioctl_var.output)) {
            printf("ERROR: init EGL failed\n");
            goto err_ret;
        }
     
        if ((ret = initTexExt(bcdev_id, &buf_info)) < 0) {
            printf("ERROR: initTexExt() failed [%d]\n", ret);
            goto err_ret;
        }

        if (buf_info.n > MAX_BUFFERS) {
            printf("ERROR: number of texture buffer exceeds the limit\n");
            goto err_ret;
        }

        /*FIXME calc stride instead of 2*/
        buf_size = buf_info.w * buf_info.h * 2;
        min_w    = buf_info.w < frame_w ? buf_info.w : frame_w;
        min_h    = buf_info.h < frame_h ? buf_info.h : frame_h;

        if (buf_info.h > frame_h)
            cp_offset = (buf_info.h - frame_h) * buf_info.w;

        if (buf_info.w > frame_w)
            cp_offset += buf_info.w - frame_w;

        if (buf_param.type == BC_MEMORY_MMAP) {
            for (idx = 0; idx < buf_info.n; idx++) {
                ioctl_var.input = idx;

                if (ioctl(bcfd, BCIOGET_BUFFERPHYADDR, &ioctl_var) != 0) {
                    printf("ERROR: BCIOGET_BUFFERADDR failed\n");
                    goto err_ret;
                }

                buf_paddr[idx] = ioctl_var.output;
                buf_vaddr[idx] = (char *)mmap(NULL, buf_size,
                                  PROT_READ | PROT_WRITE, MAP_SHARED,
                                  bcfd, buf_paddr[idx]);

                if (buf_vaddr[idx] == MAP_FAILED) {
                    printf("ERROR: mmap failed\n");
                    goto err_ret;
                }
            }
        }

        ret = 0;
        idx = 0;

        if (profiling == TRUE) {
            gettimeofday(&tvp, NULL);
            tv0 = tvp;
        }

        while (!gQuit) 
        {

#ifdef USE_SOLID_PATTERN
            usleep(1000 * 1000);
#endif
            
            frame = frame_get(&buf_pa);

            if (frame == (char *) -1)
                break;

            if (frame) {
                if (buf_param.type == BC_MEMORY_MMAP) {
                    for (ii = 0; ii < min_h; ii++)
                          /*FIXME calc stride instead of 2*/
                        memcpy(buf_vaddr[idx] + buf_info.w * 2 * ii + cp_offset,
                               frame + frame_w * 2 * ii, min_w * 2);
                }
                else    /*buf_param.type == BC_MEMORY_USERPTR*/
                    idx = buf_pa.index;
            }

            drawCube(idx);

            idx = (idx + 1) % buf_info.n;

            if (profiling == FALSE)
                continue;

            gettimeofday(&tv, NULL);

            fcount++;

            if (!(fcount % 60)) {
                tdiff = (unsigned long)(tv.tv_sec*1000 + tv.tv_usec/1000 -
                                    tvp.tv_sec*1000 - tvp.tv_usec/1000);
                if (tdiff < 1800)   /*print fps every 2 sec*/
                    continue;

                fprintf(stderr, "\rAvg FPS: %ld",
                        fcount / (tv.tv_sec - tv0.tv_sec));
                tvp = tv;
            }

        }

        printf("\n");

err_ret:
        if (buf_param.type == BC_MEMORY_MMAP) {
            for (idx = 0; idx < buf_info.n; idx++) {
                if (buf_vaddr[idx] != MAP_FAILED)
                    munmap(buf_vaddr[idx], buf_size);
            }
        }
        if (bcfd > -1)
            close(bcfd);

        deInitEGL(buf_info.n);
        frame_cleanup();

        printf("done\n");
        return ret;


       

leave: 
    printf("<-- Main_main leave:\n");//liuxu, 8/19/2013.
    
    status = (status >= 0 ? 0 : status);
    return (status);
}
#endif

/*
 *  ======== Main_parseArgs ========
 */
Int Main_parseArgs(Int argc, Char *argv[])
{
    Int             x, cp, opt, argNum;
    UInt16          i, numProcs;
    String          name;
    Int             status = 0;


    /* parse the command line options */
    for (opt = 1; (opt < argc) && (argv[opt][0] == '-'); opt++) {
        for (x = 0, cp = 1; argv[opt][cp] != '\0'; cp++) {
            x = (x << 8) | (int)argv[opt][cp];
        }

        switch (x) {
            case 'h': /* -h */
                printf("%s", Main_USAGE);
                exit(0);
                break;

            case 'l': /* -l */
                printf("Processor List\n");
                SysLink_setup();
                numProcs = MultiProc_getNumProcessors();
                for (i = 0; i < numProcs; i++) {
                    name = MultiProc_getName(i);
                    printf("    procId=%d, procName=%s\n", i, name);
                }
                SysLink_destroy();
                exit(0);
                break;

            default:
                printf(
                    "Error: %s, line %d: invalid option, %c\n",
                    __FILE__, __LINE__, (Char)x);
                printf("%s", Main_USAGE);
                status = -1;
                goto leave;
        }
    }

    /* parse the command line arguments */
    for (argNum = 1; opt < argc; argNum++, opt++) {

        switch (argNum) {
            case 1: /* name of proc #1 */
                Main_remoteProcName = argv[opt];
                break;

            default:
                printf(
                    "Error: %s, line %d: too many arguments\n",
                    __FILE__, __LINE__);
                printf("%s", Main_USAGE);
                status = -1;
                goto leave;
        }
    }

    /* validate command line arguments */
    if (Main_remoteProcName == NULL) {
        printf(
            "Error: %s, line %d: missing argument: proc\n",
            __FILE__, __LINE__);
        printf("%s", Main_USAGE);
        status = -1;
        goto leave;
    }

leave:
    return(status);
}

#ifdef NEW_MAIN
/***************************************************************************************************************
 * DSP主程序
 **************************************************************************************************************/
Int Main_main(Void)
{
    UInt16      remoteProcId;
    Int         status = 0;
    Int         printremoteProcId = 0xff;

    MessageQ_Msg pTempCmdMsg = NULL;//liuxu, 8/20/2013.
    UInt16 nSRId = 0u;
    SharedRegion_SRPtr srPtr = {0u};
    cfg8Pointers_t *pFrom_DSP_TempCmdMsg = NULL;

    unsigned char *vitrualY;
    unsigned char *vitrualUV;

    unsigned char *vitrualY1;//liuxu, 10/5/2013.
    unsigned char *vitrualY2;
    unsigned char *vitrualY3;

    unsigned char *vitrualUV1;
    unsigned char *vitrualUV2;
    unsigned char *vitrualUV3;

    int time1_profile, time2_profile, time3_profile, time4_profile, time5_profile, time6_profile,
    time7_profile, time8_profile, time9_profile;//liuxu, 10/12/2013.

    printf("\n******************************");
    printf("\n******** Main_main **********");
    printf("\n******************************");

#if 0 ///- GZD
#ifdef SAVE_PERSMAT_TO_FS
#endif
#endif

    printf("\nstep [1]: creating IPC");

    remoteProcId = MultiProc_getId("DSP");

    /* attach to the remote processor */
    printremoteProcId = MultiProc_getId("HOST");

    Osal_printf("\nliuxu, remoteProcId=%d, host-printremoteProcId=0x%x\n", remoteProcId, printremoteProcId);

    void *ipc_vector = (0x85c00400);//liuxu, 07/01/2014, this is the address of ipc header.

    #if 1
    status = Ipc_control(remoteProcId, Ipc_CONTROLCMD_LOADCALLBACK, &ipc_vector);//liuxu, 07/01/2014, support late attach.
    #else
    status = Ipc_control(remoteProcId, Ipc_CONTROLCMD_LOADCALLBACK, NULL);
    #endif

    if (status < 0) {
        printf("Main_main: load callback failed, remoteProcId=%d\n", remoteProcId);
        goto leave;
    }

    /* invoke the SysLink start callback */
    status = Ipc_control(remoteProcId, Ipc_CONTROLCMD_STARTCALLBACK, NULL);
    if (status < 0) {
        printf("Main_main: start callback failed\n");
        goto leave;
    }

    /* BEGIN application phase */
    printf("\nstep [2]: creating app");

    do
    {
		/* Open the heap created by the other processor. Loop until opened. */
		do
		{
			status = HeapBufMP_open(MSGQ_HEAP_NAME, &hHeap);
			/*
			 *  Sleep for 1 clock tick to avoid inundating remote processor
			 *  with interrupts if open failed
			 */
			if (status < 0)
			{
				sleep(1);//liuxu, 8/20/2013, sleep of linux.
			}
		} while (status < 0);

		/* Register this heap with MessageQ */
		MessageQ_registerHeap((IHeap_Handle) hHeap, MSGQ_HEAPID);

    } while(0);

    hMessageQ = MessageQ_create((String) "A8_CMD_Q_TO_DSP_LITE", NULL);
    cmdMsg = (cfg4Pointers_t *)MessageQ_alloc(MSGQ_HEAPID, ROUNDUP_SIZE(sizeof(cfg4Pointers_t), 128));//liuxuliuxu, don't forget to free at the end.

    do
    {
        status = MessageQ_open("DSP_CMD_Q_TO_A8", &RemoteDspQId);
    }while(status != 0);

#if 0 ///- gzd
	//以下代码保存摄像头图片
 #endif

#ifdef MPEG4_ENCODER
	//视频编码和存储
#endif

    //printf("\nliuxu, start, timestamp=%d!!!!\n", IviGetTime());//liuxuliuxu.
#ifdef GFX_CUBE
        int bcfd = -1;
        char bcdev_name[] = "/dev/bccatX";
        BCIO_package ioctl_var;
        bc_buf_params_t buf_param;
        bc_buf_ptr_t buf_pa;

        unsigned long buf_paddr[MAX_BUFFERS];
        char *buf_vaddr[MAX_BUFFERS] = { MAP_FAILED };
        char *frame = NULL;

        char *frameUV = NULL;

        int buf_size = 0;
        int c, idx, ret = -1;
        char opts[] = "pw:t:b:h";

        int   ii;
        int   frame_w, frame_h;
        int   min_w = 0, min_h = 0;;
        int   cp_offset = 0;

        struct timeval tvp, tv, tv0 = {0,0};
        unsigned long tdiff = 0;
        unsigned long fcount = 0;

        if (frame_init(&buf_param))
            return -1;

        bcdev_name[strlen(bcdev_name)-1] = '0' + bcdev_id;

        if ((bcfd = open(bcdev_name, O_RDWR|O_NDELAY)) == -1) {
            printf("ERROR: open %s failed\n", bcdev_name);
            goto err_ret;
        }

        frame_w = buf_param.width;
        frame_h = buf_param.height;

        if (min_w > 0 && !(min_w % 8))
            buf_param.width = min_w;

        if (min_h > 0)
            buf_param.height = min_h;

printf("\n-->liuxu, 06/19/2014, frame_w=%d, frame_h=%d, min_w=%d, min_h=%d", frame_w, frame_h, min_w, min_h);

        int check = 0;

#ifndef NO_MEMCPY
        if ((check = ioctl(bcfd, BCIOREQ_BUFFERS, &buf_param)) != 0) {
            printf("ERROR: BCIOREQ_BUFFERS failed, check=%d\n", check);
            goto err_ret;
        }

        if (ioctl(bcfd, BCIOGET_BUFFERCOUNT, &ioctl_var) != 0) {
            goto err_ret;
        }


        if (ioctl_var.output == 0) {
            printf("ERROR: no texture buffer available\n");
            goto err_ret;
        }
#else
        if ((check = ioctl(bcfd, BCIOREQ_BUFFERS, &buf_param)) != 0) {
            printf("ERROR: BCIOREQ_BUFFERS failed, check=%d\n", check);
            goto err_ret;
        }

        bc_buf_ptr_t buf_pa_init;

/*liuxu, 10/18/2013, channel 0*/
        buf_pa_init.pa = M3_FRAMEBUFFER_PA_0;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 0;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_1;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 1;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_2;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 2;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_3;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 3;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_4;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 4;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_5;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 5;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

/*liuxu, 10/18/2013, channel 1*/
        buf_pa_init.pa = M3_FRAMEBUFFER_PA_0+FRAME_SIZE;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 0+InterChannelIndexOffset;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_1+FRAME_SIZE;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 1+InterChannelIndexOffset;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_2+FRAME_SIZE;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 2+InterChannelIndexOffset;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_3+FRAME_SIZE;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 3+InterChannelIndexOffset;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_4+FRAME_SIZE;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 4+InterChannelIndexOffset;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_5+FRAME_SIZE;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 5+InterChannelIndexOffset;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

/*liuxu, 10/18/2013, channel 2*/
        buf_pa_init.pa = M3_FRAMEBUFFER_PA_0+FRAME_SIZE*2;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 0+InterChannelIndexOffset*2;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_1+FRAME_SIZE*2;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 1+InterChannelIndexOffset*2;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_2+FRAME_SIZE*2;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 2+InterChannelIndexOffset*2;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_3+FRAME_SIZE*2;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 3+InterChannelIndexOffset*2;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_4+FRAME_SIZE*2;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 4+InterChannelIndexOffset*2;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_5+FRAME_SIZE*2;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 5+InterChannelIndexOffset*2;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

/*liuxu, 10/18/2013, channel 3*/
        buf_pa_init.pa = M3_FRAMEBUFFER_PA_0+FRAME_SIZE*3;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 0+InterChannelIndexOffset*3;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_1+FRAME_SIZE*3;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 1+InterChannelIndexOffset*3;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_2+FRAME_SIZE*3;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 2+InterChannelIndexOffset*3;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_3+FRAME_SIZE*3;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 3+InterChannelIndexOffset*3;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_4+FRAME_SIZE*3;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 4+InterChannelIndexOffset*3;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        buf_pa_init.pa = M3_FRAMEBUFFER_PA_5+FRAME_SIZE*3;//liuxu, 10/12/2013, this is the false one just for init.
        buf_pa_init.index = 5+InterChannelIndexOffset*3;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }

        #ifdef TI_DSP_PROCESSING
        buf_pa_init.pa = 0x8ff00000;//liuxu, 02/12/2014, add one/idx24 for outputbuf of ti dsp processing, hard coding.
        buf_pa_init.index = 24;
        if (ioctl(bcfd, BCIOSET_BUFFERPHYADDR, &buf_pa_init) != 0)
        {
            printf("\nliuxu, ERROR: BCIOSET_BUFFERPHYADDR error, %d, 0x%lx\n", buf_pa_init.index, buf_pa_init.pa);
            return -1;
        }
        #endif

#endif //NO_MEMCPY

        if (initEGL(ioctl_var.output)) {
            printf("ERROR: init EGL failed\n");
            goto err_ret;
        }

        if ((ret = initTexExt(bcdev_id, &buf_info)) < 0) {
            printf("ERROR: initTexExt() failed [%d]\n", ret);
            goto err_ret;
        }

        if (buf_info.n > MAX_BUFFERS) {
            printf("ERROR: number of texture buffer exceeds the limit\n");
            goto err_ret;
        }

printf("\n--> liuxu buf number 10/12/2013, buf_info.n=%d\n", buf_info.n);

        /*FIXME calc stride instead of 2*/
        buf_size = buf_info.w * buf_info.h * 1.5;//liuxu, 9/7/2013. ?????
        min_w    = buf_info.w < frame_w ? buf_info.w : frame_w;
        min_h    = buf_info.h < frame_h ? buf_info.h : frame_h;

        if (buf_info.h > frame_h)
            cp_offset = (buf_info.h - frame_h) * buf_info.w;

        if (buf_info.w > frame_w)
            cp_offset += buf_info.w - frame_w;

printf("\n\n\n--> liuxu checkpoint, cp_offset=%d 10/12/2013\n\n\n", cp_offset);


        if (buf_param.type == BC_MEMORY_USERPTR) {
            ;//liuxu, 10/10/2013, space holder.
        }
        else if (buf_param.type == BC_MEMORY_MMAP) {
            for (idx = 0; idx < buf_info.n; idx++) {
                ioctl_var.input = idx;

                if (ioctl(bcfd, BCIOGET_BUFFERPHYADDR, &ioctl_var) != 0) {
                    printf("ERROR: BCIOGET_BUFFERADDR failed\n");
                    goto err_ret;
                }


                buf_paddr[idx] = ioctl_var.output;
                buf_vaddr[idx] = (char *)mmap(NULL, buf_size,
                                  PROT_READ | PROT_WRITE, MAP_SHARED,
                                  bcfd, buf_paddr[idx]);

                if (buf_vaddr[idx] == MAP_FAILED) {
                    printf("ERROR: mmap failed\n");
                    goto err_ret;
                }

            }
        }

        ret = 0;
        idx = 0;
#endif ///#ifdef GFX_CUBE

#ifndef CARIT_KEY  ///串口通信消息处理
    printf("[gzd]  Creating comm thread, UART2 ...");
	ret = COMM_CreateTask();
	if(ret < 0) {
		printf("\n\n gzd, ERROR! Create UART comm task failed. \n");
	}
	else {
		printf("\n\n gzd, OK to Create UART comm task. \n");
	}
#endif

	///启动界面显示
	cmdMsg->cmdType = (0x666 << 16 ) | MSG_FRONT;//liuxu, 06/19/2014, pass info to DSP then M3 through DSP.//liuxu, 8/20/2013, ACK only.
	status = commandQPut(RemoteDspQId, (MessageQ_Msg )cmdMsg);
	if (status < 0)
		printf("\n gzd, ERR to send msg to DSP, status=0x%x\n", status);
	else
		printf("\ngzd, OK to send a new msg to DSP, cmd = %d", MSG_FRONT);

#ifdef CARIT_KEY
        ///使用中通福瑞按键
	printf("\nstep [3]: creating CARIT KEY detecting thread ...... ");
	sleep(1);
        ret = CreateCaritKeyboardProcThread();
        if(ret < 0)
    		printf("FAILED, ret = %d ", ret);
        else
    		printf("OK");
#endif

/*
 * 以下部分进入主循环，从消息队列提取按键消息并处理，包括画面切换显示、各通道抓取图片、校正和保存参数
 */
    int i_put = 0;
    int i_get = 0;

    do
    {
        time1_profile = IviGetTime();

        //printf("\nliuxu, before commandQGet");

        ///从消息队列提取消息
        status = commandQGet(hMessageQ, &(pTempCmdMsg), (UInt32)MessageQ_FOREVER);

#if 0
///以下部分保存校正参数
#ifdef SAVE_PERSMAT_TO_FS  ///+，gzd， 保存校正参数到SD卡
#endif ///SAVE_PERSMAT_TO_FS
#endif

        //printf("\nliuxu, after commandQGet");

        if (status < 0)
        {
            printf("\nliuxu, commandQGet error, status=0x%x\n", status);//liuxuliuxu.
            while(1);
        }

        time5_profile = IviGetTime() - time1_profile;
        //printf("\nliuxu, input IPC get per frame = %d ms!!", time5_profile);

        time8_profile = IviGetTime();

///从消息字段中提取共享存储区
        /* Get the id of the address if id is not already known. */
        nSRId = SharedRegion_getId(pTempCmdMsg);
        /* Get the shared region pointer for the address */
        srPtr = SharedRegion_getSRPtr(pTempCmdMsg, nSRId);
        /* Get the address back from the shared region pointer */
        pFrom_DSP_TempCmdMsg = SharedRegion_getPtr(srPtr);

        while(pFrom_DSP_TempCmdMsg->cmdType != 0x777)
        {
            printf("\nliuxu, pFrom_DSP_TempCmdMsg->cmdType != 0x777\n");
        }

        i_get++;

        time9_profile = IviGetTime() - time8_profile;
        //printf("\nliuxu, share region parser for ipc per frame = %d ms, iget=%d!!", time9_profile, i_get);

        //k++;
        //printf("\nliuxu, k=%d, pointerY=0x%x, pointerUV=0x%x\n", k, pFrom_DSP_TempCmdMsg->pPointer0, pFrom_DSP_TempCmdMsg->pPointer1);


#ifdef GFX_CUBE
        //frame = frame_get(&buf_pa);

#ifndef NO_MEMCPY
        ProcMgr_Handle               handle = NULL;

    	status = ProcMgr_open (&handle, 0);

    	//printf("\nliuxu, ProcMgr_open successful, handle=0x%x\n", handle);//liuxuliuxu.


    	if (status < 0)
        {
            printf("\nliuxu, ProcMgr_open error, status=0x%x\n", status);//liuxuliuxu.
            while(1);
        }


    	ProcMgr_translateAddr (handle,
                       &vitrualY,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pY_Pointer0,
                       ProcMgr_AddrType_SlaveVirt);

    	ProcMgr_translateAddr (handle,
                       &vitrualUV,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pUV_Pointer0,
                       ProcMgr_AddrType_SlaveVirt);

        ProcMgr_translateAddr (handle,
                       &vitrualY1,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pY_Pointer1,
                       ProcMgr_AddrType_SlaveVirt);

    	ProcMgr_translateAddr (handle,
                       &vitrualUV1,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pUV_Pointer1,
                       ProcMgr_AddrType_SlaveVirt);

        ProcMgr_translateAddr (handle,
                       &vitrualY2,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pY_Pointer2,
                       ProcMgr_AddrType_SlaveVirt);

    	ProcMgr_translateAddr (handle,
                       &vitrualUV2,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pUV_Pointer2,
                       ProcMgr_AddrType_SlaveVirt);

        ProcMgr_translateAddr (handle,
                       &vitrualY3,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pY_Pointer3,
                       ProcMgr_AddrType_SlaveVirt);

    	ProcMgr_translateAddr (handle,
                       &vitrualUV3,
                       ProcMgr_AddrType_MasterUsrVirt,
                       pFrom_DSP_TempCmdMsg->pUV_Pointer3,
                       ProcMgr_AddrType_SlaveVirt);

        frame = vitrualY3;//liuxu, 10/5/2013, either 0,1,2,3 can be used here or you can use them together in your app!!!!!!!!
        frameUV = vitrualUV3;
#else

        if(pFrom_DSP_TempCmdMsg->pY_Pointer0 == M3_FRAMEBUFFER_PA_0)
            idx = 0;
        else if(pFrom_DSP_TempCmdMsg->pY_Pointer0 == M3_FRAMEBUFFER_PA_1)
            idx = 1;
        else if(pFrom_DSP_TempCmdMsg->pY_Pointer0 == M3_FRAMEBUFFER_PA_2)
            idx = 2;
        else if(pFrom_DSP_TempCmdMsg->pY_Pointer0 == M3_FRAMEBUFFER_PA_3)
            idx = 3;
        else if(pFrom_DSP_TempCmdMsg->pY_Pointer0 == M3_FRAMEBUFFER_PA_4)
            idx = 4;
        else if(pFrom_DSP_TempCmdMsg->pY_Pointer0 == M3_FRAMEBUFFER_PA_5)
            idx = 5;
        else
            idx = 0;;//liuxu, 06/19/2014, here is a RISK...//liuxu, 06/05/2014, test for PAL cam..//printf("\n\nliuxu, error!!!!\n\n");

#endif ///GFX_CUBE

#ifndef NO_MEMCPY
        time3_profile = IviGetTime();

        if (frame == (char *) -1)
            break;

        if (frame) {
            if (buf_param.type == BC_MEMORY_MMAP) {
                for (ii = 0; ii < min_h; ii++)
                      /*FIXME calc stride instead of 2*/
                    memcpy(buf_vaddr[idx] + buf_info.w * ii + cp_offset,
                           frame + 736 * ii, min_w);//liuxu, 9/7/2013.

                for (ii = 0; ii < min_h/2; ii++)
                    memcpy(buf_info.w * buf_info.h + buf_vaddr[idx] + buf_info.w * ii + cp_offset,
                           frameUV + 736 * ii, min_w);//liuxu, 9/7/2013, for UV of NV12.

            }
            else    /*buf_param.type == BC_MEMORY_USERPTR*/
                idx = buf_pa.index;
        }

        time4_profile = IviGetTime() - time3_profile;
        printf("\nliuxu, memory copy time per frame = %d ms!!", time4_profile);
#else
        if (buf_param.type == BC_MEMORY_USERPTR)
        {
            //printf("\nliuxu, 10/10/2013, good, idx=%d!!!\n", idx);
        }

///响应按键消息，切换显示画面
      	//printf("\nliuxu, after drawCube, ch=%d, pressing=%d, released=%d", ch, pressing, released);
#endif

        time3_profile = IviGetTime();

 #ifdef TI_DSP_PROCESSING

        if(idx == 24)
            drawCube(24, 24);//liuxu, 02/12/2014//liuxu, 06/02/2014, add 2nd parameter for side view.
        else
            drawCube(24, idx+channelNo*InterChannelIndexOffset);//liuxu, 02/12/2014//liuxu, 06/02/2014, add 2nd parameter for side view.

 #else
///- gzd 20150515        drawCube(idx+channelNo*InterChannelIndexOffset, 0);//liuxu, 06/19/2014, snd para is useless when disabled "DIRECT_SHOW" and "SIDE_VIEW"
 #endif
        time4_profile = IviGetTime() - time3_profile;
       // printf("\nliuxu, drawCube time per frame = %d ms!!", time4_profile);

#ifndef NO_MEMCPY
        idx = (idx + 1) % buf_info.n;
#endif

#endif


        i_put++;

        time7_profile = IviGetTime() - time6_profile;
        //printf("\nliuxu, output IPC put per frame = %d ms, iput=%d!!", time7_profile, i_put);
        time2_profile = IviGetTime() - time1_profile;
        //liuxu, 06/16/2014, printf("\nliuxu, total time per frame = %d ms!!\n\n\n", time2_profile);

        usleep(20000);//liuxu, 12/23/2013, usleep 20ms to yield to mpeg4 encoder thread.
    }while(1);

leave:
    printf("<-- Main_main leave:\n");//liuxu, 8/19/2013.

#ifdef MPEG4_ENCODER
     pthread_join (thread_id, NULL);//liuxu, 12/19/2013.
#endif

    status = (status >= 0 ? 0 : status);
    return (status);

#ifdef GFX_CUBE
err_ret:
        if (buf_param.type == BC_MEMORY_MMAP) {
            for (idx = 0; idx < buf_info.n; idx++) {
                if (buf_vaddr[idx] != MAP_FAILED)
                    munmap(buf_vaddr[idx], buf_size);
            }
        }
        if (bcfd > -1)
            close(bcfd);

        deInitEGL(buf_info.n);
        frame_cleanup();

//        close(fd_gpio);

        printf("liuxu, CUBE done\n");
        return ret;
#endif

}

#ifdef CARIT_KEY
/**
 * 创建开发板按键处理线程
 *
 * @return
 */
int CreateCaritKeyboardProcThread(void)
{
	int err = 0;

	printf("\n creating CARIT Keyboard detecting thread ...");
//	sleep(1);

	///创建线程
    err = pthread_create (&keyProc_threadid, NULL, CaritBoardKeyProc, NULL);
    if (err != 0)
    {
        printf("\n\n FAILED to create thread: %s\n", strerror(err));
//    	sleep(1);
      return -1;
    }

    printf("\n\n OK to create thread, thread_id = %d\n", keyProc_threadid);
//	sleep(1);

    return 0;
}

/**
 * 中通福瑞开发板按键消息处理，继承原来的处理方式，不同的是为期单独创建一个线程
 */
void CaritBoardKeyProc(void)
{
	static int fd_gpio = -1;
	static char ch;
	static int pressing, released;
	static int channelNo = 0;
	static int long_press_counter = 0;
	static int long_pressed_trigger = 0;

	static int ChInfoToDSP = 0;


// + a0220402, add support carit board key
#ifdef CONFIG_CARIT
	if(fd_gpio < 0) {
		fd_gpio = open("/sys/class/gpio/gpio4/value", O_RDONLY | O_NONBLOCK );
	}
#else
	fd_gpio = open("/sys/class/gpio/gpio39/value", O_RDONLY | O_NONBLOCK );//liuxu, 10/18/2013, for detecting sw9 of J5eco EVM.
#endif
// - a0220402,
	if (fd_gpio < 0) {
		printf("\n *** ERR ***, open dev failed. \n");
		return -1;
	}

	printf("\n OK to open GPIO device, fd_gpio=%d\n\n\n", fd_gpio);

	while(1)
	{
		lseek(fd_gpio, 0, SEEK_SET);
		read(fd_gpio, &ch, 1);

	///响应按键消息，切换显示画面
		if (ch == '0')  ///按键状态：触发
		{
			pressing = 1;
			long_press_counter++;
			long_pressed_trigger = 0;
		}
		else if (pressing == 1) ///按键状态：按下
		{
			 released = 1;
			 if(long_press_counter > 10*5)//liuxu, 06/03/2014, 5s for long press.  检测长按
			 {
				long_press_counter = 0;
				long_pressed_trigger = 1;
			 }
			 printf("\n---------- KEY released! --------------");
		}
		else ///按键状态：释放
		{
			pressing = 0;
			released = 0;
			long_press_counter = 0;
			long_pressed_trigger = 0;
		}

		//printf("\nliuxu, 6/3/2014, ch=%c, pressing=%d, released=%d!!!\n", ch, pressing, released);
		if(long_pressed_trigger == 1) //长按，存储拼接校正参数
		{
			pressing = 0;
			released = 0;
			long_press_counter = 0;
			long_pressed_trigger = 0;
			int ret = 0;

			///读取DSP_Persmat.dat，内存映射到DSP
			printf("\nliuxu, 06/03/2014, long pressed triggered\n");
			printf("\n Detected a long press, start COLABRATING ...");

			ret = TakeCalibrating();
			if(ret < 0)
				printf("\n :( Colabring failed! ret = %d", ret);
			else
				printf("\n :) Colabrated OK! ");
		}
		else if((pressing == 1) && (released == 1))//liuxu, 10/18/2013, bug to improve, when rapidly press and release, the behavior may depends by chance.
		{
			printf("\n\nliuxu, 10/18/2013, a normal key detected!!!\n\n");
			pressing = 0;
			released = 0;

			channelNo++;
			channelNo = channelNo%4; ///循环计数通道，总共四路摄像头

			ChInfoToDSP++;
			ChInfoToDSP = ChInfoToDSP % 8;///+ gzd,20150515 根据显示效果，取消立方体显示

			printf("\n\n >>> channelNo = %d, ChInfoToDSP = %d\n",channelNo, ChInfoToDSP);

			if(ChInfoToDSP == 5)
			{
	//    	        system("echo 1,0/0/0/0 > /sys/devices/platform/vpss/display2/order");//liuxu, 06/20/2014, grx0 up.
			}
			else if (ChInfoToDSP == 6)
			{
				///gzd 取消立方体显示
				///- gzd system("echo 1,3/0/0/0 > /sys/devices/platform/vpss/display2/order");//liuxu, 06/20/2014, video up.
			}

			///???以下函数作用不清楚
			//liuxu, 02/19/2014, add key pad function.
			if(channelNo == 1)
			{
				//system("echo 1,3/0/0/0 > /sys/devices/platform/vpss/display2/order");//liuxu, 06/03/2014, video pipeline on the top.
				//system("echo 0 > /sys/devices/platform/vpss/graphics0/enabled");
				//liuxu, 06/03/2014, no grx2 now. system("echo 0 > /sys/devices/platform/vpss/graphics2/enabled");
			}
			else if (channelNo == 2)
			{
				//system("echo 1,0/0/0/0 > /sys/devices/platform/vpss/display2/order");//liuxu, 06/03/2014, grx0 pipeline on the top.
				//system("echo 1 > /sys/devices/platform/vpss/graphics0/enabled");
			}
			else if (channelNo == 3)
			{
				//system("echo 1 > /sys/devices/platform/vpss/graphics2/enabled");
			}

	//      将按键消息通过Queue传给DSP，ChInfoToDSP是按键消息
			cmdMsg->cmdType = (0x666 << 16 ) | ChInfoToDSP;//liuxu, 06/19/2014, pass info to DSP then M3 through DSP.//liuxu, 8/20/2013, ACK only.

			int status = commandQPut(RemoteDspQId, (MessageQ_Msg )cmdMsg);
			if (status < 0)
				printf("\n gzd, ERR to send msg to DSP, status=0x%x\n", status);
			else
				printf("\ngzd, OK to send a new msg to DSP, cmd = %d", ChInfoToDSP);

		}

		usleep(100000); ///延迟10ms
	}///end while(1)

	close(fd_gpio);
	fd_gpio = -1;

}
#endif //CARIT_KEY

/********************************************************************************************************
 * 核心板A8主控程序与底板MCU之间的通信串口程序
 *******************************************************************************************************/
#ifdef A8_MCU_COMM_UART

static pthread_t thread_id;


//#ifndef UInt8
//typedef unsigned char UInt8
//#endif

#define  CMD_HEAD	0x55	/*控制命令，MCU->A8*/
#define  ACK_HEAD	0xAA	/*应答命令，A8->MCU*/

/*命令执行结果*/
//typedef enum {
//	RET_OK = 1,  	/*成功*/
//	RET_FAIL = -1, 	/*失败*/
//	RET_TOUT = 0, 		/*超时*/
//} eRET;

/*控制命令数据格式*/
typedef struct _tMSG_CMD {
	UInt8 head;		/*消息头，0x55*/
	UInt8 cmd;			/*命令类型*/
	UInt8 param[4];	/*命令参数*/
	UInt8 checksum;	/*校验和*/
} tMSG_CMD;

/*应答命令数据格式*/
typedef struct _tMSG_ACK {
	UInt8 head;		/*消息头，0xAA*/
	UInt8 cmd;			/*命令类型*/
	UInt8 ret;			/*命令执行结果*/
	UInt8 checksum;	/*校验和*/
} tMSG_ACK;


#define BUF_SIZE	100

///循环数组
typedef struct  _tRINGBUF {
	UInt8 buf[BUF_SIZE];	///数组缓区
	UInt8 read;			///读位置
	UInt8 write;			///写位置

} tRINGBUF;

static tRINGBUF	tRBuf;
static int serial_fd = 0;

static void COMM_Proc(void);
static int UART_Init(void);
static int UART_Send(int fd, UInt8 *data, int datalen);
static int UART_Recv(int fd, UInt8 *data, int datalen);
static void attach2Tail(UInt8 *buf, UInt8 len, tRINGBUF *ptRBuf);
static UInt8 CalChecksum(UInt8 *data, UInt8 u8Len);
static int COMM_TakeFrame(tRINGBUF *ptRBuf, tMSG_CMD *ptCmd);
static void COMM_Proc(void);

/**
 * 打开串口并初始化设置
 */
int UART_Init(void)
{
	int ret = 0;
	struct termios  old_termios;
    struct termios  new_termios;

#if 1
	serial_fd = open("/dev/ttyO1",O_RDWR|O_NONBLOCK);
	if(serial_fd < 0){
		perror("\n serial open fail\n");
		return -errno;
	}

	tcgetattr(serial_fd, &old_termios);
	new_termios = old_termios;
	new_termios.c_lflag &= ~(ICANON | ECHO | ISIG);
	new_termios.c_cflag |= (CREAD | CLOCAL);
	new_termios.c_cflag &= ~(CSTOPB | PARENB | CRTSCTS);
	new_termios.c_cflag &= ~(CBAUD | CSIZE) ;
	new_termios.c_cflag |= (B115200 | CS8);
	ret = tcsetattr(serial_fd, TCSANOW, &new_termios);
	if(ret < 0) {
		printf("\ngzd, UART_Init tcsetattr failed! errno = %d\n", errno);
		return ret;
	}
#endif
#if 0


    //串口主要设置结构体termios <termios.h>
    struct termios options;

    serial_fd = open(DEVICE, O_RDWR | O_NOCTTY | O_NDELAY);
    if (serial_fd < 0) {
        perror("open");
        return -1;
    }

    /**1. tcgetattr函数用于获取与终端相关的参数。
    *参数fd为终端的文件描述符，返回的结果保存在termios结构体中
    */
    tcgetattr(serial_fd, &options);
    /**2. 修改所获得的参数*/
    options.c_cflag |= (CLOCAL | CREAD);//设置控制模式状态，本地连接，接收使能
    options.c_cflag &= ~CSIZE;//字符长度，设置数据位之前一定要屏掉这个位
    options.c_cflag &= ~CRTSCTS;//无硬件流控
    options.c_cflag |= CS8;//8位数据长度
    options.c_cflag &= ~CSTOPB;//1位停止位
    options.c_cflag &= ~PARENB; //无奇偶检验位
    options.c_iflag &= ~IGNPAR;//无奇偶检验位

    //options.c_iflag |= ~IGNPAR;//无奇偶检验位
    /*使用原始模式(Raw Mode)方式来通讯*/
    options.c_lflag  &= ~(ICANON | ECHO | ECHOE | ISIG);  /*Input*/
    options.c_oflag  &= ~OPOST;   /*Output*/
    /*无软件流控*/
    options.c_iflag &= ~(IXON | IXOFF | IXANY);

    ret = cfsetispeed(&options, B115200);
    if(ret < 0) {
    	printf("\ngzd, UART_Init cfsetispeed failed!\n");
    	return ret;
    }
    ret = cfsetospeed(&options, B115200);//设置波特率
    if(ret < 0) {
    	printf("\ngzd, UART_Init cfsetospeed failed!\n");
    	return ret;
    }

    /**3. 设置新属性，TCSANOW：所有改变立即生效*/
    ret = tcflush(serial_fd, TCIFLUSH);//溢出数据可以接收，但不读
    if(ret < 0) {
    	printf("\ngzd, UART_Init tcflush failed! errno = %d\n", errno);
    	return ret;
    }

    ret = tcsetattr(serial_fd, TCSANOW, &options);
    if(ret < 0) {
    	printf("\ngzd, UART_Init tcsetattr failed! errno = %d\n", errno);
    	return ret;
    }
#endif

    return 0;
}

/**
 * 串口发送数据
 *
 * @param fd		串口文件描述符
 * @param data		待发送数据
 * @param datalen	数据长度
 * @return 0=成功，-1=失败
 */
int UART_Send(int fd, UInt8 *data, int datalen)
{
    int len = 0;

	printf("\ngzd, UART_Send, <%x %x %x %x %x>... \n", data[0], data[1], data[2], data[3], data[4]);

    len = write(fd, data, datalen);
    if(len == datalen) {
        return 0;
    }
    else {
    	tcflush(fd, TCOFLUSH);
    	return -1;
    }
}

/**
 * 串口接收数据
 *
 * @param fd			串口文件描述符
 * @param data			接收数据缓区
 * @param datalen		接收数据长度
 * @return  返回实际长度，-1：错误
 */
int UART_Recv(int fd, UInt8 *data, int datalen)
{
    int len=0, ret = 0;
    fd_set fs_read;
    struct timeval tv_timeout;
#if 0
    FD_ZERO(&fs_read);
    FD_SET(fd, &fs_read);
    tv_timeout.tv_sec  = (10*20/115200+2);
    tv_timeout.tv_usec = 0;

    ret = select(fd+1, &fs_read, NULL, NULL, &tv_timeout);
    if(ret < 0) {
        printf("gzd, UART_Recv(), select failed!");
      	return ret;
    }

    if (!FD_ISSET(fd, &fs_read)) {
        perror("select");
        printf("gzd, UART_Recv(), FD_ISSET failed!");
        return -1;
    }
#endif

    len = read(fd, data, datalen);
	return len;
}

/**
 * 将从串口读出的数据添加到接收缓区尾部，防止读取到不完整帧
 *
 * @param buf			串口读取数据
 * @param len			读数据长度
 * @param ptRBuf		接收缓区对象
 * @return
 */
void attach2Tail(UInt8 *buf, UInt8 len, tRINGBUF *ptRBuf)
{
	UInt8 i = 0;

	while((i < len) && (ptRBuf->read != ptRBuf->write))
	{
		ptRBuf->buf[ptRBuf->write] = buf[i];
		ptRBuf->write ++;
		if(ptRBuf->write >= BUF_SIZE)
			ptRBuf->write = 0;
		i++;
	}
}

/*
 * 计算校验和，抑或
 */
UInt8 CalChecksum(UInt8 *data, UInt8 u8Len)
{
	UInt8 i = 0;
	UInt8 checksum = 0;

	while(i < u8Len) {
		checksum ^= data[i];
		i++;
	}

	return checksum;
}

/**
 * 提取命令帧
 */
int COMM_TakeFrame(tRINGBUF *ptRBuf, tMSG_CMD *ptCmd)
{
	UInt8 tmpCursor = 0;
	UInt8 *paCmd = (UInt8 *)ptCmd;
	UInt8 i = 0;
	UInt8 checksum = 0;

	///查找帧头
	while(ptRBuf->read != ptRBuf->write) {
		if(ptRBuf->buf[ptRBuf->read] == CMD_HEAD) {
			break;
		}

		ptRBuf->read ++;
		if(ptRBuf->read >= BUF_SIZE)
			ptRBuf->read = 0;
	}

	if(ptRBuf->read == ptRBuf->write)	///空
		return -1;

	///检查缓区内是否有一帧，简单地进行帧长度比较
	tmpCursor = ptRBuf->read + sizeof(tMSG_CMD);
	if(tmpCursor >= BUF_SIZE)
		tmpCursor = tmpCursor - BUF_SIZE;
	if(tmpCursor >= ptRBuf->write)
		return -1;

	///有一帧
	ptCmd->head = CMD_HEAD;
	ptRBuf->read ++;
	if(ptRBuf->read >= BUF_SIZE)
		ptRBuf->read = 0;

	i = 0;
	while(ptRBuf->read != ptRBuf->write) {
		paCmd[i++] = ptRBuf->buf[ptRBuf->read++];
		if(ptRBuf->read >= BUF_SIZE)
			ptRBuf->read = 0;
	}

	///帧内容检查
	checksum = CalChecksum(paCmd, sizeof(tMSG_CMD) - 1);
	if(ptCmd->checksum != checksum)
		return -1;

	return 0;
}

/**
 * 创建串口通信A8端监听线程
 */
int COMM_CreateTask(void)
{
	int err = 0;
	int ret;

	///接收队列读写位置初始化
	tRBuf.read = 0;
	tRBuf.write = 0;

	///串口初始化
	ret = UART_Init();
	if(ret < 0)
	{
		printf("\n GZD, uart init failed!");
		return ret;
	}

	///创建读线程
    err = pthread_create (&thread_id, NULL, COMM_Proc, NULL);
    if (err != 0)
    {
        printf("\n\n\nGZD, can't create thread: %s\n", strerror(err));
        while(1);
    }

    printf("\n\n\nGZD, thread_id = %d\n", thread_id);

    return 0;
}

/**
 * 串口通信处理程序，A8核程序从MCU接收串口消息，发送给DSP处理
 */
void COMM_Proc(void)
{
	int readBytes = 0;
#define RECV_LEN 20
	UInt8 rd_buf[RECV_LEN];
	int ret;
	tMSG_CMD tCmd;
	int status;
static UInt8 TX_buf[5];

	TX_buf[0] = 0x31;
	TX_buf[1] = 0x32;
	TX_buf[2] = 0x33;
	TX_buf[3] = 0x39;
	TX_buf[4] = 0x38;

	while(1)
	{
		printf("\ngzd, UART send data, [%x %x %x %x %x]... \n", TX_buf[0], TX_buf[1], TX_buf[2], TX_buf[3], TX_buf[4]);
		ret = UART_Send(serial_fd, TX_buf, 5);
		if(ret < 0)
			printf("\n gzd, send error, err = %d\n", ret);
		else
			printf("\n gzd, send ok.\n");

		readBytes = UART_Recv(serial_fd, rd_buf, RECV_LEN);
		if(readBytes > 0) {
			//回显接收到的数据
			int i = 0;
			printf("\n gzd, Get UART Msg: { ");
			for(; i < readBytes; i++) {
				printf(" %x ", rd_buf[i]);
			}
			printf(" } \n ");

			attach2Tail(rd_buf, readBytes, &tRBuf);
			ret = COMM_TakeFrame(&tRBuf, &tCmd);
			if(ret > 0) {
				printf("\n[UART] Get Msg, cmd = %x, param[0..3] = %x, %x, %x, %x\n",
						tCmd.cmd, tCmd.param[0], tCmd.param[1], tCmd.param[2], tCmd.param[3]);


				//将按键消息原封不动转发给DSP，A8不做任何判断，因为A8不知道当前的操作含义
				cmdMsg->cmdType = (0x666 << 16 ) | tCmd.cmd;
				cmdMsg->cmdParam[0] = tCmd.param[0];
				cmdMsg->cmdParam[1] = tCmd.param[1];
				cmdMsg->cmdParam[2] = tCmd.param[2];
				cmdMsg->cmdParam[3] = tCmd.param[3];
				status = commandQPut(RemoteDspQId, (MessageQ_Msg )cmdMsg); ///消息发送到DSP的消息队列
				if (status < 0)
				{
					printf("\n gzd, commandQPut error, status=0x%x\n", status);
				} else {
					printf("\n cmd send ok to DSP.\n");
				}
			}
		}
		else {
			printf("\nGZD, no msg from UART\n");
		}
		usleep(1000000);
	}//while
}
#if 0
				switch(tCmd.cmd)
				{
				case MSG_FRONT:		/*方向前*/
				case MSG_FRONT_FULLVIEW:	/*方向前-全屏*/
				case MSG_LEFT:			/*方向左*/
				case MSG_LEFT_FULLVIEW:	/*方向左-全屏*/
				case MSG_RIGHT:   		/*方向右*/
				case MSG_RIGHT_FULLVIEW:	/*方向右-全屏*/
				case MSG_REAR:			/*倒车*/
				case MSG_ALLVIEW:		/*四路视频同时显示*/
					cmdMsg->cmdType = (0x666 << 16 ) | tCmd.cmd;
					cmdMsg->cmdParam[0] = tCmd.param[0];
					cmdMsg->cmdParam[1] = tCmd.param[1];
					cmdMsg->cmdParam[2] = tCmd.param[2];
					cmdMsg->cmdParam[3] = tCmd.param[3];
					status = commandQPut(RemoteDspQId, (MessageQ_Msg )cmdMsg); ///消息发送到DSP的消息队列
					if (status < 0)
					{
						printf("\n gzd, commandQPut error, status=0x%x\n", status);
					} else {
						printf("\n cmd send ok to DSP.\n");
					}
					break;

				case MSG_SNAPSHOT:	/*标定-截图*/
					/*
					 * 标定时，设备端需要做两个工作，一是从四路摄像头各拍一帧照片存储到SD卡；二是读取SD卡中的校正参数文件
					 * DSP_Persmat.dat，通过共享内存映射到DSP。
					 */
					TakeSnapshot();
					break;

				case MSG_CALIBRATING: /*通知DSP开始标定*/

					TakeCalibrating();
					break;

				case MSG_SLEEP:			/*休眠*/

					break;
				}
#endif

#endif //A8_MCU_COMM_UART

/**
 * 摄像头截图并存储到SD卡，供校正用
 *
 * @return 0=成功，-1=失败
 */
int TakeSnapshot(void)
{
	ProcMgr_Handle   handle = NULL;
	unsigned char *hardFrameOutput0;
	unsigned char *hardFrameOutput1;
	unsigned char *hardFrameOutput2;
	unsigned char *hardFrameOutput3;//liuxu, 02/20/2014, 0x8ff00000.

	unsigned char *phyAddrToBeChecked;//liuxu, 02/20/2014, 0x8ff00000.

	FILE * dumpfile0;
	FILE * dumpfile1;
	FILE * dumpfile2;
	FILE * dumpfile3;

	int status;

	status = ProcMgr_open (&handle, 0);
	printf("\nliuxu, ProcMgr_open successful, handle=0x%x\n", handle);
	if (status < 0)
	{
		printf("\nliuxu, ProcMgr_open error, status=0x%x\n", status);
		return -1;
	}

#define NV12_FRAMESIZE 529920//(736*480*1.5)
	ProcMgr_translateAddr (handle,
				   &hardFrameOutput0,
				   ProcMgr_AddrType_MasterUsrVirt,
				   (void *)M3_FRAMEBUFFER_PA_0,
				   ProcMgr_AddrType_SlaveVirt);

	ProcMgr_translateAddr (handle,
				   &hardFrameOutput1,
				   ProcMgr_AddrType_MasterUsrVirt,
				   (void *)(M3_FRAMEBUFFER_PA_0 + NV12_FRAMESIZE),
				   ProcMgr_AddrType_SlaveVirt);

	ProcMgr_translateAddr (handle,
				   &hardFrameOutput2,
				   ProcMgr_AddrType_MasterUsrVirt,
				   (void *)(M3_FRAMEBUFFER_PA_0 + NV12_FRAMESIZE*2),
				   ProcMgr_AddrType_SlaveVirt);

	ProcMgr_translateAddr (handle,
				   &hardFrameOutput3,
				   ProcMgr_AddrType_MasterUsrVirt,
				   (void *)(M3_FRAMEBUFFER_PA_0 + NV12_FRAMESIZE*3),
				   ProcMgr_AddrType_SlaveVirt);

	printf("\ngzd, snapshot, virtual addr of hardFrameOutput0 = 0x%x\n", hardFrameOutput0);
	printf("\ngzd, snapshot, virtual addr of hardFrameOutput1 = 0x%x\n", hardFrameOutput1);
	printf("\ngzd, snapshot, virtual addr of hardFrameOutput2 = 0x%x\n", hardFrameOutput2);
	printf("\ngzd, snapshot, virtual addr of hardFrameOutput3 = 0x%x\n", hardFrameOutput3);

	ProcMgr_translateAddr (handle,
				   &phyAddrToBeChecked,
				   ProcMgr_AddrType_MasterPhys,
				   (void *)(0xd5604800),
				   ProcMgr_AddrType_MasterKnlVirt);

	printf("\ngzd, 2, phy addr of phyAddrToBeChecked = 0x%x\n", phyAddrToBeChecked);//liuxu, 05/08/2014, leverage procMgr to sniff phy addr of entry->flag, which in SR0.

	dumpfile0 = fopen("/media/mmcblk0p1/TI_top.yuv", "w");
	//+ a0220402, R1.1 add protection for the case of the absence of SD card
	if( dumpfile0 == NULL ) {
		printf ("dumpfile0 fopen failed! SD card is needed for snopshot for developing!\n");
		return -1;
	}

	dumpfile1 = fopen("/media/mmcblk0p1/TI_right.yuv", "w");
	if( dumpfile1 == NULL ) {
		printf ("dumpfile1 fopen failed! SD card is needed for snopshot for developing!\n");
		return -1;
	}

	dumpfile2 = fopen("/media/mmcblk0p1/TI_left.yuv", "w");
	if( dumpfile1 == NULL ) {
		printf ("dumpfile2 fopen failed! SD card is needed for snopshot for developing!\n");
		return -1;
	}

	dumpfile3 = fopen("/media/mmcblk0p1/TI_back.yuv", "w");
	if( dumpfile1 == NULL ) {
		printf ("dumpfile3 fopen failed! SD card is needed for snopshot for developing!\n");
		return -1;
	}

//	time1_profile = IviGetTime();

	fwrite(hardFrameOutput0, 1, 736*480*1.5, dumpfile0);
	fwrite(hardFrameOutput1, 1, 736*480*1.5, dumpfile1);
	fwrite(hardFrameOutput2, 1, 736*480*1.5, dumpfile2);
	fwrite(hardFrameOutput3, 1, 736*480*1.5, dumpfile3);

//	time2_profile = IviGetTime() - time1_profile;
//	printf("\nliuxu, time per dump 4 files = %d ms!!\n\n\n", time2_profile);
	printf("\n\nliuxu, 222,02/20/2014, dump 4 files well.\n\n");

	fclose(dumpfile0);
	fclose(dumpfile1);
	fclose(dumpfile2);
	fclose(dumpfile3);

	system("sync"); ///刷新存储区迫使缓冲块数据立即写盘并更新超级块，其中包含已修改的 i-node、已延迟的块 I/O 和读写映射文件

	return 0;
}

/**
 * 执行标定过程。将DSP_Permit.dat通过共享内存映射送给DSP
 *
 * @return 0=成功，-1=失败
 */
int TakeCalibrating(void)
{
#ifdef SAVE_PERSMAT_TO_FS

	unsigned char *coreObjVirtBaseAddr2;
	unsigned int memDevFd2;
	FILE * dumpfilePersmat_ForLoad;

	memDevFd2 = open("/dev/mem",O_RDWR|O_SYNC);
	if(memDevFd2 < 0)
	{
		printf("\nliuxu, 04/24/2014, ERROR: /dev/mem open failed for load!!!\n");
		return -1;
	}

	coreObjVirtBaseAddr2 = mmap(
			(void	*)0x80000000,
			0x1000,
			PROT_READ|PROT_WRITE|PROT_EXEC,
			MAP_SHARED,
			memDevFd2,
			0x80000000
			);

	if (coreObjVirtBaseAddr2 == NULL)
	{
		printf("\nliuxu, 04/24/2014, ERROR: mmap() failed for load!!!\n");
		return -1;
	}

	printf("\nreading DSP_Persmat.dat ... ");

	*((unsigned int *)coreObjVirtBaseAddr2) = 0xFFFFFFFF;//liuxu, 04/24/2014, clear to tag in case no exsiting persmat.dat, so that the DSP use the one built in code.

	dumpfilePersmat_ForLoad = fopen("/media/mmcblk0p1/DSP_Persmat.dat", "r");//liuxu, 04/24/2014, just failed if no exsiting.
	if(dumpfilePersmat_ForLoad == NULL)
	{
		printf("\nliuxu, 04/24/2014, /media/mmcblk0p1/DSP_Persmat.dat doesn't exist\n");
		return -1;
	}

	int i_readPersmatcount = fread (coreObjVirtBaseAddr2, 1, 4*9*4, dumpfilePersmat_ForLoad);
	printf("\nfinished, i_readPersmatcount=%d bytes\n", i_readPersmatcount);
	fclose(dumpfilePersmat_ForLoad);
	close(memDevFd2);

	printf("\nSet calabration flag OK.");
	///设置Persmat参数载入标志，通知DSP读取
	*((unsigned int *)(coreObjVirtBaseAddr2 + 0x888)) = 0x88888888;
//        i_saveFirstTime = 0;//liuxu, 06/03/2014, ready for fwrite/saving permat during next frame.

	return 0;
#endif //SAVE_PERSMAT_TO_FS
}

#endif ///NEW_MAIN

