module Peano where

data N : Set where
  zero : N
  succ : N -> N

_+_ : N -> N -> N
zero + zero = zero
zero + n = n
(succ n1) + n2 = succ (n1 + n2)


data _even : N -> Set where
  ZERO : zero even
  STEP : forall x -> x even -> succ (succ x) even
