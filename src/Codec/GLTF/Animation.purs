module Codec.GLTF.Animation where

import Prelude

import Codec.GLTF.Animation.Channel (Channel)
import Codec.GLTF.Animation.Sampler (Sampler)
import Codec.GLTF.Dec (dec, enc)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Animation =
  Animation
  { channels :: Array Channel
  , samplers :: Array Sampler
  , name :: NullOrUndefined String
  }

derive instance genericAnimation :: Generic Animation _
instance showAnimation :: Show Animation where show = genericShow
instance decodeAnimation :: Decode Animation where decode = dec
instance encodeAnimation :: Encode Animation where encode = enc
