halve :: [a] -> ([a], [a])
halve as = (take ((length as) `div` 2) as, drop ((length as) `div` 2) as) 
