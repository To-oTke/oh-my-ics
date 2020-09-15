#include <iostream>

class Leaker {

public:
    Leaker()
    {
        ++object_count;
    };

    ~Leaker()
    {
        --object_count;
    }

    static int object_count;
};

int Leaker::object_count = 0;

int main()
{
    size_t iter_count = 1;

    for (size_t i = 0; i < 100; i++) {

        std::cout << "now iteration " << i << std::endl;
        Leaker* array = new Leaker[100];
        // do something with array

        // should be `delete[] array` !
        delete array;

        std::cout << "now leaking object count: " << Leaker::object_count << std::endl;
    }
}