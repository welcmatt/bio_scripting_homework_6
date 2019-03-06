#!/bin/bash

#part_3 script

for i in CDS/*.cds
do
basename=`basename ${$} .cds`

# Truncates at first whitespace, provides summary w/ histogram
cat ${i} | cut -d ' ' -f 1 | get_fasta_stats.pl -g -T > ${basename}_WELC.dna
# Prepare file for transeq
cat ${i} | cut -d ' ' -f 1 > ${basename}_prep_WELC.dna

# translates prep file into amino acid seqs
transeq -sformat pearson -frame 1 -sequence ${basename}_prep_WELC.dna -outseq ${basename}_WELC.pep
done

for i in *.pep
do
base=`basename ${i} _WELC.pep`
get_fasta_stats.pl -t ${base}_WELC.pep > ${base}_WELC.summary
done
# produces full fasta summaries for each file

