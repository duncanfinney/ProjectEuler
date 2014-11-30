primes :: [Integer]
primes = 2 : filter isPrime [3,5..]

isPrime :: Integer -> Bool
isPrime n = all (\x -> n `rem` x /= 0) candidates
  where candidates = takeWhile (\x -> x*x <= n) primes

answer = sum $ takeWhile (<2000000) primes

main = do
  putStrLn $ show answer
