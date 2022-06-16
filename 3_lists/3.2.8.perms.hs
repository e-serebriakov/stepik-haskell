insert :: a -> [a] -> [[a]]
insert x [] = [[x]]
insert x (y:ys) = [x:y:ys] ++ (map (y:) (insert x ys))

perms :: [a] -> [[a]]
perms [] = [[]]
perms (x:xs) = concatMap (insert x) (perms xs)
    