library("Callexample")
x = rnorm(10)
xn = l2norm(x)

# Should be 0
xn - sum(x * x)
