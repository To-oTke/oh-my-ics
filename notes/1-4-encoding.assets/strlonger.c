/* Prototype for library function strlen */
size_t strlen( const char* s ); /* size_t is usigned */

/* Determine whether string s is longer than string t */
/* WARNING: This function is buggy */
int strlonger( char* s, char* t ) {
    return strlen( s ) - strlen( t ) > 0;
}
