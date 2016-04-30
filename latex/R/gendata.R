npts = 1000
x = rnorm(npts)
noise = rnorm(npts)
y = 3.2 + 7 * x + noise
xy = data.frame(x=x, y=y)
write.csv(xy, 'normaldata.csv')
