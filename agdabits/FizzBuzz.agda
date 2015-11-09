module FizzBuzz where

{-# IMPORT Data.Word #-}
{-# IMPORT FizzBuzz #-}

open import Data.Nat
open import IO.Primitive
open import Foreign.Haskell

postulate
  ℕ′ : Set
  zero′ : ℕ′
  suc′ : ℕ′ → ℕ′

{-# COMPILED_TYPE ℕ′ Data.Word.Word32 #-}
{-# COMPILED zero′ 0 #-}
{-# COMPILED suc′ succ #-}


fromℕ : ℕ → ℕ′
fromℕ zero = zero′
fromℕ (suc n) = suc′ (fromℕ n)

postulate FizzBuzz : ℕ′ → IO Unit
{-# COMPILED FizzBuzz FizzBuzz.fizzBuzz #-}

main : IO Unit
main = FizzBuzz (fromℕ 10000)
