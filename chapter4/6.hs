mult_11 a b c = (\x -> (\y -> (\z -> x * y * z))) a b c
my_mult x y z = \x -> (\y -> (\z -> x * y * z))
