##!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J assembly_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user edvinvoneuler@gmail.com

# Load modules

cd genome_analysis_2019/data/DNA_trimmed

module load bioinfo-tools megahit/1.1.2

megahit -1 SRR4342129_1.paired.trimmed.fastq.gz -2 SRR4342129_2.paired.trimmed.fastq.gz -o ../assembly

megahit -1 SRR4342133_1.paired.trimmed.fastq.gz -2 SRR4342133_2.paired.trimmed.fastq.gz -o ../assembly
