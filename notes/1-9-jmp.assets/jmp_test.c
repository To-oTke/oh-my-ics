#include "stdlib.h"

size_t test_if(size_t i)
{
    if (i % 2)
    {
        return 0;
    }
    else
    {
        return 1;
    }
}

size_t test_loop(size_t i)
{
    while (i > 0)
    {
        --i;
    }
    return i;
}

size_t test_goto(size_t i)
{
begin:
    if (i > 0)
    {
        goto minus;
    }
    else
    {
        goto end;
    }

minus:
    --i;
    goto begin;

end:
    return i;
}