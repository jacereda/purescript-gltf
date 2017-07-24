module Codec.GLTF.Material.NormalTextureInfo where

import Prelude

import Codec.GLTF.Dec (dec)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

newtype NormalTextureInfo
  = NormalTextureInfo
  { index :: Int
  , texCoord :: NullOrUndefined Int
  , scale :: NullOrUndefined Number
  }

derive instance genericNormalTextureInfo :: Generic NormalTextureInfo _
instance showNormalTextureInfo :: Show NormalTextureInfo where show = genericShow
instance decodeNormalTextureInfo :: Decode NormalTextureInfo where decode = dec
