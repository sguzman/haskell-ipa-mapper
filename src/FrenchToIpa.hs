module FrenchToIpa
    (
        matchIpa
    )
where

import Text.Regex.TDFA ((=~))
import Data.Maybe (listToMaybe)

-- Your dictionary of French words and their IPA pronunciations
fr :: [String]
frenchToIpa :: [(String, String)]
m :: String -> String -> Bool
matchIpa :: String -> [Bool]

fr = [
  "^et$"
  ]

frenchToIpa = [
  ("^et$", "e")
  ]

m p w = w =~ p
matchIpa word = map (m word) fr