module Vigenere where

import Data.List

alphabet = ['a'..'z']

encryptLetter k v = case (elemIndex k alphabet, elemIndex v alphabet) of
    (Just i, Just j) -> (cycle alphabet) !! (i + j)
    _ -> v

encryptString :: String -> String -> String
encryptString secret text =
    zipWith encryptLetter (cycle secret) text