module CmpModule where

cmp :: LogLevel -> LogLevel -> Ordering
cmp Error Error = EQ
cmp Error _ = GT
cmp _ Error = LT
cmp Warning Info = GT
cmp Info Warning = LT
cmp x y = EQ
