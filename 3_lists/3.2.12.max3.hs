max3 :: Ord a => [a] -> [a] -> [a] -> [a]
max3 = zipWith3 (\x y z -> x `max` y `max` z)

max3' :: Ord a => [a] -> [a] -> [a] -> [a]
max3' = zipWith3 (\x y z -> maximum [x,y,z])