module Codec.GLTF.Dec where

import Data.Foreign (Foreign, F)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Class (class GenericDecode, class GenericEncode)
import Data.Generic.Rep (class Generic)


dec :: forall a b. Generic b a => GenericDecode a => Foreign -> F b
dec = genericDecode (defaultOptions { unwrapSingleConstructors = true })

enc :: forall a b. Generic b a => GenericEncode a => b -> Foreign
enc = genericEncode (defaultOptions { unwrapSingleConstructors = true })
