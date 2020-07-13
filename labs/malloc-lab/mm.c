/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 *
 * In this naive approach, a block is allocated by simply incrementing
 * the brk pointer.  A block is pure payload. There are no headers or
 * footers.  Blocks are never coalesced or reused. Realloc is
 * implemented directly using mm_malloc and mm_free.
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

#define DEBUG 0

#if DEBUG
/* Keep all log loggings */
#define log printf

/* But keep colle */
#define colle printf

#define realloclog printf

#else

#define log(...)

/* But keep colle */
#define colle(...)

#define realloclog(...)

#endif

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* get the signal bits */
#define GETSIGBITS(value) (value & (size_t)(0x3))

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT - 1)) & ~(size_t)(0x7))

#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

/* Marked a slice as full */
#define MARKLASTBITONE(value) (value | (size_t)(0x1))

/* Marked a slice as empty */
#define MARKLASTBITZERO(value) (value & ~(size_t)(0x1))

/* Marked the previous slice as full */
#define MARKSECONDLASTBITONE(value) (value | (size_t)(0x2))

/* Marked the previous slice as empty */
#define MARKSECONDLASTBITZERO(value) (value & ~(size_t)(0x2))

/* Check if the slice's sign bit */
#define CHECKSIGNBIT(value) (value & (size_t)(0x1))

/* Check if the slice's secondary last bit */
#define CHECKSECONDLASTBIT(value) (value & (size_t)(0x2))

/* Remove signal bits */
#define REMOVESIGBITS(value) (value & ~(size_t)(0x3))

/* Max recursion limit */
#define RECLIMIT 0x1000

/* If it's a big block */
#define BIGBLOCKLIMIT 0x2000

/* Define Boolean Values */
#define BOOLEAN short
#define TRUE 1
#define FALSE 0

size_t largest_block_size = 0;

void* init_address;
void* end_address;
/*
 * mm_init - initialize the malloc package.
 */
int mm_init(void) {
    mem_init();

    // Make sure size_t size equals to alignment
    assert(ALIGNMENT == SIZE_T_SIZE);

    init_address = mem_heap_lo();
    end_address  = mem_heap_hi();

    *( size_t* )init_address = MARKSECONDLASTBITONE(mem_heapsize());

    log("\ninit address at  %lx\n", ( unsigned long )init_address);
    log("end address at  %lx\n", ( unsigned long )end_address);
    log("Init header = %lx\n", *( size_t* )init_address);
    log("sizeof(size_t) = %lu\n", sizeof(size_t));

    MARKSECONDLASTBITONE(*( size_t* )init_address);
    MARKLASTBITZERO(*( size_t* )init_address);
    return 0;
}

