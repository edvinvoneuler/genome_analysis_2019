#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 3:00:00
#SBATCH -J prokka_edvin
#SBATCH --mail-type=ALL
#SBATCH --mail-user edvinvoneuler@gmail.com

# Load modules
module load bioinfo-tools prokka

for i in $(seq 55)
do

        if [ $i = 23 ] || [ $i = 15 ] || [ $i = 8 ] || [ $i = 20 ]
        then
        prokka --kingdom Archaea /home/edvo1850/genome_analysis_2019/data/binning_rerun/bin$i.fa --outdir /home/edvo1850/genome_analysis_2019/analyses/05_annotation --force
        else
                prokka /home/edvo1850/genome_analysis_2019/data/binning_rerun/bin$i.fa --outdir /home/edvo1850/genome_analysis_2019/analyses/05_annotation --force
        fi
done
