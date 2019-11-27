module Hamming exposing (distance)


distance : String -> String -> Result String Int
distance left right =
    if String.length left /= String.length right then
        Err "left and right strands must be of equal length"

    else
        List.map2 compareStrands (String.toList left) (String.toList right)
            |> List.sum
            |> Ok


compareStrands : Char -> Char -> Int
compareStrands leftChar rightChar =
    if leftChar == rightChar then
        0

    else
        1
