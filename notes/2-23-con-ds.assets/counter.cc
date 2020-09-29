class Counter {
public:
    Counter(int Value) {
        this->value = Value;
        pthread_mutex_init(&this->lock, NULL);
    }
    ~Counter() {
        pthread_mutex_destroy(&this->lock);
    }
    
    int getValue() { return this->value; }
    
    int increment() {
        pthread_mutex_lock(&this->lock);
        ++this->value;
        pthread_mutex_unlock(&this->lock);
    }
private:
    int value;
    pthread_mutex_t lock;
}