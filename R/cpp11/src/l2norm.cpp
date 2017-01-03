#include <vector>
using std::vector;

#include <R.h>
#include <Rinternals.h>


double calc_l2norm(std::vector<double> x)
{
    double out = 0;
    for (auto& xi : x)
    {
        out += xi * xi;
    }
    return out;
}


extern "C" {
// Dot product
SEXP l2norm(SEXP x)
{
    // Create the new return object from within C
    SEXP out = PROTECT(allocVector(REALSXP, 1));

    // C pointers to the actual data
    double *xp = REAL(x);
    double *outp = REAL(out);

    int n = length(x);

    // Convert to CPP vector
    // Not necessary, only done to make sure we're actually using CPP 11
    // features.
    std::vector<double> xv;
    xv.assign(xp, xp + n);

    *outp = calc_l2norm(xv);

    UNPROTECT(1);
    return out;
}
}
