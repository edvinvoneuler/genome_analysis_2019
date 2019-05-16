#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 7:00:00
#SBATCH -J bwa_dna_mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user edvinvoneuler@gmail.com

# Load modules
module load bioinfo-tools 
module load bwa/0.7.17
module load samtools/1.9

pathdna=/home/edvo1850/genome_analysis_2019/data/DNA_trimmed/

bwa index assembly_fulhack/assembly_fulhack.fa

bwa mem data/assembly_fulhack/fulhack_contigs.fa $pathdna/SRR4342129_1.paired.trimmed.fastq.gz $pathdna/SRR4342129_2.paired.trimmed.fastq.gz > SRR4342129.sam

samtools view -b SRR4342129.sam > SRR4342129.bam
samtools sort -T tmp SRR4342129.bam -o SRR4342129.sorted.bam

bwa mem data/assembly_fulhack/fulhack_contigs.fa $pathdna/SRR4342133_1.paired.trimmed.fastq.gz $pathdna/SRR4342133_2.paired.trimmed.fastq.gz > SRR4342133.sam

samtools view -b SRR4342133.sam > SRR4342133.bam
samtools sort -T tmp SRR4342133.bam -o SRR4342133.sorted.bam