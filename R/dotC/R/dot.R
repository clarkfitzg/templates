l2norm = function(x)
{
    # Coerce args to correct types first
    x = as.numeric(x)
    n = as.integer(length(x))

    # Output is only returned by modifying arguments in place
    out = numeric(1)

    # .C returns list(out, x, n)
    .C("l2norm", x, n, out = out)$out
}
