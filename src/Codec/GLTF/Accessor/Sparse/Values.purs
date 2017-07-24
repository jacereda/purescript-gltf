module Codec.GLTF.Accessor.Sparse.Values where

import Prelude

import Codec.GLTF.Dec (dec)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

newtype Values
  = Values
  { bufferView :: Int
  , byteOffset :: NullOrUndefined Int
  }

derive instance genericValues :: Generic Values _
instance showValues :: Show Values where show = genericShow
instance decodeValues :: Decode Values where decode = dec