/*
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void* mm_malloc(size_t size) {
    log("REQUESTED SIZE: %zx\n", size);
    // char tmp;
    // scanf("%c", &tmp);

    size_t real_size     = ALIGN(size + SIZE_T_SIZE);
    void*  query_address = init_address;

    log("=========================================\n");
    log("You requested a real size as %lx\n", real_size);

    BOOLEAN last_status = TRUE;

    log("mem_heap_hi = %lx, mem_heap_lo = %lx\n", ( unsigned long )mem_heap_hi(), ( unsigned long )mem_heap_lo());

    size_t recursion_count = 0;
    while (query_address < mem_heap_hi()) {
        if (real_size > largest_block_size) {
            break;
        }
        ++recursion_count;
        // scanf("%c", &tmp);
        // log("Gonna query address at %lx\n", ( unsigned long )query_address);
        size_t header = *( size_t* )query_address;
        // log("Header = %zx...", header);

        if (header == 0) {
            query_address += SIZE_T_SIZE;
            continue;
        }
        if (!(CHECKSIGNBIT(header))) {

            header = REMOVESIGBITS(header);
            // log("its length is %lx ...", header);

            if (header - SIZE_T_SIZE == real_size) {
                real_size += SIZE_T_SIZE;
            }

            if (header == real_size) {

                log("\nheader == real_size\n");
                size_t gen_header = MARKLASTBITONE(header);

                // Generate Secondary last bit as a sign of last bit's occupitation status
                if (last_status) {
                    gen_header = MARKSECONDLASTBITONE(gen_header);
                }
                else {
                    gen_header = MARKSECONDLASTBITZERO(gen_header);
                }

                (*( size_t* )query_address) = gen_header;

                void* return_address = query_address + SIZE_T_SIZE;

                // Write Footer
                query_address += (real_size - SIZE_T_SIZE);
                size_t gen_footer         = real_size;
                *( size_t* )query_address = gen_footer;
                // last_status               = TRUE;

                query_address += SIZE_T_SIZE;
                if (query_address < mem_heap_hi()) {
                    *( size_t* )(query_address) = MARKSECONDLASTBITONE(*( size_t* )(query_address));
                }

                log("=========================================\n");

                log("MALLOCED %lx\n", ( unsigned long )(return_address));

                log("=========================================\n");
                // char ch;
                // scanf("%c", &ch);
                return return_address;
            }
            else if (header > real_size) {
                log("\nheader > real_size\n");

                size_t gen_header = MARKLASTBITONE(real_size);

                // Generate Secondary last bit as a sign of last bit's occupitation status
                if (last_status) {
                    gen_header = MARKSECONDLASTBITONE(gen_header);
                }
                else {
                    gen_header = MARKSECONDLASTBITZERO(gen_header);
                }

                *( size_t* )(query_address) = gen_header;

                void* return_address = query_address + SIZE_T_SIZE;
                log("Write header at: %lx, written %zx\n", ( unsigned long )query_address, *( size_t* )query_address);

                // // Write Footer
                // query_address += (real_size - SIZE_T_SIZE);
                size_t gen_footer = real_size;
                // *( size_t* )query_address = gen_footer;

                // log("Write footer at: %lx, written %zx\n", ( unsigned long )query_address, *( size_t* )query_address);

                // Generate next slice's header

                query_address += (real_size);
                gen_header                = MARKSECONDLASTBITONE((MARKLASTBITZERO(header - real_size)));
                *( size_t* )query_address = gen_header;
                log("Write header at: %lx, written %zx\n", ( unsigned long )query_address, *( size_t* )query_address);

                // Generate next slice's footer
                query_address += (header - real_size - SIZE_T_SIZE);
                gen_footer                = header - real_size;
                *( size_t* )query_address = gen_footer;
                log("Write footer at: %lx, written %zx\n", ( unsigned long )query_address, *( size_t* )query_address);
                // last_status               = FALSE;

                query_address += SIZE_T_SIZE;
                if (query_address < mem_heap_hi()) {
                    *( size_t* )(query_address) = MARKSECONDLASTBITONE(*( size_t* )(query_address));
                }

                log("=========================================\n");
                log("MALLOCED %lx\n", ( unsigned long )(return_address));

                log("=========================================\n");
                // char ch;
                // scanf("%c", &ch);
                return return_address;
            }
            else {
                // log(">");
                last_status = FALSE;
                // This block is too small. Go next one and see!
                query_address += REMOVESIGBITS(header);
                // if (recursion_count > RECLIMIT) {
                // log("TOO SMALL - Go to next address: %lx\n", ( unsigned long )query_address);
                // }
                if (REMOVESIGBITS(header) == 0) {
                    break;
                }
                continue;
            }
        }
        else {
            // log(">");
            last_status = TRUE;
            // This block is occupied. Go next one and see!
            query_address += REMOVESIGBITS(header);
            // if (recursion_count > RECLIMIT) {
            // log("OCCUPIED - Go to next address: %lx\n", ( unsigned long )query_address);
            // }
            continue;
        }
    }

    if (FALSE) {

        log("No enough memory. sbrk new memories %zx...\n", real_size * 2);
        void* new_end = mem_sbrk(real_size * 2);
        log("Now mem_heap_hi = %lx, mem_heap_lo = %lx\n", ( unsigned long )mem_heap_hi(), ( unsigned long )mem_heap_lo());
        size_t gen_header = real_size;

        // Generate Secondary last bit as a sign of last bit's occupitation status
        if (last_status) {
            gen_header = MARKSECONDLASTBITONE(gen_header);
        }
        else {
            gen_header = MARKSECONDLASTBITZERO(gen_header);
        }

        if (real_size > largest_block_size) {
            largest_block_size = real_size;
        }

        *( size_t* )new_end = MARKLASTBITONE(gen_header);
        log("Write header at: %lx, written %zx\n", ( unsigned long )new_end, *( size_t* )new_end);

        *( size_t* )(new_end + real_size) = MARKSECONDLASTBITONE(real_size);
        log("Write header at: %lx, written %zx\n", ( unsigned long )(new_end + real_size), *( size_t* )(new_end + real_size));

        *( size_t* )(new_end + real_size * 2 - SIZE_T_SIZE) = real_size;
        log("Write footer at: %lx, written %zx\n", ( unsigned long )(new_end + real_size * 2 - SIZE_T_SIZE), *( size_t* )(new_end + real_size * 2 - SIZE_T_SIZE));

        log("=========================================\n");
        log("SBRKED & MALLOCED %lx\n", ( unsigned long )(new_end + SIZE_T_SIZE));

        log("=========================================\n");
        // char ch;
        // scanf("%c", &ch);
        return new_end + SIZE_T_SIZE;
    }
    else {

        log("No enough memory. sbrk new memories %zx...\n", real_size);
        void* new_end = mem_sbrk(real_size);
        log("Now mem_heap_hi = %lx, mem_heap_lo = %lx\n", ( unsigned long )mem_heap_hi(), ( unsigned long )mem_heap_lo());
        size_t gen_header = real_size;

        // Generate Secondary last bit as a sign of last bit's occupitation status
        if (last_status) {
            gen_header = MARKSECONDLASTBITONE(gen_header);
        }
        else {
            gen_header = MARKSECONDLASTBITZERO(gen_header);
        }

        if (real_size > largest_block_size) {
            largest_block_size = real_size;
        }

        *( size_t* )new_end = MARKLASTBITONE(gen_header);
        log("Write header at: %lx, written %zx\n", ( unsigned long )new_end, *( size_t* )new_end);

        log("=========================================\n");
        log("SBRKED & MALLOCED %lx\n", ( unsigned long )(new_end + SIZE_T_SIZE));

        log("=========================================\n");
        // char ch;
        // scanf("%c", &ch);
        return new_end + SIZE_T_SIZE;
    }
}

/*
 * mm_free - Freeing a block.
 */
