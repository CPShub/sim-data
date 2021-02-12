# %% Import 

import numpy as np
import glob
import pickle

# %%

root = 'data/'

scenarios_dict = {
    'standard':[
        'uniaxial', 
        'biaxial', 
        'planar', 
        'volumetric', 
        'shear'
        ],
    # 'test':['test1', 'test2', 'test3'],
    'advanced': [
        'biaxial2',
        'biaxial3',
        'uniaxial-shear'
        ]
    }
scenarios_dict['all'] = scenarios_dict['standard'] + scenarios_dict['advanced']


# %%

def get_p(folder):
    with open(f'{folder}meta.pkl', 'rb') as file:
        meta = pickle.load(file)
    p = [meta['E']] + meta['t']
    return p


def get_ps_folders():
    folders = glob.glob(root+'*/')
    ps = np.zeros([len(folders), 4])
    for i in range(len(folders)):
        with open(f'{folders[i]}meta.pkl', 'rb') as file:
            meta = pickle.load(file)
        ps[i] = [meta['E']] + meta['t']
    return ps, folders


def get_folder(t=[1, 1, 1], E=1):
    p = np.array([E] + list(t), dtype=np.float32)
    ps, folders = get_ps_folders()
    found = False
    c = 0
    while (not found) and (c < ps.shape[0]):
        p_ = ps[c]
        if np.linalg.norm(p - p_) < 1e-6:
            found = True
            break
        c += 1
    if found:
        return folders[c]
    else:
        raise Exception('Meta not available.')


def get_case(
        t=[1, 1, 1],
        E=1,
        folder='',
        scenario='uniaxial',
        tc='t', #t or c
        ):
    if len(folder) == 0:
        folder = get_folder(E=E, t=t)
        p = np.array([E] + list(t), dtype=np.float32)
    else:
        p = get_p(folder)
    p = np.array(p, dtype=np.float32)
    Fs = []
    ps = []
    Ws = []
    Ps = []
    if tc == 'c':
        case = f'{scenario}_compression'
    else:
        case = f'{scenario}_tension'
    file = glob.glob(f'{folder}*{case}*')[0]
    data = np.loadtxt(file, skiprows=1).astype('float32')
    if tc == 'c':
        data = data = np.flip(data, 0)
    Fs = data[:, 1:1+9].reshape([-1, 3, 3])
    ps = np.ones([data.shape[0], 4], dtype='float32')*p
    Ws = 1e6*data[:, 21].reshape([-1, 1])
    Ps = 1e6*data[:, 11:11+9].reshape([-1, 3, 3])
    return Fs, ps, Ws, Ps


def get_all(
        concat_all=False
        ):
    cases = []
    for scenario in scenarios_dict['all']:
        cases.append([scenario, 't'])
        cases.append([scenario, 'c'])
    _, folders = get_ps_folders()
    Fs = np.zeros([len(folders), len(cases), 151, 3, 3], dtype=np.float32)
    ps = np.zeros([len(folders), len(cases), 151, 4], dtype=np.float32)
    Ws = np.zeros([len(folders), len(cases), 151, 1], dtype=np.float32)
    Ps = np.zeros([len(folders), len(cases), 151, 3, 3], dtype=np.float32)
    for i_f in range(len(folders)):
        for i_c in range(len(cases)):
            Fs[i_f, i_c], ps[i_f, i_c], Ws[i_f, i_c], Ps[i_f, i_c] = get_case(
                folder=folders[i_f], 
                scenario=cases[i_c][0], 
                tc=cases[i_c][1]
                )
    if concat_all:
        Fs = np.reshape(Fs, [-1, 3, 3])
        ps = np.reshape(ps, [-1, 4])
        Ws = np.reshape(Ws, [-1, 1])
        Ps = np.reshape(Ps, [-1, 3, 3])
    return Fs, ps, Ws, Ps            