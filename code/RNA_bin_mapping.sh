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

pathrna=/home/edvo1850/genome_analysis_2019/data/trimmomatic_results


for bin in /home/edvo1850/genome_analysis_2019/data/binning_rerun/*.fa
do
	name=${bin##*/}
        base=${name%.fa}	

	bwa index $bin	
	
	bwa mem $bin ${pathrna}/SRR4342137.1P.fastq.gz ${pathrna}/SRR4342137.2P.fastq.gz > ${base}_map_SRR4342137.sam

	samtools view -S -b ${base}_map_SRR4342137.sam > ${base}_map_SRR4342137.bam
	samtools sort ${base}_map_SRR4342137.bam -o ${base}_map_SRR4342137_sorted.bam
	rm ${base}_map_SRR4342137.sam
	rm ${base}_map_SRR4342137.bam

	
	bwa mem $bin ${pathrna}/SRR4342139.1P.fastq.gz ${pathrna}/SRR4342139.2P.fastq.gz > ${base}_map_SRR4342139.sam

        samtools view -S -b ${base}_map_SRR4342139.sam > ${base}_map_SRR4342139.bam
        samtools sort ${base}_map_SRR4342139.bam -o ${base}_map_SRR4342139_sorted.bam
        rm ${base}_map_SRR4342139.sam
        rm ${base}_map_SRR4342139.bam
done
