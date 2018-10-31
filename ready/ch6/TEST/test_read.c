#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <signal.h>
#include <sys/ioctl.h>

#define PCIE_IOC_MAGIC  'k'
#define PCIE_IOCREADLEN _IOR(PCIE_IOC_MAGIC,  2, short)

int main(int argc, char **argv)
{
	int fd;
	int i = 0;
	unsigned char buf[4096];
	int rlen;

	if (argv[1]) {
	rlen = atol(argv[1]);
	}else{
		printf("Usage: ./tr x (x send length, x should devided by 4!)\n");
		return 0;
	}
	
	fd = open("/dev/globalmem",O_RDWR,S_IRUSR|S_IWUSR);
	if(fd == -1)
	{
		printf("open error\n");
	}

	ioctl(fd,PCIE_IOCREADLEN,&rlen);
	read(fd,buf,rlen);
	rlen = 0;
	for(i = 0 ; i < 1024 ; i++)
	{
		printf("  read 0x%2x   |",buf[i]);
		buf[i] = 0;
		if(i%4 == 3)
			printf("\r\n");
	}
	close(fd);
	return 0;
}
