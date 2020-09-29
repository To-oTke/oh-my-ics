#include <iostream>
#include <thread>
#include <pthread.h>

static size_t number = 0;

static pthread_mutex_t mutex;

void adder(size_t count)
{
    for (size_t i = 0; i < count; i++)
    {
        pthread_mutex_lock(&mutex);
        ++number;
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