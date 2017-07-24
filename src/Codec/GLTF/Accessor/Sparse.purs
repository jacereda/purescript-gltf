module Codec.GLTF.Accessor.Sparse where

import Prelude

import Codec.GLTF.Dec (dec)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Codec.GLTF.Accessor.Sparse.Indices (Indices)
import Codec.GLTF.Accessor.Sparse.Values (Values)

newtype Sparse
  = Sparse
  { count :: Int
  , indices :: Array Indices
  , values :: Array Values
  }

derive instance genericSparse :: Generic Sparse _
instance showSparse :: Show Sparse where show = genericShow
instance decodeSparse :: Decode Sparse where decode = dec
