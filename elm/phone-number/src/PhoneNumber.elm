module PhoneNumber exposing (getNumber)


getNumber : String -> Maybe String
getNumber phoneNumber =
    String.filter Char.isDigit phoneNumber
        |> checkProperLength
        |> checkAreaCode


checkProperLength : String -> Maybe String
checkProperLength number =
    let
        ( firstNum, rest ) =
            case String.uncons number of
                Just result ->
                    result

                Nothing ->
                    ( '0', "garbage" )
    in
    if firstNum == '1' && String.length number == 11 then
        Just rest

    else if String.length number == 10 then
        Just number

    else
        Nothing


checkAreaCode : String -> Maybe String
