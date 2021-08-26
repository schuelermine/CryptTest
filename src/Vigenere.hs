{-# LANGUAGE ViewPatterns #-}

module Vigenere where

import Letter
import Data.Char

square :: Letter -> Letter -> Letter
square (fromEnum -> i) (fromEnum -> j) = toEnum $ rem (i + j) 26

encrypt :: String -> String -> String
encrypt (map get -> secret) (map get -> text) =
    map toChar $ zipWith square (cycle secret) text