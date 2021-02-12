# %% Import

import matplotlib.pyplot as plt
import numpy as np

# %%

colors = np.array([
        'tab:blue', 'tab:orange', 'tab:green',
        'tab:red', 'tab:purple', 'tab:brown',
        'tab:pink', 'tab:gray', 'tab:olive'
        ])
colors33 = colors.reshape([3, 3])

# %%

def plot_WP(
        Fs,
        Ws=[], Ps=[],
        title='', Fc=''
        ):
    if Fc == '12':
        xs = Fs[:, 0, 1]
        x_label = '$F_{12}$'
    else:
        xs = Fs[:, 0, 0]
        x_label = '$F_{11}$'
    
    fig, ax = plt.subplots(
        1, 
        3, 
        figsize=(12, 3),
        constrained_layout=True
        )
    
    # F
    axx = ax[0]
    for i1 in range(3):
        for i2 in range(3):
            axx.plot(
                xs,
                Fs[:, i1, i2],
                label=f'{i1+1, i2+1}',
                color=colors33[i1, i2],
                linestyle='--'
                )
    axx.set_xlabel(x_label)
    axx.set_ylabel('$F_{ij}$')
    axx.legend(bbox_to_anchor=(1.05, 1.))
    if len(title) > 0:
        axx.set_title(title)
    
    # W
    if len(Ws) > 0:
        axx = ax[1]
        axx.plot(
            xs,
            Ws,
            linestyle='--',
            label='data',
            color=colors33[0, 0]
            )
        axx.legend()
        axx.set_xlabel(x_label)
        axx.set_ylabel('$W [J/m^3]$')
    
    #P
    if len(Ps) > 0:
        axx = ax[2]
        for i1 in range(3):
            for i2 in range(3):
                axx.plot(
                    xs,
                    Ps[:, i1, i2],
                    linestyle='--',
                    label = f'{i1+1, i2+1}',
                    color=colors33[i1, i2]
                    )
        axx.legend(bbox_to_anchor=(1.05, 1.))
        axx.set_xlabel(x_label)
        axx.set_ylabel('$P_{ij} [Pa]$')
    
    plt.show()