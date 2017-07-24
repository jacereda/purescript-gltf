module Codec.GLTF.Scene where

import Prelude

import Codec.GLTF.Dec (dec) 
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)

newtype Scene =
  Scene
  { nodes :: Array Int
  }

derive instance genericScene :: Generic Scene _
instance showScene :: Show Scene where show = genericShow
instance decodeScene :: Decode Scene where decode = dec
