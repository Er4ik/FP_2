module FindIndex where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.List (List(..), length, (:))
import Data.Maybe (Maybe(..))

findIndex :: forall a. (a -> Boolean) -> List a -> Maybe Int
findIndex _ Nil = Nothing
findIndex f (x : xs) = if f x then Just 0 else case findIndex f xs of
  Nothing -> Nothing
  Just n -> Just (n + 1)

test :: Effect Unit
test = do
  log $ show $ findIndex ((==) "find") ("" : "f" : "fin" : "find" : Nil)
