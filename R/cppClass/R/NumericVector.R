setClass("NumericVector", slots = c(data = "numeric"))

setMethod("+", signature(e1 = "NumericVector", e2 = "NumericVector"), function(e1, e2)
{
    "inside +"
})

setGeneric("l2norm", function(x) standardGeneric("l2norm"))

setMethod("l2norm", signature(x = "NumericVector"), function(x)
{
    "l2 method"
})
