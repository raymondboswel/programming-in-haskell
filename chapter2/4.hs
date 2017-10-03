last xs = head (drop ((length xs) -1) xs)

last' xs = head (reverse xs)
