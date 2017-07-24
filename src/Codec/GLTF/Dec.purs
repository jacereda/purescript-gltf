module Codec.GLTF.Dec where

import Data.Foreign (Foreign, F)
import Data.Foreign.Generic (defaultOptions, genericDecode)
import Data.Foreign.Generic.Class (class GenericDecode)
import Data.Generic.Rep (class Generic)


dec :: forall a b. Generic b a => GenericDecode a => Foreign -> F b
dec = genericDecode (defaultOptions { unwrapSingleConstructors = true })
