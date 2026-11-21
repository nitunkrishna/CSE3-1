#include<stdio.h>

void task()
{
    for(int i=1; i<=5; i++)
    {
        printf("Task: %d\n", i);
    }
}

int main()
{
    printf("Single Thread Started\n");
    task();
    printf("Single Thread Finished\n");
    return 0;
}