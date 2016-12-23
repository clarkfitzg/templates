times2 = function(x)
{
    x1 = as.numeric(x)[1]
    .Call(CPP_times2, x1)
}
