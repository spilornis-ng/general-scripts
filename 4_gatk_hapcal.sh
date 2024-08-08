reffile=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/parus_temp/ref/Parus_major.fna.gz
inpath=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/parus_temp/3_rmdup-bams/
outpath=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/parus_temp/4_gatk/

for i in $inpath*_rmdup.bam; do
file=$(basename $i _sorted_rmdup.bam);
echo $file;

/home/birdlab/softs/gatk-4.6.0.0/gatk --java-options "-Xmx10g" HaplotypeCaller \
-R $reffile \
-I $inpath$file"_sorted_rmdup.bam" \
-O $outpath$file".vcf.gz" -ERC GVCF;
done
