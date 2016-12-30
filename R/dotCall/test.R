library("dotCall")
x = rnorm(10)
xn = l2norm(x)

# Should be 0
diff = xn - sum(x * x)
print(diff)
