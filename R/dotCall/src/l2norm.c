#include <R.h>
#include <Rinternals.h>

// Dot product
SEXP l2norm(SEXP x)
{
    // Create the new return object from within C
    SEXP out = PROTECT(allocVector(REALSXP, 1));

    // C pointers to the actual data
    double *xp = REAL(x);
    double *outp = REAL(out);

    int n = length(x);

    for(int i = 0; i < n; i++)
    {
        *outp += xp[i] * xp[i];
    }

    UNPROTECT(1);
    return out;
}
