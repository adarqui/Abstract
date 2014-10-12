{-# LANGUAGE DeriveGeneric #-}
module Abstract.Wrapper (
 HostDataWrapper (..)
) where

import GHC.Generics

data HostDataWrapper a = HostDataWrapper {
 h :: String,
 d :: a
} deriving (Show, Read, Generic)
