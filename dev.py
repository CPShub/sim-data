import numpy as np
import matplotlib.pyplot as plt

# %% 

folder = 'data/beam_lattice_metamaterials/'

def get_data(cell, case):
    data = np.loadtxt('%s%s_%s.txt' % (folder, cell, case))
    Fs = data[:, 0:9].reshape([-1, 3, 3])
    Ps = data[:, 9:18].reshape([-1, 3, 3])
    Ws = data[:, 18]
    return Fs, Ps, Ws

def plot_data(cell, case):
    Fs, Ps, Ws = get_data(cell, case)
    
    if case != 'shear':
        xs = Fs[:, 0, 0]
    else:
        xs = Fs[:, 0, 1]
    
    fig, ax = plt.subplots(1, 3, figsize=(15,4))
    axx = ax[0]
    for i1 in range(3):
        for i2 in range(3):
            axx.plot(
                xs,
                Fs[:, i1, i2],
                label= '%i%i' % (i1+1, i2+1)
                )
    axx.legend()
    axx.set_ylabel('%s - $F_{ij}$' % case)
    if case != 'shear':
        axx.set_xlabel('$F_{11}$')
    else:
        axx.set_xlabel('$F_{12}$')
    
    axx = ax[1]
    for i1 in range(3):
        for i2 in range(3):
            axx.plot(
                xs,
                Ps[:, i1, i2],
                label= '%i%i' % (i1+1, i2+1)
                )
    axx.legend()
    axx.set_ylabel('%s - $P_{ij}$' % case)
    if case != 'shear':
        axx.set_xlabel('$F_{11}$')
    else:
        axx.set_xlabel('$F_{12}$')
        
    axx = ax[2]
    axx.plot(xs, Ws)
    axx.set_ylabel('%s - $W$' % case)
    if case != 'shear':
        axx.set_xlabel('$F_{11}$')
    else:
        axx.set_xlabel('$F_{12}$')
    
    plt.tight_layout()
    plt.show()    

# %%

cells = ['X', 'BCC']
cases = ['uniaxial', 'biaxial', 'planar', 'volumetric', 'shear', 'test1', 'test2', 'test3']

plot_data(cells[0], cases[4])

