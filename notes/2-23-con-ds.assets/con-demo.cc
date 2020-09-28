#include <iostream>
#include <thread>

static size_t number = 0;

void adder(size_t count)
{
    for (size_t i = 0; i < count; i++)
    {
        ++number;
    }
}

int main(int argc, char *argv[])
{
    assert(argc == 3);
    size_t count1 = std::stoi(argv[1]), count2 = std::stoi(argv[2]);
    auto thread1 = std::thread(adder, count1);
    auto thread2 = std::thread(adder, count2);

    thread1.join();
    thread2.join();
    std::cout << "I declare that " << count1 << " + " << count2 << " = " << number << "! (proudly)" << std::endl;
}