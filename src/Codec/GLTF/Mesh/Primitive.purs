module Codec.GLTF.Mesh.Primitive where

import Codec.GLTF.Types (PrimitiveMode)
import Codec.GLTF.Mesh.Primitive.Attributes (Attributes)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Primitive =
  { attributes :: Attributes
  , indices :: NullOrUndefined Int
  , material :: NullOrUndefined Int
  , mode :: NullOrUndefined PrimitiveMode
  , targets :: NullOrUndefined (Array Attributes)
  }
