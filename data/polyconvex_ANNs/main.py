# %% 
#
#   Contributors:
#           Mauricio Fernández
#           Dominik Klein

# %%   Import 
import tensorflow as tf
import modules.plots as hp
import modules.data as ld

tf.keras.backend.clear_session()
if 'model' in locals().keys():
    del model

# %%   choose model and cell
model_name = 'F_det_F_model'
#model_name = 'invariant_model'
#model_name = 'C_model'

cell = 'BCC'
#cell = 'X'

# %%
print('...load model')
model = tf.keras.models.load_model(f'models/{model_name}/{cell}')

print('...evaluate model')

for case in ['uniaxial', 'biaxial', 'planar', 'volumetric', 'shear', \
             'test1', 'test2','test3']:
    
    model_case_cell = model_name + ', ' + case + ' case, ' + cell +' cell'
    
    Fs, Ws, Ps = ld.load_case(cell, case)
    Ws_m_0, Ps_m_0 = model(Fs)
    
    if model_name == 'F_det_F_model':
        
        Fs_phi, Ws_phi, Ps_phi, rotation_matrices = ld.load_case_rotation(cell, case, 1024)
        Ws_m, Ps_m = model(Fs_phi)
                
        if case != 'shear':
            ls = Fs[:, 0, 0]
        else:
            ls = Fs[:, 0, 1]
            
        hp.plot_W_F(ls, Ws, Ps, Ws_m_0,
                  Ws_m, Ps_m_0, Ps_m,
                  cell, model_case_cell, rotation_matrices)
        
    else:

        if case != 'shear':
            ls = Fs[:, 0, 0]
        else:
            ls = Fs[:, 0, 1]
            
        hp.plot_WP(ls, Fs, Ws, Ps,Ws_m_0, Ps_m_0,model_case_cell)