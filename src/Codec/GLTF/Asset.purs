module Codec.GLTF.Asset where

import Prelude

import Codec.GLTF.Dec (dec)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

newtype Asset =
  Asset
  { copyright :: NullOrUndefined String
  , generator :: NullOrUndefined String
  , version :: String
  , minVersion :: NullOrUndefined String
  }

derive instance genericAsset :: Generic Asset _
instance showAsset :: Show Asset where show = genericShow
instance decodeAsset :: Decode Asset where decode = dec
