#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <signal.h>

int main(int argc,char* argv[]){
	int pid;
	pid = fork();

	if(pid==0)
		execlp("perf","perf","top",(char*)NULL);
	else
	{
		sleep(1.1);
		kill(pid, 3);
	}
	return 0;
}
