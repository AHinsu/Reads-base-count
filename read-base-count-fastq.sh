echo "sample reads-R1 reads-R2 bases-R1 bases-R2" > read-base-count.txt; for i in $(ls *.fastq.gz | cut -f1 -d"_" | uniq); do echo $i; gzip -dk $i"_R1.fastq.gz"; gzip -dk $i"_R2.fastq.gz"; x=$(wc -l $i"_R1.fastq" | cut -f1 -d " " ); y=$(wc -l $i"_R2.fastq" | cut -f1 -d " " ); k=$(prinseq-lite.pl -fastq $i"_R1.fastq" -fastq2 $i"_R2.fastq" -stats_info | grep "bases" | cut -f3 ); echo $i $(($x/4)) $(($y/4)) $k $l >> read-base-count.txt; rm $i"_R1.fastq" $i"_R2.fastq"; done; sed -i 's/ /\t/g' read-base-count.txt;

echo "Completed\n\n"
