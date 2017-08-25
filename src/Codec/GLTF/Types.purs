module Codec.GLTF.Types where

import Prelude

import Codec.GLTF.Dec (dec)
import Control.Monad.Except (runExcept)
import Data.Either (Either(..))
import Data.Foreign (ForeignError(..), fail, readInt, readString)
import Data.Foreign.Class (class Decode)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Eq (genericEq)
import Data.Generic.Rep.Ord (genericCompare)
import Data.Generic.Rep.Show (genericShow)
import Data.Map (Map)

data ComponentType
  = Byte
  | UnsignedByte
  | Short
  | UnsignedShort
  | UnsignedInt
  | Float

derive instance genericComponentType :: Generic ComponentType _
instance showComponentType :: Show ComponentType where show = genericShow
instance decodeComponentType :: Decode ComponentType where
  decode v = case runExcept $ readInt v of
    Right n -> case n of
      5120 -> pure Byte
      5121 -> pure UnsignedByte
      5122 -> pure Short
      5123 -> pure UnsignedShort
      5125 -> pure UnsignedInt
      5126 -> pure Float
      _ -> fail $ ForeignError $ "Unrecognized component type:" <> show n
    Left e -> fail $ ForeignError $ "Unable to read component type:" <> show e



data CameraType
  = CamOrthographic
  | CamPerspective

derive instance genericCameraType :: Generic CameraType _
instance showCameraType :: Show CameraType where show = genericShow
instance decodeCameraType :: Decode CameraType where
  decode v = case runExcept $ readString v of
    Right "orthographic" -> pure CamOrthographic
    Right "perspective" -> pure CamPerspective
    Right x -> fail $ ForeignError $ "Unrecognized camera type:" <> x
    Left e -> fail $ ForeignError $ "Unrecognized camera type:" <> show e


data AccessorType
  = Scalar
  | Vec2
  | Vec3
  | Vec4
  | Mat2
  | Mat3
  | Mat4

derive instance genericAccessorType :: Generic AccessorType _
instance showAccessorType :: Show AccessorType where show = genericShow
instance decodeAccessorType :: Decode AccessorType where
  decode v = case runExcept $ readString v of
    Right "SCALAR" -> pure Scalar
    Right "VEC2" -> pure Vec2
    Right "VEC3" -> pure Vec3
    Right "VEC4" -> pure Vec4
    Right "MAT2" -> pure Mat2
    Right "MAT3" -> pure Mat3
    Right "MAT4" -> pure Mat4
    Right x -> fail $ ForeignError $ "Unrecognized accessor type:" <> x
    Left e -> fail $ ForeignError $ "Unrecognized accessor type:" <> show e

data Interpolation
  = Linear
  | Step
  | CatmullRomSpline
  | CubicSpline

derive instance genericInterpolation :: Generic Interpolation _
instance showInterpolation :: Show Interpolation where show = genericShow
instance decodeInterpolation :: Decode Interpolation where
  decode v = case runExcept $ readString v of
    Right "LINEAR" -> pure Linear
    Right "STEP" -> pure Step
    Right "CATMULLROMSPLINE" -> pure CatmullRomSpline
    Right "CUBICSPLINE" -> pure CubicSpline
    Right x -> fail $ ForeignError $ "Unrecognized interpolation:" <> x
    Left e -> fail $ ForeignError $ "Unrecognized interpolation:" <> show e


data TargetPath
  = Translation
  | Rotation
  | Scale
  | Weights

derive instance genericTargetPath :: Generic TargetPath _
instance showTargetPath :: Show TargetPath where show = genericShow
instance decodeTargetPath :: Decode TargetPath where
  decode v = case runExcept $ readString v of
    Right "translation" -> pure Translation
    Right "rotation" -> pure Rotation
    Right "scale" -> pure Scale
    Right "weights" -> pure Weights
    Right x -> fail $ ForeignError $ "Unrecognized target path:" <> x
    Left e -> fail $ ForeignError $ "Unrecognized target path:" <> show e

data AlphaMode
  = Opaque
  | Mask
  | Blend

