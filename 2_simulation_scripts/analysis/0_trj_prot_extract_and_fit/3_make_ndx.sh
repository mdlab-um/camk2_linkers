#!/bin/bash

### command
dir=../test
echo -e 'r331-460&aCA\n'  'r275-314&aCA\n'  'r7-274&aCA\n' 'q\n'| gmx_mpi make_ndx -f $dir/step3_input_prot_renum.pdb -o 18.ndx &


wait
echo "Job is done"
