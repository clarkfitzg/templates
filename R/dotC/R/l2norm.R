l2norm = function(x)
{
    # Coerce args to correct types first
    x = as.numeric(x)
    n = as.integer(length(x))

    # Output is only returned by modifying arguments in place
    out = numeric(1)

    # .C returns list(out, x, n)
    .C(c_l2norm, x, n, out = out)$out
}


fit_ols = function(x, y)
{
    # Coerce args to correct types first
    x = as.numeric(x)
    y = as.numeric(y)
    n = as.integer(length(x))
    beta = numeric(2)

    # .C returns list(out, x, n)
    .C(c_fit_ols, x, n, beta = beta)$beta
}
