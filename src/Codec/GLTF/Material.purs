module Codec.GLTF.Material where

import Codec.GLTF.Types (AlphaMode)
import Codec.GLTF.Material.NormalTextureInfo (NormalTextureInfo)
import Codec.GLTF.Material.OcclusionTextureInfo (OcclusionTextureInfo)
import Codec.GLTF.Material.PBRMetallicRoughness (PBRMetallicRoughness)
import Codec.GLTF.TextureInfo (TextureInfo)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Material =
  { name :: NullOrUndefined String
  , pbrMetallicRoughness :: NullOrUndefined PBRMetallicRoughness
  , normalTexture :: NullOrUndefined NormalTextureInfo
  , occlusionTexture :: NullOrUndefined OcclusionTextureInfo
  , emissiveTexture :: NullOrUndefined TextureInfo
  , emissiveFactor :: NullOrUndefined (Array Number)
  , alphaMode :: NullOrUndefined AlphaMode
  , alphaCutoff :: NullOrUndefined Number
  , doubleSided :: NullOrUndefined Boolean
  }

