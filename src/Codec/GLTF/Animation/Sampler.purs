module Codec.GLTF.Animation.Sampler where

import Prelude

import Codec.GLTF.Dec (dec)
import Codec.GLTF.Types (Interpolation)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

newtype Sampler =
  Sampler
  { input :: Int
  , interpolation :: NullOrUndefined Interpolation
  , output :: NullOrUndefined Int
  }

derive instance genericSampler :: Generic Sampler _
instance showSampler :: Show Sampler where show = genericShow
instance decodeSampler :: Decode Sampler where decode = dec
