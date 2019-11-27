module Accumulate exposing (accumulate)


accumulate : (a -> b) -> List a -> List b
accumulate func input =
    reduce (\i result -> func i :: result) [] input |> List.reverse


reduce : (a -> b -> b) -> b -> List a -> b
reduce func initial input =
    case input of
        [] ->
            initial

        x :: xs ->
            reduce func (func x initial) xs
