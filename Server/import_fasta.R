# Read and clean sequence imported from a .fasta file

# Import .fasta file
fasta_dat <- read.fasta('AFDrGC(35).fasta', 
                  seqtype = 'DNA') 
x <- c2s(fasta_dat[[1]])
name <- getName(fasta_dat)

## Generate clean sequence, trimming any leading/trailing spaces
dat <- c2s(fasta_dat[[1]]) %>%
    tolower %>%
    trimSpace(.) %>%
    s2c(.) 