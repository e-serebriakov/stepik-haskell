sum'n'count :: Integer -> (Integer, Integer)
sum'n'count 0 = (0, 1)
sum'n'count x = helper (0, 1) $ abs x where
    helper (sum, count) x
        | x < 10 = (sum + x, count)
        | otherwise = helper (sum + mod, count + 1) div where 
            (div, mod) = divMod x 10
