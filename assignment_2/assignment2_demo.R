source("assignment2_functions.R")

gc_content("GCGCATAT")
# expected result: 50

reverse_complement("ATGC")
# expected result: "GCAT"

transcribe("ATGCGT")
# expected result: "AUGCGU"

translate("AUGGCUUAAGGG")
# expected result: "MA"

hardy_weinberg(0.6)
# expected result: a list (or vector) with components 
# AA (0.36), Aa (0.48), and aa (0.16)

set.seed(10)
random_sequence <- random_dna(20)
random_sequence
# expected result: 20 characters sampled from {"A", "T", "C", "G"}


# Add one additional test for each function after fixing the code.
