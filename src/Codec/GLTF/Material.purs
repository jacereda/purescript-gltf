module Codec.GLTF.Material where

import Prelude

import Codec.GLTF.Dec (dec, enc)
import Codec.GLTF.Material.NormalTextureInfo (NormalTextureInfo)
import Codec.GLTF.Material.OcclusionTextureInfo (OcclusionTextureInfo)
import Codec.GLTF.Material.PBRMetallicRoughness (PBRMetallicRoughness)
import Codec.GLTF.TextureInfo (TextureInfo)
import Codec.GLTF.Types (AlphaMode)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Material
  = Material
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

derive instance genericMaterial :: Generic Material _
instance showMaterial :: Show Material where show = genericShow
instance decodeMaterial :: Decode Material where decode = dec
instance encodeMaterial :: Encode Material where encode = enc
