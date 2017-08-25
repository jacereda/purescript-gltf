module Codec.GLTF.Accessor.Sparse where

import Prelude

import Codec.GLTF.Accessor.Sparse.Indices (Indices)
import Codec.GLTF.Accessor.Sparse.Values (Values)
import Codec.GLTF.Dec (dec, enc)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Sparse
  = Sparse
  { count :: Int
  , indices :: Array Indices
  , values :: Array Values
  }

derive instance genericSparse :: Generic Sparse _
instance showSparse :: Show Sparse where show = genericShow
instance decodeSparse :: Decode Sparse where decode = dec
instance encodeSparse :: Encode Sparse where encode = enc
