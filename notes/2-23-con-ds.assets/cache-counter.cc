#include <iostream>
#include <thread>
#include <pthread.h>

#define __S 10000

static size_t number = 0;

static pthread_mutex_t mutex;

void adder(size_t count)
{
    int local_cache = 0;
    for (size_t i = 0; i < count; i++)
    {
        ++local_cache;
        if (i % __S == 0)
        {
            // write cache back
            pthread_mutex_lock(&mutex);
            number += local_cache;
            pthread_mutex_unlock(&mutex);
            local_cache = 0;
        }
    }

    if (local_cache != 0)
    {
        // finish work on this
        pthread_mutex_lock(&mutex);
        number += local_cache;
        pthread_mutex_unlock(&mutex);
    }
}

int main(int argc, char *argv[])
{
    assert(argc == 3);

    int rc = pthread_mutex_init(&mutex, NULL);
    size_t count1 = std::stoi(argv[1]), count2 = std::stoi(argv[2]);
    auto thread1 = std::thread(adder, count1);
    auto thread2 = std::thread(adder, count2);

    thread1.join();
    thread2.join();

    pthread_mutex_destroy(&mutex);
    std::cout << "I declare that " << count1 << " + " << count2 << " = " << number << "! (proudly)" << std::endl;
}