module Codec.GLTF.Types where

import Prelude

import Control.Monad.Except (runExcept)
import Data.Either (Either(..))
import Data.Foreign (ForeignError(..), fail, readInt, readString)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Simple.JSON (class ReadForeign, class WriteForeign, write)

data ComponentType
  = Byte
  | UnsignedByte
  | Short
  | UnsignedShort
  | UnsignedInt
  | Float

derive instance genericComponentType :: Generic ComponentType _
instance showComponentType :: Show ComponentType where show = genericShow
instance readForeignComponentType :: ReadForeign ComponentType where
  readImpl v = case runExcept $ readInt v of
    Right n -> case n of
      5120 -> pure Byte
      5121 -> pure UnsignedByte
      5122 -> pure Short
      5123 -> pure UnsignedShort
      5125 -> pure UnsignedInt
      5126 -> pure Float
      _ -> fail $ ForeignError $ "Unrecognized component type:" <> show n
    Left e -> fail $ ForeignError $ "Unable to read component type:" <> show e
instance writeForeignComponentType :: WriteForeign ComponentType where
  writeImpl v = write case v of
    Byte -> 5120
    UnsignedByte -> 5121
    Short -> 5122
    UnsignedShort -> 5123
    UnsignedInt -> 5125
    Float -> 5126


data CameraType
  = CamOrthographic
  | CamPerspective

derive instance genericCameraType :: Generic CameraType _
instance showCameraType :: Show CameraType where show = genericShow
instance readForeignCameraType :: ReadForeign CameraType where
  readImpl v = case runExcept $ readString v of
    Right "orthographic" -> pure CamOrthographic
    Right "perspective" -> pure CamPerspective
    Right x -> fail $ ForeignError $ "Unrecognized camera type:" <> x
    Left e -> fail $ ForeignError $ "Unrecognized camera type:" <> show e
instance writeForeignCameraType :: WriteForeign CameraType where
  writeImpl v = write case v of
    CamOrthographic -> "orthographic"
    CamPerspective -> "perspective"


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
instance readForeignAccessorType :: ReadForeign AccessorType where
  readImpl v = case runExcept $ readString v of
    Right "SCALAR" -> pure Scalar
    Right "VEC2" -> pure Vec2
    Right "VEC3" -> pure Vec3
    Right "VEC4" -> pure Vec4
    Right "MAT2" -> pure Mat2
    Right "MAT3" -> pure Mat3
    Right "MAT4" -> pure Mat4
    Right x -> fail $ ForeignError $ "Unrecognized accessor type:" <> x
    Left e -> fail $ ForeignError $ "Unrecognized accessor type:" <> show e
instance writeForeignAccessorType :: WriteForeign AccessorType where
  writeImpl v = write case v of
    Scalar -> "SCALAR"
    Vec2 -> "VEC2"
    Vec3 -> "VEC3"
    Vec4 -> "VEC4"
    Mat2 -> "MAT2"
    Mat3 -> "MAT3"
    Mat4 -> "MAT4"
    

data Interpolation
  = Linear
  | Step
  | CatmullRomSpline
  | CubicSpline

derive instance genericInterpolation :: Generic Interpolation _
instance showInterpolation :: Show Interpolation where show = genericShow
instance readForeignInterpolation :: ReadForeign Interpolation where
  readImpl v = case runExcept $ readString v of
    Right "LINEAR" -> pure Linear
    Right "STEP" -> pure Step
    Right "CATMULLROMSPLINE" -> pure CatmullRomSpline
    Right "CUBICSPLINE" -> pure CubicSpline
    Right x -> fail $ ForeignError $ "Unrecognized interpolation:" <> x
    Left e -> fail $ ForeignError $ "Unrecognized interpolation:" <> show e
instance writeForeignInterpolation :: WriteForeign Interpolation where
  writeImpl v = write case v of
    Linear -> "LINEAR"
    Step -> "STEP"
    CatmullRomSpline -> "CATMULLROMSPLINE"
    CubicSpline -> "CUBICSPLINE"

data TargetPath
  = Translation
  | Rotation
  | Scale
  | Weights

derive instance genericTargetPath :: Generic TargetPath _
instance showTargetPath :: Show TargetPath where show = genericShow
instance readForeignTargetPath :: ReadForeign TargetPath where
  readImpl v = case runExcept $ readString v of
    Right "translation" -> pure Translation
    Right "rotation" -> pure Rotation
    Right "scale" -> pure Scale
    Right "weights" -> pure Weights
    Right x -> fail $ ForeignError $ "Unrecognized target path:" <> x
    Left e -> fail $ ForeignError $ "Unrecognized target path:" <> show e
instance writeForeignTargetPath :: WriteForeign TargetPath where
  writeImpl v = write case v of
    Translation -> "translation"
    Rotation -> "rotation"
    Scale -> "scale"
    Weights -> "weights"    

data AlphaMode
  = Opaque
  | Mask
  | Blend

derive instance genericAlphaMode :: Generic AlphaMode _
instance showAlphaMode :: Show AlphaMode where show = genericShow
instance readForeignAlphaMode :: ReadForeign AlphaMode where
  readImpl v = case runExcept $ readString v of
    Right "OPAQUE" -> pure Opaque
    Right "MASK" -> pure Mask
    Right "BLEND" -> pure Blend
    Right x -> fail $ ForeignError $ "Unrecognized alpha mode:" <> x
    Left e -> fail $ ForeignError $ "Unrecognized alpha mode:" <> show e
