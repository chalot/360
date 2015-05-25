/*
 * comm.h
 *
 * 定义核心板和底板MCU之间的串口通信协议
 *
 *  Created on: 2015年5月13日
 *      Author: user
 */


#ifndef COMM_H_
#define COMM_H_

typedef unsigned char 	u8

#define  CMD_HEAD	0x55	/*控制命令，MCU->A8*/
#define  ACK_HEAD	0xAA	/*应答命令，A8->MCU*/

/*控制命令类型*/
typedef enum {
	MSG_FRONT = 0,		/*方向前*/
	MSG_LEFT,			/*方向左*/
	MSG_LEFT_FULLVIEW,	/*方向左-全屏*/
	MSG_RIGHT,   		/*方向右*/
	MSG_RIGHT_FULLVIEW,	/*方向右-全屏*/
	MSG_REAR,			/*倒车*/
	MSG_CALIBRATION,	/*标定*/
	MSG_SLEEP,			/*休眠*/
} eMSG_TYPE;

/*命令执行结果*/
typedef enum {
	RET_OK = 1,  	/*成功*/
	RET_FAIL = 0, 	/*失败*/
	RET_TOUT, 		/*超时*/
} eRET;

/*控制命令数据格式*/
typedef struct {
	u8 head;		/*消息头，0x55*/
	u8 cmd;			/*命令类型*/
	u8 param[4];	/*命令参数*/
	u8 checksum;	/*校验和*/
} tMSG_CMD;

/*应答命令数据格式*/
typedef struct {
	u8 head;		/*消息头，0xAA*/
	u8 cmd;			/*命令类型*/
	u8 ret;			/*命令执行结果*/
	u8 checksum;	/*校验和*/
} tMSG_ACK;



#endif /* COMM_H_ */
