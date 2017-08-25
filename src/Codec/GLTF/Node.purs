module Codec.GLTF.Node where

import Prelude

import Codec.GLTF.Dec (dec, enc)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Node =
  Node
  { camera :: NullOrUndefined Int
  , children :: NullOrUndefined (Array Int)
  , skin :: NullOrUndefined Int
  , matrix :: NullOrUndefined (Array Number)
  , mesh :: NullOrUndefined Int
  , rotation :: NullOrUndefined (Array Number)
  , scale :: NullOrUndefined (Array Number)
  , translation :: NullOrUndefined (Array Number)
  , name :: NullOrUndefined String
  }

derive instance genericNode :: Generic Node _
instance showNode :: Show Node where show = genericShow
instance decodeNode :: Decode Node where decode = dec
instance encodeNode :: Encode Node where encode = enc
