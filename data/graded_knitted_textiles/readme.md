# README

Data for plots and reproduction of multiscale simulation results of the manuscript:
"Nonlinear isogeometric multiscale simulation for design and fabrication of functionally graded knitted textiles" 
by Huy Do, Ying Yi Tan, Nathalie Ramos, Josef Kiendl and Oliver Weeger
Pre-print (05/2020): http://doi.org/10.13140/RG.2.2.36179.60969
License: CC BY 4.0

## RESPONSE SURFACES:
Data for generation of B-spline response surface from mesoscale homogenization of single jersey knit unit cells. For each loop length (LLL) from 4.5, 5.0, 5.5, 6.0, 6.5 mm, the following files are provided:
- *rsLLL_ba_E11.dat*:	Evaluation points of GL strain component E11 in biaxial test
- *rsLLL_ba_E22.dat*:	Evaluation points of GL strain component E22 in biaxial test
- *rsLLL_ba_S11.dat*:	Values of PK2 stress component S11 in biaxial test
- *rsLLL_ba_S22.dat*:	Values of PK2 stress component S22 in biaxial test
- *rsLLL_ba_EPS.dat*: All values of E, P and S in biaxial tests
- *rsLLL_ps_EPS.dat*: All values of E, P and S in pure shear test
- *rsLLL_spline.dat*: B-spline representation of response surfaces for S11(E11,E22) and S22(E11,E22), as well as curve for S12(SE12)

## TESTS:
Data for the experimental validation of the multiscale simulation framework (Sect. 3.1), which uses the response surface material model. For each case, 3 files are provided, which all have the same structure: The first column denotes the values of strain (mm/mm) and the second column the values of load (N). The 3 files provide the numerically simulated result (*sim*), the upper bound of the experimental tests (*high*) and the lower bound of the experimental tests (*low*).

- Uniform single jersey knits with stitch values of 4.5 and 6.5 mm (Sect. 3.1.2, Fig. 7d):
  - loop length 4.5: 	*test_const4.5_ww_XXX.dat*
  - loop length 6.5: 	*test_const6.5_ww_XXX.dat*
- Course-wise graded fabric with discontinuous stitch value, 4.5 mm for left part, 6.5 mm for right part (Sect. 3.1.3, Fig. 9f):
  - wale-wise data: 	*test_discont4.5to6.5_ww_XXX.dat*
  - course-wise data: 	*test_discont4.5to6.5_cw_XXX.dat*
- Wale-wise graded fabric with linearly varying stitch value, from 4.5 mm to 6.5 mm from bottom to top (Sect. 3.1.4, Fig. 11e):
  - wale-wise data: 	*test_linear4.5to6.5_ww_XXX.dat*
  - course-wise data: 	*test_linear4.5to6.5_cw_XXX.dat*
- Course-wise graded fabric with discontinuous stitch value at 45° orientation (Sect. 3.1.5, Fig. 12f):
  - 45° test data:  	*test_45deg_XXX.txt*

## DESIGN APPLICATIONS:
Data for the design applications the multiscale simulation framework (Sect. 3.2), which uses the response surface material model. For each case, 1 file is provided for the numerically simulated result ("sim"), where the first column denotes the values of strain [mm/mm] and the second column the values of load [N]. 
- Bilinearly varying stitch value and direction (Sect. 3.2.1, Fig. 14d):
  - diagonal data:  	*design_2dbilinear_sim.txt*
- Curved geometry with constant knit direction (Sect. 3.2.2, Fig. 15f):
  - horizontal data:	*design_2dcurved_sim.txt*
