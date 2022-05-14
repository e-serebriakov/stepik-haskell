integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = h * ((f a + f b) / 2 + sum) where
	stepsCount = 1000
	h = (b - a) / stepsCount
	sum = helper 0 1
	helper partSum step
		| step == stepsCount = partSum
		| otherwise = helper (partSum + f (a + step * h)) (step + 1)