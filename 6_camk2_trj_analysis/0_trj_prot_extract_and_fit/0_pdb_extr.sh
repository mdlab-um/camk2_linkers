#!/bin/bash

### command

dir=../test
echo -e  ' 1 \n '  | gmx_mpi trjconv -f ../../step3_input.pdb -s ../../step3_input.pdb -o $dir/step3_input_prot.pdb &


wait
echo "Job is done"
