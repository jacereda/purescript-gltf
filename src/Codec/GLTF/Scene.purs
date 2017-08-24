module Codec.GLTF.Scene where

import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Scene =
  { nodes :: Array Int
  , name :: NullOrUndefined String
  }

