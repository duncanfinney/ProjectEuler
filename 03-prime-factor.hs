primes :: [Integer]
primes = 2 : filter isPrime [3,5..]

isPrime :: Integer -> Bool
isPrime n = all (\x -> n `rem` x /= 0) candidates
  where candidates = takeWhile (\x -> x*x <= n) primes

isPossibleAnswer n = (600851475143 `rem` n) == 0
                      && (isPrime n)

answer = maximum $ filter isPossibleAnswer [3,5..775147]
