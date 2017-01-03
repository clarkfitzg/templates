library("cppClass")

x = rnorm(10)
xv = NumericVector(x)

xv + xv

xn = l2norm(xv)

# Should be 0
diff = xn - sum(x * x)
print(diff)
