module Codec.GLTF.Material.PBRMetallicRoughness where

import Codec.GLTF.TextureInfo (TextureInfo)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

type PBRMetallicRoughness =
  { baseColorFactor :: NullOrUndefined (Array Number)
  , baseColorTexture :: NullOrUndefined TextureInfo
  , metallicFactor :: NullOrUndefined Number
  , roughnessFactor :: NullOrUndefined Number
  , metallicRoughnessTexture :: NullOrUndefined TextureInfo
  }

