extern int a;
int f()
{
    static int x = 1; //x.1
    int b = 2;
    return x + b;
}

int g()
{
    static int x = 1; //x.2
    return x + a;
}
