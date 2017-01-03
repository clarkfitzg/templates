setClass("NumericVector", slots = c(data = "numeric"))


setMethod("+", signature(a = "NumericVector", b = "NumericVector"), function(a, b)
{
    a@data + b@data
})

class(representation(v="numeric"))


setClass("yyy", slots = c(v="numeric"))

setMethod("+", signature(e1 = "yyy", e2 = "yyy"), function (e1, e2)
          {
              e1@v + e2@v
          })


y1 <- new("yyy", v = 1)
