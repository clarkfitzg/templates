l2norm = function(x)
{
    # Coerce args to correct types first
    x = as.numeric(x)
    n = as.integer(length(x))

    # Output is only returned by modifying arguments in place
    out = 0.0

    # .C returns list(out, x, n)
    .C("l2norm", out, x, n)[[1]]
}
