setClass("NumericVector", slots = c(data = "numeric"))


signature(a = "NumericVector", b = "NumericVector")

setMethod("+", c(a = "NumericVector", b = "NumericVector"), function(a, b)
{
    a@data + b@data
})
