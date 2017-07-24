module Codec.GLTF.Node where

import Prelude

import Codec.GLTF.Dec (dec)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Node =
  Node
  { name :: NullOrUndefined String
  , children :: NullOrUndefined (Array Int)
  , matrix :: NullOrUndefined (Array Number)
  , camera :: NullOrUndefined Int
  , mesh :: NullOrUndefined Int
  }

derive instance genericNode :: Generic Node _
instance showNode :: Show Node where show = genericShow
instance decodeNode :: Decode Node where decode = dec
