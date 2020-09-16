Allocator::~Allocator()
{
    kernel_free(this->mem_heap);
}