void *Allocator::allocate(uInt size)
{
    uInt asize = 0; // adjusted_size
    if (size <= dword_size)
    {
        // 双字节对齐
        asize = 2 * dword_size;
    }
    else
    {
        asize = dword_size * ((size + 2 * dword_size - 1) / dword_size);
    }

    // find_fit 找出一块适合大小的块用来分配
    void *base_ptr = find_fit(asize);
    if (base_ptr != std::nullptr)
    {
        // place 把它放在合适的位置上
        place(base_ptr, asize);
        return base_ptr;
    }
    else
    {
        uInt extend_size = std::max(asize, chunk_size);        // 决定要扩展多大的堆
        void *base_ptr = extend_heap(extend_size / word_size); // 可能抛出 std::bad_alloc
        place(base_ptr, asize);
        return base_ptr;
    }
}