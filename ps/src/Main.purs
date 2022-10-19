module Main where

import Prelude
import Effect (Effect)

import FindIndex as FindIndex
import FindLastIndex as FindLastIndex
import Zip as Zip
import Unzip as Unzip
import Filter as Filter
import TailFilter as TailFilter
import Take as Take
import TailTake as TailTake

main :: Effect Unit
main = do 
  FindIndex.test
  FindLastIndex.test
  Zip.test
  Unzip.test
  Filter.test
  TailFilter.test
  Take.test
  TailTake.test
