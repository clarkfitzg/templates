l2norm = function(x)
{
    out = 0.0
    .Call(c_l2norm, as.numeric(x), out)
    out
}
