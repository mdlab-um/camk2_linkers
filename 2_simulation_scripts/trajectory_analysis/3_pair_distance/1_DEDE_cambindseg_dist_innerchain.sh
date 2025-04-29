#!/bin/bash


#####################here
dir1=/home/kairongdong/Pikes_home/work/p1_camk2/t10_cam2a_charmm/18/prod/test
dir2=/home/kairongdong/Pikes_home/work/p1_camk2/t10_cam2a_charmm/r18/prod/test

save=/home/kairongdong/Pikes_home/work/p1_camk2/t10_cam2a_charmm/analysis/distance


gmx_mpi distance -f $dir1/s1_400_prot.xtc -s $dir1/step3_input_prot_renum.pdb -n $dir1/DEDE_dist.ndx -select "com of group 10 plus com of group 13" -oall $save/cambindseq_EDEDa_18_s1.xvg
gmx_mpi distance -f $dir1/s2_400_prot.xtc -s $dir1/step3_input_prot_renum.pdb -n $dir1/DEDE_dist.ndx -select "com of group 10 plus com of group 13" -oall $save/cambindseq_EDEDa_18_s2.xvg
gmx_mpi distance -f $dir1/s1_400_prot.xtc -s $dir1/step3_input_prot_renum.pdb -n $dir1/DEDE_dist.ndx -select "com of group 12 plus com of group 11" -oall $save/cambindseq_EDEDb_18_s1.xvg
gmx_mpi distance -f $dir1/s2_400_prot.xtc -s $dir1/step3_input_prot_renum.pdb -n $dir1/DEDE_dist.ndx -select "com of group 12 plus com of group 11" -oall $save/cambindseq_EDEDb_18_s2.xvg





gmx_mpi distance -f $dir2/s1_400_prot.xtc -s $dir2/step3_input_prot_renum.pdb -n $dir2/DEDE_dist.ndx -select "com of group 10 plus com of group 13" -oall $save/cambindseq_EDEDa_r18_s1.xvg
gmx_mpi distance -f $dir2/s2_400_prot.xtc -s $dir2/step3_input_prot_renum.pdb -n $dir2/DEDE_dist.ndx -select "com of group 10 plus com of group 13" -oall $save/cambindseq_EDEDa_r18_s2.xvg
gmx_mpi distance -f $dir2/s1_400_prot.xtc -s $dir2/step3_input_prot_renum.pdb -n $dir2/DEDE_dist.ndx -select "com of group 12 plus com of group 11" -oall $save/cambindseq_EDEDb_r18_s1.xvg
gmx_mpi distance -f $dir2/s2_400_prot.xtc -s $dir2/step3_input_prot_renum.pdb -n $dir2/DEDE_dist.ndx -select "com of group 12 plus com of group 11" -oall $save/cambindseq_EDEDb_r18_s2.xvg




wait
echo "Job is done"

