# Open in MATLAB Online

[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=lex3153-crypto/RWFONN-WORKSHOP)


# RWFONN-WORKSHOP for Chaotic System Identification

## IV Encuentro de Investigación Científica y Redes de Colaboración, Verano 2026

**Date:** June 10, 2026  
**Venue:** Centro Universitario de los Lagos, Universidad de Guadalajara

---

## Instructors

**Dr. Daniel Alejandro Magallón García**  
1. Coordinación Académica Región Altiplano Oeste, Universidad Autónoma de San Luis Potosí/ Preparatoria Regional de Lagos de Moreno, Universidad de Guadalajara  
2. Coordinación Académica Región Altiplano Oeste, Universidad Autónoma de San Luis Potosí

**Dr. Luis Javier Ontañón García Pimentel**  
2. Coordinación Académica Región Altiplano Oeste, Universidad Autónoma de San Luis Potosí

---

# Workshop Description

This repository contains the official MATLAB and SIMULINK material for the workshop:

> **"RWFONN for Chaotic System Identification"**

The workshop introduces the fundamentals of **Recurrent Wavelet First-Order Neural Networks (RWFONN)** and their application to the identification of nonlinear and chaotic dynamical systems.

The material includes:
- MATLAB simulation examples
- SIMULINK implementations
- Chaotic system visualization
- Bifurcation analysis
- Dynamical systems modeling
- Guided RWFONN identification examples

The workshop is designed for participants with:
- basic MATLAB programming knowledge,
- introductory understanding of differential equations and dynamical systems,
- and interest in neural identification techniques.

Control theory background is desirable but not mandatory.

---

# Workshop Objective

The main objective of this workshop is:

> To understand the operation of Recurrent Wavelet First-Order Neural Networks and implement neural identification strategies for dynamical systems using MATLAB and SIMULINK.

Participants will:
- simulate chaotic systems,
- visualize trajectories and bifurcations,
- implement recurrent neural network structures,
- and analyze identification performance in nonlinear systems.

---

# Open in MATLAB Online

The repository can be opened directly in MATLAB Online without installing MATLAB locally.

[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=lex3153-crypto/RWFONN-WORKSHOP)

A MathWorks account is required.

---

# Repository Structure

```text
RWFONN-WORKSHOP/
│
├── matlab_examples
│   ├── Bifurcactions
│   │   └── RunBifurcacionRosslerPAR.mlx
│   │
│   ├── Dynamical_Systems
│   │   ├── plot_DifferentialRobot.m
│   │   ├── plot_Lorenz.m
│   │   ├── plot_Rossler.m
│   │   └── plot_UDSI.m
│   │
│   └── RWFONN
│       ├── EcuacionesSistemas.m
│       └── Main.m
│
├── papers
│   ├── VersionFinalphotonics-12-00955_opt.pdf
│   └── mathematics-12-01835_FinalVersion.pdf
│
├── simulink_examples
│   └── sistema_caotico.slx
│
├── slides
│   └── Taller_RWFONN_Lyapunov_2026.pptx
│
├── LICENSE
└── README.md
```

---

## Chaotic Systems Included

The repository contains examples related to:

Lorenz system
Rössler system
Rucklidge chaotic system
Differential-drive mobile robot dynamics

Additionally, a MATLAB Live Script is included for bifurcation analysis of the Rössler system.


---

## MATLAB Requirements
Supported Versions

Any MATLAB version newer than:

R2020a

is recommended.


---

## Required Toolboxes

No additional MATLAB toolboxes are required.


---

## Recommended Workflow
### Option 1 — MATLAB Online (Recommended)
1. Create a MathWorks account
2. Click the MATLAB Online button above
3. Open the repository
4. Navigate through the workshop folders
5. Execute the examples directly from the browser

This option avoids installation and compatibility issues.

### Option 2 — Local MATLAB Installation

Clone the repository locally:

git clone https://github.com/lex3153-crypto/RWFONN-WORKSHOP.git

Then:

Open MATLAB
Navigate to the repository folder
Execute the desired scripts or SIMULINK models


---

## Workshop Activities
Individual Exploration

The files located in:

matlab_examples/Dynamical_Systems/

are intended for individual experimentation and visualization of dynamical systems.


---

## Guided Workshop Activities

The files located in:

matlab_examples/RWFONN/
matlab_examples/Bifurcactions/
simulink_examples/

will be developed collaboratively during the workshop sessions.

---

## Included Material

This repository includes:

MATLAB scripts (.m)
MATLAB Live Scripts (.mlx)
SIMULINK models (.slx)
PowerPoint presentation slides (.pptx)
Published research articles (.pdf)



---

## Related Publications
1. Magallón-García, Daniel Alejandro, et al.  
   *"Real-Time Observer and Neuronal Identification of an Erbium-Doped Fiber Laser."*  
   Photonics, vol. 12, no. 10, MDPI, 2025.

2. Magallón-García, Daniel Alejandro, et al.  
   *"Experimental State Observer of the Population Inversion of a Multistable Erbium-Doped Fiber Laser."*  
   Photonics, vol. 11, no. 10, MDPI, 2024.

3. Echenausía-Monroy, José Luis, et al.  
   *"A Recurrent Neural Network for Identifying Multiple Chaotic Systems."*  
   Mathematics, vol. 12, no. 12, 2024, p. 1835.

4. Ontañón-García, Luis Javier, et al.  
   *"Algorithm for Generating Bifurcation Diagrams Using Poincaré Intersection Plane."*  
   Mathematics, vol. 13, no. 11, 2025, p. 1818.

5. Lorenz, Edward N.  
   *"Deterministic Nonperiodic Flow."*  
   Universality in Chaos, 2nd ed., Routledge, 2017, pp. 367–378.

6. Rössler, Otto E.  
   *"Different Types of Chaos in Two Simple Differential Equations."*  
   Zeitschrift für Naturforschung A, vol. 31, no. 12, 1976, pp. 1664–1670.

7. Keleş, Zeynep, Güray Sonugür, and Murat Alcın.  
   *"The Modeling of the Rucklidge Chaotic System with Artificial Neural Networks."*  
   Chaos Theory and Applications, vol. 5, no. 2, 2023, pp. 59–64.

---

## Citation

If you use this repository for academic or research purposes, please cite it as:

D. A. Magallón-García and L. J. Ontañón García Pimentel,
"RWFONN for Chaotic System Identification,"
GitHub repository, 2026.
[Online]. Available:
https://github.com/lex3153-crypto/RWFONN-WORKSHOP

---

## License

The MATLAB code and workshop materials are distributed under a BSD-2-Clause license and a Creative Commons educational usage scheme.

Please verify the individual licenses of included publications before redistribution.

---

## Acknowledgments

The authors thank:

Universidad de Guadalajara
Universidad Autónoma de San Luis Potosí
IV Encuentro de Investigación Científica y Redes de Colaboración, Verano 2026

for supporting this workshop activity.

L.J.O.G. acknowledges the Potosino Council of Science and Technology (COPOCYT) for their support in Trust project 23871 of the 2023-01 Call.

D.A.M.G acknowledges the support of SECIHTI, which received an academic postdoctoral fellowship with application number 2290436.

---

## Contact

For questions related to the workshop material, please contact the workshop instructors through their institutional affiliations.

daniel.magallon6532@academicos.udg.mx
luis.ontanon@uaslp.mx
