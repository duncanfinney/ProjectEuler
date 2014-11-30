answer = (sum [1..100]) ^ 2 - (sum $ map (^2) [1..100])
main = do
  putStrLn $ show answer
