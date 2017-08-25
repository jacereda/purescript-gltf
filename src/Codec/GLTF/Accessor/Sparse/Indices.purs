module Codec.GLTF.Accessor.Sparse.Indices where

import Prelude

import Codec.GLTF.Dec (dec, enc)
import Codec.GLTF.Types (ComponentType)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Indices
  = Indices
  { bufferView :: Int
  , byteOffset :: NullOrUndefined Int
  , componentType :: ComponentType
  }

derive instance genericIndices :: Generic Indices _
instance showIndices :: Show Indices where show = genericShow
instance decodeIndices :: Decode Indices where decode = dec
instance encodeIndices :: Encode Indices where encode = enc
