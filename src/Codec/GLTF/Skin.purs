module Codec.GLTF.Skin where

import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Skin =
  { inverseBindMatrices :: NullOrUndefined Int
  , skeleton :: NullOrUndefined Int
  , joints :: Array Int
  , name :: NullOrUndefined String
  }
