module Codec.GLTF.BufferView where

import Codec.GLTF.Types (TargetType)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

type BufferView =
  { buffer :: Int
  , byteOffset :: NullOrUndefined Int
  , byteLength :: Int
  , byteStride :: NullOrUndefined Int
  , target :: NullOrUndefined TargetType
  , name :: NullOrUndefined String
  }

