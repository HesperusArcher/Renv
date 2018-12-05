s <- function(file_name) {
    source(file_name)
}

S <- function(package_name) {
    install.packages(package_name)
}

Bi <- function(package_name) {
    BiocManager::install(package_name)
}
