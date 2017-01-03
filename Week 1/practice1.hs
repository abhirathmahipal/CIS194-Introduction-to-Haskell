import CodeWorld

ourPicture :: Picture
-- ourPicture = blank  commenting it because can't be changed later
main :: IO ()
main = drawingOf ourPicture

-- ourPicture = solidCircle 1 -- Not assignment. It's definition

y :: Integer -- :: means Y is of type integer
y = y + 1

-- ourPicture = colored green (solidCircle 1) & solidCircle 2

-- ourPicture = colored green (translated 0 (-1.5) (solidCircle 1)) & colored red (translated 0 (1.5) (solidCircle 1))

botCircleGreen = colored green (translated 0 (-1.5) (solidCircle 1))
topCircleRed = colored red (translated 0 1.5 (solidCircle 1))
-- frame = rectangle 2.5 5.5
-- trafficLight = botCircleGreen & topCircleRed & frame

ourPicture = trafficLight

-- Defining Functions
botCircle c = colored c (translated 0 (-1.5) (solidCircle 1))
topCircle c = colored c (translated 0 1.5 (solidCircle 1))
frame = rectangle 2.5 5.5

trafficLight = botCircle green & topCircle red & frame

ourPicture1 ::Picture
ourPicture1 = trafficLight