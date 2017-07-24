module Codec.GLTF.TextureInfo where

import Prelude

import Codec.GLTF.Dec (dec)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

newtype TextureInfo
  = TextureInfo
  { index :: Int
  , texCoord :: NullOrUndefined Int
  }

derive instance genericTextureInfo :: Generic TextureInfo _
instance showTextureInfo :: Show TextureInfo where show = genericShow
instance decodeTextureInfo :: Decode TextureInfo where decode = dec
