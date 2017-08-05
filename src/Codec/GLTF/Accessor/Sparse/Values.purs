module Codec.GLTF.Accessor.Sparse.Values where

import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Values =
  { bufferView :: Int
  , byteOffset :: NullOrUndefined Int
  }

