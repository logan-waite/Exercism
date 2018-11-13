module TwoFer exposing (twoFer)


twoFer : Maybe String -> String
twoFer name =
    "One for " ++ checkName name ++ ", one for me."

checkName name =
    case name of
        Just n -> n
        Nothing -> "you"