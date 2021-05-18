"""
Data Handling Example
==================

Creator: Til Gärtner

example file showing the handling of data
"""

# %% Imports
from RUC import RUC
import numpy as np

# %% Read Data

# construct RUC first
data_container = RUC("paper")

# read RAW
"""
data_container.read_data_raw(r"..\data_raw", onlyTens=False)
data_container.calc_avg()
data_container.filter_data('p', 1.25, 'volumetric-1', -0.018)
data_container.calc_avg()
"""

# read AVG
data_container.read_data(r"..\data")

# %% Plot Data

# some sample plots
data_container.plot_data(r"..\plots", lambda_lims = [-0.3,  0.3], prefix="example_", plot_ref=False)
