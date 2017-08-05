module Codec.GLTF.Texture where

import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Texture =
  { sampler :: NullOrUndefined Int
  , source :: NullOrUndefined Int
  , name :: NullOrUndefined String
  }
