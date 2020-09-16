#include <cstdint>

namespace AllocUtils
{
    typedef uint32_t uInt;
    const uInt word_size = 4;              // bytes
    const uInt dword_size = 2 * word_size; // bytes
    const uInt chunk_size = (1 << 12);     // bytes
    const uInt overhead = 4 * word_size;   // bytes

    inline uInt pack(uInt size, uInt alloc)
    {
        return size | alloc;
    }

    inline uInt get(void *p)
    {
        return *reinterpret_cast<uInt>(p);
    }

    inline void put(void *p, uInt val)
    {
        *reinterpret_cast<uInt>(p) = val;
    }

    inline uInt get_size(void *p)
    {
        return get(p) & ~0x7;
    }

    inline bool get_alloc(void *p)
    {
        return (get(p) & 0x1) != 0;
    }

    inline void *get_header_ptr(void *base_ptr)
    {
        return base_ptr - word_size;
    }

    inline void *get_footer_ptr(void *base_ptr)
    {
        return base_ptr + get_size(get_header_ptr(base_ptr)) - word_size;
    }

    inline void *get_next_block_ptr(void *base_ptr)
    {
        return base_ptr + get_size(base_ptr - word_size);
    }

    inline void *get_prev_block_ptr(void *base_ptr)
    {
        return base_ptr - get_size(base_ptr - dword_size);
    }
} // namespace AllocUtils