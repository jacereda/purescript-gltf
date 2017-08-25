module Codec.GLTF.Animation.Channel where

import Prelude

import Codec.GLTF.Animation.Channel.Target (Target)
import Codec.GLTF.Dec (dec, enc)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Channel =
  Channel
  { sampler :: Int
  , target :: Target
  }

derive instance genericChannel :: Generic Channel _
instance showChannel :: Show Channel where show = genericShow
instance decodeChannel :: Decode Channel where decode = dec
instance encoenchannel :: Encode Channel where encode = enc
