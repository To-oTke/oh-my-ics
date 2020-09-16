void *coalesce(void *base_ptr)
{
    // 确认紧邻的前後块是否空闲
    bool prev_alloc = get_alloc(get_footer_ptr(get_prev_block_ptr(base_ptr)));
    bool next_alloc = get_alloc(get_header_ptr(get_next_block_ptr(base_ptr)));

    uInt size = get_size(get_header_ptr(base_ptr));

    if (prev_alloc && next_alloc)
    {
        // case 1
        return bp;
    }
    else if (prev_alloc && !next_alloc)
    {
        // case 2
        size += get_size(get_header_ptr(get_next_block_ptr(base_ptr)));
        put(get_header_ptr(base_ptr), pack(size, 0));
        put(get_footer_ptr(base_ptr), pack(size, 0));
        return base_ptr;
    }
    else if (!prev_alloc && next_alloc)
    {
        // case 3
        size += get_size(get_header_ptr(get_prev_block_ptr(base_ptr)));
        put(get_footer_ptr(base_ptr), pack(size, 0));
        put(get_header_ptr(get_prev_block_ptr(base_ptr)), pack(size, 0));
        return get_prev_block_ptr(base_ptr);
    }
    else
    {
        // case 4
        size += get_size(get_header_ptr(get_prev_block_ptr(base_ptr))) + get_size(get_footer_ptr(get_next_block_ptr(base_ptr)));

        put(get_header_ptr(get_prev_block_ptr(base_ptr)), pack(size, 0));
        put(get_footer_ptr(get_next_block_ptr(base_ptr)), pack(size, 0));
        return get_prev_block_ptr(base_ptr);
    }
}