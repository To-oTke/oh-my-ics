#define N 8
// kij, matrix multiplication
void mat_mul(float a[N][N], float b[N][N], float c[N][N])
{
    float sum, r;
    for (k = 0; k < N; k++)
    {
        for (i = 0; i < N; i++)
        {
            r = a[i][k];
            for (j = 0; j < N; j++)
                c[i][j] += r * b[k][j];
        }
    }
}