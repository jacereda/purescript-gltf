module Codec.GLTF.Animation.Channel where

import Prelude

import Codec.GLTF.Dec (dec)
import Codec.GLTF.Animation.Channel.Target (Target)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)

newtype Channel =
  Channel
  { sampler :: Int
  , target :: Target
  }

derive instance genericChannel :: Generic Channel _
instance showChannel :: Show Channel where show = genericShow
instance decodeChannel :: Decode Channel where decode = dec
