/*
 * comm.c
 *
 *  Created on: 2015��5��15��
 *      Author: Administrator
 */

#define UART_COMM	"/dev/ttyS1"

#include <comm.h>
#include <termios.h>//�ն˿��ƶ���


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h> //�ļ����ƶ���
#include <termios.h>//�ն˿��ƶ���
#include <errno.h>

#define DEVICE "/dev/ttyS1"

/**
 * �򿪴��ڲ���ʼ������
 */
int UART_Init(void)
{
    //������Ҫ���ýṹ��termios <termios.h>
    struct termios options;

    serial_fd = open(DEVICE, O_RDWR | O_NOCTTY | O_NDELAY);
    if (serial_fd < 0) {
        perror("open");
        return -1;
    }

    /**1. tcgetattr�������ڻ�ȡ���ն���صĲ�����
    *����fdΪ�ն˵��ļ������������صĽ��������termios�ṹ����
    */
    tcgetattr(serial_fd, &options);
    /**2. �޸�����õĲ���*/
    options.c_cflag |= (CLOCAL | CREAD);//���ÿ���ģʽ״̬���������ӣ�����ʹ��
    options.c_cflag &= ~CSIZE;//�ַ����ȣ���������λ֮ǰһ��Ҫ�������λ
    options.c_cflag &= ~CRTSCTS;//��Ӳ������
    options.c_cflag |= CS8;//8λ���ݳ���
    options.c_cflag &= ~CSTOPB;//1λֹͣλ
    options.c_iflag |= IGNPAR;//����ż����λ
    options.c_oflag = 0; //���ģʽ
    options.c_lflag = 0; //�������ն�ģʽ
    cfsetospeed(&options, B115200);//���ò�����

    /**3. ���������ԣ�TCSANOW�����иı�������Ч*/
    tcflush(serial_fd, TCIFLUSH);//������ݿ��Խ��գ�������
    tcsetattr(serial_fd, TCSANOW, &options);

    return 0;
}

/**
 * ���ڷ�������
 *
 * @param fd		�����ļ�������
 * @param data		����������
 * @param datalen	���ݳ���
 * @return 0=�ɹ���-1=ʧ��
 */
int UART_Send(int fd, char *data, int datalen)
{
    int len = 0;

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
 * ���ڽ�������
 *
 * @param fd			�����ļ�������
 * @param data			�������ݻ���
 * @param datalen		�������ݳ���
 * @return  ����ʵ�ʳ��ȣ�-1������
 */
int UART_Recv(int fd, char *data, int datalen)
{
    int len=0, ret = 0;
    fd_set fs_read;
    struct timeval tv_timeout;

    FD_ZERO(&fs_read);
    FD_SET(fd, &fs_read);
    tv_timeout.tv_sec  = (10*20/115200+2);
    tv_timeout.tv_usec = 0;

    ret = select(fd+1, &fs_read, NULL, NULL, &tv_timeout);
    if(ret < 0)
    	return ret;

    if (!FD_ISSET(fd, &fs_read)) {
        perror("select");
        return -1;
    }

    len = read(fd, data, datalen);
	return len;
}

int main(int argc, char **argv)
{
	int serial_fd = 0;

    UART_Init();

    char buf[]="hello world";
    char buf1[10];
    UART_Send(serial_fd, buf, 10);
    printf("\n");

    UART_Recv(serial_fd, buf1, 10);

    printf("uart receive %s\n", buf1);
    close(serial_fd);
    return 0;
}

