int bitCount( int x ) {
    int m1   = 0x11 | ( 0x11 << 8 );
    int mask = m1 | ( m1 << 16 );
    int s    = x & mask;
    s += x >> 1 & mask;
    s += x >> 2 & mask;
    s += x >> 3 & mask;
    /* Now combine high and low order sums */
    s = s + ( s >> 16 );

    /* Low order 16 bits now consists of 4 sums.
       Split into two groups and sum */
    mask = 0xF | ( 0xF << 8 );
    s    = ( s & mask ) + ( ( s >> 4 ) & mask );
    return ( s + ( s >> 8 ) ) & 0x3F;
}