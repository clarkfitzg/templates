xy = read.csv('normaldata.csv')

q = data.frame(x=quantile(xy$x), y=quantile(xy$y))

caption = 'These quantiles came from a normal distribution'

qtab = xtable::xtable(q, caption=caption, label='tab:quantiles')

print(qtab, file='quantiles.tex')

pdf('histogram.pdf')
hist(xy$x)
dev.off()
