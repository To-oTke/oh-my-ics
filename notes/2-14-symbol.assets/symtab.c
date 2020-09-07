extern int buf[];
int *bufp0 = &buf[0];
static int *bufp1;
int ccc;

static void incr()
{
    static int count = 0;
    count++;
}

int main()
{
    incr();
    bufp1 = (int *)0x42;
    incr();
    ccc = 4;
    return 0;
}