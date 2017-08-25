module Codec.GLTF.Scene where

import Prelude

import Codec.GLTF.Dec (dec, enc)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Scene =
  Scene
  { nodes :: Array Int
  , name :: NullOrUndefined String
  }

derive instance genericScene :: Generic Scene _
instance showScene :: Show Scene where show = genericShow
instance decodeScene :: Decode Scene where decode = dec
instance encodeScene :: Encode Scene where encode = enc
