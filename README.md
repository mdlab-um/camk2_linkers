This is a README file for the MD simulation in the paper"A domain-swapped CaMKII conformation facilitates linker-mediated allosteric regulation"

Updated Date: Apr/29/2025

Updated by: Kairong Dong


# MD simulation for "A domain-swapped CaMKII conformation facilitates linker-mediated allosteric regulation"

## 0. The tetramer strunture is generatured through PyMol

1. One asymmetry unit is taken to generate holoenzyme with PyMol
2. CaMK2d nolinker models were based on the crystal structure from Ozden (finalized and submitted PDB: 8USO), the generated tetramer with missing loops can be found in this folder under current folder: 1_linker_loop_modeling_scripts/camk2d/ABCD_truncated_clean.pdb
3. CaMK2a nolinker models were based on the crystal structure from PDB:3SOA, the generated tetramer with missing loops can be found in this folder under current folder: 1_linker_loop_modeling_scripts/camk2a/a-tetra-organize.pdb


## 1. The missing loops and linkers are built to the tetramer with Modeller

1. Tool: python 3.9.18 & modeller library 10.4
2. The scripts to align and build the missing loop for the no linker construct and for build different linkers can be found in this folder under current folder: 1_linker_loop_modeling_scripts
3. The final tetramer structures of CaMK2 with no linker and different linkers use for simulation can be found in this folder under current folder: 2_camk2_with_variable_linker

## 2. Initial system for running simulation is generated via CHARMMGUI

1. Tool: CHARMMGUI:https://www.charmm-gui.org/
2. Conditions: 
    terminals (ACE CT2)
    box size (130 angstrom)
    ion (NaCl 200mM)
    TIP3P water
3. The systems generated with CHARMMGUI containing the protein, ion and water can be found in this folder under current folder: 3_system_set_up

## 3. The simulation production under equilibrated conddition is run with GROMACS

1. Tool: GROMACS 2019.4
2. The scripts for energy minimization and equilibration and the output system infomation can be find in this folder under current folder: 4_minimization_and_equilibration
3. The scripts for production and structures after simulation production of equilibrated state can be found in this folder under current folder:  5_camk2_production/
    eg: the structure of camk2d-exon18 after one equilibration production: 5_camk2_production/camk2d/exon18/18_s1_400k.gro

## 4. Analyze of the RMSD, RMSF and pairwise distance are done with GROMACS

The scripts for the analysis can be found in this folder under current folder: 6_camk2_trj_analysis

## 5. Visualization and Movie generatuion are done with VMD

The representative movies can be found in this folder under current folder: 7_camk2_trj_movies

