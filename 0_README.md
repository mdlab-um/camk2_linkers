# MD simulation for "A domain-swapped CaMKII conformation facilitates linker-mediated allosteric regulation"

## 0. use pymol to generate the tetramer strunture
    1. take one asymmetry unit and generate holoenzyme with pymol
        camk2a nolinker models were based on the crystal structure from Ozden (finalized and submitted PDB: 8USO)
        camk2a nolinker models were based on the crystal structure from PDB:3SOA
    2. select the residues of two monomers and two extra hubs which make the tetramer.
## 1. use modeller to build the missing loop and modle the linekr
    1. tool: python 3.9.18 & modeller library 10.4
    2. use the scripts to align and build the missing loop for the WT(0 linker)
    3. use the WT(0 linker) with fixed missing loop and script to align and build the linkers(exon 14, exon 18 and reversed exon 18 from CaMK2a)
## 2. use CHARMMGUI to generate the initial system for running simulation
    1. tool: CHARMMGUI:https://www.charmm-gui.org/
    2. conditions: 
        terminals (ACE CT2)
        box size (130 angstrom)
        ion (NaCl 200mM)
        TIP3P water
## 3. use GROMACS to run the simulation
    1. tool: GROMACS 2019.4
## 4. use GROMACS to analyze the RMSD, RMSF and pairwise distance
## 5. use VMD to visualize and generate movies



