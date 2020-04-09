module DifferenceOfSquares exposing (difference, squareOfSum, sumOfSquares)

import List exposing (map, range, sum)


square : Int -> Int
square n =
    n ^ 2


squareOfSum : Int -> Int
squareOfSum n =
    range 1 n |> sum |> square


sumOfSquares : Int -> Int
sumOfSquares n =
    range 1 n |> map square |> sum


difference : Int -> Int
difference n =
    squareOfSum n - sumOfSquares n
