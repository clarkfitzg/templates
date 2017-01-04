#include <R.h>
#include <Rinternals.h>

#include <NumericVector.cpp>
#include <references.cpp>


extern "C" {

SEXP c_l2norm(SEXP x)
{
    SEXP out = PROTECT(allocVector(REALSXP, 1));

    double *outp = REAL(out);

    int n = length(x);

    // Convert to CPP vector
    // Not necessary, only done to make sure we're actually using CPP 11
    // features.
    std::vector<double> xv;
    xv.assign(xp, xp + n);

    *outp = l2norm_work(xv);

    UNPROTECT(1);
    return out;
}

} // end extern "C"
