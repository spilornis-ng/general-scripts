softpath=/home/birdlab/softs/picard-2.27.5/
inpath=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/parus_temp/mapped_files/
outpath=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/parus_temp/3_rmdup-bams/
tmppath=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/parus_temp/

for i in $inpath*.bam; do
	file=$(basename $i _sorted_pe.bam)
	java -Xmx10g -jar $softpath"picard.jar" MarkDuplicates \
		I=$inpath$file"_sorted_pe.bam" \
		O=$outpath$file"_sorted_rmdup.bam" \
		METRICS_FILE=$outpath$file"_sorted_rmdup.metrics.txt" \
		REMOVE_DUPLICATES=true \
		VALIDATION_STRINGENCY=LENIENT AS=true \
		TMP_DIR=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/parus_temp/ ;
	done

