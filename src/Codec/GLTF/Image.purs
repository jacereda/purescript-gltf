module Codec.GLTF.Image where

import Prelude

import Codec.GLTF.Dec (dec)
import Codec.GLTF.Types (MimeType)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

newtype Image
  = Image
  { uri :: NullOrUndefined String
  , mimeType :: NullOrUndefined MimeType
  , bufferView :: NullOrUndefined Int
  , name :: NullOrUndefined String
  }

derive instance genericImage :: Generic Image _
instance showImage :: Show Image where show = genericShow
instance decodeImage :: Decode Image where decode = dec
