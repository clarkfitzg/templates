hello = function(x)
{
    x = as.integer(x)
    .Call(CPP_hello, x)
}
