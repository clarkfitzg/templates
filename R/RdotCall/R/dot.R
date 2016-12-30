# dot product of vectors a and b
dot = function(a, b)
{
    # Coerce args to correct types first
    a = as.numeric(a)
    b = as.numeric(b)
    n = as.integer(length(a))

    # Output is only returned by modifying arguments in place
    out = 0.0
    .C("cdot", a, b, n, out)
    out
}
