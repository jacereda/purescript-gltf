module Codec.GLTF.Mesh.Primitive where

import Prelude

import Codec.GLTF.Dec (dec, enc)
import Codec.GLTF.Types (PrimitiveMode)
import Codec.GLTF.Mesh.Primitive.Attributes (Attributes)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)


newtype Primitive
  = Primitive
  { attributes :: Attributes
  , indices :: NullOrUndefined Int
  , material :: NullOrUndefined Int
  , mode :: NullOrUndefined PrimitiveMode
  , targets :: NullOrUndefined (Array Attributes)
  }

derive instance genericPrimitive :: Generic Primitive _
instance showPrimitive :: Show Primitive where show = genericShow
instance decodePrimitive :: Decode Primitive where decode = dec
instance encodePrimitive :: Encode Primitive where encode = enc
