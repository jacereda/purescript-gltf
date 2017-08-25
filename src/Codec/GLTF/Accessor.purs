module Codec.GLTF.Accessor where

import Prelude

import Codec.GLTF.Accessor.Sparse (Sparse)
import Codec.GLTF.Dec (dec, enc)
import Codec.GLTF.Types (ComponentType, AccessorType)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Accessor
  = Accessor
  { bufferView :: NullOrUndefined Int
  , byteOffset :: NullOrUndefined Int
  , componentType :: ComponentType
  , normalized :: NullOrUndefined Boolean
  , count :: Int
  , type :: AccessorType
  , max :: NullOrUndefined (Array Number)
  , min :: NullOrUndefined (Array Number)
  , sparse :: NullOrUndefined Sparse
  , name :: NullOrUndefined String
  }

derive instance genericAccessor :: Generic Accessor _
instance showAccessor :: Show Accessor where show = genericShow
instance decodeAccessor :: Decode Accessor where decode = dec
instance encodeAccessor :: Encode Accessor where encode = enc
