module Codec.GLTF.Mesh where

import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Codec.GLTF.Mesh.Primitive (Primitive)

type Mesh =
  { primitives :: Array Primitive
  , weights :: NullOrUndefined (Array Number)
  , name :: NullOrUndefined String
  }

