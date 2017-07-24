module Codec.GLTF.Material.PBRMetallicRoughness where

import Prelude

import Codec.GLTF.Dec (dec)
import Codec.GLTF.TextureInfo (TextureInfo)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

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
