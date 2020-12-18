
#include <atomic>
#include <iostream>
#include <pthread.h>

#define NITERS 100000000
void* count(void* arg);

/* shared variable */
std::atomic<int> cnt = 0;

int main()
{
    pthread_t tid1, tid2;

    pthread_create(&tid1, NULL, count, NULL);
    pthread_create(&tid2, NULL, count, NULL);
    pthread_join(tid1, NULL);
    pthread_join(tid2, NULL);

    if (cnt != (unsigned)NITERS * 2)
        std::cout << "BOOM! cnt=" << cnt << std::endl;
    else
        std::cout << "OK: cnt=" << cnt << std::endl;
    return 0;
}

/* thread routine */
void* count(void* arg)
{
    int i;
    for (i = 0; i < NITERS; i++)
        cnt++;
    return NULL;
}
