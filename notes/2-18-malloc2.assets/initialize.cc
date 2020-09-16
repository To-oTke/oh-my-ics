void Allocator::mem_init()
{
    this->heap_list_ptr = mem_sbrk(4 * word_size);                 // might throw std::bad_alloc
    put(this->heap_list_ptr, 0);                                   // alignment padding
    put(this->heap_list_ptr + word_size, pack(dword_size, 1));     // prologue header
    put(this->heap_list_ptr + word_size * 2, pack(dword_size, 1)); // prologue footer
    put(this->heap_list_ptr + word_size * 3, pack(0, 1));          // epilogue header
    this->heap_listp += dword_size;

    // Extend the empty heap with a free block of chunk_size bytes
    extend_heap(chunk_size / word_size); // may throw std::bad_alloc
}