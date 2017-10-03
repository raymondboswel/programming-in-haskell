
and' [] = True
and' (x:xs) = x == and' xs

concat' [] = []
concat' (x:xs) = x ++ concat' xs

dupl' a 0 = []
dupl' a n = [a] ++ dupl' a (n-1)

enth::[a] -> Int -> a
enth (x:xs) 0 = x
enth (x:xs) n = enth xs (n-1)
