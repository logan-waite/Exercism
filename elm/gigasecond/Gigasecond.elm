module Gigasecond exposing (add)

import Time
import Iso8601 exposing (fromTime)


add : Time.Posix -> Time.Posix
add timestamp =
    Time.posixToMillis timestamp |>
    addGigasecond |>
    Time.millisToPosix

addGigasecond : Int -> Int
addGigasecond n =
    n + 1000000000 * 1000 -- Because I'm getting milliseconds.
