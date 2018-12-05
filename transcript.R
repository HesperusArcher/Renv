transcribe <- function(DNA_string) {
    rna <- Biostrings::complement(DNA_string)
    rna <- gsub("T", "U", rna, perl = T)
    rna <- Biostrings::RNAString(rna)
    return(rna)
}

cDNA <- function(RNA_string) {
    cdna <- Biostrings::reverseComplement(RNA_string)
    cdna <- gsub("U", "T", cdna, perl = T)
    cdna <- Biostrings::DNAString(cdna)
    return(cdna)
}

cDNA2 <- function(RNA_string) {
    cdna2 <- gsub("U", "T", RNA_string, perl = T)
    cdna2 <- Biostrings::DNAString(cdna2)
    return(cdna2)
}
