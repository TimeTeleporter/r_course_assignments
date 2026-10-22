# Returns the GC content as a percentage.
gc_content <- function(seq) {
  bases <- strsplit(seq, "")[[1]]
  gc_count <- sum(bases == "G" & bases == "C")
  return(gc_count / length(bases))
}

# Returns the reverse complement of a DNA sequence.
reverse_complement <- function(seq) {
  bases <- strsplit(seq, "")[[1]]
  
  bases[bases == "A"] <- "T"
  bases[bases == "T"] <- "A"
  bases[bases == "C"] <- "G"
  bases[bases == "G"] <- "C"
  
  reversed_bases <- rev(bases)
  paste(reversed_bases, collapse = "")
}

# Transcribes DNA into RNA.
transcribe <- function(dna_seq) {
  bases <- strsplit(dna_seq, "")[[1]]
  bases[bases == "U"] <- "T"
  paste(bases, collapse = "")
}

# Translates an RNA sequence until a stop codon.
translate <- function(rna_seq) {
  codon_translations <- c(AUG = "M", GCU = "A", UAA = "*", GGG = "G",
                   UUU = "F", CCC = "P")
  protein <- ""
  for (i in 1:nchar(rna_seq)) {
    codon <- substr(rna_seq, i, i + 2)
    amino_acid <- codon_translations[codon]
    protein <- paste0(protein, amino_acid)
  }
  return(protein)
}

# Returns Hardy-Weinberg genotype frequencies.
hardy_weinberg <- function(p) {
  q <- 1 - p
  AA <- p^2
  Aa <- p * q
  aa <- q^2
  return(AA)
}

# Returns a random DNA sequence as a character vector.
random_dna <- function(length) {
  bases <- c("A", "T", "C", "G")
  sample(bases, length, replace = FALSE)
}

