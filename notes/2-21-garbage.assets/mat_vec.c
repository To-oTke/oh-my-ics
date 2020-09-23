#include <stdio.h>

/* return y = Ax */
int *matvec(int **A, int *x)
{
    // too bad! should use calloc instead
    int *y = malloc(N * sizeof(int));
    int i, j;

    for (i = 0; i < N; i++)
        for (j = 0; j < N; j++)
            y[i] += A[i][j] * x[j];
    return y;
}
