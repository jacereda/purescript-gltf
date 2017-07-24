module Codec.GLTF.Sampler where

import Prelude

import Codec.GLTF.Dec (dec)
import Codec.GLTF.Types (MagFilter, MinFilter, WrapMode)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Foreign.Class (class Decode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)

newtype Sampler
  = Sampler
  { magFilter :: NullOrUndefined MagFilter
  , minFilter :: NullOrUndefined MinFilter
  , wrapS :: NullOrUndefined WrapMode
  , wrapT :: NullOrUndefined WrapMode
  , name :: NullOrUndefined String
  }

derive instance genericSampler :: Generic Sampler _
instance showSampler :: Show Sampler where show = genericShow
instance decodeSampler :: Decode Sampler where decode = dec
                                               
