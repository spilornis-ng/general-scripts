inpath=/media/birdlab/myPassport/Naman/Culicicapa_project/trimmed-reads/
outpath=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/wgs_ref/
file1=M1139_R1.fastq.gz
file2=M1139_R2.fastq.gz

megahit -t 60 -1 $inpath$file1 -2 $inpath$file2 -o $outpath