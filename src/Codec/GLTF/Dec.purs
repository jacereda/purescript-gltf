module Codec.GLTF.Dec where

import Data.Foreign (Foreign, F)
import Simple.JSON (class ReadForeign, read)


dec :: forall a. ReadForeign a => Foreign -> F a
dec = read
