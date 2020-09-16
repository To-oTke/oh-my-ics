void *Allocator::mem_sbrk(uInt incr)
{
    void *old_brk = this->mem_brk;

    if (this->mem_brk + incr > this->mem_max_addr)
    {
        throw std::bad_alloc;
    }

    this->mem_brk += incr;
    return old_brk;
}