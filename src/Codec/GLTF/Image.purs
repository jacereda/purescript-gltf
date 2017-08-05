module Codec.GLTF.Image where

import Codec.GLTF.Types (MimeType)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Image =
  { uri :: NullOrUndefined String
  , mimeType :: NullOrUndefined MimeType
  , bufferView :: NullOrUndefined Int
  , name :: NullOrUndefined String
  }

