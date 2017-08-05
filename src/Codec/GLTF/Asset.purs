module Codec.GLTF.Asset where

import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Asset =
  { copyright :: NullOrUndefined String
  , generator :: NullOrUndefined String
  , version :: String
  , minVersion :: NullOrUndefined String
  }

