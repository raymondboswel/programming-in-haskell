
ins :: Ord a => [a] -> a -> [a]

ins a b | head a > b = [b] ++  a
        | head a == b = [b] ++ a
        | head a < b && length a == 1 = a ++ [b]
	| otherwise = [head a] ++ (ins (tail a) b)

merge :: Ord a => ([a], [a]) -> [a]
merge (a, []) = a
merge ([], b) = b
merge (a, [b]) = ins a b
merge (a, b) = merge ((ins a (head b)), (tail b))

get_center a = ((length a) `div` 2) + ((length a) `mod` 2)
          
halve :: [a] -> ([a], [a])
halve a = (take (get_center a) a, drop (get_center a) a)

mergesort a = merge(halve a) 
