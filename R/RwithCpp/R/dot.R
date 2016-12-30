cdot = function(a, b)
{
    a = as.numeric(a)
    b = as.numeric(b)
    n = as.integer(length(a))
    ab = numeric(n)
    .C("cdot", a, b, n, ab)
    ab
}
