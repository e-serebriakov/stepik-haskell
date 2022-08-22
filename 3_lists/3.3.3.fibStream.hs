fibStream :: [Integer]
fibStream = 0 : zipWith (+) fibStream (1 : fibStream)
