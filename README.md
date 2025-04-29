This is a README file for the MD simulation in the paper"A domain-swapped CaMKII conformation facilitates linker-mediated allosteric regulation"

Updated Date: Apr/28/2025

Updated by: Kairong Dong


# MD simulation for "A domain-swapped CaMKII conformation facilitates linker-mediated allosteric regulation"

## 0. use pymol to generate the tetramer strunture

1. Take one asymmetry unit and generate holoenzyme with pymol
    CaMK2a nolinker models were based on the crystal structure from Ozden (finalized and submitted PDB: 8USO)
    CaMK2a nolinker models were based on the crystal structure from PDB:3SOA
2. Select the residues of two monomers and two extra hubs which make the tetramer.

## 1. Use modeller to build the missing loop and modle the linekr

1. tool: python 3.9.18 & modeller library 10.4
2. The scripts to align and build the missing loop for the no linker construct and for build different linkers can be found in this folder under current folder: 1_linker_loop_modeling_scripts
3. The final structures of CaMK2 with no linker and different linkers can be found in this folder under current folder: 2_camk2_with_variable_linker

## 2. Use CHARMMGUI to generate the initial system for running simulation

1. tool: CHARMMGUI:https://www.charmm-gui.org/
2. conditions: 
    terminals (ACE CT2)
    box size (130 angstrom)
    ion (NaCl 200mM)
    TIP3P water
3. The systems generated with CHARMMGUI containing the protein, ion and water can be found in this folder under current folder: 3_system_set_up

## 3. Use GROMACS to run the simulation

1. tool: GROMACS 2019.4
2. The scripts for energy minimization and equilibration and the output system infomation can be find in this folder under current folder: 4_minimization_and_equilibration
3. The scripts for trajectory production and the produced structure and trajectories can be found in this folder under current folder: 5_camk2_production

## 4. Use GROMACS to analyze the RMSD, RMSF and pairwise distance

1.The scripts for the analysis can be found in this folder under current folder: 6_camk2_trj_analysis

## 5. Use VMD to visualize and generate movies

1. The representative movies can be found in this folder under current folder: 7_camk2_trj_movies

