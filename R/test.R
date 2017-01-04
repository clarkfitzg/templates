x = rnorm(10)
l2norm = function(x) sqrt(sum(x*x))
xnorms = sapply(list(l2norm, dotC::l2norm, dotCall::l2norm, cpp11::l2norm)
                , function(f) f(x))

print(xnorms)
