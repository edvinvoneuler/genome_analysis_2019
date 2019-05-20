#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 4:00:00
#SBATCH -J bwa_rna_mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user edvinvoneuler@gmail.com

# Load modules
module load bioinfo-tools 
module load bwa/0.7.17
module load samtools/1.9

pathrna=/home/edvo1850/genome_analysis_2019/data/trimmomatic_results/

bwa index data/assembly_combined_rerun/final.contigs.fa

bwa mem data/assembly_combined_rerun/final.contigs.fa\
$pathrna/SRR4342137.1P.fastq.gz\
$pathrna/SRR4342137.2P.fastq.gz | samtools sort -o SRR4342137.sorted.bam


bwa mem data/assembly_combined_rerun/final.contigs.fa\
$pathrna/SRR4342139.1P.fastq.gz\
$pathrna/SRR4342139.2P.fastq.gz | samtools sort -o SRR4342139.sorted.bam