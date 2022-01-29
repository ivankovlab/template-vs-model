# Best templates outperform homology models in predicting the impact of mutations on protein stability

Marina A. Pak, Dmitry N. Ivankov

bioRxiv 2021.08.26.457758; doi: https://doi.org/10.1101/2021.08.26.457758

- `random` - data used in analysis using randomly generated data on protein stability changes (see Section 3.2 of Results).

- `t1626` - data used in analysis using experimental protein stability changes from T1626 dataset (see Section 3.3 of Results).

**Directory tree of each folder:**

```bash
.
├── fasta
├── mutation_lists
│   ├── il_m
│   ├── il_o
│   ├── il_t
│   ├── resfiles_m
│   ├── resfiles_o
│   └── resfiles_t
└── structures
    ├── alphafold
    │   ├── relaxed_thermonet
    │   ├── repaired_foldx
    │   └── source
    ├── itasser
    │   ├── relaxed_thermonet
    │   ├── repaired_foldx
    │   └── source
    ├── original
    │   ├── relaxed_thermonet
    │   ├── repaired_foldx
    │   └── source
    └── templates
        ├── relaxed_thermonet
        ├── repaired_foldx
        └── source
```

- `fasta/` - SEQRES sequences in FASTA format of control/original structures (stored in `structures/original/source`) used to build AlphaFold and I-Tasser models (`structures/alphafold/source` and `structures/itasser/source` respectively).

- `mutation_lists/` - Text files with mutations for ddG predictors. `il*` - individual lists for FoldX, `resfiles*` - resfiles for ThermoNet. Suffixes `_m`, `_o`, `_t` denote models, original/control and template structures respectively.

- `structures/` - Protein structure files in PDB format used in ddG prediction: AlphaFold models (`alphafold/`), I-Tasser models (`itasser/`), control/original structures (`original/`) and template structures (`templates/`). 

&nbsp;&nbsp;&nbsp;`original/source/` and `templates/source/` - single-chain original/control and template structures.

&nbsp;&nbsp;&nbsp;`alphafold/source/` and `itasser/source/`) - modeled structures produced by AlphaFold and I-Tasser respectively from sequences in `fasta/`. 

&nbsp;&nbsp;&nbsp;`relaxed_thermonet` - relaxed structures from `source` for ddG prediction by Thermonet (see Section 2.6 of Methods).

&nbsp;&nbsp;&nbsp;`repaired_foldx` - repaired structures from `source` for ddG prediction by FoldX (see Section 2.4 of Methods).

**Files in each folder:**

- Dataset of mutations (`random.tsv` or `t1626.tsv`).

- `ddg_*.tsv` - ddG predictions for FoldX, Eris and ThermoNet.

- `ddg_*_trim.tsv` - ddG predictions after removal of outliers for FoldX and Eris.

- `blast.out` - Alignment of original/control proteins and their best templates from BLAST search (see Section 2.2 of Methods).

- `bins_stat_*.tsv` - Comparison of protein stability changes predicted by FoldX, Eris and ThermoNet for different sequence identities (same as Supplementary, Tables S4-S9). 
 
## References

**FoldX**

Guerois, R., Nielsen, J. E., & Serrano, L. (2002). Predicting changes in the stability of proteins and protein complexes: A study of more than 1000 mutations. Journal of Molecular Biology, 320(2), 369–387. https://doi.org/10.1016/S0022-2836(02)00442-4

**Eris**

Yin, S., Ding, F., & Dokholyan, N. V. (2007). Modeling Backbone Flexibility Improves Protein Stability Estimation. Structure, 15(12), 1567–1576. https://doi.org/10.1016/j.str.2007.09.024 

**ThermoNet**

Li, B., Yang, Y. T., Capra, J. A., & Gerstein, M. B. (2020). Predicting changes in protein thermodynamic stability upon point mutation with deep 3D convolutional neural networks. PLoS Computational Biology, 16(11), 1–24. https://doi.org/10.1371/journal.pcbi.1008291

**AlphaFold**

Jumper, J. et al. (2021). Highly accurate protein structure prediction with AlphaFold. Nature. https://doi.org/10.1038/s41586-021-03819-2 

I-Tasser

Roy, A., Kucukural, A., & Zhang, Y. (2010). I-TASSER: A unified platform for automated protein structure and function prediction. Nature Protocols, 5(4), 725–738. https://doi.org/10.1038/nprot.2010.5
