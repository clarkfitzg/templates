#include <math.h>

class NumericVector
{
    double* data;
    int n;
    double l2norm();
}


double NumericVector::l2norm()
{
    out = 0.0;
    for(int i = 0; i < n; i++)
    {
        out += data[i] * data[i];
    }
    return sqrt(out);
}
