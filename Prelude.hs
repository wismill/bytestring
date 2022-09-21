{-# LANGUAGE PackageImports #-}
-- | This hideous module lets us avoid dealing with the fact that
-- @foldl'@ was not previously exported from the standard prelude.
module Prelude
  ( module Prel
  , Foldable (..)
  )
  where

import "base" Prelude as Prel hiding (Foldable(..))
import Data.Foldable ( Foldable(elem, foldMap, foldr, foldl, foldl', foldr1
                     , foldl1, length, maximum, minimum, null, product, sum ))
