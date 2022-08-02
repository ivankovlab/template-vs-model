#!/bin/bash

DATA=/path/to/data/directory 
OUT=/path/to/output/directory 
ROSETTA_DDG=~/rosetta/rosetta_src_2020.08.61146_bundle/main/source/bin/ddg_monomer.default.linuxgccrelease
DB=~/rosetta/rosetta_src_2020.08.61146_bundle/main/database/

$ROSETTA_DDG -in:file:s $DATA/structures/original/relaxed/1akyA_relaxed.pdb -ddg::mut_file $DATA/mutation_lists/rosetta/original/1aky.resfile -ddg::out $OUT/original/1aky.ddgout -in::file::fullatom -database $DB -fa_max_dis 9.0 -ignore_unrecognized_res -ddg:weight_file soft_rep_design -ddg::iterations 50 -ddg::dump_pdbs false -ddg::local_opt_only true -ddg::suppress_checkpointing true -ddg::mean true -ddg::min false -ddg::output_silent false
