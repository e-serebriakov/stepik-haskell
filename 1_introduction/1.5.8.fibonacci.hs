fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n | n < 0     = (-1) ^ (1 - n) * fibonacci (- n)
            | otherwise = fibonacci (n - 1) + fibonacci (n - 2)