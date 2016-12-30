library("RdotCall")
n = 10
a = rnorm(n)
b = rnorm(n)
ab = dot(a, b)

# Should be 0
abs(ab - sum(a*b))
