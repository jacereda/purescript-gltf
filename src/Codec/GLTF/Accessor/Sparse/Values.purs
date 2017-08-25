module Codec.GLTF.Accessor.Sparse.Values where

import Prelude

import Codec.GLTF.Dec (dec, enc)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Values
  = Values
  { bufferView :: Int
  , byteOffset :: NullOrUndefined Int
  }

derive instance genericValues :: Generic Values _
instance showValues :: Show Values where show = genericShow
instance decodeValues :: Decode Values where decode = dec
instance encodeValues :: Encode Values where encode = enc
