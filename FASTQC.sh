#We want to perform a quality assesment for the Illumina reads (all files).
#For each file do FASTQC. Then MultiQC will run with all FASTQC outputs and will give us a sigle output (single HTML)

#Import needed modules:
module load bioinfo-tools
module load FastQC
module load MultiQC

#Do FastQC analyisi on all illumina files:
fastqc -o /proj/sllstore2017067/project7/results/fastqc /crex2/proj/sllstore2017083/2017-11-29_cjs-project7/data/illumina/*fastq.gz
multiqc -o /proj/sllstore2017067/project7/results/multiqc --export /proj/sllstore2017067/project7/results/fastqc 


