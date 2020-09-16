void Allocator::place(void *base_ptr, uInt asize)
{
    uInt csize = get_size(get_header_ptr(base_ptr));
    if ((csize - asize) >= dword_size + overhead)
    {
        // 如果拆分值得一做的话
        put(get_header_ptr(base_ptr), pack(asize, 1));
        put(get_footer_ptr(base_ptr), pack(asize, 1));
        void *next_base_ptr = get_next_block_ptr(base_ptr);
        put(get_header_ptr(next_base_ptr), pack(csize - asize), 0);
        put(get_footer_ptr(next_base_ptr), pack(csize - asize), 0);
    }
    else
    {
        // 不值得拆
        put(get_header_ptr(base_ptr), pack(csize, 1));
        put(get_footer_ptr(base_ptr), pack(csize, 1));
    }
}