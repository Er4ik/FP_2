module TailFilter where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.List (List(..), length, reverse, (:))
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))

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
