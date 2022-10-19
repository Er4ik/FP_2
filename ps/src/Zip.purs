module Zip where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.List (List(..), length, (:))
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))

zip xs ys = case xs of
  Nil -> Nil
  Cons x xs -> case ys of
    Nil -> Nil
    Cons y ys -> Cons (Tuple x y) (zip xs ys)

test :: Effect Unit
test = do
  log $ show $ zip ("Hello" : "World" : Nil) ("," : "!" : Nil)
