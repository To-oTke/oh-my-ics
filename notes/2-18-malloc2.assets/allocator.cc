class Allocator
{
    using namespace AllocUtils;

public:
    Allocator();               // 声明构造函数
    ~Allocator();              // 声明析构函数
    void *allocate(uInt size); // 类似于 malloc(size_t)
    void free(void *base_ptr); // 类似于 free(void *)

private:
    // 成员变量应当是 private 的
    void *mem_heap;     // 指向堆底的指针
    void *mem_brk;      // 指向（目前）堆顶的指针
    void *mem_max_addr; // OS 能容许的最高堆顶指针
    void *heap_listp;   // 堆链表的首地址

    static const uInt max_heap_size = 0x10000; // 堆的最大容量

    void *mem_sbrk(uInt incr);              // 内部方法：扩张堆
    void init_heap();                       // 内部方法：初始化堆
    void *extend_heap(uInt words);          // 内部方法：以 Block 为单位扩展堆
    void *coalesce(void *base_ptr);         // 内部方法：传入即将被释放的块，执行合并操作
    void *find_fit(uInt asize);             // 找一块放得下 size 的块返回
    void place(void *base_ptr, uInt asize); // 放一个 size 大小的块到 base_ptr 中去
}