#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>

int main()
{
    printf("Process Creation\n\n");
    pid_t pid=fork();
    if(pid<0)
        printf("Process Creation Failed\n");
    else if(pid==0)
    {
        printf("Child Process\n");
        printf("Child ID: %d\n", getpid());
        printf("Parent ID: %d\n", getppid());
    }
    else
    {
        wait(NULL);
        printf("Parent Process\n");
        printf("Parent ID: %d\n", getpid());
        printf("Child ID: %d\n", pid());
    }
    printf("Process Creation Executed\n\n");
    return 0;
}
