Allocator::Allocator()
{
    void *tmp_heap_ptr = this->mem_heap = kernel_malloc(Allocator::max_heap_size);
    if (this->mem_heap == std::nullptr)
    {
        throw std::bad_alloc;
    }
    this->mem_brk = this->mem_heap;
    this->mem_max_addr = this->mem_heap + Allocator::max_heap_size;

    try
    {
        this->init_heap();
    }
    catch (exception &e)
    {
        // 析构函数不会调用了
        // 要自己释放内存
        kernel_free(tmp_heap_ptr);
        std::cerr << "allocator: heap init exception: " << e.what() << std::endl;
        throw;
    }
}