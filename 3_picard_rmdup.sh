softpath=/path/to/picard/
inpath=/path/to/2_mapping/
outpath=/path/to/3_rmdup-bams/
tmppath=/path/to/a/generous/space/for/tempfiles/

for i in $inpath*.bam; do
	file=$(basename $i _sorted_pe.bam)
	java -Xmx10g -jar $softpath"picard.jar" MarkDuplicates \
		I=$inpath$file"_sorted_pe.bam" \
		O=$outpath$file"_sorted_rmdup.bam" \
		METRICS_FILE=$outpath$file"_sorted_rmdup.metrics.txt" \
		REMOVE_DUPLICATES=true \
		VALIDATION_STRINGENCY=LENIENT AS=true \
		TMP_DIR=$tmppath ;
	done

