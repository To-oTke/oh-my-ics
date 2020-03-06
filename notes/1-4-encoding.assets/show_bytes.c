#include "show_bytes.h"
#include <stdio.h>

void show_bytes( byte_pointer start, size_t len ) {
    size_t i;
    for ( i = 0; i < len; i++ )
        printf( "0x%p\t0x%.2x\n", start + i, start[ i ] );
    printf( "\n" );
}
