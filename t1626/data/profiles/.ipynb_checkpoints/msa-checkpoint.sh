#!/bin/bash

for i in $1/*fasta
do
	hhblits -i $i -oa3m $i.a3m -d /gpfs/data/gpfs0/ivankov-lab/bin/alphafold/data/db/uniclust30/uniclust30_2018_08/uniclust30_2018_08
    #grep -v '>' $i > ${i/.fasta.a3m/}.msa
done