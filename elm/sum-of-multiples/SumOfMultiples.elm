module SumOfMultiples exposing (sumOfMultiples)


sumOfMultiples : List Int -> Int -> Int
sumOfMultiples multiples limit =
    List.range 1 (limit - 1)
        |> List.filter (filterMultiples multiples)
        |> List.sum


filterMultiples : List Int -> Int -> Bool
filterMultiples multiples potentialFactor =
    List.any (\m -> remainderBy m potentialFactor == 0) multiples
