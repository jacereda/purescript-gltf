module Codec.GLTF.Camera.Perspective where

import Prelude

import Codec.GLTF.Dec (dec)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Perspective
  = Perspective
    { aspectRatio :: NullOrUndefined Number
    , yfov :: Number
    , zfar :: NullOrUndefined Number
    , znear :: Number
    }

derive instance genericPerspective :: Generic Perspective _
instance showPerspective :: Show Perspective where show = genericShow
instance decodePerspective :: Decode Perspective where decode = dec
