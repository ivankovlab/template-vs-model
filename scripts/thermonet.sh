#!/bin/bash

conda activate thermonet

DATA=/path/to/data/directory 
OUT=/path/to/output/directory 

thermonet() {
ROSETTA=~/rosetta/rosetta_src_2020.08.61146_bundle/main/source/bin/relax.default.linuxgccrelease
TNET=~/bin/ThermoNet/ThermoNet

PDB=$DATA/structures/original/source/$1
MUTFILE=$DATA/mutation_lists/resfiles_o/$1.txt #full path to a list of mutations in rosetta's resfile format (2ocjA 104 Q H)

echo 'Step 1/4. Running Rosetta relaxation'
$ROSETTA -in:file:s $PDB'.pdb' -relax:constrain_relax_to_start_coords -out:suffix _relaxed -out:no_nstruct_label -relax:ramp_constraints false

echo 'Made directory' $1
mkdir $1
mv $1'_relaxed.pdb' ./$1
echo 'Moved file' $1'_relaxed.pdb'

echo 'Step 2/4. Creating mutant structures'
$TNET/rosetta_relax.py --rosetta-bin $ROSETTA -l $MUTFILE --base-dir ./

cd ./$1; rename _relaxed_ _ *_relaxed_*.pdb; cd ..

echo 'Step 3/4. Generating voxels'
$TNET/gends.py -i $MUTFILE -o $1'_direct_stacked_16_1' -p ./ --boxsize 16 --voxelsize 1

echo 'Step 4/4. In silico mutagenesis'
for i in {1..10}; do $TNET/predict.py -x $1'_direct_stacked_16_1.npy' -m $TNET/../models/ThermoNet_ensemble_member_${i}.h5 -o $1'_predictions_'$i'.txt'; done
}

thermonet 1akyA
