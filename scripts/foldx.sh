#!/bin/bash

DATA=/path/to/data/directory 
OUT=/path/to/output/directory 

foldx --command=RepairPDB --pdb=$DATA/structures/original/source/1akyA.pdb

foldx --command=BuildModel --pdb=$DATA/structures/original/repaired/1akyA_Repair.pdb --mutant-file=$DATA/mutation_lists/il_o/individual_list_1aky_IA213F.txt





