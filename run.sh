#!/bin/bash
#SBATCH -J CosmoChord ##SBATCH -N 1 # node count
#SBATCH -n 200
#SBATCH -t 5:59:00
# sends mail when process begins, and
# when it ends. Make sure you define your email
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mail-user=ckreisch@astro.princeton.edu

source /home/ckreisch/.bash_profile

cd /tigress/ckreisch/vanilla/CosmoChord

srun --mpi=pmi2 ./cosmomc test_planck.ini

#mpirun -n 8 --cpus-per-proc 4 ./cosmomc test.ini
