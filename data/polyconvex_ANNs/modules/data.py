# %% 
#
#   Contributors:
#           Mauricio Fernández
#           Dominik Klein

# %% Import

import tensorflow as tf
import numpy as np
from scipy.spatial.transform import Rotation as R

# %% Globals

tfdt = tf.float32

folder_data = 'data_soft_beam_lattice_metamaterials/'

def load_case(cell, case):
    data = np.loadtxt(f'{folder_data}{cell}_{case}.txt')
    Fs = tf.constant(
        data[:, 0:9].reshape([-1, 3, 3]),
        dtype=tfdt)
    Ps = tf.constant(
        data[:, 9:18].reshape([-1, 3, 3]),
        dtype=tfdt)
    Ws = tf.constant(
        data[:, 18].reshape([-1, 1]),
        dtype=tfdt)
    return Fs, Ws, Ps


def load_case_rotation(cell, case, num_rotation_matrices):
    
    rotation_matrices=tf.convert_to_tensor(R.random(num_rotation_matrices).as_matrix(), \
                                           dtype=tfdt)
    
    [Fs0, Ws0, Ps0] = load_case(cell, case)  
    
    Fs = []
    Ws = []
    Ps = []
            
    for n_rotation in range(num_rotation_matrices):
        rotation = rotation_matrices[n_rotation,:,:]
       
        rotation = tf.tile(rotation[None], \
                       tf.constant([len(Fs0[:,0,0]), 1, 1]))
            
        Fs.append(tf.matmul(rotation, Fs0))
        Ws.append(Ws0)
        Ps.append(tf.matmul(rotation, Ps0))
            
    Fs = tf.concat(Fs, 0)
    Ws = tf.concat(Ws, 0)
    Ps = tf.concat(Ps, 0)
    
    return Fs, Ws, Ps, rotation_matrices