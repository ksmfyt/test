insmod globalmem.ko 
mknod -m 666 /dev/globalmem c 230 0
dmesg | tail -n 10	
