# %% 
#
#   Contributors:
#           Mauricio Fernández
#           Dominik Klein

# %% Import

import matplotlib.pyplot as plt
import numpy as np
import tensorflow as tf

# %% Colors

colors = np.array([
        'tab:blue', 'tab:orange', 'tab:green',
        'tab:red', 'tab:purple', 'tab:brown',
        'tab:pink', 'tab:gray', 'tab:olive'
        ])

colors33 = colors.reshape([3, 3])

# %% Plots

    
def plot_W_F(
        ls, Ws, Ps,
        Ws_m_0, Ws_m,
        Ps_m_0, Ps_m,        
        cell, model_case_cell,
        rotation_matrices):
    
    fig, ax = plt.subplots(1, 2, figsize=(10, 4))
    axx = ax[0]
    
            
        
    Ws_m = tf.transpose(tf.reshape(Ws_m,
                    [tf.cast(Ws_m.shape[0]/Ws_m_0.shape[0], 'int32'),
                        Ws_m_0.shape[0]]))
    
    Ws_m = Ws_m.numpy()
    
    Ws_m_min = np.amin(Ws_m, axis=1)
    Ws_m_max = np.amax(Ws_m, axis=1)
    
    
    axx.fill_between(ls, Ws_m_min, 
                     Ws_m_max, color='tab:blue',alpha=0.3, label='model')

    
    axx.plot(
        ls,
        Ws,
        linestyle='--',
        label='data',
        color=colors33[0, 0]
        )
         
    axx.legend()
    axx.set_xlabel('$\\lambda$')
    axx.set_ylabel('$W$')
    axx.set_title(model_case_cell)    
    
    batch_rotation = tf.repeat(rotation_matrices,tf.shape(Ps)[0],axis=0)
                         
    Ps_m = tf.matmul(batch_rotation, Ps_m, transpose_a=True)
    


    axx = ax[1]
    
    for i1 in range(3):
        for i2 in range(3):
            axx.plot(
                ls,
                Ps[:, i1, i2],
                linestyle='--',
                label = f'{i1+1, i2+1}',
                color=colors33[i1, i2]
                )
            
            Ps_m_ij = Ps_m[:,i1,i2]
            
            Ps_m_ij = tf.transpose(tf.reshape(Ps_m_ij,
                    [tf.cast(Ps_m_ij.shape[0]/Ps_m_0.shape[0], 'int32'),
                        Ps_m_0.shape[0]]))
    
            Ps_m_ij = Ps_m_ij.numpy()
    
            Ps_m_ij_min = np.amin(Ps_m_ij, axis=1)
            Ps_m_ij_max = np.amax(Ps_m_ij, axis=1)
            
            axx.fill_between(ls, Ps_m_ij_min, 
                     Ps_m_ij_max,
                     color= colors33[i1, i2],alpha=0.3)

            
            
    axx.legend()
    axx.set_xlabel('$\\lambda$')
    axx.set_ylabel('$P_{i \ j}$')
    
    plt.tight_layout()
    plt.show()


    
    
def plot_WP(
        ls, Fs, 
        Ws, Ps, 
        Ws_m=[], Ps_m=[],
        model_case_cell=''):
    fig, ax = plt.subplots(1, 2, figsize=(10, 4))
    
    # W 

    axx = ax[0]
    axx.plot(
        ls,
        Ws,
        linestyle='--',
        label='data',
        color=colors33[0, 0]
        )
    if len(Ws_m) > 0:
        axx.plot(
            ls,
            Ws_m,
            label='model',
            color=colors33[0, 0]
            )
        
    ls = ls.numpy()
    axx.legend()
    axx.set_xlabel('$\\lambda$')
    axx.set_ylabel('$W$')
    axx.set_title(model_case_cell)
    
    #P
    axx = ax[1]
    for i1 in range(3):
        for i2 in range(3):
            axx.plot(
                ls,
                Ps[:, i1, i2],
                linestyle='--',
                label = f'{i1+1, i2+1}',
                color=colors33[i1, i2]
                )
            if len(Ps_m) > 0:
                axx.plot(
                    ls,
                    Ps_m[:, i1, i2],
                    linestyle='-',
                    color=colors33[i1, i2]
                    )
                
    axx.legend()
    axx.set_xlabel('$\\lambda$')
    axx.set_ylabel('$P_{i \ j}$')

    plt.tight_layout()
    plt.show()