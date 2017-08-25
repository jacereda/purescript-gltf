module Codec.GLTF.TextureInfo where

import Prelude

import Codec.GLTF.Dec (dec, enc)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype TextureInfo
  = TextureInfo
  { index :: Int
  , texCoord :: NullOrUndefined Int
  }

derive instance genericTextureInfo :: Generic TextureInfo _
instance showTextureInfo :: Show TextureInfo where show = genericShow
instance decodeTextureInfo :: Decode TextureInfo where decode = dec
instance encodeTextureInfo :: Encode TextureInfo where encode = enc

