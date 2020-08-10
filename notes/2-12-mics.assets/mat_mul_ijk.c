#define N 8
// ijk, matrix multiplication
void mat_mul(float a[N][N], float b[N][N], float c[N][N])
{
    float sum;
    for (i = 0; i < N; i++)
    {
        for (j = 0; j < N; j++)
        {
            sum = 0.0;
            for (k = 0; k < N; k++)
                sum += a[i][k] * b[k][j];
            c[i][j] = sum;
        }
    }
}