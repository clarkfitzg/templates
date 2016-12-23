#include <R.h>
#include <Rinternals.h>

extern "C"
SEXP CPP_times2(SEXP x)
{
    return(2 * x);
}
