module Codec.GLTF.Mesh where

import Prelude

import Codec.GLTF.Dec (dec, enc)
import Codec.GLTF.Mesh.Primitive (Primitive)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Mesh
  = Mesh
  { primitives :: Array Primitive
  , weights :: NullOrUndefined (Array Number)
  , name :: NullOrUndefined String
  }

derive instance genericMesh :: Generic Mesh _
instance showMesh :: Show Mesh where show = genericShow
instance decodeMesh :: Decode Mesh where decode = dec
instance encodeMesh :: Encode Mesh where encode = enc
