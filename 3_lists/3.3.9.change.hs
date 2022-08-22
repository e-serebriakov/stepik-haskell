coins = [2, 3, 7]

change :: Integer -> [[Integer]]
change sum | sum < 0     = []
           | sum == 0    = [[]]
           | otherwise = [ coin : xs | coin <- coins, xs <- change (sum - coin) ]