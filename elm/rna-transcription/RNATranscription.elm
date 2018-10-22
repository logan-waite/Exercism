module RNATranscription exposing (toRNA)

import List exposing (map)

toRNA : String -> Result Char String
toRNA dna =
    Ok (String.map convertToRna dna)

convertToRna : Char -> Char
convertToRna n =
    case n of
        'G' -> 'C'
        'C' -> 'G'
        'T' -> 'A'
        'A' -> 'U'
        _ -> '?'