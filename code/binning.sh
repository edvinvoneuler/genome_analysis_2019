#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 04:00:00
#SBATCH -J MetaBAT_complete
#SBATCH --mail-type=ALL
#SBATCH --mail-user edvinvoneuler@gmail.com

module load bioinfo-tools
module load MetaBat/2.12.1
metabat -i genome_analysis_2019/data/assembly_complete_run/final.contigs.fa -o genome_analysis_2019/data/binning_complete/
