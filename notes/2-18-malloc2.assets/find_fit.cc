void *Allocator::find_fit(uInt asize)
{
    void *base_ptr;
    for (base_ptr = this->heap_listp; get_size(get_header_pointer(base_ptr)); base_ptr = get_next_block_ptr(base_ptr))
    {
        if (!get_alloc(get_header_ptr(base_ptr)) && asize <= get_size(get_header_ptr(base_ptr)))
        {
            // find it!
            return base_ptr;
        }
    }

    return std::nullptr; // no fit...
}