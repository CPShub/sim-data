"""
TensorFlow Models
==================

Creator: Til Gärtner

example file showing use of the given models
"""

# %% Imports

import tensorflow as tf

# %% Read Models

Wsym = tf.keras.models.load_model(r"..\models\Wsym_model_12-12-12")
Wdir = tf.keras.models.load_model(r"..\models\Wdir_model_18-18-18")
Pdir = tf.keras.models.load_model(r"..\models\Pdir_model_24-24-24")

# %% Test Evaluations

Fs = tf.eye(3, batch_shape=[25]) + tf.random_normal_initializer(mean=0, stddev=.1)([25,3,3])

Ws_Wsym, Ps_Wsym = Wsym(Fs)
Ws_Wdir, Ps_Wdir = Wdir(Fs)
Ps_Pdir = Pdir(Fs)
