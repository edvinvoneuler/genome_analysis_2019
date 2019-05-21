#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 04:00:00
#SBATCH -J edvin_fastQC
#SBATCH --mail-type=ALL
#SBATCH --mail-user edvinvoneuler@gmail.com

# Load modules
module load bioinfo-tools
module load FastQC

fastqc /home/edvo1850/genome_analysis_2019/analyses/01_preprocessing/trimmomatic_results/* \
--out-dir = /home/edvo1850/genome_analysis_2019/analyses/01_preprocessing/RNA_trimmed_QC/
