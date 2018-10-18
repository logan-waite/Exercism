module Leap exposing (isLeapYear)


isLeapYear : Int -> Bool
isLeapYear year =
    let
        divisibleByFour =
            modBy 4 year == 0
        
        notDivisibleByHundred =
            not <| modBy 100 year == 0

        divisibleByFourHundred =
            modBy 400 year == 0
    in
        divisibleByFour && ( notDivisibleByHundred || divisibleByFourHundred )
