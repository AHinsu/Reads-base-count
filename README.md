# Reads-base-count

This is a sheel script created to count the bases and reads from the paired fastq files. This script assumes that you prinseq-lite.pl script (Available from https://github.com/uwb-linux/prinseq.git) is present in PATH or needs to be in the working directory (along with fastq files) with executable permission.

The fastq files should be gzipped and should have the naming convention as 'Sample-name_R1.fastq.gz' and 'Sample-name_R2.fastq.gz'. There should not be any "_" in the Sample-name. For example: My-very-long-sample-name-from-treatment_R1.fastq.gz and My-very-long-sample-name-from-treatment_R2.fastq.gz

Usage:
Put the script in the folder where all the fastq.gz files are present along with prinseq-lite.pl script (not required in case it is accessible globally).
Run ./read-base-count-fastq.sh

That should create a tab-delimited file named read-base-count.txt containing the information.
