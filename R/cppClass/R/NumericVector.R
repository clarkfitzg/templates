setClass("NumericVector", slots = c(data = "numeric"))

setMethod("+", signature(e1 = "NumericVector", e2 = "NumericVector"), function(e1, e2)
{
    a@data + b@data
})
