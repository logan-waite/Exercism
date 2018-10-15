from string import maketrans

def to_rna(dna_strand):
    intab = "GCTA"
    outtab = "CGAU"
    trantab = maketrans(intab, outtab)

    print dna_strand.translate(trantab)
    return dna_strand.translate(trantab)
