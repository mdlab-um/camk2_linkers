#!/bin/bash

### command

dir=../test

echo -e '10\n 1\n' | gmx_mpi trjconv -f $dir/s1_400_prot.xtc -s $dir/step3_input_prot_renum.pdb -fit rot+trans -n 18.ndx -o $dir/s1_400_prot_fth.xtc  
echo -e '10\n 1\n' | gmx_mpi trjconv -f $dir/s2_400_prot.xtc -s $dir/step3_input_prot_renum.pdb -fit rot+trans -n 18.ndx -o $dir/s2_400_prot_fth.xtc 


wait
echo "Job is done"
