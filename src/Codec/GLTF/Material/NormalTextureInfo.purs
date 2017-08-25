module Codec.GLTF.Material.NormalTextureInfo where

import Prelude

import Codec.GLTF.Dec (dec, enc)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype NormalTextureInfo
  = NormalTextureInfo
  { index :: Int
  , texCoord :: NullOrUndefined Int
  , scale :: NullOrUndefined Number
  }

derive instance genericNormalTextureInfo :: Generic NormalTextureInfo _
instance showNormalTextureInfo :: Show NormalTextureInfo where show = genericShow
instance decodeNormalTextureInfo :: Decode NormalTextureInfo where decode = dec
instance encodeNormalTextureInfo :: Encode NormalTextureInfo where encode = enc
