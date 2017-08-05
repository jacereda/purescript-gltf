module Codec.GLTF.Animation.Sampler where

import Codec.GLTF.Types (Interpolation)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Sampler =
  { input :: Int
  , interpolation :: NullOrUndefined Interpolation
  , output :: NullOrUndefined Int
  }

