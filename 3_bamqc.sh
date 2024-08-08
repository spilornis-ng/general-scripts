inpath=/path/to/2_mapping/
outpath=/path/to/3_mapping/bamqc/

for i in $inpath*_sorted_pe.bam; do
file=$(basename $i _sorted_pe.bam);
echo "bamqc "$file"";
qualimap bamqc -bam $inpath$file"_sorted_pe.bam" -outfile $file".pdf" -outdir $outpath 
echo "done";
done
