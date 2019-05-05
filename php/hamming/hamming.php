<?php

function distance(string $strandA, string $strandB): int
{
    if (strlen($strandA) != strlen($strandB)) {
        throw new InvalidArgumentException('DNA strands must be of equal length.');
    }
    
    $charsA = str_split($strandA);
    $charsB = str_split($strandB);

    return count(array_diff_assoc($charsA, $charsB));
}
