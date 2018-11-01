module Triangle exposing (Triangle(..), triangleKind)
import Set


type Triangle
    = Equilateral
    | Isosceles
    | Scalene


triangleKind : number -> number -> number -> Result String Triangle
triangleKind x y z =
    List.append [] [x,y,z] 
    |> List.sort 
    |> List.reverse 
    |> checkValidTriangle
    |> List.map checkSides
    |> Debug.log "current list"
    |> checkTriangle

checkSides n =
    if n <= 0 then Err "Invalid lengths"
    else Ok n

checkValidTriangle list =
    case list of
        first :: rest ->
            if first > List.sum rest then Err "Violates inequality"
            else Ok list

checkTriangle list =
    if List.any (\n -> n == Err "Invalid lengths") list then Err "Invalid lengths"
    else 
        case list of
            [side] -> Ok Equilateral
            [a, b] -> Ok Isosceles
            sides -> Ok Scalene

    -- if list.length == 0 then Equilateral
    -- else if list.length == 1 then Isosceles
    -- else Scalene
