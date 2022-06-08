groupElems :: Eq a => [a] -> [[a]]
groupElems [] = []
groupElems (x:xs) = helper [x] xs
  where
    helper acc [] = [acc]
    helper acc (a:as)
      | head acc == a = helper (a : acc) as
      | otherwise = acc : helper [a] as
