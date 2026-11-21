#include<stdio.h>
#include<pthread.h>

void* task1(void* arg)
{
    for(int i=1; i<=5; i++)
    {
        printf("Thread 1: %d\n", i);
    }
    return NULL;
}

void* task2(void* arg)
{
    for(int i=1; i<=5; i++)
    {
        printf("Thread 2: %d\n", i);
    }
    return NULL;
}

int main()
{
    pthread_t thread1, thread2;
    printf("Multi Thread Execution Started\n\n");

    pthread_create(&thread1, NULL, task1, NULL);
    pthread_create(&thread2, NULL, task2, NULL);

    pthread_join(thread1, NULL);
    pthread_join(thread2, NULL);

    printf("\nMulti Thread Execution Finished\n");

    return 0;
}