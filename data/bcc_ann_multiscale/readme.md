# README

Data for plots and reproduction of multiscale simulation results of the manuscript:
"Nonlinear multiscale simulation of elastic beam latticeswith anisotropic homogenized constitutive models based on artificial neural networks" 
by Til Gärtner, Mauricio Fernández, and Oliver Weeger

License: CC BY 4.0

## AGGREGATED DATA:
Results from Micro-Scale Simulations aggregated in hd5 Files:
- *./data/deformations.h5*: clean run data (F, J, W, P, p, t(1)[=tW], t(2)[=tP], d=[e])
- *./data/averages.h5*:	average data (avg+sem values)
- *./data/general.h5*:	meta-data about the deformation modes (H & BC) as well as the unperturbed structure
- *./data/perturbations.h5*: perturbed RUCs

## PRE-TRAINED TF MODELS:
- *./models/Wsym_model_12-12-12*: folder containing the whole Wsym model
- *./models/Wdir_model_18-18-18*: folder containing the whole Wdir model
- *./models/Pdir_model_24-24-24*: folder containing the whole Pdir model

## PYHTON TEST FILES
Test Files in order to give an simple example of working with the data:
- *./py_mwe/RUC.py*: Container class for all information needed for the RUC
- *./py_mwe/example_data.py*: Example File showing the handling of the data
- *./py_mwe/example_models.py*: Example File showing the use of the given models

## EXAMPLE PLOTS
Plots generated with *./py_mwe/example_data.py*
