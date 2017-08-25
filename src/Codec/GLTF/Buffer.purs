module Codec.GLTF.Buffer where

import Prelude

import Codec.GLTF.Dec (dec, enc)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Buffer
  = Buffer
  { uri :: NullOrUndefined String
  , byteLength :: Int
  , name :: NullOrUndefined String
  }

derive instance genericBuffer :: Generic Buffer _
instance showBuffer :: Show Buffer where show = genericShow
instance decodeBuffer :: Decode Buffer where decode = dec
instance encodeBuffer :: Encode Buffer where encode = enc
