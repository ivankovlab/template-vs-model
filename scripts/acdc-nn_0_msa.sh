#!/bin/bash

# generate MSA for subsequent generation of profile for ACDC-NN

DB=/path/to/databases

for i in $1/*fasta
	do hhblits -i $i -oa3m $i.a3m -d $DB/uniclust30/uniclust30_2018_08/uniclust30_2018_08
	grep -v '>' $i > ${i/.fasta.a3m/}.msa
done
