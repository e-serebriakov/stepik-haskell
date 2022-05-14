seqASlow :: Integer -> Integer
seqASlow n
  | n > 2 = seqA (n - 1) + seqA (n - 2) - 2 * seqA (n - 3)
  | otherwise = n + 1

seqA :: Integer -> Integer
seqA n = let
    helper a b c 0 = 1
    helper a b c 1 = c
    helper a b c n = helper b c (c + b - 2 * a) (n - 1)
  in helper 0 1 2 n
