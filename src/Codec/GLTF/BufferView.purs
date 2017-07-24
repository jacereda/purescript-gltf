module Codec.GLTF.BufferView where

import Prelude

import Codec.GLTF.Dec (dec)
import Codec.GLTF.Types (TargetType)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

newtype BufferView
  = BufferView
  { buffer :: Int
  , byteOffset :: NullOrUndefined Int
  , byteLength :: Int
  , byteStride :: NullOrUndefined Int
  , target :: NullOrUndefined TargetType
  , name :: NullOrUndefined String
  }

derive instance genericBufferView :: Generic BufferView _
instance showBufferView :: Show BufferView where show = genericShow
instance decodeBufferView :: Decode BufferView where decode = dec
