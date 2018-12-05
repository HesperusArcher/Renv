## http://bioconductor.org/packages/release/data/annotation/manuals/targetscan.Hs.eg.db/man/targetscan.Hs.eg.db.pdf
## Please note, that the package currently contains _only_ the prediction for conserved miRNA targets, separately for each miRNA family.

## had Not know how to use


library('org.Hs.eg.db') # required package
library('targetscan.Hs.eg.db')

get(get("Protein_Name", revmap(org.Hs.egSYMBOL)), targetscan.Hs.egTARGETS)
