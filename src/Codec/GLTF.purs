module Codec.GLTF where

import Prelude

import Codec.GLTF.Accessor (Accessor)
import Codec.GLTF.Animation (Animation)
import Codec.GLTF.Asset (Asset)
import Codec.GLTF.Buffer (Buffer)
import Codec.GLTF.BufferView (BufferView)
import Codec.GLTF.Camera (Camera)
import Codec.GLTF.Dec (dec, enc)
import Codec.GLTF.Image (Image)
import Codec.GLTF.Material (Material)
import Codec.GLTF.Mesh (Mesh)
import Codec.GLTF.Node (Node)
import Codec.GLTF.Sampler (Sampler)
import Codec.GLTF.Scene (Scene)
import Codec.GLTF.Skin (Skin)
import Codec.GLTF.Texture (Texture)
import Data.Foreign (F)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (decodeJSON, encodeJSON)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

newtype GLTF =
  GLTF
  { accessors :: NullOrUndefined (Array Accessor)
  , animations :: NullOrUndefined (Array Animation)
  , asset :: NullOrUndefined Asset
  , buffers :: NullOrUndefined (Array Buffer)
  , bufferViews :: NullOrUndefined (Array BufferView)
  , cameras :: NullOrUndefined (Array Camera)
  , images :: NullOrUndefined (Array Image)
  , materials :: NullOrUndefined (Array Material)
  , meshes :: NullOrUndefined (Array Mesh)
  , nodes :: NullOrUndefined (Array Node)
  , samplers :: NullOrUndefined (Array Sampler)
  , scene :: NullOrUndefined Int
  , scenes :: NullOrUndefined (Array Scene)
  , skins :: NullOrUndefined (Array Skin)
  , textures :: NullOrUndefined (Array Texture)
  }

derive instance genericGLTF :: Generic GLTF _
instance showGLTF :: Show GLTF where show = genericShow
instance decGLTF :: Decode GLTF where
  decode = dec
instance encGLTF :: Encode GLTF where
  encode = enc

decodeGLTF :: String -> F GLTF
decodeGLTF = decodeJSON

encodeGLTF :: GLTF -> String
encodeGLTF = encodeJSON
