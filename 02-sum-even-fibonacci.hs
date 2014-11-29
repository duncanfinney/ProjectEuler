fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

values = [ x | x <- takeWhile (<= 4000000) fibs, even x]

main = do
  putStrLn (show $ sum values)
