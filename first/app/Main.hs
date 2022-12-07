module Main (main) where
import Data.Char

import Lib


-- elem :: (Eq a) => a -> [a] -> Bool
-- elem _ [] = False
-- elem e (x:xs) = (e == x) || (elem e xs)

doubleNumber x y = 2 * x * y + (x + y) * (x + y)
doubleSmallNumber x = if x > 10
                then x
                else x * 2

test = [x^x | x <- [1..10], x > 4] 

lucky :: (Integral a) => a -> String  
lucky 7 = "LUCKY NUMBER SEVEN!"  
lucky x = "Sorry, you're out of luck, pal!"

bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"  
    | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise                 = "You're a whale, congratulations!"  


main :: IO ()
main = do
    print $ doubleNumber 2 3
    print $ doubleSmallNumber 23
    print $ test
    print $ bmiTell 85 1.90 
