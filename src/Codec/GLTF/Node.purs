module Codec.GLTF.Node where

import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Node =
  { camera :: NullOrUndefined Int
  , children :: NullOrUndefined (Array Int)
  , skin :: NullOrUndefined Int
  , matrix :: NullOrUndefined (Array Number)
  , mesh :: NullOrUndefined Int
  , rotation :: NullOrUndefined (Array Number)
  , scale :: NullOrUndefined (Array Number)
  , translation :: NullOrUndefined (Array Number)
  , name :: NullOrUndefined String
  }
