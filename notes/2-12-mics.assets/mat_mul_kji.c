#define N 8
// kji, matrix multiplication
void mat_mul(float a[N][N], float b[N][N], float c[N][N])
{
    float sum, r;
    for (k = 0; k < N; k++)
    {
        for (j = 0; j < N; j++)
        {
            r = b[k][j];
            for (i = 0; i < N; i++)
                c[i][j] += a[i][k] * r;
        }
    }
}