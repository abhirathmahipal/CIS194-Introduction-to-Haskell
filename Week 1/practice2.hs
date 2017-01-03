import CodeWorld
main :: IO ()
main = drawingOf ourPicture

-- trafficLight :: Bool -> Picture
-- it's a function that takes in a Bool and returns a type of picture

botCircle c = colored c (translated 0 (-1.5) (solidCircle 1))
topCircle c = colored c (translated 0 1.5 (solidCircle 1))
frame = rectangle 2.5 5.5
-- trafficLight = botCircle green & topCircle red & frame

ourPicture :: Picture
-- ourPicture = trafficLight

-- Redefining stuff to take care of animations

-- Writing down the type  of trafficLight so that it's convenient for us to debug
trafficLight :: Bool -> Picture

trafficLight True = botCircle green & topCircle black &  frame
trafficLight False = botCircle black & topCircle red & frame
ourPicture = trafficLight True

i :: Int
i = -42 -- guarantees upto 2^29. on a 64 bit machine upto 2 ^ 63

n :: Integer
-- really big and only limited by memory
reallyBig = 2^(2^(2^(2^2)))

-- +, - and * work for all numeric types
-- / only works for double
-- for integer division, there is div and mod

-- Recursion
lights :: Integer -> Picture
lights 0 = blank
lights n = trafficLight True & translated 3 0 (lights (n-1))

-- ourPicture = lights 3
{-
    Multi line comment
  -}
  
  

