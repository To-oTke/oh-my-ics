int f(int);

int func1(x)
{
    return f(x) + f(x) + f(x) + f(x);
}
int func2(x)
{
    return 4 * f(x);
}