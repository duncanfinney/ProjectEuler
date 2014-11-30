nums = [1..999]
possibleAnswers = [x * y | x <- [0..999], y <- [0..999]]
isPalendrome x = (show x) == (reverse $ show x)

main = do
  putStrLn $ show $ maximum $ filter isPalendrome possibleAnswers
