library(RJSONIO) # function to extract mirna (mature) target genes
                 # from targetHub using any prediction algorithm

targetHub.byMethods <- function(mir.name, method) {
tarhub.matmirna <- 'http://app1.bioinformatics.mdanderson.org/tarhub/_design/basic/_view/by_matureMIRmethod'
method <- gsub("\\+", "%2B", method)
data.link <- gsub("\\\"", "%22", paste(tarhub.matmirna, '?key=["', mir.name, '","', method ,'"]&include_docs=true', sep=''))
json.data <- paste(readLines(data.link), collapse='') #get data from targetHub
target_data <- fromJSON(json.data) #convert json formatted data to list
target_Info <- NA
if(is.list(target_data) & (length(target_data$rows) > 0)) {
       target_data <- target_data$rows
       target_Info <- matrix(nrow = length(target_data), ncol = 3)
       colnames(target_Info) <- c("Gene_Symbol", "Gene_EntrezID", "miRNA")
       for(i in 1:length(target_data)) {
            target_Info[i,1] = target_data[[i]]$doc$Gene_Symbol
            target_Info[i,2] = target_data[[i]]$doc$Gene_EntrezID
            target_Info[i,3] = target_data[[i]]$doc$miRNA
       }
    }
    target_Info
}

## #usage
## miRandaTargets <-  targetHub.byMethods("hsa-miR-200c-3p", "targetscan")
## targetscanTargets <-  targetHub.byMethods("hsa-miR-200c-3p", "miranda")
## miRanda_targetscan_Targets <-  targetHub.byMethods("hsa-miR-200c-3p", "miranda+targetscan")
