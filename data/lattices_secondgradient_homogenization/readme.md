# README

Data for plots and reproduction of second-gradient linear elastic homogenization of 3D beam lattices of the manuscript:
"Numerical homogenization of second gradient, linear elastic constitutive models for cubic 3D beam-lattice metamaterials" 
by Oliver Weeger
License: CC BY 4.0

## CONTENTS

Unit cell types:
* Aux: auxetic microstructure
* BCC: body-centered cubic
* FCC: face-centered cubic
* Octah: octahedron
* Octet: octet
* Opal: inverse opal
* SC:  simple cubic
* Star: union of SC and BCC

Data:
* coeff: Homogenized constitutive coefficients for varying aspect ratios (Figures 6-9)
  - different coefficients in columns: C_11, C_12, C_44, D_212212, D_122122, D_123123, D_212313, D_212122, D_212133, D_122133, D_123231, E, G, nu
  - different aspect ratios in rows: 0.001, 0.0025, 0.005, 0.01, 0.025, 0.05, 0.1, 0.2
* bendenergy: Share of bending energy vs. total energy for deformations corresponding to simulations for different coefficients (Figure 10)
* param: Coeffcients for the parameterization of the homogenized constitutive coeffcients and moduli in terms of the aspect ratio (Table 2)
* 
