module Codec.GLTF.Animation where

import Codec.GLTF.Animation.Channel (Channel)
import Codec.GLTF.Animation.Sampler (Sampler)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Animation =
  { channels :: Array Channel
  , samplers :: Array Sampler
  , name :: NullOrUndefined String
  }

