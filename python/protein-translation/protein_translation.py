codon_proteins = [
    ('Methionine', 'AUG'),
    ('Phenylalanine', 'UUU', 'UUC'),
    ('Leucine', 'UUA', 'UUG'),
    ('Serine', 'UCU', 'UCC', 'UCA', 'UCG'),
    ('Tyrosine', 'UAU', 'UAC'),
    ('Cysteine', 'UGU', 'UGC'),
    ('Tryptophan', 'UGG'),
    ('STOP', 'UAA', 'UAG', 'UGA')
]

def getProtein(codon):
    for protein in codon_proteins:
        if codon in protein:
            return protein[:1][0]

def proteins(strand):
    split_strand = [strand[i:i+3] for i in range(0, len(strand), 3)]
    translated_proteins = []
    for codon in split_strand:
        protein = getProtein(codon)
        if protein == "STOP":
            break
        translated_proteins.append(protein)

    return translated_proteins
    
