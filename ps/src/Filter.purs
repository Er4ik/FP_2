module Filter where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.List (List(..), length, (:))
import Data.Maybe (Maybe(..))
import Data.Tuple (Tuple(..))

filter :: forall a. (a -> Boolean) -> List a -> List a
filter _ Nil = Nil
filter p (x : xs) = case p x of
  true -> x : filter p xs
  false -> filter p xs

test :: Effect Unit
test = do
    log $ show $ filter (\x -> x == "ex") ("extra" : "ex" : "extra" : "ex" : Nil)
