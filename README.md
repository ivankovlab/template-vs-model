# Best templates outperform homology models in predicting the impact of mutations on protein stability

Marina A Pak, Dmitry N Ivankov, Best templates outperform homology models in predicting the impact of mutations on protein stability, Bioinformatics, 2022;, btac515, https://doi.org/10.1093/bioinformatics/btac515 

- `random` - data used in analysis using randomly generated data on protein stability changes (see Section 3.2 of Results).

- `t1626` - data used in analysis using experimental protein stability changes from T1626 dataset (see Section 3.3 of Results).

**Data**

Data used for ddG prediction.

- Dataset of mutations (`random.tsv` or `t1626.tsv`).

- `blast.out` - Alignment of original/control proteins and their best templates from BLAST search (see Section 2.2 of Methods).

- `fasta/` - SEQRES sequences in FASTA format of control/original structures (stored in `structures/original/source`) used to build AlphaFold and I-Tasser models (`structures/alphafold/source` and `structures/itasser/source` respectively).

- `mutation_lists/` - Text files with mutations for ddG predictors. `il*` - individual lists for FoldX, `resfiles*` - resfiles for ThermoNet, `muts*` - mutation lists for DDGun and DynaMut, `rosetta/` - mutation lists for Rosetta. Suffixes `_m`, `_o`, `_t` denote models, original/control and template structures respectively.

- `profiles/` - profiles calculated from MSA for ddG prediction by ACDC-NN. 

- `structures/` - Protein structure files in PDB format used in ddG prediction: AlphaFold models (`alphafold/`), I-Tasser models (`itasser/`), control/original structures (`original/`) and template structures (`templates/`). 

&nbsp;&nbsp;&nbsp;`original/source/` and `templates/source/` - single-chain original/control and template structures.

&nbsp;&nbsp;&nbsp;`alphafold/source/` and `itasser/source/`) - modeled structures produced by AlphaFold and I-Tasser respectively from sequences in `fasta/`. 

&nbsp;&nbsp;&nbsp;`relaxed_thermonet` - relaxed structures from `source` by Rosetta.

&nbsp;&nbsp;&nbsp;`repaired_foldx` - repaired structures from `source` by FoldX.

**Results**

- `ddg_predictions/` - tables with raw values of predicted ddG for all predictors.

- `stat/` - tables with statistics on ddG predictions.

&nbsp;&nbsp;&nbsp;`all_stat.tsv` - Statistics on the predicted stability changes for the whole datasets by all predictors.

&nbsp;&nbsp;&nbsp;`all_stat_rsa.tsv` - Statistics on the predicted stability changes for the datasets of random mutations grouped by RSA.

&nbsp;&nbsp;&nbsp;`bins_stat_*.tsv` - Statistics on the predicted stability changes grouped by sequence identities of templates. Results of each predictor in separate file.
