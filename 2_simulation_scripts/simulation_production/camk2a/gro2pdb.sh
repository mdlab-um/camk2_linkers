#!/bin/bash

module load gromacs/

gmx_mpi trjconv -f ./exon18/s1_400k.gro -s ./exon18/s1_400k.gro -o ./cam2a_exon18_s1.pdb
gmx_mpi trjconv -f ./exon18/s2_400k.gro -s ./exon18/s1_400k.gro -o ./cam2a_exon18_s2.pdb

gmx_mpi trjconv -f ./rexon18/s1_400k.gro -s ./rexon18/s1_400k.gro -o ./cam2a_rexon18_s1.pdb
gmx_mpi trjconv -f ./rexon18/s2_400k.gro -s ./rexon18/s1_400k.gro -o ./cam2a_rexon18_s2.pdb



