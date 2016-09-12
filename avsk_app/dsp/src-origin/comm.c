/*
 * comm.c
 *
 *  Created on: 2015年5月15日
 *      Author: Administrator
 */

#define UART_COMM	"/dev/ttyS1"

#include <comm.h>
#include <termios.h>//终端控制定义


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h> //文件控制定义
#include <termios.h>//终端控制定义
#include <errno.h>

#define DEVICE "/dev/ttyS1"

/**
 * 打开串口并初始化设置
 */
int UART_Init(void)
{
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
    options.c_iflag |= IGNPAR;//无奇偶检验位
    options.c_oflag = 0; //输出模式
    options.c_lflag = 0; //不激活终端模式
    cfsetospeed(&options, B115200);//设置波特率

    /**3. 设置新属性，TCSANOW：所有改变立即生效*/
    tcflush(serial_fd, TCIFLUSH);//溢出数据可以接收，但不读
    tcsetattr(serial_fd, TCSANOW, &options);

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
 * 串口接收数据
 *
 * @param fd			串口文件描述符
 * @param data			接收数据缓区
 * @param datalen		接收数据长度
 * @return  返回实际长度，-1：错误
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

