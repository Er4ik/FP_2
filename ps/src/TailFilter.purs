module TailFilter where

import Prelude

import Effect (Effect)
import Effect.Console (log)

import Data.List (List(..), length, reverse, (:))
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))

-- tail recursion filter
-- Оптимізуйте реалізацію фільтра використовуючи підхід хвостової оптимізації
-- tailFilter :: forall a. (a -> Boolean) -> List a -> List a -> List a
-- tailFilter _ Nil acc = acc
-- tailFilter f (x : xs) acc = if f x then tailFilter f xs (x : acc) else tailFilter f xs acc

tailFilter :: forall a. (a -> Boolean) -> List a -> List a -> List a
tailFilter p (x : xs) ys = 
  if p x
  then tailFilter p xs (x : ys)
  else tailFilter p xs ys
tailFilter _ Nil ys = reverse ys

test :: Effect Unit
test = do
    let xs = 1 : 1 : 1 : Nil
    log $ show $ tailFilter (_ > 1) xs Nil