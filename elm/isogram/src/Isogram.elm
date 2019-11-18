module Isogram exposing (isIsogram)

import Set


isIsogram : String -> Bool
isIsogram sentence =
    stringToList sentence
        |> Set.fromList
        |> Set.size
        |> (==) (List.length <| stringToList sentence)


stringToList string =
    String.toLower string
        |> String.toList
        |> List.filter Char.isAlpha
