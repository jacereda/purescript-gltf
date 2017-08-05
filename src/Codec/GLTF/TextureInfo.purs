module Codec.GLTF.TextureInfo where

import Data.Foreign.NullOrUndefined (NullOrUndefined)

type TextureInfo =
  { index :: Int
  , texCoord :: NullOrUndefined Int
  }

