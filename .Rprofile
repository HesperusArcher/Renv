# config via XieYihui
## options(repos = c(CRAN = "http://streaming.stat.iastate.edu/CRAN",
##                   CRANextra = "http://www.stats.ox.ac.uk/pub/RWin"))
if (interactive()) {
  suppressMessages(require(devtools))
  options(warn = 1)
}

.First <- function() {
    ## Welcome
    cat("\nHello, Yuanchen\n",date(),"\n")
    ## high light R
    library(highr)
    ## custom functions by HesperusArcher
    source("~/R/Hesperus_functions.R")
}

## local({dp <- Sys.getenv("R_DEFAULT_PACKAGES")
##        if(identical(dp, "")) # marginally faster to do methods last
##            dp <- c("datasets", "utils", "grDevices", "graphics",
##                    "stats", "methods", "ggplot2",
##                    "knitr", "lintr", #ess
##                    "DESeq", "edgeR", "gplots", "limma", "VennDiagram", #TCGA
##                    ## "reshape", "vcd", #vcd::spine()
##                    "Hmisc", "pastecs", "psych", #describe() stat.desc() corr.test()
##                    "gmodels", #CrossTable()
##                    "car", #qqPlot() durbinWatsonTest() crPlots() ncvTest() spreadLevelPlot()
##                    ## "HH", #anova #dependency ‘Rmpfr’ is not available
##                    "rrcov", "mvoutlier", #anova
##                    "gvlma", #gvlma()
##                    "leaps", #regsubsets()
##                    "pwr", #power analysis
##                    "hash")
##        else if(identical(dp, "NULL")) dp <- character(0)
##        else dp <- strsplit(dp, ",")[[1]]
##        dp <- sub("[[:blank:]]*([[:alnum:]]+)", "\\1", dp) # strip whitespace
##        options(defaultPackages = dp)
##     })

## .Last <- function() {
##     cat("\nGoodbye at",date(),"\n")
## }
