#!/bin/bash

module add compilers/gcc-8.3.0 compilers/glibc-2.18

PROF=/path/to/profiles
STR=/path/to/structures

while IFS=$'\t' read var prof pdb chain
do
    NAME=${pdb/.pdb/}
    NAME=${NAME/_Repair/}
    acdc-nn struct $var $PROF/$prof $STR/$pdb $chain > ./out/$1/${NAME:(-5):4}$var.acdc
done < $1.batch
