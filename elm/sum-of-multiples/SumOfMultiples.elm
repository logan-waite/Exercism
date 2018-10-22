module SumOfMultiples exposing (sumOfMultiples)

import Set exposing (diff, toList)



sumOfMultiples : List Int -> Int -> Int
sumOfMultiples multiples limit =
    List.map (getMultiples limit) multiples
    |> List.concat
    |> Set.fromList |> Set.toList
    |> List.sum

getMultiples limit n =
    findNextMultiple limit n []

findNextMultiple : Int -> Int -> List Int -> List Int
findNextMultiple limit n multiples =
    if findMultiple n multiples < limit then 
        findMultiple n multiples :: multiples 
        |> findNextMultiple limit n
    else multiples

findMultiple : Int -> List Int -> Int
findMultiple n multiples =
    case multiples of
        [] -> n
        a :: rest -> a + n

