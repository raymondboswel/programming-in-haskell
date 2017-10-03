filter_map :: (a -> a) -> (a -> Bool) -> [a] -> [a]
filter_map f p = (map f) . (filter p)