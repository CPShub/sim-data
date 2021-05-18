"""
RUC Data Container Class
==================

Creator: Til Gärtner

This module provides a class, that enables handling
of data from stochastic perturbation simulations
"""

import os
import pandas as pd
import numpy as np
from os import path
from scipy.stats import norm
from itertools import product
import matplotlib.pyplot as plt
from matplotlib import colors as mcolors
colors = dict(mcolors.BASE_COLORS, **mcolors.CSS4_COLORS)

class RUC(object):
    """class to represent a single RUC and all the data generated"""

    # standard case dict:
    CASES = {
        'train': ('uniaxial', 'biaxial-1', 'planar', 'volumetric-1', 'shear-simple'),
        'test': ('biaxial-0.5', 'biaxial-0.33', 'shear-combined')#, 'biplanar', 'volumetric-0.5')
        }
    CASES['all'] = CASES['train'] + CASES['test']

    def __init__(self, name):
        """initialize all values"""
        self.name = name
        self.modes = pd.DataFrame()
        self.seeds = pd.Series(dtype=np.uint64, name='seeds')
        self.clean_rods = []
        self.run_rods = []
        self.deformations = []
        self.avg = {}
        self.sem = {}
        self.ref = {}

    def read_data_raw(self, data_path, max_runs=np.inf, convert_P=1e6, convert_W=1e6, onlyTens=True):
        """function to import all given data from a specified path"""
        assert self.modes.empty, "Cannot override existing data"
        # feedback
        print('Importing raw run ___', end='')
        # construct the path with the data in it
        data_folder = path.join(data_path, self.name)
        # check if this path exists
        assert path.isdir(data_folder), "path '{:s}' does not exist".format(data_folder)
        # list all the single simulations
        imported = 0
        seed_list = []
        for run in os.listdir(data_folder):
            # iterate through them, if there are a valid folder
            if path.isdir(path.join(data_folder, run)) and not "failed" in run:
                # feedback
                imported += 1
                if imported>max_runs:
                    break
                print('\b\b\b{:3d}'.format(imported), end='')
                # get the run modes
                self.modes = pd.read_table(path.join(data_folder, run, 'defModes.dat'), index_col='num') if self.modes.empty else self.modes

                # get the run seed
                with open(path.join(data_folder, run, 'seed.txt')) as f:
                    seed_list.append(np.uint64(f.read()))

                # get the rod data
                point_Frame = pd.read_table(path.join(data_folder, run, 'perturbPoints.dat'))
                # get the unperturbed rod
                if not self.clean_rods:                    
                    self.clean_rods = self.df_to_rods(point_Frame[point_Frame.perturbed == 0].drop(columns = 'perturbed').set_index('rod'))
                # get the perturbed rod
                self.run_rods.append(self.df_to_rods(point_Frame[point_Frame.perturbed == 1].drop(columns = 'perturbed').set_index('rod')))

                # get the deformations
                run_dict = {}
                for num, name in self.modes['name'].iteritems():
                    if onlyTens:
                        runDF = pd.read_table(path.join(data_folder, run, 'defMode_{:d}{:s}_tension.dat'.format(num, name)), index_col='lambda')
                    else:    
                        compDF = pd.read_table(path.join(data_folder, run, 'defMode_{:d}{:s}_compression.dat'.format(num, name)), index_col='lambda')
                        tensDF = pd.read_table(path.join(data_folder, run, 'defMode_{:d}{:s}_tension.dat'.format(num, name)), index_col='lambda')
                        runDF = pd.concat([compDF, tensDF]).drop_duplicates().sort_index()
                    runDF = runDF.set_index(pd.Float64Index(runDF.index.to_numpy().round(3), name='lambda'))
                    runDF['StrEn'] *= convert_W
                    runDF['p'] *= convert_P
                    runDF[[f'P{k}{l}' for (k,l) in RUC.iteraxis()]] *= convert_P
                    run_dict[name] = runDF
                self.deformations.append(run_dict)        
        # convert the seeds
        self.seeds = pd.Series(seed_list, dtype=np.uint64, name='seeds')
        # feedback
        print("\nEverything imported!")

    def calc_avg(self):
        """function to calculate the averages from the collected data"""
        assert not self.modes.empty, "Cannot compute averages from nonexisting data"
        assert len(self.avg)==0, "Cannot override existing averages"
        # group the dataframes
        print("Calculating averages...")
        for name in self.modes['name']:
            grouped = pd.concat(run[name] for run in self.deformations).groupby('lambda')
            # get avg and sem
            self.avg[name] = grouped.mean()
            self.sem[name] = grouped.sem()
            self.calc_hill_mandel(self.avg[name])
        print("Averages calculated!")

    def write_data(self, data_path):
        """function to store the data in binary files"""
        assert not self.modes.empty, "Cannot write non-existing data"
        assert len(self.avg)!=0, "Cannot write non-existing data"
        print("Exporting data", end='.')
        # create folder to store all the h5 files
        try:
            os.makedirs(path.join(data_path, self.name))
        except OSError as e:
            if e.errno != 17:
                raise
        # store the general information
        with pd.HDFStore(path.join(data_path, self.name, 'general.h5'), mode='w') as gen_file:
            gen_file['/modes'] = self.modes
            for i in range(len(self.clean_rods)):
                gen_file[f'/rod{i:02d}'] = self.clean_rods[i]
        print('.', end='')
        # store perturbation information
        with pd.HDFStore(path.join(data_path, self.name, 'perturbation.h5'), mode='w') as perturb_file:
            perturb_file['seeds'] = self.seeds
            for run_i, run_rods in enumerate(self.run_rods):
                for i in range(len(run_rods)):
                    perturb_file[f'/run{run_i:03d}/rod{i:02d}'] = run_rods[i]
        print('.', end='')
        # store run information
        with pd.HDFStore(path.join(data_path, self.name, 'deformations.h5'), mode='w') as defor_file:
            for run_i, run_deformations in enumerate(self.deformations):
                for name in self.modes['name']: 
                    defor_file[f'/run{run_i:03d}/'+name.replace('-', '_').replace('0.', '00')] = run_deformations[name]
        print('.', end='')
        # store avg information
        with pd.HDFStore(path.join(data_path, self.name, 'averages.h5'), mode='w') as avg_file:
            for name in self.modes['name']:
                avg_file[f'/avg/{name}'.replace('-', '_').replace('0.', '00')] = self.avg[name]
                avg_file[f'/sem/{name}'.replace('-', '_').replace('0.', '00')] = self.sem[name]
        print('.', end='\n')
        print("Data exported!")

    def read_data(self, data_path):
        """function to read the data from binary files"""
        assert self.modes.empty, "Cannot override existing data"
        assert len(self.avg)==0, "Cannot override existing data"
        assert path.isdir(path.join(data_path, self.name)), "folder does not exist"
        # feedback
        print('Importing condensed data', end='.')
        # read the general information
        with pd.HDFStore(path.join(data_path, self.name, 'general.h5'), mode='r') as gen_file:
            self.modes = gen_file['modes']
            for i in range(len(gen_file.keys())-1):
                self.clean_rods.append(gen_file[f'/rod{i:02d}'])
        print('.', end='')
        # read perturbation information
        with pd.HDFStore(path.join(data_path, self.name, 'perturbation.h5'), mode='r') as perturb_file:            
            self.seeds = perturb_file['/seeds']
            for run_i in range(len(self.seeds)):
                    self.run_rods.append([perturb_file[f'/run{run_i:03d}/rod{i:02d}'] for i in range(len(self.clean_rods))])
        print('.', end='')
        # read run information
        with pd.HDFStore(path.join(data_path, self.name, 'deformations.h5'), mode='r') as defor_file:
            for run_i in range(len(self.seeds)):
                self.deformations.append({name: defor_file[f'/run{run_i:03d}/'+name.replace('-', '_').replace('0.', '00')] for name in self.modes['name']})
        print('.', end='')
        # store avg information
        with pd.HDFStore(path.join(data_path, self.name, 'averages.h5'), mode='r') as avg_file:            
                self.avg = {name : avg_file[f'/avg/{name}'.replace('-', '_').replace('0.', '00')] for name in self.modes['name']}
                self.sem = {name : avg_file[f'/sem/{name}'.replace('-', '_').replace('0.', '00')] for name in self.modes['name']}
        print('.', end='\n')
        print("Everything imported!")

    def read_ref(self, data_path, RUC_name=None, Mode_names=None, read_names=None, mirror_modes=[]):
        """function to read the reference data"""
        assert len(self.ref)==0, "cannot override existing references"
        assert path.isdir(path.join(data_path)), "folder does not exist"
        # feedback
        print('Importing reference data...')
        # set default RUC
        if RUC_name==None:
            RUC_name = self.name
        if Mode_names==None:
            Mode_names = {name:name for name in self.modes['name']}
        # get all the single data
        for name, ref_name in Mode_names.items():
            self.ref[name] = pd.read_table(path.join(data_path, f"{RUC_name:s}_{ref_name:s}.txt"), sep="\s+", names=read_names, usecols=None if read_names==None else [i for i in range(len(read_names))])
            if name in mirror_modes:
                self.ref[name] = self.mirror(self.ref[name])
            self.calc_Jp(self.ref[name])
            self.calc_hill_mandel(self.ref[name])
            self.ref[name] = self.set_lambda(self.ref[name], mode=name)           
        # feedback
        print('Reference data imported!')

    def plot_data(self, plot_path, y_data='P', lambda_lims=[-0.3, 0.3], modes=None, grid=None, confidence=0, prefix='', plot_ref=True,
                 flip_axis=False, plot_single=True, plot_size=[12,8], show_title=False):
        """ method to plot the data """
        assert not type(y_data) is list or np.prod(grid)==len(y_data), "if a list is given, the grid size needs to match the size of the list"
        assert not(plot_ref) or len(self.ref)!=0, "reference data needed for plotting the reference"
        # create folder to store the plots
        try:
            os.makedirs(path.join(plot_path, self.name))
        except OSError as e:
            if e.errno != 17:
                raise
        print(f'Plotting data {prefix:s} ...', end='\t')
        # revamp data_labels
        if y_data=='P':
            y_data = [f"P{i}{j}" for (i,j) in RUC.iteraxis()]
            grid = [3,3]
        if y_data=='F':
            y_data = [f"F{i}{j}" for (i,j) in RUC.iteraxis()]
            grid = [3,3]
        # revamp modes
        modes = list(self.modes['name']) if modes==None else modes
        # set alpha
        if confidence > 0:
            alpha = 1-confidence
        # plot every mode
        for mode in modes:
            # create figure and axes
            fig, axs = plt.subplots(grid[0], grid[1], figsize=plot_size, dpi=300, sharex = True, squeeze=False)
            if show_title:
                fig.suptitle(f"{self.name}: {mode}" + (f"\nwith {100*confidence:.1f}% confidence bounds" if confidence>0 else ""))
            axs = axs.flatten()
            # plot all the single axis
            for i in range(np.prod(grid)):
                # get the 0 lines
                axs[i].axhline(0, color='k', linewidth=0.8)
                axs[i].axvline(0, color='k', linewidth=0.8)
                # plot the single runs
                if plot_single:
                    for run in self.deformations:
                        axs[i].plot(run[mode][lambda_lims[0]:lambda_lims[1]].index
                                    , run[mode][lambda_lims[0]:lambda_lims[1]][y_data[i]]
                                    , 'k', linewidth=0.25, alpha=0.1)
                # plot the average
                axs[i].plot(self.avg[mode][lambda_lims[0]:lambda_lims[1]].index
                            , self.avg[mode][lambda_lims[0]:lambda_lims[1]][y_data[i]]
                            , colors['firebrick'], linewidth=1.5, label="mean")
                if confidence>0:
                    axs[i].plot(self.avg[mode][lambda_lims[0]:lambda_lims[1]].index
                                , self.avg[mode][lambda_lims[0]:lambda_lims[1]][y_data[i]]
                               + self.sem[mode][lambda_lims[0]:lambda_lims[1]][y_data[i]] * norm.ppf(1-alpha/2)
                                , colors['firebrick'], linestyle=':', linewidth=1, label="confidence")
                    axs[i].plot(self.avg[mode][lambda_lims[0]:lambda_lims[1]].index
                                , self.avg[mode][lambda_lims[0]:lambda_lims[1]][y_data[i]]
                               - self.sem[mode][lambda_lims[0]:lambda_lims[1]][y_data[i]] * norm.ppf(1-alpha/2)
                                , colors['firebrick'], linestyle=':', linewidth=1)
                # plot the reference
                if plot_ref and mode in self.ref:
                    axs[i].plot(self.ref[mode][lambda_lims[0]:lambda_lims[1]].index
                            , self.ref[mode][lambda_lims[0]:lambda_lims[1]][y_data[i]]
                            , colors['navy'], linestyle='--', linewidth=1.5, label="reference")
                # formatting
                axs[i].legend()
                axs[i].grid(True)
                axs[i].set_title(y_data[i] + (' [Pa]' if 'P' in y_data[i] else '') + ' vs $\lambda$')
                if flip_axis:
                    axs[i].set_xlim(lambda_lims[::-1])
                else:
                    axs[i].set_xlim(lambda_lims)
            # export the figure
            fig.tight_layout(rect=[0, 0, 1, 1])
            fig.savefig(path.join(plot_path, self.name, prefix+mode) + '.pdf')
            plt.close(fig)        
        print("Everything plotted!")

    def filter_data(self, variable, factor, mode, lambda_ind):
        """function to filter all runs where a variable in a given mode ist greater than the factor compared to the average on specified lambda"""
        assert len(self.avg)!=0, "Average needed for filtering"
        # feedback
        print('Filtering data...')
        # iterate through all runs
        filter = []
        for run in self.deformations:
            filter.append(run[mode][variable][lambda_ind] < self.avg[mode][variable][lambda_ind])
        # filter the runs
        self.deformations = [run for run, choice in zip(self.deformations, filter) if choice]
        self.run_rods = [run for run, choice in zip(self.run_rods, filter) if choice]
        self.seeds = self.seeds[filter]
        # delete the averages
        self.avg = {}
        self.sem = {}
        # feedback
        print('Data filtered! {:d} runs kept, {:d} runs discarded'.format(filter.count(True), filter.count(False)))

    def get_data(self, type='avg', symmetry=None, modes=None, dtype='float32'):
        """ method to extract the data from the object """
        assert not self.modes.empty, "There needs to be data in order to be extracted"
        assert len(self.avg)!=0, "There needs to be an average for the data to be extracted, try calc_avg()"
        # get the avg
        if type=='avg':
            Fs, Ws, Ps = self.extract_data(self.avg, modes, dtype)
        elif type=='raw':
            Fs = [None]*len(self.deformations)
            Ws = [None]*len(self.deformations)
            Ps = [None]*len(self.deformations)
            for i, run in enumerate(self.deformations):
                Fs[i], Ws[i], Ps[i] = self.extract_data(run, modes, dtype)
            Fs = np.concatenate(Fs, 0)
            Ws = np.concatenate(Ws, 0)
            Ps = np.concatenate(Ps, 0)
        else:
            raise AttributeError(f"not supported type {type:s}")
        # apply the symmetry
        if symmetry != None:
            Fs = np.concatenate([Fs@Q for Q in symmetry], 0)
            Ws = np.concatenate([Ws*1 for _ in symmetry], 0)
            Ps = np.concatenate([Ps@Q for Q in symmetry], 0)
        # return the results
        return Fs, Ws, Ps

    @staticmethod
    def calc_Jp(deformationDF):
        """ function to recalculate the J and p for the given dataframe """
        # calculate the Jacobian
        J = (deformationDF['F11']*deformationDF['F22']*deformationDF['F33'] +
             deformationDF['F12']*deformationDF['F23']*deformationDF['F31'] +
             deformationDF['F13']*deformationDF['F21']*deformationDF['F32'] -
             deformationDF['F13']*deformationDF['F22']*deformationDF['F31'] -
             deformationDF['F12']*deformationDF['F21']*deformationDF['F33'] -
             deformationDF['F11']*deformationDF['F23']*deformationDF['F32'])
        deformationDF['J'] = J
        # calculate the pseudo-static pressure
        p = -1*(deformationDF['P11'] + deformationDF['P22'] + deformationDF['P33'])/3
        deformationDF['p'] = p
        
    @staticmethod
    def df_to_rods(rodDF):
        """auxiliary function to turn a dataframe into a list of n x 3 dataframes of points"""

        # calculate the number of points per rod
        n_points = rodDF.shape[1]//3
        rods = []
        # iterate through all the rods
        for i, row in rodDF.iterrows():
            rod_array = np.array(row)
            rods.append(pd.DataFrame(np.reshape(rod_array, (n_points,3)), columns=['X', 'Y', 'Z']))
        # return the list
        return rods

    @staticmethod
    def calc_hill_mandel(deformationDF):
        """auxiliary function to recalculate the hill mandel condition for a dataframe"""
        lambda_ind = deformationDF.index.to_numpy()

        t_1 = [np.inf]
        t_2 = [np.inf]
        d = [np.inf]
        for i in range(1, len(lambda_ind)-1): 
            # calculate t(1)
            elements = []
            t_1.append(sum(deformationDF[f'P{k}{l}'][lambda_ind[i]] * (deformationDF[f'F{k}{l}'][lambda_ind[i+1]] - deformationDF[f'F{k}{l}'][lambda_ind[i-1]]) for (k,l) in RUC.iteraxis())/(lambda_ind[i+1] - lambda_ind[i-1]))  
            # calculate t(2)
            t_2.append((deformationDF['StrEn'][lambda_ind[i+1]] - deformationDF['StrEn'][lambda_ind[i-1]]) / (lambda_ind[i+1] - lambda_ind[i-1]))
            # calculate d
            d.append((t_1[-1] - t_2[-1]) / t_2[-1] if t_2[-1]!=0 else np.inf)

        t_1.append(np.inf)
        t_2.append(np.inf)
        d.append(np.inf)
        # replace values
        deformationDF['t(1)'] = t_1
        deformationDF['t(2)'] = t_2
        deformationDF['d'] = d

    @staticmethod
    def iteraxis(dimensions=2):
        """ auxiliary function to generate a list of possible axis """
        return product([1,2,3], repeat=dimensions)

    @staticmethod
    def set_lambda(deformationDF, mode='uniaxial'):
        """ static method to get the lambda for a given deformation """
        lamb = np.array([])
        # calculate the lambda depending on the mode
        if mode=='uniaxial':
            lamb = deformationDF['F11'] - 1
        if mode=='biaxial-1':
            lamb = deformationDF['F11'] - 1
        if mode=='planar':
            lamb = deformationDF['F11'] - 1
        if mode=='volumetric-1':
            lamb = deformationDF['F11'] - 1
        if mode=='shear-simple':
            lamb = deformationDF['F12']

        if mode=='biaxial-0.5':
            lamb = deformationDF['F11'] - 1
        if mode=='biaxial-0.33':
            lamb = deformationDF['F11'] - 1
        if mode=='shear-combined':
            lamb = deformationDF['F11'] - 1
        if mode=='biplanar':
            lamb = deformationDF['F11'] - 1
        if mode=='volumetric-0.5':
            lamb = deformationDF['F11'] - 1
        # change the index to the calculated lambda
        assert len(lamb)>0, f"mode {mode:s} not known!"            
        return deformationDF.set_index(pd.Float64Index(lamb.round(3), name='lambda'))

    @staticmethod
    def extract_data(deformations, modes=None, dtype='float32'):
        """ static method to extract the needed data from a list of DataFrames """
        modes = [*deformations.keys()] if modes==None else modes
        if modes in RUC.CASES:
            modes = RUC.CASES[modes]
        if isinstance(modes, str):
            modes = [modes]
        # iterate through the DataFrames
        Fs = np.concatenate([deformations[mode][[f"F{i}{j}" for (i,j) in RUC.iteraxis()]].to_numpy(dtype=dtype).reshape([-1, 3, 3]) for mode in modes])
        Ws = np.concatenate([deformations[mode]["StrEn"].to_numpy(dtype=dtype).reshape([-1, 1]) for mode in modes])
        Ps = np.concatenate([deformations[mode][[f"P{i}{j}" for (i,j) in RUC.iteraxis()]].to_numpy(dtype=dtype).reshape([-1, 3, 3]) for mode in modes])
        # return the results
        return Fs, Ws, Ps

    @staticmethod
    def mirror(deformationDF, around1 = ['F11', 'F22', 'F33'], not_inverse=['P11', 'P22', 'P33', 'StrEn']):
        """ method to mirror the data in a dataframe (useful for shear deformation) """
        newDF = deformationDF.copy()[::-1]
        for column in newDF:
            if column in not_inverse:
                continue
            if column in around1:
                newDF[column] = 2 - newDF[column]
            else:
                newDF[column] = newDF[column] * -1
        return newDF.append(deformationDF[1:], ignore_index=True)