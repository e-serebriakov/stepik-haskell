filterDisj :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filterDisj f g = filter (\x -> f x || g x)
