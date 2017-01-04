This is meant to be the minimum required to represent an object oriented
C++ library in R using references.

```
library(cppClass)

a = rnorm(10)
b = NumericVector(a)
l2norm(b)
```
