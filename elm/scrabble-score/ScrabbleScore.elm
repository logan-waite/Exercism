module ScrabbleScore exposing (scoreWord)


scoreWord : String -> Int
scoreWord word =
    String.toLower word
        |> String.toList
        |> List.map (\c -> getLetterScore c)
        |> List.sum


getLetterScore : Char -> Int
getLetterScore char =
    List.filter (hasLetter char) letterScores
        |> List.head
        |> getValue


getValue : Maybe LetterScore -> Int
getValue letters =
    case letters of
        Just l ->
            Tuple.first l

        Nothing ->
            0


hasLetter : Char -> LetterScore -> Bool
hasLetter char scores =
    let
        ( _, letters ) =
            scores
    in
    List.member char letters


type alias LetterScore =
    ( Int, List Char )


letterScores : List LetterScore
letterScores =
    [ ( 1, [ 'a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't' ] )
    , ( 2, [ 'd', 'g' ] )
    , ( 3, [ 'b', 'c', 'm', 'p' ] )
    , ( 4, [ 'f', 'h', 'v', 'w', 'y' ] )
    , ( 5, [ 'k' ] )
    , ( 8, [ 'j', 'x' ] )
    , ( 10, [ 'q', 'z' ] )
    ]
