inpath=/path/to/2_trimmed-reads/
outpath=/path/to/3_denovo-assembly/
file1=M1139_R1.fastq.gz
file2=M1139_R2.fastq.gz

megahit -t 60 -1 $inpath$file1 -2 $inpath$file2 -o $outpath
