factors n = [x | x <- [1..n-1], n `mod` x == 0]

perfects limit = [x | x <- [1..limit], x == sum(factors x)]
