#!/bin/bash

### command
module load gromacs/

dir1=/home/kairongdong/Pikes_home/work/p1_camk2/t10_cam2a_charmm/18/prod/test
dir2=/home/kairongdong/Pikes_home/work/p1_camk2/t10_cam2a_charmm/r18/prod/test

 
echo -e 'r331-460&aCA\n'  'r275-314&&aCA\n' 'r7-274&aCA\n' 'r315-330&aCA\n' 'q\n'| gmx_mpi make_ndx -f $dir1/step3_input_prot_renum.pdb -o $dir1/rmsf.ndx


echo -e 'r331-460&aCA\n'  'r275-314&&aCA\n' 'r7-274&aCA\n' 'r315-330&aCA\n' 'q\n'| gmx_mpi make_ndx -f $dir2/step3_input_prot_renum.pdb -o $dir2/rmsf.ndx


