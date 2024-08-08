reffile=/path/to/ref/ref.fna.gz
inpath=/path/to/4_rmdup-bams/
outpath=/path/to/5_gatk/

for i in $inpath*_rmdup.bam; do
file=$(basename $i _sorted_rmdup.bam);
echo $file;

/home/birdlab/softs/gatk-4.6.0.0/gatk --java-options "-Xmx10g" HaplotypeCaller \
-R $reffile \
-I $inpath$file"_sorted_rmdup.bam" \
-O $outpath$file".vcf.gz" -ERC GVCF;
done
