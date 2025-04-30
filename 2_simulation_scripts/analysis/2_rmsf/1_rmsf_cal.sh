#!/bin/bash

module load gromacs/

### command

dir1=/home/kairongdong/Pikes_home/work/p1_camk2/t10_cam2a_charmm/18/prod/test
dir2=/home/kairongdong/Pikes_home/work/p1_camk2/t10_cam2a_charmm/r18/prod/test
out=/home/kairongdong/Pikes_home/work/p1_camk2/t10_cam2a_charmm/analysis/rmsf

d1=kinase
d2=regseg
d3=hub
d4=linker

rm -rf $out
mkdir -p $out
mkdir -p $out/$d1
mkdir -p $out/$d2
mkdir -p $out/$d3
mkdir -p $out/$d4


echo -e '12\n' | gmx_mpi rmsf -f $dir1/s1_400_prot_fth.xtc -s $dir1/step3_input_prot_renum.pdb -fit no -n $dir1/rmsf.ndx -o $out/$d1/18_s1.xvg
echo -e '12\n' | gmx_mpi rmsf -f $dir1/s2_400_prot_fth.xtc -s $dir1/step3_input_prot_renum.pdb -fit no -n $dir1/rmsf.ndx -o $out/$d1/18_s2.xvg
echo -e '11\n' | gmx_mpi rmsf -f $dir1/s1_400_prot_fth.xtc -s $dir1/step3_input_prot_renum.pdb -fit no -n $dir1/rmsf.ndx -o $out/$d2/18_s1.xvg
echo -e '11\n' | gmx_mpi rmsf -f $dir1/s2_400_prot_fth.xtc -s $dir1/step3_input_prot_renum.pdb -fit no -n $dir1/rmsf.ndx -o $out/$d2/18_s2.xvg
echo -e '10\n' | gmx_mpi rmsf -f $dir1/s1_400_prot_fth.xtc -s $dir1/step3_input_prot_renum.pdb -fit no -n $dir1/rmsf.ndx -o $out/$d3/18_s1.xvg
echo -e '10\n' | gmx_mpi rmsf -f $dir1/s2_400_prot_fth.xtc -s $dir1/step3_input_prot_renum.pdb -fit no -n $dir1/rmsf.ndx -o $out/$d3/18_s2.xvg
echo -e '13\n' | gmx_mpi rmsf -f $dir1/s1_400_prot_fth.xtc -s $dir1/step3_input_prot_renum.pdb -fit no -n $dir1/rmsf.ndx -o $out/$d4/18_s1.xvg
echo -e '13\n' | gmx_mpi rmsf -f $dir1/s2_400_prot_fth.xtc -s $dir1/step3_input_prot_renum.pdb -fit no -n $dir1/rmsf.ndx -o $out/$d4/18_s2.xvg

echo -e '12\n' | gmx_mpi rmsf -f $dir2/s1_400_prot_fth.xtc -s $dir2/step3_input_prot_renum.pdb -fit no -n $dir2/rmsf.ndx -o $out/$d1/r18_s1.xvg
echo -e '12\n' | gmx_mpi rmsf -f $dir2/s2_400_prot_fth.xtc -s $dir2/step3_input_prot_renum.pdb -fit no -n $dir2/rmsf.ndx -o $out/$d1/r18_s2.xvg
echo -e '11\n' | gmx_mpi rmsf -f $dir2/s1_400_prot_fth.xtc -s $dir2/step3_input_prot_renum.pdb -fit no -n $dir2/rmsf.ndx -o $out/$d2/r18_s1.xvg
echo -e '11\n' | gmx_mpi rmsf -f $dir2/s2_400_prot_fth.xtc -s $dir2/step3_input_prot_renum.pdb -fit no -n $dir2/rmsf.ndx -o $out/$d2/r18_s2.xvg
echo -e '10\n' | gmx_mpi rmsf -f $dir2/s1_400_prot_fth.xtc -s $dir2/step3_input_prot_renum.pdb -fit no -n $dir2/rmsf.ndx -o $out/$d3/r18_s1.xvg
echo -e '10\n' | gmx_mpi rmsf -f $dir2/s2_400_prot_fth.xtc -s $dir2/step3_input_prot_renum.pdb -fit no -n $dir2/rmsf.ndx -o $out/$d3/r18_s2.xvg
echo -e '13\n' | gmx_mpi rmsf -f $dir2/s1_400_prot_fth.xtc -s $dir2/step3_input_prot_renum.pdb -fit no -n $dir2/rmsf.ndx -o $out/$d4/r18_s1.xvg
echo -e '13\n' | gmx_mpi rmsf -f $dir2/s2_400_prot_fth.xtc -s $dir2/step3_input_prot_renum.pdb -fit no -n $dir2/rmsf.ndx -o $out/$d4/r18_s2.xvg



&
wait
echo "Job is done"

