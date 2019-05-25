#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 04:00:00
#SBATCH -J htseq-count
#SBATCH --mail-type=ALL
#SBATCH --mail-user edvinvoneuler@gmail.com

module load bioinfo-tools htseq

aln=/home/edvo1850/genome_analysis_2019/data/rna_mapping
gff=/home/edvo1850/genome_analysis_2019/analyses/05_annotation

for bin in bin49 bin16 bin29 bin45 bin11 bin54 bin26 bin15 bin33 bin18 bin53 bin41 bin8 bin6 bin5 bin48 bin4 bin50
do
	htseq-count ${aln}/${bin}_map_SRR4342137_sorted.bam  ${aln}/${bin}_map_SRR4342139_sorted.bam ${gff}/${bin}/PROKKA_05242019.gff -o $bin
