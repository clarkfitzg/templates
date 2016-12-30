# Set x to a vector of zeros
setzeros = function(x)
{
    # Coerce args to correct types first
    x = as.numeric(x)
    n = as.integer(length(x))

    # Output is only returned by modifying arguments in place
    .C("setzeros", x, n)
}


l2norm = function(x)
{
    # Coerce args to correct types first
    x = as.numeric(x)
    n = as.integer(length(x))

    # Output is only returned by modifying arguments in place
    out = 139.2
    .C("l2norm", x, n, out)
    out
}
