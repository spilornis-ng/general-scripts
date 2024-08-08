inpath=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/raw-reads/
outpath=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/trimmed-reads/trim_unmerged/

for i in $inpath*_R1.fastq.gz; do
	file=$(basename $i _R1.fastq.gz);
	echo $file;
	fastp -i $inpath$file"_R1.fastq.gz" -I $inpath$file"_R2.fastq.gz" -o $outpath$file"_R1.fastq.gz" -O $outpath$file"_R2.fastq.gz" -h $outpath$file".html" -l 50 -q 33 --thread 16;

done
