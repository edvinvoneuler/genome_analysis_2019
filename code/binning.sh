#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 04:00:00
#SBATCH -J MetaBAT2
#SBATCH --mail-type=ALL
#SBATCH --mail-user edvinvoneuler@gmail.com

load module bioinfo-tools
load module MetaBat/2.12.1
metabat -i genome_analysis_2019/data/assembly/final.contigs.fa genome_analysis_2019/data/assembly_33/final.contigs.fa -o genome_analysis_2019/data/binning/
