module Codec.GLTF.Accessor.Sparse where

import Codec.GLTF.Accessor.Sparse.Indices (Indices)
import Codec.GLTF.Accessor.Sparse.Values (Values)

type Sparse =
  { count :: Int
  , indices :: Array Indices
  , values :: Array Values
  }