derive instance genericAlphaMode :: Generic AlphaMode _
instance showAlphaMode :: Show AlphaMode where show = genericShow
instance decodeAlphaMode :: Decode AlphaMode where
  decode v = case runExcept $ readString v of
    Right "OPAQUE" -> pure Opaque
    Right "MASK" -> pure Mask
    Right "BLEND" -> pure Blend
    Right x -> fail $ ForeignError $ "Unrecognized alpha mode:" <> x
    Left e -> fail $ ForeignError $ "Unrecognized alpha mode:" <> show e

data PrimitiveMode
  = Points
  | Lines
  | LineLoop
  | LineStrip
  | Triangles
  | TriangleStrip
  | TriangleFan

derive instance genericPrimitiveMode :: Generic PrimitiveMode _
instance showPrimitiveMode :: Show PrimitiveMode where show = genericShow
instance decodePrimitiveMode :: Decode PrimitiveMode where
  decode v = case runExcept $ readInt v of
    Right 0 -> pure Points
    Right 1 -> pure Lines
    Right 2 -> pure LineLoop
    Right 3 -> pure LineStrip
    Right 4 -> pure Triangles
    Right 5 -> pure TriangleStrip
    Right 6 -> pure TriangleFan
    Right x -> fail $ ForeignError $ "Unrecognized primitive mode:" <> show x
    Left e -> fail $ ForeignError $ "Unrecognized primitive mode:" <> show e


data TargetType
  = ArrayBuffer
  | ElementArrayBuffer

derive instance genericTargetType :: Generic TargetType _
instance showTargetType :: Show TargetType where show = genericShow
instance decodeTargetType :: Decode TargetType where
  decode v = case runExcept $ readInt v of
    Right 34962 -> pure ArrayBuffer
    Right 34963 -> pure ElementArrayBuffer
    Right x -> fail $ ForeignError $ "Unrecognized target type:" <> show x
    Left e -> fail $ ForeignError $ "Unrecognized target type:" <> show e


data MimeType
  = ImageJPEG
  | ImagePNG

derive instance genericMimeType :: Generic MimeType _
instance showMimeType :: Show MimeType where show = genericShow
instance decodeMimeType :: Decode MimeType where
  decode v = case runExcept $ readString v of
    Right "image/jpeg" -> pure ImageJPEG
    Right "image/png" -> pure ImagePNG
    Right x -> fail $ ForeignError $ "Unrecognized mime type:" <> show x
    Left e -> fail $ ForeignError $ "Unrecognized mime type:" <> show e
    

data MagFilter
  = MagNearest
  | MagLinear

derive instance genericMagFilter :: Generic MagFilter _
instance showMagFilter :: Show MagFilter where show = genericShow
instance decodeMagFilter :: Decode MagFilter where
  decode v = case runExcept $ readInt v of
    Right 9728 -> pure MagNearest
    Right 9729 -> pure MagLinear
    Right x -> fail $ ForeignError $ "Unrecognized mag filter:" <> show x
    Left e -> fail $ ForeignError $ "Unrecognized mag filter:" <> show e
    
data MinFilter
  = MinNearest
  | MinLinear
  | NearestMipmapNearest
  | LinearMipmapNearest
  | NearestMipmapLinear
  | LinearMipmapLinear

derive instance genericMinFilter :: Generic MinFilter _
instance showMinFilter :: Show MinFilter where show = genericShow
instance decodeMinFilter :: Decode MinFilter where
  decode v = case runExcept $ readInt v of
    Right 9728 -> pure MinNearest
    Right 9729 -> pure MinLinear
    Right 9984 -> pure NearestMipmapNearest
    Right 9985 -> pure LinearMipmapNearest
    Right 9986 -> pure NearestMipmapLinear
    Right 9987 -> pure LinearMipmapLinear
    Right x -> fail $ ForeignError $ "Unrecognized min filter:" <> show x
    Left e -> fail $ ForeignError $ "Unrecognized min filter:" <> show e
    
data WrapMode
  = ClampToEdge
  | MirroredRepeat
  | Repeat

derive instance genericWrapMode :: Generic WrapMode _
instance showWrapMode :: Show WrapMode where show = genericShow
instance decodeWrapMode :: Decode WrapMode where
  decode v = case runExcept $ readInt v of
    Right 33071 -> pure ClampToEdge
    Right 33648 -> pure MirroredRepeat
    Right 10497 -> pure Repeat
    Right x -> fail $ ForeignError $ "Unrecognized wrap mode:" <> show x
    Left e -> fail $ ForeignError $ "Unrecognized wrap mode:" <> show e
    

