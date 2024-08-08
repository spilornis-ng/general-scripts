REF=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/parus_temp/ref/Parus_major.fna.gz

bcftools mpileup -a AD,DP,SP -Ou -f $REF \
/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/parus_temp/3_rmdup-bams/*_rmdup.bam | bcftools call -f GQ,GP \
-mO z -o /media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/parus_temp/bcf_snp/C_ceylonensis.vcf.gz
