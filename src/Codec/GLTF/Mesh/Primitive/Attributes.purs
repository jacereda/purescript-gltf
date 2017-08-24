module Codec.GLTF.Mesh.Primitive.Attributes where

import Prelude

import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.String (toUpper)
import Simple.JSON (class ReadForeign, class WriteForeign)

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
instance readForeignAttributes :: ReadForeign Attributes where
  readImpl = genericDecode (defaultOptions { fieldTransform = toUpper
                                           , unwrapSingleConstructors = true
                                           })
instance writeForeignAttributes :: WriteForeign Attributes where
  writeImpl = genericEncode (defaultOptions { fieldTransform = toUpper
                                            , unwrapSingleConstructors = true
                                            })
