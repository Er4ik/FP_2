module FindLastIndex where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.List (List(..), length, (:))
import Data.Maybe (Maybe(..))

findLastIndex :: forall a. (a -> Boolean) -> List a -> Maybe Int
findLastIndex _ Nil = Nothing
findLastIndex p (x : xs) = case findLastIndex p xs of
  Nothing -> if p x then Just 0 else Nothing
  Just i -> Just (i + 1)

test :: Effect Unit
test = do
  log $ show $ findLastIndex ((==) 1) (1 : 2 : 2 : 1 : Nil)
