module Codec.GLTF.Skin where

import Prelude

import Codec.GLTF.Dec (dec, enc)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

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
instance encodeSkin :: Encode Skin where encode = enc
