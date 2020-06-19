void bar();
void baz();

int foo(int op)
{
    switch (op)
    {
    case 1:
        return foo(op + 1);
    case 2:
        bar();
        break;
    case 3:
    case 4:
        baz();
        break;
    case 5:
        return foo(op - 1);
    default:
        break;
    }
    return 0;
}