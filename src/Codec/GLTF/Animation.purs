module Codec.GLTF.Animation where

import Prelude

import Codec.GLTF.Dec (dec)
import Codec.GLTF.Animation.Channel (Channel)
import Codec.GLTF.Animation.Sampler (Sampler)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

newtype Animation =
  Animation
  { channels :: Array Channel
  , samplers :: Array Sampler
  , name :: NullOrUndefined String
  }

derive instance genericAnimation :: Generic Animation _
instance showAnimation :: Show Animation where show = genericShow
instance decodeAnimation :: Decode Animation where decode = dec
