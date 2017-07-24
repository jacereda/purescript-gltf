module Codec.GLTF.Skin where

import Prelude

import Codec.GLTF.Dec (dec)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

newtype Skin
  = Skin
  { inverseBindMatrices :: NullOrUndefined Int
  , skeleton :: NullOrUndefined Int
  , joints :: Array Int
  , name :: NullOrUndefined String
  }

derive instance genericSkin :: Generic Skin _
instance showSkin :: Show Skin where show = genericShow
instance decodeSkin :: Decode Skin where decode = dec
