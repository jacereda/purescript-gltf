module Codec.GLTF.Node where

import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Node =
  { name :: NullOrUndefined String
  , children :: NullOrUndefined (Array Int)
  , matrix :: NullOrUndefined (Array Number)
  , camera :: NullOrUndefined Int
  , mesh :: NullOrUndefined Int
  }
