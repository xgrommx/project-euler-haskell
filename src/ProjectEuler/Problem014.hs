module ProjectEuler.Problem014 (solution014) where

import Util

next :: Integer -> Integer
next n = if odd n
    then 3 * n + 1
    else quot n 2

collatzLength :: Integer -> Integer
collatzLength start = collatzLength' start 2
    where collatzLength' n result = if n == 1
		then result
		else collatzLength' (next n) (result + 1)

solution014 :: Integer
solution014 = 1 + findIndexBy (>) (map collatzLength [1..1000000])