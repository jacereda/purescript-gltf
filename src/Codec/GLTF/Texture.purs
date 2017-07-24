module Codec.GLTF.Texture where

import Prelude

import Codec.GLTF.Dec (dec)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

newtype Texture
  = Texture
  { sampler :: NullOrUndefined Int
  , source :: NullOrUndefined Int
  , name :: NullOrUndefined String
  }

derive instance genericTexture :: Generic Texture _
instance showTexture :: Show Texture where show = genericShow
instance decodeTexture :: Decode Texture where decode = dec
