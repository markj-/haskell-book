module Chapter7 where

tensDigit :: Integral a => a -> a
tensDigit x = d
    where xLast = x `div` 10
          d     = xLast `mod` 10

tensDigit' :: Integral a => a -> a
tensDigit' x = snd d
    where xLast = x `divMod` 10
          d     = fst xLast `divMod` 10

hunsD :: Integral a => a -> a
hunsD x = d
    where xLast = x `div` 100
          d     = xLast `mod` 10

foldBool :: a -> a -> Bool -> a
foldBool x y z = case z of
    True  -> x
    False -> y

foldBool' :: a -> a -> Bool -> a
foldBool' x y z
    | z == True  = x
    | z == False = y

g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)