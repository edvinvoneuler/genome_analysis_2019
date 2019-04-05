dir=/home/edvo1850/genome_analysis_2019/data/RNA_untrimmed/
out_dir=/home/edvo1850/genome_analysis_2019/analyses/trimmomatic_results/

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE $dir/SRR4342139.1.fastq.gz $dir/SRR4342139.2.fastq.gz $out_dir/SRR4342139.1FP.fastq.gz \
$out_dir/SRR4342139.1FU.fastq.gz $out_dir/SRR4342139.2FP.fastq.gz $out_dir/SRR4342139.2UP.fastq.gz \
HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE $dir/SRR4342137.1.fastq.gz $dir/SRR4342137.2.fastq.gz $out_dir/SRR4342137.1FP.fastq.gz \
$out_dir/SRR4342137.1FU.fastq.gz $out_dir/SRR4342137.2FP.fastq.gz $out_dir/SRR4342137.2UP.fastq.gz \
HEADCROP:15 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

