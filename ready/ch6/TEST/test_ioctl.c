#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <signal.h>
#include <sys/ioctl.h>

#if 0
#define MEM_CLEAR 0x1
#endif

#if 1
#define GLOBALMEM_MAGIC 'g'
#define MEM_CLEAR _IO(GLOBALMEM_MAGIC,0)
#endif
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

	rlen =	ioctl(fd,MEM_CLEAR,&rlen);
	printf("cmd=%d,r=%d\n",MEM_CLEAR,rlen);
	
	close(fd);
	return 0;
}
