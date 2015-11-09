{-# LANGUAGE ForeignFunctionInterface #-}
module FizzBuzz where

import Foreign.C.Types
import Data.Word

foreign import ccall unsafe "FizzBuzz.h c_fizzbuzz" c_fizzBuzz :: CUInt -> IO ()

fizzBuzz :: Word32 -> IO ()
fizzBuzz n = c_fizzBuzz (CUInt n)
