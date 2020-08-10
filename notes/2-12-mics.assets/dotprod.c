#define M 8
// vector dot production calculator
float dotprod(float x[M], float y[M])
{
    float sum = 0.0;
    int i;
    for (i = 0; i < M; ++i)
    {
        sum += x[i] * y[i];
    }
    return sum;
}