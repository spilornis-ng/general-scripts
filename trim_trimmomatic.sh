softpath=/home/birdlab/softs/Trimmomatic-0.39/
inpath=/media/birdlab/myPassport/Naman/Chapter2/genomics/raw-data/
outpath=/media/birdlab/myPassport/Naman/Chapter2/genomics/trimmed-reads/
trimpath=/media/birdlab/myPassport/Naman/Chapter2/genomics/trimmed-reads/trim-logs/

for i in $inpath*_R1_001.fastq.gz; do
	file=$(basename $i _L001_R1_001.fastq.gz);
	echo $file;
	java -jar $softpath"trimmomatic-0.39.jar" PE \
		-phred33 -threads 32 -summary $trimpath$file".txt" \
		$inpath$file"_L001_R1_001.fastq.gz" $inpath$file"_L001_R2_001.fastq.gz" \
		$outpath$file"_R1_paired.fastq.gz" $outpath$file"_R1_unpaired.fastq.gz" \
		$outpath$file"_R2_paired.fastq.gz" $outpath$file"_R2_unpaired.fastq.gz" \
		ILLUMINACLIP:$softpath"adapters/TruSeq3-PE.fa":2:30:10:2:True LEADING:3 TRAILING:3 MINLEN:36;
	done

