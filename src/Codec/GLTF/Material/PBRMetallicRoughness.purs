module Codec.GLTF.Material.PBRMetallicRoughness where

import Prelude

import Codec.GLTF.Dec (dec, enc)
import Codec.GLTF.TextureInfo (TextureInfo)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype PBRMetallicRoughness
  = PBRMetallicRoughness
  { baseColorFactor :: NullOrUndefined (Array Number)
  , baseColorTexture :: NullOrUndefined TextureInfo
  , metallicFactor :: NullOrUndefined Number
  , roughnessFactor :: NullOrUndefined Number
  , metallicRoughnessTexture :: NullOrUndefined TextureInfo
  }

derive instance genericPBRMetallicRoughness :: Generic PBRMetallicRoughness _
instance showPBRMetallicRoughness :: Show PBRMetallicRoughness where show = genericShow
instance decodePBRMetallicRoughness :: Decode PBRMetallicRoughness where decode = dec
instance encodePBRMetallicRoughness :: Encode PBRMetallicRoughness where encode = enc
