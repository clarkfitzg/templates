hello = function(s)
{
    s = as.character(s[1])
    #.Call("CPP_hello", PACKAGE = "RwithCpp", x)
    .Call(CPP_hello, s)
}
