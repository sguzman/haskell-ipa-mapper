module Lib
  ( someFunc,
  )
where

import Data.List ()
import Data.Maybe (fromMaybe)
import FrenchToIpa (matchIpa)

someFunc :: IO ()
someFunc = do
  contents <- readFile "./french.txt"
  let tokens = words contents
  let ipaTokens = map (\word -> fromMaybe word (matchIpa word)) tokens
  print ipaTokens