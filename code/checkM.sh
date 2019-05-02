#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 00:04:00
#SBATCH -J edvin_checkM
#SBATCH --mail-type=ALL
#SBATCH --mail-user edvinvoneuler@gmail.com

# Load modules
module load bioinfo-tools
module load checkM

# Your commands

 checkm lineage_wf /home/edvo1850/genome_analysis_2019/data/binning/ /home/edvo1850/genome_analysis_2019/analysis/checkM