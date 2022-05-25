on3 :: (b -> b -> b -> c) -> (a -> b) -> a -> a -> a -> c
on3 op f x y z = op (f x) (f y) (f z)

a = "127."
b = "224."
c = "120."
d = 12

ip = show a ++ show b ++ show c ++ show d 