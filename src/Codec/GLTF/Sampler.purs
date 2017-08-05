module Codec.GLTF.Sampler where

import Codec.GLTF.Types (MagFilter, MinFilter, WrapMode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Sampler =
  { magFilter :: NullOrUndefined MagFilter
  , minFilter :: NullOrUndefined MinFilter
  , wrapS :: NullOrUndefined WrapMode
  , wrapT :: NullOrUndefined WrapMode
  , name :: NullOrUndefined String
  }

