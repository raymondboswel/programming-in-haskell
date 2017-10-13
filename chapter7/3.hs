map :: (a -> a) -> [a] -> [a]
map f = foldr (\x xs -> f x : xs) []