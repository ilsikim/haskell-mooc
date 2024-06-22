ex1 = map length ["abc", "abcdef"]

ex2 = filter (\x -> length x > 1) ["abc", "d", "ef"]

ex3 = map (* 3) [1, 2, 3]

data Shape = Point | Rectangle Double Double | Circle Double

area Point = 0
area (Rectangle width height) = width * height
area (Circle radius) = 2 * pi * radius

ex4 =
  [ whole
    | first <- ["Eva", "Mike"],
      last <- ["Smith", "Wood", "Odd"],
      let whole = first ++ last,
      even (length whole)
  ]

primes = [n | n <- [2 ..], all (\k -> n `mod` k /= 0) [2 .. n `div` 2]]

main :: IO ()
main = do
  print $ show ex1
  print $ show ex2
  print $ show ex3
  print $ area (Circle 10)
  print ex4
  print $ take 10 primes