module Codec.GLTF.Material.OcclusionTextureInfo where

import Prelude


import Codec.GLTF.Dec (dec)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

newtype OcclusionTextureInfo
  = OcclusionTextureInfo
  { index :: Int
  , texCoord :: NullOrUndefined Int
  , strength :: NullOrUndefined Number
  }

derive instance genericOcclusionTextureInfo :: Generic OcclusionTextureInfo _
instance showOcclusionTextureInfo :: Show OcclusionTextureInfo where show = genericShow
instance decodeOcclusionTextureInfo :: Decode OcclusionTextureInfo where decode = dec
