int foo(int arg)
{
    int ret = 0;
    if (arg % 17)
    {
        ret = 42;
    }
    return ret;
}