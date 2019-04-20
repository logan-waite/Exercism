def distance(strand_a, strand_b):
    if len(strand_a) != len(strand_b):
        raise ValueError("strands should be the same size")

    return len([(c1, c2) for c1, c2 in zip(strand_a, strand_b) if c1 != c2])