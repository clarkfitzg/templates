hello = function()
{
    #x = as.integer(x[1])
    #.Call("CPP_hello", PACKAGE = "RwithCpp", x)
    .Call("CPP_hello")
}
