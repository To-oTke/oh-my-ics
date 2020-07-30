#pragma once

#define PLUS
#define SINGLE

#ifdef PLUS
#define IDENT 0
#define OP +
#else
#define IDENT 1
#define OP *
#endif

#ifdef SINGLE
typedef long data_t;
#else
typedef double data_t;
#endif

typedef struct
{
    long len;
    data_t *data;
} vec_rec, *vec_ptr;

vec_ptr new_vec(long len);
// Create vector of specified length

long vec_length(vec_ptr);
// Return length of vector

data_t *get_vec_start(vec_ptr v);
// Return pointer to start of vector data

long get_vec_element(vec_ptr v, long index, int *dest);
// Retrieve vector element, store at *dest
// Return 0 if out of bounds, 1 if successful