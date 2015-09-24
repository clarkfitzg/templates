import matplotlib.pyplot as plt
import pandas as pd


normal = pd.read_csv('normal.csv', header=None)

normal.hist()
plt.savefig('normal_hist.pdf')

q = normal.quantile([0, 0.25, 0.5, 0.75, 1])
q.columns = ['quantiles']
q.to_latex('quantiles.tex')
