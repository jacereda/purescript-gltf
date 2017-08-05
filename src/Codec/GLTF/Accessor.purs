module Codec.GLTF.Accessor where

import Codec.GLTF.Types (ComponentType, AccessorType)
import Codec.GLTF.Accessor.Sparse (Sparse)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Accessor =
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

