inpath=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/3_mapping/mapping_unmerged/
outpath=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/3_mapping/mapping_unmerged/bamqc/

for i in $inpath*_sorted_pe.bam; do
file=$(basename $i _sorted_pe.bam);
echo "bamqc "$file"";
qualimap bamqc -bam $inpath$file"_sorted_pe.bam" -outfile $file".pdf" -outdir $outpath 
echo "done";
done
