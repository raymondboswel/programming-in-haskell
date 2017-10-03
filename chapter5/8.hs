find k t = [v | (k',v) <- t, k==k']
positions x xs = find x [(k, v) | (k,v) <- zip xs [0..]]
