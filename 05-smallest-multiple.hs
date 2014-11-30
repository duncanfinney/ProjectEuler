--TODO: Finish
import Data.List
isPossibleAnswer n = foldl (\acc x -> if (acc == False) then acc else (n `mod` x) == 0) True [1..20]
answer = findIndex isPossibleAnswer [1..]
main = do
  putStrLn $ show answer
