third_one xs = head (tail (tail xs))
third_two xs = xs !! 2
third_three [_,_,xs,_] = xs
