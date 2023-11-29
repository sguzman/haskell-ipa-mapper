module FrenchToIpa
    (
        matchIpa
    )
where

-- Your dictionary of French words and their IPA pronunciations
frenchToIpa :: [(String, String)]
frenchToIpa = [
  ("bonjour", "bɔ̃ʒuʁ"),
  ("merci", "mɛʁsi")
  ]

matchIpa :: String -> Maybe String
matchIpa word = fmap snd . head $ filter (\(pattern, _) -> word =~ pattern) frenchToIpa