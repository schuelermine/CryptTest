module Letter where

import Data.Char

{- TODO: do this with TemplateHaskell -}

data Letter = A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z deriving (Eq, Ord, Enum, Bounded, Show)

get = fromChar . toUpper

toChar x = case x of
    A -> 'A'
    B -> 'B'
    C -> 'C'
    D -> 'D'
    E -> 'E'
    F -> 'F'
    G -> 'G'
    H -> 'H'
    I -> 'I'
    J -> 'J'
    K -> 'K'
    L -> 'L'
    M -> 'M'
    N -> 'N'
    O -> 'O'
    P -> 'P'
    Q -> 'Q'
    R -> 'R'
    S -> 'S'
    T -> 'T'
    U -> 'U'
    V -> 'V'
    W -> 'W'
    X -> 'X'
    Y -> 'Y'
    Z -> 'Z'

fromChar x = case x of
    'A' -> A
    'B' -> B
    'C' -> C
    'D' -> D
    'E' -> E
    'F' -> F
    'G' -> G
    'H' -> H
    'I' -> I
    'J' -> J
    'K' -> K
    'L' -> L
    'M' -> M
    'N' -> N
    'O' -> O
    'P' -> P
    'Q' -> Q
    'R' -> R
    'S' -> S
    'T' -> T
    'U' -> U
    'V' -> V
    'W' -> W
    'X' -> X
    'Y' -> Y
    'Z' -> Z