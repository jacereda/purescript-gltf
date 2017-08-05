module Codec.GLTF.Camera where

import Codec.GLTF.Types (CameraType)
import Codec.GLTF.Camera.Orthographic (Orthographic)
import Codec.GLTF.Camera.Perspective (Perspective)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Camera =
    { name :: NullOrUndefined String
    , type :: CameraType
    , orthographic :: NullOrUndefined Orthographic
    , perspective :: NullOrUndefined Perspective
    }

