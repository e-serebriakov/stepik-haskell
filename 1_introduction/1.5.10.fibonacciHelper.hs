fibonacci :: Integer -> Integer
fibonacci n | n > 0     = helper 0 1 n
            | n < 0     = (- 1) ^ (1 - n) * helper 0 1 (- n)
            | otherwise = 0

helper prev1 prev 1 = prev
helper prev1 prev n = helper prev (prev + prev1) (n - 1)