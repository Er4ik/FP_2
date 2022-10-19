module Take where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.List (List(..), (:))
import Data.Maybe (Maybe(..))

take :: forall a. Int -> List a -> List a
take n _ | n <= 0 = Nil
take _ Nil = Nil
take n (x : xs) = x : take (n - 1) xs
   

test :: Effect Unit
test = do
    log $ show $ take 2 (1 : 2 : 3 : 4 : 5 : Nil)
