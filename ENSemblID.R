library(biomaRt)

mart <- useMart(biomart = "ensembl", dataset = "hsapiens_gene_ensembl")
attributes <- c("ensembl_gene_id", "gene_biotype", "hgnc_symbol", "ensembl_transcript_id", "ensembl_peptide_id")

getbyENSG <- function(ENSG) {
    ENSG <- 10000000000 + ENSG
    ENSG <- as.character(ENSG)
    ENSG <- gsub("1([0-9].*)", "ENSG0\\1", ENSG, perl = T)
    EnsemblID <- getBM(attributes = attributes, filters = "ensembl_gene_id", values = ENSG, mart = mart)
    EnsemblID
}

getbySymbol <- function(genesymbol) {
    ## genesymbol <- as.character(genesymbol)
    EnsemblID <- getBM(attributes = attributes, filters = "hgnc_symbol", values = genesymbol, mart = mart)
    EnsemblID
}

getbyENST <- function(ENST) {
    ENST <- 10000000000 + ENST
    ENST <- as.character(ENST)
    ENST <- gsub("1([0-9].*)", "ENST0\\1", ENST, perl = T)
    EnsemblID <- getBM(attributes = attributes, filters = "ensembl_transcript_id", values = ENST, mart = mart)
    EnsemblID
}

getbyENSP <- function(ENSP) {
    ENSP <- 10000000000 + ENSP
    ENSP <- as.character(ENSP)
    ENSP <- gsub("1([0-9].*)", "ENST0\\1", ENSP, perl = T)
    EnsemblID <- getBM(attributes = attributes, filters = "ensembl_peptide_id", values = ENSP, mart = mart)
    EnsemblID
}


## Samples below

## library(biomaRt)
## mart <- useMart('ensembl', dataset = "hsapiens_gene_ensembl")
## genes <- c("ENSG00000000003", "ENSG00000163734")
## genesinfo <- getBM(attributes = c("ensembl_gene_id", "hgnc_symbol", "gene_biotype"),
##                    filters = "ensembl_gene_id", values = genes, mart = mart)
## genesinfo


## library(biomaRt)
## ## define biomart object
## mart <- useMart(biomart = "ensembl", dataset = "hsapiens_gene_ensembl")
## ## query biomart
## results <- getBM(attributes = c("ensembl_gene_id", "ensembl_transcript_id", "ensembl_peptide_id"),
##                  filters = "ensembl_transcript_id", values = "ENST00000296026",
##                  mart = mart)
## results
## ##   ensembl_gene_id ensembl_transcript_id ensembl_peptide_id
## ## 1 ENSG00000163734       ENST00000296026    ENSP00000296026


## ## also can get any class of Info
## ## edit filters and values to attributes and want to know
## resultInfo <- getBM(attributes = c("ensembl_gene_id", "hgnc_symbol", "ensembl_transcript_id", "ensembl_peptide_id"),
##                     filters = "hgnc_symbol", values = "GLRA2", mart = mart)
