#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 5:00:00
#SBATCH -J Phylophlan
#SBATCH --mail-type=ALL
#SBATCH --mail-user edvinvoneuler@gmail.com

# Load modules
module load  bioinfo-tools phylophlan/0.99 python/3.7.2 biopython/1.73-py3 FastTree/2.1.10 muscle/3.8.1551 usearch/5.2.32

./phylophlan.py -t --nproc 4 -i  ~/genome_analysis_2019/phylophlan/input/prokka_faa
