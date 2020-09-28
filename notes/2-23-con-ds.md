# 2.23 LbConDS

> 标题是 Lock-based Concurrent Data Structures 的简称。

要讨论的问题，是「基于锁的并发实现、所需要的数据结构」。

## Concurrency

### Protection

在我们开发「并发」程序时，最最需要注意的事情就是「保护」。

这里的情景并没有加害者和受害者之分；双方如果随便地交叉彼此的执行流，则程序有很大可能被破坏。

例如，看下面的「无保护」并发程序的例子：

```c
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
```

> 附：坑货 Apple Clang，编译默认不带 `-std=c++11`，捉了半天虫

![image-20200928171140762](2-23-con-ds.assets/image-20200928171140762.png)

可以看到，在没有保护的情况下，数量一大基本算不对。

