module Unzip where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.List (List(..), length, (:))
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))

unzip :: forall a b. List (Tuple a b) -> Tuple (List a) (List b)
unzip Nil = Tuple Nil Nil
unzip (Tuple a b : xs) = 
  let Tuple as bs = unzip xs
  in Tuple (a : as) (b : bs)

test :: Effect Unit
test = do
    log $ show $ unzip (Tuple "Hello" "World" : Tuple "," "!" : Nil)
