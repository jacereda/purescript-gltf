module Codec.GLTF.Buffer where

import Prelude

import Codec.GLTF.Dec (dec)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

newtype Buffer
  = Buffer
  { uri :: NullOrUndefined String
  , byteLength :: Int
  , name :: NullOrUndefined String
  }

derive instance genericBuffer :: Generic Buffer _
instance showBuffer :: Show Buffer where show = genericShow
instance decodeBuffer :: Decode Buffer where decode = dec
