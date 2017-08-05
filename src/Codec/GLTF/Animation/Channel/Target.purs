module Codec.GLTF.Animation.Channel.Target where

import Codec.GLTF.Types (TargetPath)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Target =
  { node :: NullOrUndefined Int
  , path :: TargetPath
  }

