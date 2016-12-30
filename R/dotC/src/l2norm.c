// Dot product
void l2norm(double *x, int *n, double *out)
{
    *out = 0.0;
    for(int i = 0; i < *n; i++)
    {
        *out += x[i] * x[i];
    }
}
