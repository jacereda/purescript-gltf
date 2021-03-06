module Codec.GLTF.Mesh where

import Prelude

import Codec.GLTF.Dec (dec)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Codec.GLTF.Mesh.Primitive (Primitive)

newtype Mesh
  = Mesh
  { primitives :: Array Primitive
  , weights :: NullOrUndefined (Array Number)
  , name :: NullOrUndefined String
  }

derive instance genericMesh :: Generic Mesh _
instance showMesh :: Show Mesh where show = genericShow
instance decodeMesh :: Decode Mesh where decode = dec
