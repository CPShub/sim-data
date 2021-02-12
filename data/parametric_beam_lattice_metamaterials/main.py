# %% Import

import sys
sys.path.append('.')

import modules.data as md
import modules.plot as mp

# %% Cells

# Get parameters and corresponding folders from calibration set
# p = [E, t1, t2, t3]
ps, folders = md.get_ps_folders()
for i in range(5):
    print(f'Parameter {i+1}:', ps[i])

# Extract topology parameters: t = [t1, t2, t3]
ts = ps[:, 1:]
for i in range(5):
    print(f'Cell topology {i+1}:', ts[i])

# %% Scenarios

# List of scenarios
print(md.scenarios_dict['all'])

# %% Get case and plot

# Get (from calibration set) uniaxial tension case and plot
t0 = ts[3]
Fs, ps, Ws, Ps = md.get_case(
    t=t0,
    scenario='uniaxial',
    tc='c'
    )

# Plot
mp.plot_WP(Fs, Ws, Ps, title='uniaxial - compression')

# %% Shear - plot with F_12

Fs, ps, Ws, Ps = md.get_case(t=t0, scenario='shear', tc='t')
mp.plot_WP(Fs, Ws, Ps, title='shear - tension', Fc='12')

# %% Load complete dataset: 107 cells, 16 cases, 151 load steps

Fs, ps, Ws, Ps = md.get_all()

print('F:', Fs.shape)
print('p:', ps.shape)
print('W:', Ws.shape)
print('P:', Ps.shape)
