#ifndef _SEM_SYNC_H_
#define _SEM_SYNC_H_
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdio.h>
#include <semaphore.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
  
char SEM_A_TASK_IS_FREE[]= "a_task_is_free";
char SEM_B_TASK_IS_FREE[]= "b_task_is_free";

#endif
