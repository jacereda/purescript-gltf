module Codec.GLTF.Sampler where

import Prelude

import Codec.GLTF.Dec (dec, enc)
import Codec.GLTF.Types (MagFilter, MinFilter, WrapMode)
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)

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
instance encodeSampler :: Encode Sampler where encode = enc
