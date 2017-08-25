module Codec.GLTF.Mesh.Primitive.Attributes where

import Prelude

import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.String (toUpper)

newtype Attributes = Attributes
  { position :: NullOrUndefined Int
  , normal :: NullOrUndefined Int
  , tangent :: NullOrUndefined Int
  , texCoord_0 :: NullOrUndefined Int
  , texCoord_1 :: NullOrUndefined Int
  , color_0 :: NullOrUndefined Int
  , joints_0 :: NullOrUndefined Int
  , weights_0 :: NullOrUndefined Int            
  }

derive instance genericAttributes :: Generic Attributes _
instance showAttributes :: Show Attributes where show = genericShow
instance decodeForeignAttributes :: Decode Attributes where
  decode = genericDecode (defaultOptions { fieldTransform = toUpper
                                           , unwrapSingleConstructors = true
                                           })
instance encodeForeignAttributes :: Encode Attributes where
  encode = genericEncode (defaultOptions { fieldTransform = toUpper
                                            , unwrapSingleConstructors = true
                                            })
