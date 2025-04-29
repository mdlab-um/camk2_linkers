#!/bin/bash

module load gromacs/

gmx_mpi trjconv -f ./nolinker/ctrl_s1_400k.gro -s ./nolinker/ctrl_s1_400k.gro -o ./cam2d_nolinker_s1.pdb
gmx_mpi trjconv -f ./nolinker/ctrl_s2_400k.gro -s ./nolinker/ctrl_s2_400k.gro -o ./cam2d_nolinker_s2.pdb

gmx_mpi trjconv -f ./exon14/14_s1_400k.gro -s ./exon14/14_s1_400k.gro -o ./cam2d_exon14_s1.pdb
gmx_mpi trjconv -f ./exon14/14_s2_400k.gro -s ./exon14/14_s1_400k.gro -o ./cam2d_exon14_s2.pdb

gmx_mpi trjconv -f ./exon18/18_s1_400k.gro -s ./exon18/18_s1_400k.gro -o ./cam2d_exon18_s1.pdb
gmx_mpi trjconv -f ./exon18/18_s2_400k.gro -s ./exon18/18_s1_400k.gro -o ./cam2d_exon18_s2.pdb

gmx_mpi trjconv -f ./rexon18/r18_s1_400k.gro -s ./rexon18/r18_s1_400k.gro -o ./cam2d_rexon18_s1.pdb
gmx_mpi trjconv -f ./rexon18/r18_s2_400k.gro -s ./rexon18/r18_s1_400k.gro -o ./cam2d_rexon18_s2.pdb



