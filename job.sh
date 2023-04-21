#!/bin/bash
#SBATCH --job-name          test-lammps
#SBATCH --time              720:00:00
#SBATCH --nodes             1
#SBATCH --ntasks-per-node   4
#SBATCH --mem-per-cpu       1G
#SBATCH --error             output-%j.error
#SBATCH --output            output-%j.output

# Eliminamos los modulos cargados
module purge

# Cargando los modulos necesarios
module load lammps/23Jun2022

# Comandos que seran ejecutados
mpirun lmp_mpi -in in.friction > output.result
