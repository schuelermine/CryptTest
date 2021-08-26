module Vigenere where

import Data.List

alphabet = "abcdefghijklmnop"

encryptLetter k v = case (elemIndex k alphabet, elemIndex v alphabet) of
    (Just i, Just j) -> alphabet !! rem (i + j) (length alphabet)
    _ -> v

encryptString :: String -> String -> String
encryptString secret text =
    zipWith encryptLetter (cycle secret) text