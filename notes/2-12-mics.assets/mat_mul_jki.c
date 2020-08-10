#define N 8
// jki, matrix multiplication
void mat_mul(float a[N][N], float b[N][N], float c[N][N])
{
    float sum, r;
    for (j = 0; j < N; j++)
    {
        for (k = 0; k < N; k++)
        {
            r = b[k][j];
            for (i = 0; i < N; i++)
                c[i][j] += a[i][k] * r;
        }
    }
}