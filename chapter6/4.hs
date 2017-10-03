eucl :: Int -> Int -> Int
eucl a b | a == b = a
eucl a b | a > b  = eucl (a - b) b
eucl a b | a < b  = eucl (b - a) a
