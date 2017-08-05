module Codec.GLTF.Animation.Channel where

import Codec.GLTF.Animation.Channel.Target (Target)

type Channel =
  { sampler :: Int
  , target :: Target
  }

