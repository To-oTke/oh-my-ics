#include <pthread.h>

template <int cpu_count>
class SloppyCounter
{
public:
    SloppyCounter(int Value, int Threshold)
    {
        this->threshold = Threshold;
        this->global_value = Value;

        pthread_mutex_init(&this->global_lock, NULL);

        for (size_t i = 0; i < cpu_count; i++)
        {
            local_values[i] = 0;
            pthread_mutex_init(&this->local_locks[i], NULL);
        }
    }
    ~SloppyCounter()
    {
        pthread_mutex_destroy(&this->global_lock);

        for (size_t i = 0; i < cpu_count; i++)
        {
            local_values[i] = 0;
            pthread_mutex_destroy(&this->local_locks[i]);
        }
    }

    // only approximate!
    int getValueApprox()
    {
        pthread_mutex_lock(&this->global_lock);
        int val = this->global_value;
        pthread_mutex_unlock(&this->global_lock);
        return val;
    }

    int increment(int thread_id)
    {
        int cpu_id = thread_id % cpu_count;
        pthread_mutex_lock(&this->local_locks[cpu_id]);
        ++this->local_values[cpu_id];
        if (this->local_values[cpu_id] > this->threshold)
        {
            // transfer data
            pthread_mutex_lock(&this->global_lock);
            this->global_value += this->local_values[cpu_id];
            pthread_mutex_lock(&this->global_lock);

            // flush cache
            this->local_values[cpu_id] = 0;
        }
        pthread_mutex_unlock(&this->local_locks[cpu_id]);
    }

private:
    int global_value;
    int local_values[cpu_count];

    pthread_mutex_t global_lock;
    pthread_mutex_t local_locks[cpu_count];

    int threshold; // update frequency
}