luhnDouble x | x > 4 = x * 2 - 9
             | otherwise = x * 2

luhn a b c d = (luhnDouble a + b + luhnDouble c + d) `mod` 10 == 0
