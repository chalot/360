/*
 * comm.h
 *
 * ������İ�͵װ�MCU֮��Ĵ���ͨ��Э��
 *
 *  Created on: 2015��5��13��
 *      Author: user
 */


#ifndef COMM_H_
#define COMM_H_

typedef unsigned char 	u8

#define  CMD_HEAD	0x55	/*�������MCU->A8*/
#define  ACK_HEAD	0xAA	/*Ӧ�����A8->MCU*/

/*������������*/
typedef enum {
	MSG_FRONT = 0,		/*����ǰ*/
	MSG_LEFT,			/*������*/
	MSG_LEFT_FULLVIEW,	/*������-ȫ��*/
	MSG_RIGHT,   		/*������*/
	MSG_RIGHT_FULLVIEW,	/*������-ȫ��*/
	MSG_REAR,			/*����*/
	MSG_CALIBRATION,	/*�궨*/
	MSG_SLEEP,			/*����*/
} eMSG_TYPE;

/*����ִ�н��*/
typedef enum {
	RET_OK = 1,  	/*�ɹ�*/
	RET_FAIL = 0, 	/*ʧ��*/
	RET_TOUT, 		/*��ʱ*/
} eRET;

/*�����������ݸ�ʽ*/
typedef struct {
	u8 head;		/*��Ϣͷ��0x55*/
	u8 cmd;			/*��������*/
	u8 param[4];	/*�������*/
	u8 checksum;	/*У���*/
} tMSG_CMD;

/*Ӧ���������ݸ�ʽ*/
typedef struct {
	u8 head;		/*��Ϣͷ��0xAA*/
	u8 cmd;			/*��������*/
	u8 ret;			/*����ִ�н��*/
	u8 checksum;	/*У���*/
} tMSG_ACK;



#endif /* COMM_H_ */
