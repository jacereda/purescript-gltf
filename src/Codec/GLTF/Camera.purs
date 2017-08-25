module Codec.GLTF.Camera where

import Prelude

import Codec.GLTF.Camera.Orthographic (Orthographic)
import Codec.GLTF.Camera.Perspective (Perspective)
import Codec.GLTF.Dec (dec, enc)
import Codec.GLTF.Types (CameraType)
import Data.Foreign.Class (class Decode, class Encode)
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
instance encoencamera :: Encode Camera where encode = enc
