module Codec.GLTF.Camera.Orthographic where

type Orthographic =
    { xmag :: Number
    , ymag :: Number
    , zfar :: Number
    , znear :: Number
    }

