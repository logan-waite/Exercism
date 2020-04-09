module Raindrops exposing (raindrops)


raindrops : Int -> String
raindrops number =
    case ( remainderBy 3 number, remainderBy 5 number, remainderBy 7 number ) of
        ( 0, 0, 0 ) ->
            "PlingPlangPlong"

        ( 0, 0, _ ) ->
            "PlingPlang"

        ( 0, _, 0 ) ->
            "PlingPlong"

        ( _, 0, 0 ) ->
            "PlangPlong"

        ( 0, _, _ ) ->
            "Pling"

        ( _, 0, _ ) ->
            "Plang"

        ( _, _, 0 ) ->
            "Plong"

        _ ->
            String.fromInt number
