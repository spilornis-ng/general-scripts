inpath=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/trimmed-reads/trim_unmerged/
outpath=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/parus_temp/mapped_files/
reffile=/media/birdlab/myPassport/Naman/Culicicapa_project/uce_olddata/parus_temp/ref/Parus_major.fna.gz

for i in $inpath*_R1.fastq.gz; do
file=$(basename $i _R1.fastq.gz);
echo "mapping "$file"";
bwa mem -t 30 -M -R "@RG\tID:"$file"\tSM:"$file"\tLB:IlluminaWGS\tPL:ILLUMINA" \
$reffile \
$inpath$file"_R1.fastq.gz" \
$inpath$file"_R2.fastq.gz" | \
samtools view -bh - | \
samtools sort -@ 30 -T tmp -o $outpath$file"_sorted_pe.bam";
echo "done";
done
