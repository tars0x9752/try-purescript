module Euler where

import Prelude

import Data.List (range, filter, List)
import Data.Foldable (sum)

ns ∷ List Int
ns = range 0 10

filterPredicate ∷ Int → Boolean
filterPredicate n = mod n 3 == 0 || mod n 5 == 0

multiples ∷ List Int
multiples = filter filterPredicate ns

answer ∷ Int
answer = sum multiples