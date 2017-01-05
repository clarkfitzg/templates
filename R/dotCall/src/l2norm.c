#include <math.h>
#include <R.h>
#include <Rinternals.h>

// Dot product
void c_l2norm(SEXP x, SEXP out)
{
    // C pointers to the actual data
    double *xp = REAL(x);
    double *outp = REAL(out);

    int n = length(x);

    for(int i = 0; i < n; i++)
    {
        *outp += xp[i] * xp[i];
    }
    
    *outp = sqrt(*outp);
}
