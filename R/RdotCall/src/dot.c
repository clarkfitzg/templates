// Dot product
void cdot(double *a, double *b, int *n, double *out)
{
    for(int i = 0; i < *n; i++)
    {
        *out += a[i] * b[i];
        //*out += 1.0;
    }
}
