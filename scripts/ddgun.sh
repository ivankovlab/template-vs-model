#!/bin/bash

DATA=/path/to/data/directory 
OUT=/path/to/output/directory 

~/bin/ddgun/ddgun_3d.py $DATA/structures/original/repaired/1akyA_Repair.pdb A $DATA/mutation_lists/muts_o/1aky.muts > $OUT/1akyA.ddgun
