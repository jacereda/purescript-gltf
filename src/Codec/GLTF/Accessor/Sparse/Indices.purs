module Codec.GLTF.Accessor.Sparse.Indices where

import Codec.GLTF.Types (ComponentType)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Indices =
  { bufferView :: Int
  , byteOffset :: NullOrUndefined Int
  , componentType :: ComponentType
  }
