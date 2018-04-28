module Recursion where

applyTimes :: (Eq a, Num a) =>
              a -> (b -> b) -> b -> b
applyTimes 0 f b = b
applyTimes n f b = f (applyTimes (n-1) f b)

incTimes :: (Eq a, Num a) => a -> a -> a
incTimes times n = applyTimes times (+1) n

-- applyTimes 5 (+1) 5
-- 1 + (applyTimes 4 (+1) 5)
-- 1 + 1 + (applyTimes 3 (+1) 5)
-- 1 + 1 + 1 + (applyTimes 2 (+1) 5)
-- 1 + 1 + 1 + 1 + (applyTimes 1 (+1) 5)
-- 1 + 1 + 1 + 1 + 1 + (applyTimes 0 (+1) 5)
-- 1 + 1 + 1 + 1 + 1 + 5
-- 10