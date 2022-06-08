nTimes:: a -> Int -> [a]
nTimes x times
  | times == 0 = []
  | otherwise  = x : nTimes x (times - 1)