module Codec.GLTF.Camera.Orthographic where

import Prelude

import Codec.GLTF.Dec (dec)
import Data.Foreign.Class (class Decode)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Orthographic
  = Orthographic
    { xmag :: Number
    , ymag :: Number
    , zfar :: Number
    , znear :: Number
    }

derive instance genericOrthographic :: Generic Orthographic _
instance showOrthographic :: Show Orthographic where show = genericShow
instance decodeOrthographic :: Decode Orthographic where decode = dec
