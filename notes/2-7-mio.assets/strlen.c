/* Sample implementation of library function strlen */
/* Compute length of string */
size_t strlen(const char *s)
{
    long length = 0;
    while (*s != '\0')
    {
        s++;
        length++;
    }
    return length;
}
