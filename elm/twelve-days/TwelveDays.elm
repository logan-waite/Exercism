module TwelveDays exposing (recite)
import List exposing (range, map)


recite : Int -> Int -> List String
recite start stop =
    range start stop |> map makeLine

makeLine : Int -> String
makeLine n =
    "On the " ++ numToCardinal n ++ " day of Christmas my true love gave to me" ++ listGifts n ""

listGifts : Int -> String -> String
listGifts n list =
    case n of
        0 -> list ++ "."
        1 -> 
            if list == "" then ", " ++ numToGift n |> listGifts (n - 1)
            else list ++ ", and " ++ numToGift n |> listGifts (n - 1)
        _ -> list ++ ", " ++ numToGift n |> listGifts (n - 1) 

numToGift : Int -> String
numToGift n =
    case n of
        1 -> "a Partridge in a Pear Tree"  
        2 -> "two Turtle Doves"
        3 -> "three French Hens"
        4 -> "four Calling Birds"
        5 -> "five Gold Rings"
        6 -> "six Geese-a-Laying"
        7 -> "seven Swans-a-Swimming"
        8 -> "eight Maids-a-Milking"
        9 -> "nine Ladies Dancing"
        10 -> "ten Lords-a-Leaping"
        11 -> "eleven Pipers Piping"
        12 -> "twelve Drummers Drumming"
        _ -> "insanity"

numToCardinal : Int -> String
numToCardinal n =
    case n of
        1 -> "first"  
        2 -> "second"
        3 -> "third"
        4 -> "fourth"
        5 -> "fifth"
        6 -> "sixth"
        7 -> "seventh"
        8 -> "eighth"
        9 -> "ninth"
        10 -> "tenth"
        11 -> "eleventh"
        12 -> "twelfth"
        _ -> "next"