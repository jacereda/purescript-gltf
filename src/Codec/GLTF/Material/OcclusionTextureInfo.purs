module Codec.GLTF.Material.OcclusionTextureInfo where

import Prelude

import Codec.GLTF.Dec (dec, enc)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype OcclusionTextureInfo
  = OcclusionTextureInfo
  { index :: Int
  , texCoord :: NullOrUndefined Int
  , strength :: NullOrUndefined Number
  }

derive instance genericOcclusionTextureInfo :: Generic OcclusionTextureInfo _
instance showOcclusionTextureInfo :: Show OcclusionTextureInfo where show = genericShow
instance decodeOcclusionTextureInfo :: Decode OcclusionTextureInfo where decode = dec
instance encodeOcclusionTextureInfo :: Encode OcclusionTextureInfo where encode = enc
