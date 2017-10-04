-- all :: (a -> Bool) -> [a] -> Bool
-- all predicate xs = foldl (\acc x -> (predicate x) && acc) True xs

all :: (a -> Bool) -> [a] -> Bool
all p = and . map p

-- any :: (a -> Bool) -> [a] -> Bool
-- any predicate xs = foldl (\acc x -> (predicate x) || acc) False xs

any :: (a -> Bool) -> [a] -> Bool
any p = or . map p

-- takeWhile :: (a -> Bool) -> [a] -> [a]
-- takeWhile predicate xs = foldl (\acc) [] xs

takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile _ [] = []
takeWhile p (x:xs) | p x = x : Main.takeWhile p xs
                   | otherwise = []

dropWhile :: (a -> Bool) -> [a] -> [a]
dropWhile _ [] = []
dropWhile p (x:xs) | p x = Main.dropWhile p xs
                   | otherwise = x : xs