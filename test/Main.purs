module Test.Main where

import Prelude

import Data.Argonaut.Parser (jsonParser)
import Codec.GLTF (decodeGLTF, encodeGLTF)
import Control.Monad.Aff (Aff, attempt, launchAff)
import Control.Monad.Aff.Console (CONSOLE, log)
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Control.Monad.Except (runExcept)
import Data.Either (Either(..))
import Network.HTTP.Affjax (AJAX, get)

main :: forall e. Eff (exception :: EXCEPTION, ajax :: AJAX, console :: CONSOLE | e) Unit
main = void $ launchAff do
  tst "2CylinderEngine/glTF/2CylinderEngine.gltf"
  tst "AnimatedCube/glTF/AnimatedCube.gltf"
  tst "AnimatedMorphCube/glTF/AnimatedMorphCube.gltf"
  tst "AnimatedMorphSphere/glTF/AnimatedMorphSphere.gltf"
  tst "AnimatedTriangle/glTF/AnimatedTriangle.gltf"
  tst "Avocado/glTF/Avocado.gltf"
  tst "BarramundiFish/glTF/BarramundiFish.gltf"
  tst "BoomBox/glTF/BoomBox.gltf"
  tst "Box/glTF/Box.gltf"
  tst "BoxAnimated/glTF/BoxAnimated.gltf"
  tst "BoxInterleaved/glTF/BoxInterleaved.gltf"
  tst "BoxTextured/glTF/BoxTextured.gltf"
  tst "BrainStem/glTF/BrainStem.gltf"
  tst "Buggy/glTF/Buggy.gltf"
  tst "Cameras/glTF/Cameras.gltf"
  tst "CesiumMan/glTF/CesiumMan.gltf"
  tst "CesiumMilkTruck/glTF/CesiumMilkTruck.gltf"
  tst "Corset/glTF/Corset.gltf"
  tst "Cube/glTF/Cube.gltf"
  tst "DamagedHelmet/glTF/DamagedHelmet.gltf"
  tst "Duck/glTF/Duck.gltf"
  tst "GearboxAssy/glTF/GearboxAssy.gltf"
  tst "Lantern/glTF/Lantern.gltf"
  tst "MetalRoughSpheres/glTF/MetalRoughSpheres.gltf"
  tst "Monster/glTF/Monster.gltf"
  tst "NormalTangentTest/glTF/NormalTangentTest.gltf"
  tst "ReciprocatingSaw/glTF/ReciprocatingSaw.gltf"
  tst "RiggedFigure/glTF/RiggedFigure.gltf"
  tst "RiggedSimple/glTF/RiggedSimple.gltf"
  tst "SciFiHelmet/glTF/SciFiHelmet.gltf"
  tst "SimpleMeshes/glTF/SimpleMeshes.gltf"
  tst "SmilingFace/glTF/SmilingFace.gltf"
  tst "Suzanne/glTF/Suzanne.gltf"
  tst "TextureCoordinateTest/glTF/TextureCoordinateTest.gltf"
  tst "TextureSettingsTest/glTF/TextureSettingsTest.gltf"
  tst "Triangle/glTF/Triangle.gltf"
  tst "TriangleWithoutIndices/glTF/TriangleWithoutIndices.gltf"
  tst "TwoSidedPlane/glTF/TwoSidedPlane.gltf"
  tst "VC/glTF/VC.gltf"
  tst "WalkingLady/glTF/WalkingLady.gltf"
  where tst url = do
          response <- attempt $ get $ base <> url
          case response of
            Left err -> report url err
            Right res -> case runExcept $ decodeGLTF res.response of
              Left err -> report url err
              Right r -> do
                let enc = encodeGLTF r
                    pars0 = jsonParser res.response
                    pars1 = jsonParser enc
                if (pars0 /= pars1)
                  then log $ "FAIL:\npars0: " <> show pars0 <> "\npars1: " <> show pars1
                  else log $ "OK: " <> url
        report :: forall eff a. Show a => String -> a -> Aff (console :: CONSOLE | eff) Unit
        report m e = log $ "Error : " <> m <> " " <> show e
        base = "https://raw.githubusercontent.com/KhronosGroup/glTF-Sample-Models/master/2.0/"
        -- base = "http://localhost:1337/glTF-Sample-Models-master/2.0/"
