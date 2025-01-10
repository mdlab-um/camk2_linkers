#!/bin/bash
#SBATCH --job-name="18"               # Job name
#SBATCH -n 32                    # Number of cores
#SBATCH -N 1                     # Number of nodes
#SBATCH -o slurmlog_%j.out       # File to which STDOUT will be written
#SBATCH -e slurmlog_%j.err       # File to which STDERR will be written
#SBATCH --gres=gpu:4             # require 4 gpus
#SBATCH -p fast


cd /home/kairongdong/work/p1_camk2/t3_camk2d_symmetry/18/charmm-gui-8961827048/gromacs

gmx_mpi grompp -f step5_production_400k.mdp -o ./prod/step5_1_400k.tpr -c ./equi/step4.1_equilibration.gro -p topol.top -n index.ndx

cd /home/kairongdong/work/p1_camk2/t3_camk2d_symmetry/18/charmm-gui-8961827048/gromacs/prod

gmx_mpi mdrun -deffnm 18_s1_400k -s step5_1_400k.tpr -ntomp 4 -nb gpu -pme gpu -bonded gpu -gpu_id 0 -pin on -pinoffset 0 &
gmx_mpi mdrun -deffnm 18_s2_400k -s step5_1_400k.tpr -ntomp 4 -nb gpu -pme gpu -bonded gpu -gpu_id 1 -pin on -pinoffset 8 &

wait
echo "Job is done"