instance writeForeignAlphaMode :: WriteForeign AlphaMode where
  writeImpl v = write case v of
    Opaque -> "OPAQUE"
    Mask -> "MASK"
    Blend -> "BLEND"

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
instance readForeignPrimitiveMode :: ReadForeign PrimitiveMode where
  readImpl v = case runExcept $ readInt v of
    Right 0 -> pure Points
    Right 1 -> pure Lines
    Right 2 -> pure LineLoop
    Right 3 -> pure LineStrip
    Right 4 -> pure Triangles
    Right 5 -> pure TriangleStrip
    Right 6 -> pure TriangleFan
    Right x -> fail $ ForeignError $ "Unrecognized primitive mode:" <> show x
    Left e -> fail $ ForeignError $ "Unrecognized primitive mode:" <> show e
instance writeForeignPrimitiveMode :: WriteForeign PrimitiveMode where
  writeImpl v = write case v of
    Points -> 0
    Lines -> 1
    LineLoop -> 2
    LineStrip -> 3
    Triangles -> 4
    TriangleStrip -> 5
    TriangleFan -> 6

data TargetType
  = ArrayBuffer
  | ElementArrayBuffer

derive instance genericTargetType :: Generic TargetType _
instance showTargetType :: Show TargetType where show = genericShow
instance readForeignTargetType :: ReadForeign TargetType where
  readImpl v = case runExcept $ readInt v of
    Right 34962 -> pure ArrayBuffer
    Right 34963 -> pure ElementArrayBuffer
    Right x -> fail $ ForeignError $ "Unrecognized target type:" <> show x
    Left e -> fail $ ForeignError $ "Unrecognized target type:" <> show e
instance writeForeignTargetType :: WriteForeign TargetType where
  writeImpl v = write case v of
    ArrayBuffer -> 34962
    ElementArrayBuffer -> 34963

data MimeType
  = ImageJPEG
  | ImagePNG

derive instance genericMimeType :: Generic MimeType _
instance showMimeType :: Show MimeType where show = genericShow
instance readForeignMimeType :: ReadForeign MimeType where
  readImpl v = case runExcept $ readString v of
    Right "image/jpeg" -> pure ImageJPEG
    Right "image/png" -> pure ImagePNG
    Right x -> fail $ ForeignError $ "Unrecognized mime type:" <> show x
    Left e -> fail $ ForeignError $ "Unrecognized mime type:" <> show e
instance writeForeignMimeType :: WriteForeign MimeType where
  writeImpl v = write case v of
    ImageJPEG -> "image/jpeg"
    ImagePNG -> "image/png"
    

data MagFilter
  = MagNearest
  | MagLinear

derive instance genericMagFilter :: Generic MagFilter _
instance showMagFilter :: Show MagFilter where show = genericShow
instance readForeignMagFilter :: ReadForeign MagFilter where
  readImpl v = case runExcept $ readInt v of
    Right 9728 -> pure MagNearest
    Right 9729 -> pure MagLinear
    Right x -> fail $ ForeignError $ "Unrecognized mag filter:" <> show x
    Left e -> fail $ ForeignError $ "Unrecognized mag filter:" <> show e
instance writeForeignMagFilter :: WriteForeign MagFilter where
  writeImpl v = write case v of
    MagNearest -> 9728
    MagLinear -> 9729
    
data MinFilter
  = MinNearest
  | MinLinear
  | NearestMipmapNearest
  | LinearMipmapNearest
  | NearestMipmapLinear
  | LinearMipmapLinear

derive instance genericMinFilter :: Generic MinFilter _
instance showMinFilter :: Show MinFilter where show = genericShow
instance readForeignMinFilter :: ReadForeign MinFilter where
  readImpl v = case runExcept $ readInt v of
    Right 9728 -> pure MinNearest
    Right 9729 -> pure MinLinear
    Right 9984 -> pure NearestMipmapNearest
    Right 9985 -> pure LinearMipmapNearest
    Right 9986 -> pure NearestMipmapLinear
    Right 9987 -> pure LinearMipmapLinear
    Right x -> fail $ ForeignError $ "Unrecognized min filter:" <> show x
    Left e -> fail $ ForeignError $ "Unrecognized min filter:" <> show e
instance writeForeignMinFilter :: WriteForeign MinFilter where
  writeImpl v = write case v of
    MinNearest -> 9728
    MinLinear -> 9729
    NearestMipmapNearest -> 9984
    LinearMipmapNearest -> 9985
    NearestMipmapLinear -> 9986
    LinearMipmapLinear -> 9987
    
data WrapMode
  = ClampToEdge
  | MirroredRepeat
  | Repeat

derive instance genericWrapMode :: Generic WrapMode _
instance showWrapMode :: Show WrapMode where show = genericShow
instance readForeignWrapMode :: ReadForeign WrapMode where
  readImpl v = case runExcept $ readInt v of
    Right 33071 -> pure ClampToEdge
    Right 33648 -> pure MirroredRepeat
    Right 10497 -> pure Repeat
    Right x -> fail $ ForeignError $ "Unrecognized wrap mode:" <> show x
    Left e -> fail $ ForeignError $ "Unrecognized wrap mode:" <> show e
instance writeForeignWrapMode :: WriteForeign WrapMode where
  writeImpl v = write case v of
    ClampToEdge -> 33071
    MirroredRepeat -> 33648
    Repeat -> 10497
