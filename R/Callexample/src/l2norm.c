void setzeros(double *x, int *n)
{
    for(int i = 0; i < *n; i++)
    {
        x[i] = 0.0;
    }
}


// Dot product
void l2norm(double *x, int *n, double *out)
{
    *out = 0.0;
    for(int i = 0; i < *n; i++)
    {
        *out += x[i] * x[i];
        //*out += 1.0;
    }
}