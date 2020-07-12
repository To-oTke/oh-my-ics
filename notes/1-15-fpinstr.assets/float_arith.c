#include "math.h"

float float_add(float a, float b)
{
    return a + b;
}

float float_sub(float a, float b)
{
    return a - b;
}

float float_mul(float a, float b)
{
    return a * b;
}

float float_div(float a, float b)
{
    return a / b;
}

float float_max(float a, float b)
{
    return a > b ? a : b;
}

float float_min(float a, float b)
{
    return a < b ? a : b;
}

float float_sqrt(float v)
{
    return sqrtf(v);
}