#!/bin/bash
### command
dir=../test

echo -e  ' 1 \n '  | gmx_mpi trjconv -f ../s1_400k.xtc -s ../../step3_input.pdb -pbc mol  -o $dir/s1_400_prot.xtc 
echo -e  ' 1 \n '  | gmx_mpi trjconv -f ../s2_400k.xtc -s ../../step3_input.pdb -pbc mol  -o $dir/s2_400_prot.xtc  


wait
echo "Job is done"
