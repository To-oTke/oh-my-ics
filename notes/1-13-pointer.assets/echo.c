#include <stdio.h>

/* read input line and write it back */
void echo()
{
    char buf[8]; /* way too small! */
    gets(buf);
    puts(buf);
}