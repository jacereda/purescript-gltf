module Codec.GLTF.Camera.Perspective where

import Data.Foreign.NullOrUndefined (NullOrUndefined)

type Perspective =
    { aspectRatio :: NullOrUndefined Number
    , yfov :: Number
    , zfar :: NullOrUndefined Number
    , znear :: Number
    }

