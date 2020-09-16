void Allocator::free(void *base_ptr)
{
    uInt size = get_size(get_header_ptr(base_ptr));
    put(get_header_ptr(base_ptr), pack(size, 0));
    put(get_footer_ptr(base_ptr), pack(size, 0));
    coalesce(base_ptr);
}