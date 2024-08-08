inpath=/path/to/trimmed-reads/
outpath=/path/to/2_mapping/
reffile=/path/to/ref/ref.fna.gz

for i in $inpath*_R1.fastq.gz; do
file=$(basename $i _R1.fastq.gz);
echo "mapping "$file"";
bwa mem -t 30 -M -R "@RG\tID:"$file"\tSM:"$file"\tLB:IlluminaWGS\tPL:ILLUMINA" \ #tLB and tPL can be replaced as per project data
$reffile \
$inpath$file"_R1.fastq.gz" \
$inpath$file"_R2.fastq.gz" | \
samtools view -bh - | \
samtools sort -@ 30 -T tmp -o $outpath$file"_sorted_pe.bam";
echo "done";
done
