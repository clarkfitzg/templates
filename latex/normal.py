import numpy as np

npts = 100
seed = 37

norm = np.random.RandomState(seed).randn(npts)

np.savetxt('normal.csv', norm, delimiter=',')
