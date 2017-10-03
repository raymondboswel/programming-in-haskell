safetail_a xs = if length xs > 0 then tail xs else []

safetail_b xs | length xs > 0 = tail xs
              | length xs == 0 = []

safetail_c (_:xs) = xs
safetail_c [] = []
