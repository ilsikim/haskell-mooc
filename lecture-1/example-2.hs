module Gold where

phi :: Double
phi = (sqrt 5 + 1) / 2

polynomial :: Double -> Double
polynomial x = x ^ 2 - x - 1

f x = polynomial (polynomial x)

main = do
  print $ polynomial phi
  print $ f phi

circleArea :: Double -> Double
circleArea r = pi * rsquare
  where
    pi = 3.1415926
    rsquare = r * r

circleArea2 :: Double -> Double
circleArea2 r =
  let pi = 3.1415926
      square x = x * x
   in pi * square r

greet :: String -> String -> String
greet "Finland" name = "Hei, " ++ name
greet "Italy" name = "Ciao, " ++ name
greet "England" name = "How do you do, " ++ name
greet _ name = "Hello, " ++ name

describe :: Integer -> String
describe 0 = "Zero"
describe 1 = "one"
describe 2 = "an even prime"
describe n = "the number " ++ show n

login :: String -> String -> String
login "unicorn73" "f4bulous!" = "unicorn73 logged in"
login "unicorn73" _ = "wrong password"
login _ _ = "unknown user"

factorial :: Int -> Int
factorial 1 = 1
factorial n = n * factorial (n - 1)

fibonacci 1 = 1
fibonacci 2 = 1
fibonacci n = fibonacci (n - 2) + fibonacci (n - 1)