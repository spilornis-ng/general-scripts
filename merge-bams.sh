inpath=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/3_mapping/
outpath=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/4_merge-bams/

for i in $inpath*_sorted.bam; do
file=$(basename $i _sorted.bam);
echo "mapping "$file"";
samtools merge -@30 -o $outpath$file"_merged.bam" \
$inpath$file"_sorted.bam" \
$inpath$file"_sorted_pe.bam";
echo "done";
done