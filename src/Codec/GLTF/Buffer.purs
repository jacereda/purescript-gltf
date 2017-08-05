module Codec.GLTF.Buffer where

import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Buffer =
  { uri :: NullOrUndefined String
  , byteLength :: Int
  , name :: NullOrUndefined String
  }

