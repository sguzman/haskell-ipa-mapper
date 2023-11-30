module Lib
  ( someFunc,
  )
where

import Data.List (sortBy)
import Data.Function (on)
import Text.Regex.TDFA ((=~))

-- Your dictionary of French words and their IPA pronunciations
fr :: [String]
m :: String -> String -> Bool
someFunc :: IO ()
matched :: String -> (String, [String])

-- French phonemes
fr = [
  "^et$",
  "^le$",
  "^la$",
  "^de$",
  "^des$",
  "^un$",
  "^une$",
  "^à$",
  "^en$",
  "^que$",
  "^qui$"
  ]

m w p = w =~ p

-- matched returns the string and the list of matches
matched w = (w, filter (m w) fr)

someFunc = do
  contents <- readFile "./french.txt"
  let ipaTokens = map matched $ words contents
  let sortedIpaTokens = sortBy (flip compare `on` (length . snd)) ipaTokens
  print sortedIpaTokens