/* Convert string to lowercase: faster */
void lower2(char *s)
{
    long i;
    long len = strlen(s);
    char offset = 'A' - 'a';

    for (i = 0; i < len; i++)
        if (s[i] >= 'A' && s[i] <= 'Z')
            s[i] -= offset;
}