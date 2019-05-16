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

PATH = /home/edvo1850/genome_analysis_2019/data/

metabat -i $PATH/assembly_combined/intermediate_contigs/k119.contigs.fa -o $PATH/data/binning/