void mm_free(void* fake_ptr) {

    colle("GOING TO FREE %lx\n", ( unsigned long )fake_ptr);
    void* ptr = fake_ptr - SIZE_T_SIZE;
    log("=========================================\n");
    log("my head = %zx\n", *( size_t* )(ptr));
    size_t gen_head = MARKLASTBITZERO(*( size_t* )(ptr));

    *( size_t* )(ptr) = gen_head;

    size_t block_size = REMOVESIGBITS(gen_head);

    log("My block size: %zx\n", block_size);

    *( size_t* )(ptr + block_size) = MARKSECONDLASTBITZERO((*( size_t* )(ptr + block_size)));
    // return;
    if (!(CHECKSECONDLASTBIT(gen_head))) {
        colle("=== COLEASE === \n");

        size_t gen_footer = block_size;
        // *( size_t* )(ptr - SIZE_T_SIZE + gen_footer) = gen_footer;
        log("Still OK\n");

        log("Last slice footer at %lx\n", ( unsigned long )(ptr - SIZE_T_SIZE));

        size_t last_slice_size = *( size_t* )(ptr - SIZE_T_SIZE);

        if (last_slice_size == 0) {
            goto OVER;
        }

        size_t combined_size = last_slice_size + gen_footer;
        colle("last_slice_size = %zx, combined_size = %zx\n", last_slice_size, combined_size);

        colle("Current block size: %lx @ %zx, Previous block size: %lx @ %zx.\n", block_size, ( unsigned long )ptr, last_slice_size, ( unsigned long )(ptr - REMOVESIGBITS(last_slice_size)));

        if (CHECKSECONDLASTBIT(*( size_t* )(ptr - last_slice_size))) {
            *( size_t* )(ptr - last_slice_size) = MARKSECONDLASTBITONE(combined_size);
        }
        else {
            *( size_t* )(ptr - last_slice_size) = MARKSECONDLASTBITZERO(combined_size);
        }

        *( size_t* )(ptr - SIZE_T_SIZE + gen_footer) = combined_size;

        log("Written footer at: %lx, as %zx\n", ( unsigned long )(ptr + gen_footer - SIZE_T_SIZE), *( size_t* )(ptr + gen_footer - SIZE_T_SIZE));

        mm_free(ptr - last_slice_size + SIZE_T_SIZE);
    }
    else if (!CHECKSIGNBIT(*( size_t* )(ptr + block_size))) {
        size_t following_block_size = REMOVESIGBITS(*(( size_t* )(ptr + block_size)));

        if (following_block_size == 0) {
            goto OVER;
        }
        log("following block size = %zx, @%lx\n", following_block_size, ( unsigned long )(ptr + block_size));

        size_t combined_block_size = block_size + REMOVESIGBITS(*(( size_t* )(ptr + block_size)));

        size_t sigs = GETSIGBITS(*( size_t* )ptr);

        log("sigbits = %zx\n", sigs);

        log("comb_block_size = %zx\n", combined_block_size);

        *( size_t* )ptr = combined_block_size + sigs;

        log("Write new header at: %lx, written %zx\n", ( unsigned long )(ptr), *( size_t* )(ptr));

        *( size_t* )(ptr + combined_block_size - SIZE_T_SIZE) = combined_block_size;

        log("Write new footer at: %lx, written %zx\n", ( unsigned long )(ptr + combined_block_size - SIZE_T_SIZE), *( size_t* )(ptr + combined_block_size - SIZE_T_SIZE));

        mm_free(ptr + SIZE_T_SIZE);
    }
    else {
    OVER:
        log("goto here\n");
        size_t gen_footer = REMOVESIGBITS(gen_head);
        log("gen_footer/real_size = %zx\n", gen_footer);
        *( size_t* )(ptr + gen_footer - SIZE_T_SIZE) = gen_footer;
        log("Freed header at: %lx, written header %zx\n", ( unsigned long )(ptr), *( size_t* )(ptr));
        log("Written footer at: %lx, as %zx\n", ( unsigned long )(ptr + gen_footer - SIZE_T_SIZE), *( size_t* )(ptr + gen_footer - SIZE_T_SIZE));
    }
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void* mm_realloc(void* ptr, size_t size) {
    size = ALIGN(size);
    // realloclog("size = %zx\n", size);
    realloclog("=== REALLOC === at %lx, to size %zx\n", ( unsigned long )ptr, size);
    void*  oldptr = ptr;
    void*  newptr;
    size_t copySize;
    copySize = REMOVESIGBITS(*( size_t* )(( char* )oldptr - SIZE_T_SIZE));

    if (size == copySize) {
        realloclog("No need to shrink or expand.\n");
        return oldptr;
    }
    size_t sigs = GETSIGBITS(*( size_t* )(( char* )oldptr - SIZE_T_SIZE));
    realloclog("original size = %zx\n", copySize);
    size_t current_block_size = REMOVESIGBITS(*( size_t* )(( char* )oldptr - SIZE_T_SIZE));
    size_t next_block_size    = REMOVESIGBITS(*( size_t* )(oldptr - SIZE_T_SIZE + current_block_size));
    // realloclog("mem_heap_hi = %lx, mem_heap_lo = %lx\n", ( unsigned long )mem_heap_hi(), ( unsigned long )mem_heap_lo());

    realloclog("mem heap hi + 1 = %lx, my pointer = %lx\n", ( unsigned long )mem_heap_hi() + 1, ( unsigned long )(oldptr + current_block_size - SIZE_T_SIZE));

    if (oldptr + current_block_size == mem_heap_hi() + 1 - SIZE_T_SIZE) {
        // realloclog("next block @%lx size = %zx (0 expected)\n", ( unsigned long )(oldptr - SIZE_T_SIZE + current_block_size), next_block_size);
        goto TAILMODE;
    }
    if (oldptr + current_block_size == mem_heap_hi() + 1 + SIZE_T_SIZE) {
        // realloclog("next block @%lx size = %zx (0 expected)\n", ( unsigned long )(oldptr - SIZE_T_SIZE + current_block_size), next_block_size);
        goto TAILMODE;
    }

    if (oldptr + current_block_size == mem_heap_hi() + 1) {
        // realloclog("next block @%lx size = %zx (0 expected)\n", ( unsigned long )(oldptr - SIZE_T_SIZE + current_block_size), next_block_size);
        goto TAILMODE;
    }

    if (size > copySize) {
        // size_t current_block_size = REMOVESIGBITS(*( size_t* )(( char* )oldptr - SIZE_T_SIZE));
        if (!CHECKSIGNBIT(*( size_t* )(oldptr - SIZE_T_SIZE + current_block_size))) {
            realloclog("Coalease forward @ %lx...\n", ( unsigned long )ptr);
            // Move forward
            // size_t next_block_size = REMOVESIGBITS(*( size_t* )(oldptr - SIZE_T_SIZE + current_block_size));
            if (current_block_size + next_block_size - size == SIZE_T_SIZE) {
                size += SIZE_T_SIZE;
                // Don't leave any useless SIZE_T_SIZE sized blocks.
            }
            realloclog("cur_size = %zx, next_size = %zx, needed size = %zx\n", current_block_size, next_block_size, size);
            // realloclog("\n=== REALLOC === at %lx, to size %zx\n", ( unsigned long )ptr, size);

            if (current_block_size + next_block_size > size) {

                realloclog("LARGER\n");
                realloclog("current_block_size = %zx, next_block_size = %zx\n", current_block_size, next_block_size);
                // size = current_block_size + next_block_size;

                *( size_t* )(oldptr - SIZE_T_SIZE) = size + sigs;

                realloclog("sigbits = %zx\n", sigs);

                realloclog("Write new header at: %lx, written %zx\n", ( unsigned long )(oldptr - SIZE_T_SIZE), *( size_t* )(oldptr - SIZE_T_SIZE));

                *( size_t* )(ptr + size - 2 * SIZE_T_SIZE) = size;

                realloclog("Write new footer at: %lx, written %zx\n", ( unsigned long )(oldptr + size - 2 * SIZE_T_SIZE), *( size_t* )(oldptr + size - 2 * SIZE_T_SIZE));

                size_t remain_block_size = current_block_size + next_block_size - size;

                *( size_t* )(oldptr - SIZE_T_SIZE + size) = MARKSECONDLASTBITONE(remain_block_size);

                // printf("sigbits = %zx\n", sigs);

                realloclog("Write new header at: %lx, written %zx\n", ( unsigned long )(oldptr - SIZE_T_SIZE + size), *( size_t* )(oldptr - SIZE_T_SIZE + size));

                *( size_t* )(oldptr + size - 2 * SIZE_T_SIZE) = remain_block_size;

                realloclog("Write new footer at: %lx, written %zx\n", ( unsigned long )(oldptr + size - 2 * SIZE_T_SIZE), *( size_t* )(oldptr + size - 2 * SIZE_T_SIZE));

                return oldptr;
            }

            else if (current_block_size + next_block_size == size) {
                realloclog("EQUAL\n");
                realloclog("current_block_size = %zx, next_block_size = %zx\n", current_block_size, next_block_size);
                size = current_block_size + next_block_size;

                *( size_t* )(oldptr - SIZE_T_SIZE) = size + sigs;

                realloclog("sigbits = %zx\n", sigs);

                realloclog("Write new header at: %lx, written %zx\n", ( unsigned long )(oldptr - SIZE_T_SIZE), *( size_t* )(oldptr - SIZE_T_SIZE));

                // *( size_t* )(ptr + size - 2 * SIZE_T_SIZE) = size;

                realloclog("Write new footer at: %lx, written %zx\n", ( unsigned long )(oldptr + size - 2 * SIZE_T_SIZE), *( size_t* )(oldptr + size - 2 * SIZE_T_SIZE));

                return ptr;
            }
            else {
                size_t lacking_mem = size - current_block_size - next_block_size;
                realloclog("Forward Not enough. Lacking %zx bytes.\n", lacking_mem);

                void* next_bottom = ptr + current_block_size + next_block_size;
                realloclog("next_bottom = %lx, mem_heap_hi = %lx...\n", ( unsigned long )next_bottom + SIZE_T_SIZE, ( unsigned long )mem_heap_hi() + 1);
                if (next_bottom + SIZE_T_SIZE >= mem_heap_hi() + 1 - SIZE_T_SIZE) {
                    if (mem_sbrk(lacking_mem) != NULL) {

                        *( size_t* )(ptr - SIZE_T_SIZE) = size + sigs;

                        realloclog("sigbits = %zx\n", sigs);

                        realloclog("Write new header at: %lx, written %zx\n", ( unsigned long )(oldptr - SIZE_T_SIZE), *( size_t* )(oldptr - SIZE_T_SIZE));

                        return ptr;
                    }
                }
            }
        }
        if (!CHECKSECONDLASTBIT(sigs)) {
            realloclog("Coalease backward @ %lx...\n", ( unsigned long )ptr);
            size_t prev_block_size = REMOVESIGBITS(*( size_t* )(oldptr - SIZE_T_SIZE * 2));
            if (prev_block_size + current_block_size >= size) {
                realloclog("Combine currentsize: %zx, previoussize: %zx\n", current_block_size, prev_block_size);
                if (prev_block_size + current_block_size - size == SIZE_T_SIZE) {
                    // Avoid rubbish block (size == SIZE_T_SIZE)
                    size += SIZE_T_SIZE;
                }
                if (prev_block_size + current_block_size == size) {
                    // Best Solution
                    newptr = oldptr - prev_block_size;
                    memcpy(newptr, oldptr, size - SIZE_T_SIZE);

                    sigs = MARKLASTBITONE(GETSIGBITS(*( size_t* )(oldptr - prev_block_size - SIZE_T_SIZE)));

                    *( size_t* )(oldptr - prev_block_size - SIZE_T_SIZE) = size + sigs;

                    realloclog("sigbits = %zx\n", sigs);

                    realloclog("Write new header at: %lx, written %zx\n", ( unsigned long )(oldptr - SIZE_T_SIZE), *( size_t* )(oldptr - SIZE_T_SIZE));

                    realloclog("=====================\nREALLOC @ %lx\n", ( unsigned long )newptr);
                    return newptr;
                }
                else {
                    size_t remain_size = prev_block_size + current_block_size - size;

                    realloclog("Remaining block size: %zx\n", remain_size);

                    newptr = oldptr - prev_block_size;
                    memcpy(newptr, oldptr, size - SIZE_T_SIZE);

                    sigs = MARKLASTBITONE(GETSIGBITS(*( size_t* )(oldptr - prev_block_size - SIZE_T_SIZE)));

                    *( size_t* )(oldptr - prev_block_size - SIZE_T_SIZE) = size + sigs;

                    realloclog("sigbits = %zx\n", sigs);

                    realloclog("Write #1 header at: %lx, written %zx\n", ( unsigned long )(oldptr - prev_block_size - SIZE_T_SIZE), *( size_t* )(oldptr - prev_block_size - SIZE_T_SIZE));

                    *( size_t* )(oldptr - prev_block_size - SIZE_T_SIZE + size) = MARKSECONDLASTBITONE(remain_size);

                    realloclog("Write #2 header at: %lx, written %zx\n", ( unsigned long )(oldptr - prev_block_size - SIZE_T_SIZE + size), *( size_t* )(oldptr - prev_block_size - SIZE_T_SIZE + size));

                    *( size_t* )(ptr + current_block_size - SIZE_T_SIZE) = remain_size;

                    realloclog("Write #2 footer at: %lx, written %zx\n", ( unsigned long )(ptr + current_block_size - SIZE_T_SIZE), *( size_t* )(ptr + current_block_size - SIZE_T_SIZE));

                    realloclog("=====================\nREALLOC @ %lx\n", ( unsigned long )newptr);
                    return newptr;
                }
            }
            else {
                realloclog("Backward Not enough. Lacking %zx bytes.\n", size - current_block_size - prev_block_size);
            }
        }
    }

    // printf("Prepare copying...\n");
FOOLSOLUTION:
    realloclog("goto fool solution.\n");
    newptr = mm_malloc(size);
    if (newptr == NULL)
        return NULL;

    copySize = REMOVESIGBITS(*( size_t* )(oldptr - SIZE_T_SIZE));

    if (size < copySize)
        copySize = size;

    memcpy(newptr, oldptr, size - SIZE_T_SIZE);

    mm_free(oldptr);

    realloclog("=====================\nREALLOC @ %lx\n", ( unsigned long )newptr);
    return newptr;

TAILMODE:
    realloclog("goto tail mode.\n");

    if (mem_sbrk(size - copySize + SIZE_T_SIZE) == NULL) {
        goto FOOLSOLUTION;
    };

    realloclog("sbrked %zx\n", size - copySize + SIZE_T_SIZE);

    // realloclog("Now, oldptr = %lx, partptr = %lx, size = %zx\n", ( unsigned long )oldptr, ( unsigned long )partial_ptr, size);
    *( size_t* )(oldptr - SIZE_T_SIZE) = MARKLASTBITONE(size);

    realloclog("=====================\nREALLOC @ %lx\n", ( unsigned long )oldptr);
    return oldptr;
}
