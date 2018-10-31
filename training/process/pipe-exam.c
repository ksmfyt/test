#include <stdio.h>
#include <unistd.h>
#include <string.h>

int c2b[2];
int b2a[2];

static void process_c(void)
{
	close(c2b[0]);
	close(b2a[1]);
	close(b2a[0]);

	write(c2b[1],"hello",strlen("hello"));
}

static void process_b(void)
{
	char buf[BUFSIZ];
	int cnt;

	close(c2b[1]);
	close(b2a[0]);

	cnt = read(c2b[0], buf, BUFSIZ);
	if (cnt == -1){
		perror("process B cannot read data from pipe");
	} else {
		write(b2a[1], buf, cnt);
	}
}

static void process_a(void)
{
	char buf[BUFSIZ];
	memset(buf, 0, BUFSIZ);

	close(c2b[1]);
	close(c2b[0]);
	close(b2a[1]);

	if (read(b2a[0], buf, BUFSIZ)==-1){
		perror("process A cannot read data from pipe");
	} else
		printf("in process A, receive message: %s\n", buf);
}

int main(int argc,char* argv[])
{
	int pid;

	if(pipe(c2b)==-1){
		perror("cannot create the IPC pipe");
		return 1;
	}

	if(pipe(b2a)==-1){
		perror("cannot create the IPC pipe");
		return 1;
	}

	pid=fork();
	if (pid == -1) {
		perror("cannot create new process");
		return 1;
	} else if (pid == 0) {
		pid = fork();
		if (pid == -1){
			perror("cannot create new process");
			return 1;
		} else if (pid == 0) {
			process_c();
		} else {
			process_b();
		}
	} else {
		process_a();
	}

	return 0;
}
