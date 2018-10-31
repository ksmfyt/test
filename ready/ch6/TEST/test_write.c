#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <signal.h>
#include <sys/ioctl.h>

#define TEST_LEN 4096*128

int main(int argc, char **argv)
{
	int fd;
	int i = 0;
	int slen;
	unsigned char wbuf[TEST_LEN] = {0};
	for(i = 0 ; i < TEST_LEN ; i++)
	{
		wbuf[i] = i%256;
	}

	if (argv[1]) {
		slen = atol(argv[1]);
	}else{
		printf("Usage: ./ts x (x send length, x should devided by 4!)\n");
		return 0;
	}

	fd = open("/dev/globalmem",O_RDWR,S_IRUSR|S_IWUSR);
	if(fd != -1)
	{
		write(fd,wbuf,slen);
		slen = 0;
	}
	else
	{
		printf("open error\n");
	}
	close(fd);
	return slen;
}
