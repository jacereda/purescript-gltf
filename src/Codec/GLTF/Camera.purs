module Codec.GLTF.Camera where

import Prelude

import Codec.GLTF.Dec (dec)
import Codec.GLTF.Types (CameraType)
import Codec.GLTF.Camera.Orthographic (Orthographic)
import Codec.GLTF.Camera.Perspective (Perspective)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype Camera
  = Camera
    { name :: NullOrUndefined String
    , type :: CameraType
    , orthographic :: NullOrUndefined Orthographic
    , perspective :: NullOrUndefined Perspective
    }

derive instance genericCamera :: Generic Camera _
instance showCamera :: Show Camera where show = genericShow
instance decodeCamera :: Decode Camera where decode = dec
