module Codec.GLTF.Material.OcclusionTextureInfo where

import Data.Foreign.NullOrUndefined (NullOrUndefined)

type OcclusionTextureInfo
  =
  { index :: Int
  , texCoord :: NullOrUndefined Int
  , strength :: NullOrUndefined Number
  }
