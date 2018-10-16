module Bob exposing (hey)


hey : String -> String
hey remark =    
    if isEmpty remark then "Fine. Be that way!"
    else if isQuestion remark && isYelling remark then "Calm down, I know what I'm doing!"
    else if isQuestion remark then "Sure."
    else if isYelling remark then "Whoa, chill out!"
    else "Whatever."


isQuestion : String -> Bool
isQuestion remark =
    String.endsWith "?" remark

isYelling : String -> Bool
isYelling remark = 
    if String.filter Char.isAlpha remark |> String.isEmpty then False
    else if String.filter Char.isAlpha remark |> String.all Char.isUpper then True
    else False

isEmpty : String -> Bool
isEmpty remark =
    String.trim remark
    |> String.isEmpty

isSame a b =
    a == b