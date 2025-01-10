#!/bin/bash

### command

dir1=/home/kairongdong/Pikes_home/work/p1_camk2/t10_cam2a_charmm/18/prod/test
dir2=/home/kairongdong/Pikes_home/work/p1_camk2/t10_cam2a_charmm/r18/prod/test


echo -e 'r292-296&chainA\n' 'r325-328&chainB\n' 'r292-296&chainB\n' 'r325-328&chainA\n' 'q\n' | gmx_mpi make_ndx -f $dir1/step3_input_prot_renum.pdb -o $dir1/DEDE_dist.ndx





echo -e 'r292-296&chainA\n' 'r317-320&chainB\n' 'r292-296&chainB\n' 'r317-320&chainA\n' 'q\n' | gmx_mpi make_ndx -f $dir1/step3_input_prot_renum.pdb -o $dir2/DEDE_dist.ndx







wait
echo "Job is done"

