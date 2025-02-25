#!/bin/bash
#SBATCH --job-name=islandmito_iqtree
#SBATCH --time=30:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
module load IQ-TREE/1.6.12
iqtree -s islandmito.fasta -nt AUTO