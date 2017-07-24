module Codec.GLTF.Animation.Channel.Target where

import Prelude

import Codec.GLTF.Dec (dec)
import Codec.GLTF.Types (TargetPath)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

newtype Target =
  Target
  { node :: NullOrUndefined Int
  , path :: TargetPath
  }

derive instance genericTarget :: Generic Target _
instance showTarget :: Show Target where show = genericShow
instance decodeTarget :: Decode Target where decode = dec
