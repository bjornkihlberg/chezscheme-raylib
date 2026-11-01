#!chezscheme

(library (chezscheme-raylib v1 raylib ffi)
  (export ; Opaque types
          rAudioProcessor
          rAudioBuffer

          ; Type aliases
          Camera
          RenderTexture2D
          TextureCubemap
          Texture2D
          Quaternion

          ; Procedures
          DetachAudioMixedProcessor
          AttachAudioMixedProcessor
          DetachAudioStreamProcessor
          AttachAudioStreamProcessor
          SetAudioStreamCallback
          SetAudioStreamBufferSizeDefault
          SetAudioStreamPan
          SetAudioStreamPitch
          SetAudioStreamVolume
          StopAudioStream
          IsAudioStreamPlaying
          ResumeAudioStream
          PauseAudioStream
          PlayAudioStream
          IsAudioStreamProcessed
          UpdateAudioStream
          UnloadAudioStream
          IsAudioStreamValid
          LoadAudioStream
          GetMusicTimePlayed
          GetMusicTimeLength
          SetMusicPan
          SetMusicPitch
          SetMusicVolume
          SeekMusicStream
          ResumeMusicStream
          PauseMusicStream
          StopMusicStream
          UpdateMusicStream
          IsMusicStreamPlaying
          PlayMusicStream
          UnloadMusicStream
          IsMusicValid
          LoadMusicStreamFromMemory
          LoadMusicStream
          UnloadWaveSamples
          LoadWaveSamples
          WaveFormat
          WaveCrop
          WaveCopy
          SetSoundPan
          SetSoundPitch
          SetSoundVolume
          IsSoundPlaying
          ResumeSound
          PauseSound
          StopSound
          PlaySound
          ExportWaveAsCode
          ExportWave
          UnloadSoundAlias
          UnloadSound
          UnloadWave
          UpdateSound
          IsSoundValid
          LoadSoundAlias
          LoadSoundFromWave
          LoadSound
          IsWaveValid
          LoadWaveFromMemory
          LoadWave
          GetMasterVolume
          SetMasterVolume
          IsAudioDeviceReady
          CloseAudioDevice
          InitAudioDevice
          GetRayCollisionQuad
          GetRayCollisionTriangle
          GetRayCollisionMesh
          GetRayCollisionBox
          GetRayCollisionSphere
          CheckCollisionBoxSphere
          CheckCollisionBoxes
          CheckCollisionSpheres
          IsModelAnimationValid
          UnloadModelAnimations
          UnloadModelAnimation
          UpdateModelAnimationBones
          UpdateModelAnimation
          LoadModelAnimations
          SetModelMeshMaterial
          SetMaterialTexture
          UnloadMaterial
          IsMaterialValid
          LoadMaterialDefault
          LoadMaterials
          GenMeshCubicmap
          GenMeshHeightmap
          GenMeshKnot
          GenMeshTorus
          GenMeshCone
          GenMeshCylinder
          GenMeshHemiSphere
          GenMeshSphere
          GenMeshCube
          GenMeshPlane
          GenMeshPoly
          ExportMeshAsCode
          ExportMesh
          GenMeshTangents
          GetMeshBoundingBox
          DrawMeshInstanced
          DrawMesh
          UnloadMesh
          UpdateMeshBuffer
          UploadMesh
          DrawBillboardPro
          DrawBillboardRec
          DrawBillboard
          DrawBoundingBox
          DrawModelPointsEx
          DrawModelPoints
          DrawModelWiresEx
          DrawModelWires
          DrawModelEx
          DrawModel
          GetModelBoundingBox
          UnloadModel
          IsModelValid
          LoadModelFromMesh
          LoadModel
          DrawGrid
          DrawRay
          DrawPlane
          DrawCapsuleWires
          DrawCapsule
          DrawCylinderWiresEx
          DrawCylinderWires
          DrawCylinderEx
          DrawCylinder
          DrawSphereWires
          DrawSphereEx
          DrawSphere
          DrawCubeWiresV
          DrawCubeWires
          DrawCubeV
          DrawCube
          DrawTriangleStrip3D
          DrawTriangle3D
          DrawCircle3D
          DrawPoint3D
          DrawLine3D
          TextToFloat
          TextToInteger
          TextToCamel
          TextToSnake
          TextToPascal
          TextToLower
          TextToUpper
          TextFindIndex
          TextAppend
          TextSplit
          TextJoin
          TextInsert
          TextReplaceBetween
          TextReplace
          GetTextBetween
          TextRemoveSpaces
          TextSubtext
          TextFormat
          TextLength
          TextIsEqual
          TextCopy
          UnloadTextLines
          LoadTextLines
          CodepointToUTF8
          GetCodepointPrevious
          GetCodepointNext
          GetCodepoint
          GetCodepointCount
          UnloadCodepoints
          LoadCodepoints
          UnloadUTF8
          LoadUTF8
          GetGlyphAtlasRec
          GetGlyphInfo
          GetGlyphIndex
          MeasureTextEx
          MeasureText
          SetTextLineSpacing
          DrawTextCodepoints
          DrawTextCodepoint
          DrawTextPro
          DrawTextEx
          DrawText
          DrawFPS
          ExportFontAsCode
          UnloadFont
          UnloadFontData
          GenImageFontAtlas
          LoadFontData
          IsFontValid
          LoadFontFromMemory
          LoadFontFromImage
          LoadFontEx
          LoadFont
          GetFontDefault
          GetPixelDataSize
          SetPixelColor
          GetPixelColor
          GetColor
          ColorLerp
          ColorAlphaBlend
          ColorAlpha
          ColorContrast
          ColorBrightness
          ColorTint
          ColorFromHSV
          ColorToHSV
          ColorFromNormalized
          ColorNormalize
          ColorToInt
          Fade
          ColorIsEqual
          DrawTextureNPatch
          DrawTexturePro
          DrawTextureRec
          DrawTextureEx
          DrawTextureV
          DrawTexture
          SetTextureWrap
          SetTextureFilter
          GenTextureMipmaps
          UpdateTextureRec
          UpdateTexture
          UnloadRenderTexture
          IsRenderTextureValid
          UnloadTexture
          IsTextureValid
          LoadRenderTexture
          LoadTextureCubemap
          LoadTextureFromImage
          LoadTexture
          ImageDrawTextEx
          ImageDrawText
          ImageDraw
          ImageDrawTriangleStrip
          ImageDrawTriangleFan
          ImageDrawTriangleLines
          ImageDrawTriangleEx
          ImageDrawTriangle
          ImageDrawRectangleLines
          ImageDrawRectangleRec
          ImageDrawRectangleV
          ImageDrawRectangle
          ImageDrawCircleLinesV
          ImageDrawCircleLines
          ImageDrawCircleV
          ImageDrawCircle
          ImageDrawLineEx
          ImageDrawLineV
          ImageDrawLine
          ImageDrawPixelV
          ImageDrawPixel
          ImageClearBackground
          GetImageColor
          GetImageAlphaBorder
          UnloadImagePalette
          UnloadImageColors
          LoadImagePalette
          LoadImageColors
          ImageColorReplace
          ImageColorBrightness
          ImageColorContrast
          ImageColorGrayscale
          ImageColorInvert
          ImageColorTint
          ImageRotateCCW
          ImageRotateCW
          ImageRotate
          ImageFlipHorizontal
          ImageFlipVertical
          ImageDither
          ImageMipmaps
          ImageResizeCanvas
          ImageResizeNN
          ImageResize
          ImageKernelConvolution
          ImageBlurGaussian
          ImageAlphaPremultiply
          ImageAlphaMask
          ImageAlphaClear
          ImageAlphaCrop
          ImageCrop
          ImageToPOT
          ImageFormat
          ImageTextEx
          ImageText
          ImageFromChannel
          ImageFromImage
          ImageCopy
          GenImageText
          GenImageCellular
          GenImagePerlinNoise
          GenImageWhiteNoise
          GenImageChecked
          GenImageGradientSquare
          GenImageGradientRadial
          GenImageGradientLinear
          GenImageColor
          ExportImageAsCode
          ExportImageToMemory
          ExportImage
          UnloadImage
          IsImageValid
          LoadImageFromScreen
          LoadImageFromTexture
          LoadImageFromMemory
          LoadImageAnimFromMemory
          LoadImageAnim
          LoadImageRaw
          LoadImage
          GetCollisionRec
          CheckCollisionLines
          CheckCollisionPointPoly
          CheckCollisionPointLine
          CheckCollisionPointTriangle
          CheckCollisionPointCircle
          CheckCollisionPointRec
          CheckCollisionCircleLine
          CheckCollisionCircleRec
          CheckCollisionCircles
          CheckCollisionRecs
          GetSplinePointBezierCubic
          GetSplinePointBezierQuad
          GetSplinePointCatmullRom
          GetSplinePointBasis
          GetSplinePointLinear
          DrawSplineSegmentBezierCubic
          DrawSplineSegmentBezierQuadratic
          DrawSplineSegmentCatmullRom
          DrawSplineSegmentBasis
          DrawSplineSegmentLinear
          DrawSplineBezierCubic
          DrawSplineBezierQuadratic
          DrawSplineCatmullRom
          DrawSplineBasis
          DrawSplineLinear
          DrawPolyLinesEx
          DrawPolyLines
          DrawPoly
          DrawTriangleStrip
          DrawTriangleFan
          DrawTriangleLines
          DrawTriangle
          DrawRectangleRoundedLinesEx
          DrawRectangleRoundedLines
          DrawRectangleRounded
          DrawRectangleLinesEx
          DrawRectangleLines
          DrawRectangleGradientEx
          DrawRectangleGradientH
          DrawRectangleGradientV
          DrawRectanglePro
          DrawRectangleRec
          DrawRectangleV
          DrawRectangle
          DrawRingLines
          DrawRing
          DrawEllipseLinesV
          DrawEllipseLines
          DrawEllipseV
          DrawEllipse
          DrawCircleLinesV
          DrawCircleLines
          DrawCircleV
          DrawCircleGradient
          DrawCircleSectorLines
          DrawCircleSector
          DrawCircle
          DrawLineDashed
          DrawLineBezier
          DrawLineStrip
          DrawLineEx
          DrawLineV
          DrawLine
          DrawPixelV
          DrawPixel
          GetShapesTextureRectangle
          GetShapesTexture
          SetShapesTexture
          UpdateCameraPro
          UpdateCamera
          GetGesturePinchAngle
          GetGesturePinchVector
          GetGestureDragAngle
          GetGestureDragVector
          GetGestureHoldDuration
          GetGestureDetected
          IsGestureDetected
          SetGesturesEnabled
          GetTouchPointCount
          GetTouchPointId
          GetTouchPosition
          GetTouchY
          GetTouchX
          SetMouseCursor
          GetMouseWheelMoveV
          GetMouseWheelMove
          SetMouseScale
          SetMouseOffset
          SetMousePosition
          GetMouseDelta
          GetMousePosition
          GetMouseY
          GetMouseX
          IsMouseButtonUp
          IsMouseButtonReleased
          IsMouseButtonDown
          IsMouseButtonPressed
          SetGamepadVibration
          SetGamepadMappings
          GetGamepadAxisMovement
          GetGamepadAxisCount
          GetGamepadButtonPressed
          IsGamepadButtonUp
          IsGamepadButtonReleased
          IsGamepadButtonDown
          IsGamepadButtonPressed
          GetGamepadName
          IsGamepadAvailable
          SetExitKey
          GetKeyName
          GetCharPressed
          GetKeyPressed
          IsKeyUp
          IsKeyReleased
          IsKeyDown
          IsKeyPressedRepeat
          IsKeyPressed
          PlayAutomationEvent
          StopAutomationEventRecording
          StartAutomationEventRecording
          SetAutomationEventBaseFrame
          SetAutomationEventList
          ExportAutomationEventList
          UnloadAutomationEventList
          LoadAutomationEventList
          ComputeSHA256
          ComputeSHA1
          ComputeMD5
          ComputeCRC32
          DecodeDataBase64
          EncodeDataBase64
          DecompressData
          CompressData
          UnloadDroppedFiles
          LoadDroppedFiles
          IsFileDropped
          UnloadDirectoryFiles
          LoadDirectoryFilesEx
          LoadDirectoryFiles
          IsFileNameValid
          IsPathFile
          ChangeDirectory
          MakeDirectory
          GetApplicationDirectory
          GetWorkingDirectory
          GetPrevDirectoryPath
          GetDirectoryPath
          GetFileNameWithoutExt
          GetFileName
          GetFileExtension
          GetFileModTime
          GetFileLength
          IsFileExtension
          DirectoryExists
          FileExists
          FileTextFindIndex
          FileTextReplace
          FileMove
          FileCopy
          FileRemove
          FileRename
          SetSaveFileTextCallback
          SetLoadFileTextCallback
          SetSaveFileDataCallback
          SetLoadFileDataCallback
          SaveFileText
          UnloadFileText
          LoadFileText
          ExportDataAsCode
          SaveFileData
          UnloadFileData
          LoadFileData
          MemFree
          MemRealloc
          MemAlloc
          SetTraceLogCallback
          TraceLog
          SetTraceLogLevel
          OpenURL
          SetConfigFlags
          TakeScreenshot
          UnloadRandomSequence
          LoadRandomSequence
          GetRandomValue
          SetRandomSeed
          WaitTime
          PollInputEvents
          SwapScreenBuffer
          GetFPS
          GetTime
          GetFrameTime
          SetTargetFPS
          GetCameraMatrix2D
          GetCameraMatrix
          GetScreenToWorld2D
          GetWorldToScreen2D
          GetWorldToScreenEx
          GetWorldToScreen
          GetScreenToWorldRayEx
          GetScreenToWorldRay
          UnloadShader
          SetShaderValueTexture
          SetShaderValueMatrix
          SetShaderValueV
          SetShaderValue
          GetShaderLocationAttrib
          GetShaderLocation
          IsShaderValid
          LoadShaderFromMemory
          LoadShader
          UnloadVrStereoConfig
          LoadVrStereoConfig
          EndVrStereoMode
          BeginVrStereoMode
          EndScissorMode
          BeginScissorMode
          EndBlendMode
          BeginBlendMode
          EndShaderMode
          BeginShaderMode
          EndTextureMode
          BeginTextureMode
          EndMode3D
          BeginMode3D
          EndMode2D
          BeginMode2D
          EndDrawing
          BeginDrawing
          ClearBackground
          IsCursorOnScreen
          DisableCursor
          EnableCursor
          IsCursorHidden
          HideCursor
          ShowCursor
          DisableEventWaiting
          EnableEventWaiting
          GetClipboardImage
          GetClipboardText
          SetClipboardText
          GetMonitorName
          GetWindowScaleDPI
          GetWindowPosition
          GetMonitorRefreshRate
          GetMonitorPhysicalHeight
          GetMonitorPhysicalWidth
          GetMonitorHeight
          GetMonitorWidth
          GetMonitorPosition
          GetCurrentMonitor
          GetMonitorCount
          GetRenderHeight
          GetRenderWidth
          GetScreenHeight
          GetScreenWidth
          GetWindowHandle
          SetWindowFocused
          SetWindowOpacity
          SetWindowSize
          SetWindowMaxSize
          SetWindowMinSize
          SetWindowMonitor
          SetWindowPosition
          SetWindowTitle
          SetWindowIcons
          SetWindowIcon
          RestoreWindow
          MinimizeWindow
          MaximizeWindow
          ToggleBorderlessWindowed
          ToggleFullscreen
          ClearWindowState
          SetWindowState
          IsWindowState
          IsWindowResized
          IsWindowFocused
          IsWindowMaximized
          IsWindowMinimized
          IsWindowHidden
          IsWindowFullscreen
          IsWindowReady
          WindowShouldClose
          CloseWindow
          InitWindow)

  (import (chezscheme)
          (chezscheme-ffi v1 ffi))

  (define-ftype rAudioProcessor (struct))
  (define-ftype rAudioBuffer (struct))

  (define-ftype Camera Camera3D)
  (define-ftype RenderTexture2D RenderTexture)
  (define-ftype TextureCubemap Texture)
  (define-ftype Texture2D Texture)
  (define-ftype Quaternion Vector4)

  (define-foreign-procedure DetachAudioMixedProcessor (AudioCallback) void)
  (define-foreign-procedure AttachAudioMixedProcessor (AudioCallback) void)
  (define-foreign-procedure DetachAudioStreamProcessor (AudioStream AudioCallback) void)
  (define-foreign-procedure AttachAudioStreamProcessor (AudioStream AudioCallback) void)
  (define-foreign-procedure SetAudioStreamCallback (AudioStream AudioCallback) void)
  (define-foreign-procedure SetAudioStreamBufferSizeDefault (int) void)
  (define-foreign-procedure SetAudioStreamPan (AudioStream float) void)
  (define-foreign-procedure SetAudioStreamPitch (AudioStream float) void)
  (define-foreign-procedure SetAudioStreamVolume (AudioStream float) void)
  (define-foreign-procedure StopAudioStream (AudioStream) void)
  (define-foreign-procedure IsAudioStreamPlaying (AudioStream) stdbool)
  (define-foreign-procedure ResumeAudioStream (AudioStream) void)
  (define-foreign-procedure PauseAudioStream (AudioStream) void)
  (define-foreign-procedure PlayAudioStream (AudioStream) void)
  (define-foreign-procedure IsAudioStreamProcessed (AudioStream) stdbool)
  (define-foreign-procedure UpdateAudioStream (AudioStream void* int) void)
  (define-foreign-procedure UnloadAudioStream (AudioStream) void)
  (define-foreign-procedure IsAudioStreamValid (AudioStream) stdbool)
  (define-foreign-procedure LoadAudioStream (unsigned-int unsigned-int unsigned-int) AudioStream)
  (define-foreign-procedure GetMusicTimePlayed (Music) float)
  (define-foreign-procedure GetMusicTimeLength (Music) float)
  (define-foreign-procedure SetMusicPan (Music float) void)
  (define-foreign-procedure SetMusicPitch (Music float) void)
  (define-foreign-procedure SetMusicVolume (Music float) void)
  (define-foreign-procedure SeekMusicStream (Music float) void)
  (define-foreign-procedure ResumeMusicStream (Music) void)
  (define-foreign-procedure PauseMusicStream (Music) void)
  (define-foreign-procedure StopMusicStream (Music) void)
  (define-foreign-procedure UpdateMusicStream (Music) void)
  (define-foreign-procedure IsMusicStreamPlaying (Music) stdbool)
  (define-foreign-procedure PlayMusicStream (Music) void)
  (define-foreign-procedure UnloadMusicStream (Music) void)
  (define-foreign-procedure IsMusicValid (Music) stdbool)
  (define-foreign-procedure LoadMusicStreamFromMemory ((* char) void* int) Music)
  (define-foreign-procedure LoadMusicStream ((* char)) Music)
  (define-foreign-procedure UnloadWaveSamples ((* float)) void)
  (define-foreign-procedure LoadWaveSamples (Wave) (* float))
  (define-foreign-procedure WaveFormat ((* Wave) int int int) void)
  (define-foreign-procedure WaveCrop ((* Wave) int int) void)
  (define-foreign-procedure WaveCopy (Wave) Wave)
  (define-foreign-procedure SetSoundPan (Sound float) void)
  (define-foreign-procedure SetSoundPitch (Sound float) void)
  (define-foreign-procedure SetSoundVolume (Sound float) void)
  (define-foreign-procedure IsSoundPlaying (Sound) stdbool)
  (define-foreign-procedure ResumeSound (Sound) void)
  (define-foreign-procedure PauseSound (Sound) void)
  (define-foreign-procedure StopSound (Sound) void)
  (define-foreign-procedure PlaySound (Sound) void)
  (define-foreign-procedure ExportWaveAsCode (Wave (* char)) stdbool)
  (define-foreign-procedure ExportWave (Wave (* char)) stdbool)
  (define-foreign-procedure UnloadSoundAlias (Sound) void)
  (define-foreign-procedure UnloadSound (Sound) void)
  (define-foreign-procedure UnloadWave (Wave) void)
  (define-foreign-procedure UpdateSound (Sound void* int) void)
  (define-foreign-procedure IsSoundValid (Sound) stdbool)
  (define-foreign-procedure LoadSoundAlias (Sound) Sound)
  (define-foreign-procedure LoadSoundFromWave (Wave) Sound)
  (define-foreign-procedure LoadSound ((* char)) Sound)
  (define-foreign-procedure IsWaveValid (Wave) stdbool)
  (define-foreign-procedure LoadWaveFromMemory ((* char) void* int) Wave)
  (define-foreign-procedure LoadWave ((* char)) Wave)
  (define-foreign-procedure GetMasterVolume () float)
  (define-foreign-procedure SetMasterVolume (float) void)
  (define-foreign-procedure IsAudioDeviceReady () stdbool)
  (define-foreign-procedure CloseAudioDevice () void)
  (define-foreign-procedure InitAudioDevice () void)
  (define-foreign-procedure GetRayCollisionQuad (Ray Vector3 Vector3 Vector3 Vector3) RayCollision)
  (define-foreign-procedure GetRayCollisionTriangle (Ray Vector3 Vector3 Vector3) RayCollision)
  (define-foreign-procedure GetRayCollisionMesh (Ray Mesh Matrix) RayCollision)
  (define-foreign-procedure GetRayCollisionBox (Ray BoundingBox) RayCollision)
  (define-foreign-procedure GetRayCollisionSphere (Ray Vector3 float) RayCollision)
  (define-foreign-procedure CheckCollisionBoxSphere (BoundingBox Vector3 float) stdbool)
  (define-foreign-procedure CheckCollisionBoxes (BoundingBox BoundingBox) stdbool)
  (define-foreign-procedure CheckCollisionSpheres (Vector3 float Vector3 float) stdbool)
  (define-foreign-procedure IsModelAnimationValid (Model ModelAnimation) stdbool)
  (define-foreign-procedure UnloadModelAnimations ((* ModelAnimation) int) void)
  (define-foreign-procedure UnloadModelAnimation (ModelAnimation) void)
  (define-foreign-procedure UpdateModelAnimationBones (Model ModelAnimation int) void)
  (define-foreign-procedure UpdateModelAnimation (Model ModelAnimation int) void)
  (define-foreign-procedure LoadModelAnimations ((* char) (* int)) (* ModelAnimation))
  (define-foreign-procedure SetModelMeshMaterial ((* Model) int int) void)
  (define-foreign-procedure SetMaterialTexture ((* Material) int Texture2D) void)
  (define-foreign-procedure UnloadMaterial (Material) void)
  (define-foreign-procedure IsMaterialValid (Material) stdbool)
  (define-foreign-procedure LoadMaterialDefault () Material)
  (define-foreign-procedure LoadMaterials ((* char) (* int)) (* Material))
  (define-foreign-procedure GenMeshCubicmap (Image Vector3) Mesh)
  (define-foreign-procedure GenMeshHeightmap (Image Vector3) Mesh)
  (define-foreign-procedure GenMeshKnot (float float int int) Mesh)
  (define-foreign-procedure GenMeshTorus (float float int int) Mesh)
  (define-foreign-procedure GenMeshCone (float float int) Mesh)
  (define-foreign-procedure GenMeshCylinder (float float int) Mesh)
  (define-foreign-procedure GenMeshHemiSphere (float int int) Mesh)
  (define-foreign-procedure GenMeshSphere (float int int) Mesh)
  (define-foreign-procedure GenMeshCube (float float float) Mesh)
  (define-foreign-procedure GenMeshPlane (float float int int) Mesh)
  (define-foreign-procedure GenMeshPoly (int float) Mesh)
  (define-foreign-procedure ExportMeshAsCode (Mesh (* char)) stdbool)
  (define-foreign-procedure ExportMesh (Mesh (* char)) stdbool)
  (define-foreign-procedure GenMeshTangents ((* Mesh)) void)
  (define-foreign-procedure GetMeshBoundingBox (Mesh) BoundingBox)
  (define-foreign-procedure DrawMeshInstanced (Mesh Material (* Matrix) int) void)
  (define-foreign-procedure DrawMesh (Mesh Material Matrix) void)
  (define-foreign-procedure UnloadMesh (Mesh) void)
  (define-foreign-procedure UpdateMeshBuffer (Mesh int void* int int) void)
  (define-foreign-procedure UploadMesh ((* Mesh) stdbool) void)
  (define-foreign-procedure DrawBillboardPro (Camera Texture2D Rectangle Vector3 Vector3 Vector2 Vector2 float Color) void)
  (define-foreign-procedure DrawBillboardRec (Camera Texture2D Rectangle Vector3 Vector2 Color) void)
  (define-foreign-procedure DrawBillboard (Camera Texture2D Vector3 float Color) void)
  (define-foreign-procedure DrawBoundingBox (BoundingBox Color) void)
  (define-foreign-procedure DrawModelPointsEx (Model Vector3 Vector3 float Vector3 Color) void)
  (define-foreign-procedure DrawModelPoints (Model Vector3 float Color) void)
  (define-foreign-procedure DrawModelWiresEx (Model Vector3 Vector3 float Vector3 Color) void)
  (define-foreign-procedure DrawModelWires (Model Vector3 float Color) void)
  (define-foreign-procedure DrawModelEx (Model Vector3 Vector3 float Vector3 Color) void)
  (define-foreign-procedure DrawModel (Model Vector3 float Color) void)
  (define-foreign-procedure GetModelBoundingBox (Model) BoundingBox)
  (define-foreign-procedure UnloadModel (Model) void)
  (define-foreign-procedure IsModelValid (Model) stdbool)
  (define-foreign-procedure LoadModelFromMesh (Mesh) Model)
  (define-foreign-procedure LoadModel ((* char)) Model)
  (define-foreign-procedure DrawGrid (int float) void)
  (define-foreign-procedure DrawRay (Ray Color) void)
  (define-foreign-procedure DrawPlane (Vector3 Vector2 Color) void)
  (define-foreign-procedure DrawCapsuleWires (Vector3 Vector3 float int int Color) void)
  (define-foreign-procedure DrawCapsule (Vector3 Vector3 float int int Color) void)
  (define-foreign-procedure DrawCylinderWiresEx (Vector3 Vector3 float float int Color) void)
  (define-foreign-procedure DrawCylinderWires (Vector3 float float float int Color) void)
  (define-foreign-procedure DrawCylinderEx (Vector3 Vector3 float float int Color) void)
  (define-foreign-procedure DrawCylinder (Vector3 float float float int Color) void)
  (define-foreign-procedure DrawSphereWires (Vector3 float int int Color) void)
  (define-foreign-procedure DrawSphereEx (Vector3 float int int Color) void)
  (define-foreign-procedure DrawSphere (Vector3 float Color) void)
  (define-foreign-procedure DrawCubeWiresV (Vector3 Vector3 Color) void)
  (define-foreign-procedure DrawCubeWires (Vector3 float float float Color) void)
  (define-foreign-procedure DrawCubeV (Vector3 Vector3 Color) void)
  (define-foreign-procedure DrawCube (Vector3 float float float Color) void)
  (define-foreign-procedure DrawTriangleStrip3D ((* Vector3) int Color) void)
  (define-foreign-procedure DrawTriangle3D (Vector3 Vector3 Vector3 Color) void)
  (define-foreign-procedure DrawCircle3D (Vector3 float Vector3 float Color) void)
  (define-foreign-procedure DrawPoint3D (Vector3 Color) void)
  (define-foreign-procedure DrawLine3D (Vector3 Vector3 Color) void)
  (define-foreign-procedure TextToFloat ((* char)) float)
  (define-foreign-procedure TextToInteger ((* char)) int)
  (define-foreign-procedure TextToCamel ((* char)) (* char))
  (define-foreign-procedure TextToSnake ((* char)) (* char))
  (define-foreign-procedure TextToPascal ((* char)) (* char))
  (define-foreign-procedure TextToLower ((* char)) (* char))
  (define-foreign-procedure TextToUpper ((* char)) (* char))
  (define-foreign-procedure TextFindIndex ((* char) (* char)) int)
  (define-foreign-procedure TextAppend ((* char) (* char) (* int)) void)
  (define-foreign-procedure TextSplit ((* char) char (* int)) (* char*))
  (define-foreign-procedure TextJoin ((* char*) int (* char)) (* char))
  (define-foreign-procedure TextInsert ((* char) (* char) int) (* char))
  (define-foreign-procedure TextReplaceBetween ((* char) (* char) (* char) (* char)) (* char))
  (define-foreign-procedure TextReplace ((* char) (* char) (* char)) (* char))
  (define-foreign-procedure GetTextBetween ((* char) (* char) (* char)) (* char))
  (define-foreign-procedure TextRemoveSpaces ((* char)) (* char))
  (define-foreign-procedure TextSubtext ((* char) int int) (* char))
  (define-foreign-procedure TextFormat ((* char)) (* char))
  (define-foreign-procedure TextLength ((* char)) unsigned-int)
  (define-foreign-procedure TextIsEqual ((* char) (* char)) stdbool)
  (define-foreign-procedure TextCopy ((* char) (* char)) int)
  (define-foreign-procedure UnloadTextLines ((* char*) int) void)
  (define-foreign-procedure LoadTextLines ((* char) (* int)) (* char*))
  (define-foreign-procedure CodepointToUTF8 (int (* int)) (* char))
  (define-foreign-procedure GetCodepointPrevious ((* char) (* int)) int)
  (define-foreign-procedure GetCodepointNext ((* char) (* int)) int)
  (define-foreign-procedure GetCodepoint ((* char) (* int)) int)
  (define-foreign-procedure GetCodepointCount ((* char)) int)
  (define-foreign-procedure UnloadCodepoints ((* int)) void)
  (define-foreign-procedure LoadCodepoints ((* char) (* int)) (* int))
  (define-foreign-procedure UnloadUTF8 ((* char)) void)
  (define-foreign-procedure LoadUTF8 ((* int) int) (* char))
  (define-foreign-procedure GetGlyphAtlasRec (Font int) Rectangle)
  (define-foreign-procedure GetGlyphInfo (Font int) GlyphInfo)
  (define-foreign-procedure GetGlyphIndex (Font int) int)
  (define-foreign-procedure MeasureTextEx (Font (* char) float float) Vector2)
  (define-foreign-procedure MeasureText ((* char) int) int)
  (define-foreign-procedure SetTextLineSpacing (int) void)
  (define-foreign-procedure DrawTextCodepoints (Font (* int) int Vector2 float float Color) void)
  (define-foreign-procedure DrawTextCodepoint (Font int Vector2 float Color) void)
  (define-foreign-procedure DrawTextPro (Font (* char) Vector2 Vector2 float float float Color) void)
  (define-foreign-procedure DrawTextEx (Font (* char) Vector2 float float Color) void)
  (define-foreign-procedure DrawText ((* char) int int int Color) void)
  (define-foreign-procedure DrawFPS (int int) void)
  (define-foreign-procedure ExportFontAsCode (Font (* char)) stdbool)
  (define-foreign-procedure UnloadFont (Font) void)
  (define-foreign-procedure UnloadFontData ((* GlyphInfo) int) void)
  (define-foreign-procedure GenImageFontAtlas ((* GlyphInfo) (* Rectangle*) int int int int) Image)
  (define-foreign-procedure LoadFontData (void* int int (* int) int int (* int)) (* GlyphInfo))
  (define-foreign-procedure IsFontValid (Font) stdbool)
  (define-foreign-procedure LoadFontFromMemory ((* char) void* int int (* int) int) Font)
  (define-foreign-procedure LoadFontFromImage (Image Color int) Font)
  (define-foreign-procedure LoadFontEx ((* char) int (* int) int) Font)
  (define-foreign-procedure LoadFont ((* char)) Font)
  (define-foreign-procedure GetFontDefault () Font)
  (define-foreign-procedure GetPixelDataSize (int int int) int)
  (define-foreign-procedure SetPixelColor (void* Color int) void)
  (define-foreign-procedure GetPixelColor (void* int) Color)
  (define-foreign-procedure GetColor (unsigned-int) Color)
  (define-foreign-procedure ColorLerp (Color Color float) Color)
  (define-foreign-procedure ColorAlphaBlend (Color Color Color) Color)
  (define-foreign-procedure ColorAlpha (Color float) Color)
  (define-foreign-procedure ColorContrast (Color float) Color)
  (define-foreign-procedure ColorBrightness (Color float) Color)
  (define-foreign-procedure ColorTint (Color Color) Color)
  (define-foreign-procedure ColorFromHSV (float float float) Color)
  (define-foreign-procedure ColorToHSV (Color) Vector3)
  (define-foreign-procedure ColorFromNormalized (Vector4) Color)
  (define-foreign-procedure ColorNormalize (Color) Vector4)
  (define-foreign-procedure ColorToInt (Color) int)
  (define-foreign-procedure Fade (Color float) Color)
  (define-foreign-procedure ColorIsEqual (Color Color) stdbool)
  (define-foreign-procedure DrawTextureNPatch (Texture2D NPatchInfo Rectangle Vector2 float Color) void)
  (define-foreign-procedure DrawTexturePro (Texture2D Rectangle Rectangle Vector2 float Color) void)
  (define-foreign-procedure DrawTextureRec (Texture2D Rectangle Vector2 Color) void)
  (define-foreign-procedure DrawTextureEx (Texture2D Vector2 float float Color) void)
  (define-foreign-procedure DrawTextureV (Texture2D Vector2 Color) void)
  (define-foreign-procedure DrawTexture (Texture2D int int Color) void)
  (define-foreign-procedure SetTextureWrap (Texture2D int) void)
  (define-foreign-procedure SetTextureFilter (Texture2D int) void)
  (define-foreign-procedure GenTextureMipmaps ((* Texture2D)) void)
  (define-foreign-procedure UpdateTextureRec (Texture2D Rectangle void*) void)
  (define-foreign-procedure UpdateTexture (Texture2D void*) void)
  (define-foreign-procedure UnloadRenderTexture (RenderTexture2D) void)
  (define-foreign-procedure IsRenderTextureValid (RenderTexture2D) stdbool)
  (define-foreign-procedure UnloadTexture (Texture2D) void)
  (define-foreign-procedure IsTextureValid (Texture2D) stdbool)
  (define-foreign-procedure LoadRenderTexture (int int) RenderTexture2D)
  (define-foreign-procedure LoadTextureCubemap (Image int) TextureCubemap)
  (define-foreign-procedure LoadTextureFromImage (Image) Texture2D)
  (define-foreign-procedure LoadTexture ((* char)) Texture2D)
  (define-foreign-procedure ImageDrawTextEx ((* Image) Font (* char) Vector2 float float Color) void)
  (define-foreign-procedure ImageDrawText ((* Image) (* char) int int int Color) void)
  (define-foreign-procedure ImageDraw ((* Image) Image Rectangle Rectangle Color) void)
  (define-foreign-procedure ImageDrawTriangleStrip ((* Image) (* Vector2) int Color) void)
  (define-foreign-procedure ImageDrawTriangleFan ((* Image) (* Vector2) int Color) void)
  (define-foreign-procedure ImageDrawTriangleLines ((* Image) Vector2 Vector2 Vector2 Color) void)
  (define-foreign-procedure ImageDrawTriangleEx ((* Image) Vector2 Vector2 Vector2 Color Color Color) void)
  (define-foreign-procedure ImageDrawTriangle ((* Image) Vector2 Vector2 Vector2 Color) void)
  (define-foreign-procedure ImageDrawRectangleLines ((* Image) Rectangle int Color) void)
  (define-foreign-procedure ImageDrawRectangleRec ((* Image) Rectangle Color) void)
  (define-foreign-procedure ImageDrawRectangleV ((* Image) Vector2 Vector2 Color) void)
  (define-foreign-procedure ImageDrawRectangle ((* Image) int int int int Color) void)
  (define-foreign-procedure ImageDrawCircleLinesV ((* Image) Vector2 int Color) void)
  (define-foreign-procedure ImageDrawCircleLines ((* Image) int int int Color) void)
  (define-foreign-procedure ImageDrawCircleV ((* Image) Vector2 int Color) void)
  (define-foreign-procedure ImageDrawCircle ((* Image) int int int Color) void)
  (define-foreign-procedure ImageDrawLineEx ((* Image) Vector2 Vector2 int Color) void)
  (define-foreign-procedure ImageDrawLineV ((* Image) Vector2 Vector2 Color) void)
  (define-foreign-procedure ImageDrawLine ((* Image) int int int int Color) void)
  (define-foreign-procedure ImageDrawPixelV ((* Image) Vector2 Color) void)
  (define-foreign-procedure ImageDrawPixel ((* Image) int int Color) void)
  (define-foreign-procedure ImageClearBackground ((* Image) Color) void)
  (define-foreign-procedure GetImageColor (Image int int) Color)
  (define-foreign-procedure GetImageAlphaBorder (Image float) Rectangle)
  (define-foreign-procedure UnloadImagePalette ((* Color)) void)
  (define-foreign-procedure UnloadImageColors ((* Color)) void)
  (define-foreign-procedure LoadImagePalette (Image int (* int)) (* Color))
  (define-foreign-procedure LoadImageColors (Image) (* Color))
  (define-foreign-procedure ImageColorReplace ((* Image) Color Color) void)
  (define-foreign-procedure ImageColorBrightness ((* Image) int) void)
  (define-foreign-procedure ImageColorContrast ((* Image) float) void)
  (define-foreign-procedure ImageColorGrayscale ((* Image)) void)
  (define-foreign-procedure ImageColorInvert ((* Image)) void)
  (define-foreign-procedure ImageColorTint ((* Image) Color) void)
  (define-foreign-procedure ImageRotateCCW ((* Image)) void)
  (define-foreign-procedure ImageRotateCW ((* Image)) void)
  (define-foreign-procedure ImageRotate ((* Image) int) void)
  (define-foreign-procedure ImageFlipHorizontal ((* Image)) void)
  (define-foreign-procedure ImageFlipVertical ((* Image)) void)
  (define-foreign-procedure ImageDither ((* Image) int int int int) void)
  (define-foreign-procedure ImageMipmaps ((* Image)) void)
  (define-foreign-procedure ImageResizeCanvas ((* Image) int int int int Color) void)
  (define-foreign-procedure ImageResizeNN ((* Image) int int) void)
  (define-foreign-procedure ImageResize ((* Image) int int) void)
  (define-foreign-procedure ImageKernelConvolution ((* Image) (* float) int) void)
  (define-foreign-procedure ImageBlurGaussian ((* Image) int) void)
  (define-foreign-procedure ImageAlphaPremultiply ((* Image)) void)
  (define-foreign-procedure ImageAlphaMask ((* Image) Image) void)
  (define-foreign-procedure ImageAlphaClear ((* Image) Color float) void)
  (define-foreign-procedure ImageAlphaCrop ((* Image) float) void)
  (define-foreign-procedure ImageCrop ((* Image) Rectangle) void)
  (define-foreign-procedure ImageToPOT ((* Image) Color) void)
  (define-foreign-procedure ImageFormat ((* Image) int) void)
  (define-foreign-procedure ImageTextEx (Font (* char) float float Color) Image)
  (define-foreign-procedure ImageText ((* char) int Color) Image)
  (define-foreign-procedure ImageFromChannel (Image int) Image)
  (define-foreign-procedure ImageFromImage (Image Rectangle) Image)
  (define-foreign-procedure ImageCopy (Image) Image)
  (define-foreign-procedure GenImageText (int int (* char)) Image)
  (define-foreign-procedure GenImageCellular (int int int) Image)
  (define-foreign-procedure GenImagePerlinNoise (int int int int float) Image)
  (define-foreign-procedure GenImageWhiteNoise (int int float) Image)
  (define-foreign-procedure GenImageChecked (int int int int Color Color) Image)
  (define-foreign-procedure GenImageGradientSquare (int int float Color Color) Image)
  (define-foreign-procedure GenImageGradientRadial (int int float Color Color) Image)
  (define-foreign-procedure GenImageGradientLinear (int int int Color Color) Image)
  (define-foreign-procedure GenImageColor (int int Color) Image)
  (define-foreign-procedure ExportImageAsCode (Image (* char)) stdbool)
  (define-foreign-procedure ExportImageToMemory (Image (* char) (* int)) void*)
  (define-foreign-procedure ExportImage (Image (* char)) stdbool)
  (define-foreign-procedure UnloadImage (Image) void)
  (define-foreign-procedure IsImageValid (Image) stdbool)
  (define-foreign-procedure LoadImageFromScreen () Image)
  (define-foreign-procedure LoadImageFromTexture (Texture2D) Image)
  (define-foreign-procedure LoadImageFromMemory ((* char) void* int) Image)
  (define-foreign-procedure LoadImageAnimFromMemory ((* char) void* int (* int)) Image)
  (define-foreign-procedure LoadImageAnim ((* char) (* int)) Image)
  (define-foreign-procedure LoadImageRaw ((* char) int int int int) Image)
  (define-foreign-procedure LoadImage ((* char)) Image)
  (define-foreign-procedure GetCollisionRec (Rectangle Rectangle) Rectangle)
  (define-foreign-procedure CheckCollisionLines (Vector2 Vector2 Vector2 Vector2 (* Vector2)) stdbool)
  (define-foreign-procedure CheckCollisionPointPoly (Vector2 (* Vector2) int) stdbool)
  (define-foreign-procedure CheckCollisionPointLine (Vector2 Vector2 Vector2 int) stdbool)
  (define-foreign-procedure CheckCollisionPointTriangle (Vector2 Vector2 Vector2 Vector2) stdbool)
  (define-foreign-procedure CheckCollisionPointCircle (Vector2 Vector2 float) stdbool)
  (define-foreign-procedure CheckCollisionPointRec (Vector2 Rectangle) stdbool)
  (define-foreign-procedure CheckCollisionCircleLine (Vector2 float Vector2 Vector2) stdbool)
  (define-foreign-procedure CheckCollisionCircleRec (Vector2 float Rectangle) stdbool)
  (define-foreign-procedure CheckCollisionCircles (Vector2 float Vector2 float) stdbool)
  (define-foreign-procedure CheckCollisionRecs (Rectangle Rectangle) stdbool)
  (define-foreign-procedure GetSplinePointBezierCubic (Vector2 Vector2 Vector2 Vector2 float) Vector2)
  (define-foreign-procedure GetSplinePointBezierQuad (Vector2 Vector2 Vector2 float) Vector2)
  (define-foreign-procedure GetSplinePointCatmullRom (Vector2 Vector2 Vector2 Vector2 float) Vector2)
  (define-foreign-procedure GetSplinePointBasis (Vector2 Vector2 Vector2 Vector2 float) Vector2)
  (define-foreign-procedure GetSplinePointLinear (Vector2 Vector2 float) Vector2)
  (define-foreign-procedure DrawSplineSegmentBezierCubic (Vector2 Vector2 Vector2 Vector2 float Color) void)
  (define-foreign-procedure DrawSplineSegmentBezierQuadratic (Vector2 Vector2 Vector2 float Color) void)
  (define-foreign-procedure DrawSplineSegmentCatmullRom (Vector2 Vector2 Vector2 Vector2 float Color) void)
  (define-foreign-procedure DrawSplineSegmentBasis (Vector2 Vector2 Vector2 Vector2 float Color) void)
  (define-foreign-procedure DrawSplineSegmentLinear (Vector2 Vector2 float Color) void)
  (define-foreign-procedure DrawSplineBezierCubic ((* Vector2) int float Color) void)
  (define-foreign-procedure DrawSplineBezierQuadratic ((* Vector2) int float Color) void)
  (define-foreign-procedure DrawSplineCatmullRom ((* Vector2) int float Color) void)
  (define-foreign-procedure DrawSplineBasis ((* Vector2) int float Color) void)
  (define-foreign-procedure DrawSplineLinear ((* Vector2) int float Color) void)
  (define-foreign-procedure DrawPolyLinesEx (Vector2 int float float float Color) void)
  (define-foreign-procedure DrawPolyLines (Vector2 int float float Color) void)
  (define-foreign-procedure DrawPoly (Vector2 int float float Color) void)
  (define-foreign-procedure DrawTriangleStrip ((* Vector2) int Color) void)
  (define-foreign-procedure DrawTriangleFan ((* Vector2) int Color) void)
  (define-foreign-procedure DrawTriangleLines (Vector2 Vector2 Vector2 Color) void)
  (define-foreign-procedure DrawTriangle (Vector2 Vector2 Vector2 Color) void)
  (define-foreign-procedure DrawRectangleRoundedLinesEx (Rectangle float int float Color) void)
  (define-foreign-procedure DrawRectangleRoundedLines (Rectangle float int Color) void)
  (define-foreign-procedure DrawRectangleRounded (Rectangle float int Color) void)
  (define-foreign-procedure DrawRectangleLinesEx (Rectangle float Color) void)
  (define-foreign-procedure DrawRectangleLines (int int int int Color) void)
  (define-foreign-procedure DrawRectangleGradientEx (Rectangle Color Color Color Color) void)
  (define-foreign-procedure DrawRectangleGradientH (int int int int Color Color) void)
  (define-foreign-procedure DrawRectangleGradientV (int int int int Color Color) void)
  (define-foreign-procedure DrawRectanglePro (Rectangle Vector2 float Color) void)
  (define-foreign-procedure DrawRectangleRec (Rectangle Color) void)
  (define-foreign-procedure DrawRectangleV (Vector2 Vector2 Color) void)
  (define-foreign-procedure DrawRectangle (int int int int Color) void)
  (define-foreign-procedure DrawRingLines (Vector2 float float float float int Color) void)
  (define-foreign-procedure DrawRing (Vector2 float float float float int Color) void)
  (define-foreign-procedure DrawEllipseLinesV (Vector2 float float Color) void)
  (define-foreign-procedure DrawEllipseLines (int int float float Color) void)
  (define-foreign-procedure DrawEllipseV (Vector2 float float Color) void)
  (define-foreign-procedure DrawEllipse (int int float float Color) void)
  (define-foreign-procedure DrawCircleLinesV (Vector2 float Color) void)
  (define-foreign-procedure DrawCircleLines (int int float Color) void)
  (define-foreign-procedure DrawCircleV (Vector2 float Color) void)
  (define-foreign-procedure DrawCircleGradient (int int float Color Color) void)
  (define-foreign-procedure DrawCircleSectorLines (Vector2 float float float int Color) void)
  (define-foreign-procedure DrawCircleSector (Vector2 float float float int Color) void)
  (define-foreign-procedure DrawCircle (int int float Color) void)
  (define-foreign-procedure DrawLineDashed (Vector2 Vector2 int int Color) void)
  (define-foreign-procedure DrawLineBezier (Vector2 Vector2 float Color) void)
  (define-foreign-procedure DrawLineStrip ((* Vector2) int Color) void)
  (define-foreign-procedure DrawLineEx (Vector2 Vector2 float Color) void)
  (define-foreign-procedure DrawLineV (Vector2 Vector2 Color) void)
  (define-foreign-procedure DrawLine (int int int int Color) void)
  (define-foreign-procedure DrawPixelV (Vector2 Color) void)
  (define-foreign-procedure DrawPixel (int int Color) void)
  (define-foreign-procedure GetShapesTextureRectangle () Rectangle)
  (define-foreign-procedure GetShapesTexture () Texture2D)
  (define-foreign-procedure SetShapesTexture (Texture2D Rectangle) void)
  (define-foreign-procedure UpdateCameraPro ((* Camera) Vector3 Vector3 float) void)
  (define-foreign-procedure UpdateCamera ((* Camera) int) void)
  (define-foreign-procedure GetGesturePinchAngle () float)
  (define-foreign-procedure GetGesturePinchVector () Vector2)
  (define-foreign-procedure GetGestureDragAngle () float)
  (define-foreign-procedure GetGestureDragVector () Vector2)
  (define-foreign-procedure GetGestureHoldDuration () float)
  (define-foreign-procedure GetGestureDetected () int)
  (define-foreign-procedure IsGestureDetected (unsigned-int) stdbool)
  (define-foreign-procedure SetGesturesEnabled (unsigned-int) void)
  (define-foreign-procedure GetTouchPointCount () int)
  (define-foreign-procedure GetTouchPointId (int) int)
  (define-foreign-procedure GetTouchPosition (int) Vector2)
  (define-foreign-procedure GetTouchY () int)
  (define-foreign-procedure GetTouchX () int)
  (define-foreign-procedure SetMouseCursor (int) void)
  (define-foreign-procedure GetMouseWheelMoveV () Vector2)
  (define-foreign-procedure GetMouseWheelMove () float)
  (define-foreign-procedure SetMouseScale (float float) void)
  (define-foreign-procedure SetMouseOffset (int int) void)
  (define-foreign-procedure SetMousePosition (int int) void)
  (define-foreign-procedure GetMouseDelta () Vector2)
  (define-foreign-procedure GetMousePosition () Vector2)
  (define-foreign-procedure GetMouseY () int)
  (define-foreign-procedure GetMouseX () int)
  (define-foreign-procedure IsMouseButtonUp (int) stdbool)
  (define-foreign-procedure IsMouseButtonReleased (int) stdbool)
  (define-foreign-procedure IsMouseButtonDown (int) stdbool)
  (define-foreign-procedure IsMouseButtonPressed (int) stdbool)
  (define-foreign-procedure SetGamepadVibration (int float float float) void)
  (define-foreign-procedure SetGamepadMappings ((* char)) int)
  (define-foreign-procedure GetGamepadAxisMovement (int int) float)
  (define-foreign-procedure GetGamepadAxisCount (int) int)
  (define-foreign-procedure GetGamepadButtonPressed () int)
  (define-foreign-procedure IsGamepadButtonUp (int int) stdbool)
  (define-foreign-procedure IsGamepadButtonReleased (int int) stdbool)
  (define-foreign-procedure IsGamepadButtonDown (int int) stdbool)
  (define-foreign-procedure IsGamepadButtonPressed (int int) stdbool)
  (define-foreign-procedure GetGamepadName (int) (* char))
  (define-foreign-procedure IsGamepadAvailable (int) stdbool)
  (define-foreign-procedure SetExitKey (int) void)
  (define-foreign-procedure GetKeyName (int) (* char))
  (define-foreign-procedure GetCharPressed () int)
  (define-foreign-procedure GetKeyPressed () int)
  (define-foreign-procedure IsKeyUp (int) stdbool)
  (define-foreign-procedure IsKeyReleased (int) stdbool)
  (define-foreign-procedure IsKeyDown (int) stdbool)
  (define-foreign-procedure IsKeyPressedRepeat (int) stdbool)
  (define-foreign-procedure IsKeyPressed (int) stdbool)
  (define-foreign-procedure PlayAutomationEvent (AutomationEvent) void)
  (define-foreign-procedure StopAutomationEventRecording () void)
  (define-foreign-procedure StartAutomationEventRecording () void)
  (define-foreign-procedure SetAutomationEventBaseFrame (int) void)
  (define-foreign-procedure SetAutomationEventList ((* AutomationEventList)) void)
  (define-foreign-procedure ExportAutomationEventList (AutomationEventList (* char)) stdbool)
  (define-foreign-procedure UnloadAutomationEventList (AutomationEventList) void)
  (define-foreign-procedure LoadAutomationEventList ((* char)) AutomationEventList)
  (define-foreign-procedure ComputeSHA256 (void* int) (* unsigned-int))
  (define-foreign-procedure ComputeSHA1 (void* int) (* unsigned-int))
  (define-foreign-procedure ComputeMD5 (void* int) (* unsigned-int))
  (define-foreign-procedure ComputeCRC32 (void* int) unsigned-int)
  (define-foreign-procedure DecodeDataBase64 ((* char) (* int)) void*)
  (define-foreign-procedure EncodeDataBase64 (void* int (* int)) (* char))
  (define-foreign-procedure DecompressData (void* int (* int)) void*)
  (define-foreign-procedure CompressData (void* int (* int)) void*)
  (define-foreign-procedure UnloadDroppedFiles (FilePathList) void)
  (define-foreign-procedure LoadDroppedFiles () FilePathList)
  (define-foreign-procedure IsFileDropped () stdbool)
  (define-foreign-procedure UnloadDirectoryFiles (FilePathList) void)
  (define-foreign-procedure LoadDirectoryFilesEx ((* char) (* char) stdbool) FilePathList)
  (define-foreign-procedure LoadDirectoryFiles ((* char)) FilePathList)
  (define-foreign-procedure IsFileNameValid ((* char)) stdbool)
  (define-foreign-procedure IsPathFile ((* char)) stdbool)
  (define-foreign-procedure ChangeDirectory ((* char)) stdbool)
  (define-foreign-procedure MakeDirectory ((* char)) int)
  (define-foreign-procedure GetApplicationDirectory () (* char))
  (define-foreign-procedure GetWorkingDirectory () (* char))
  (define-foreign-procedure GetPrevDirectoryPath ((* char)) (* char))
  (define-foreign-procedure GetDirectoryPath ((* char)) (* char))
  (define-foreign-procedure GetFileNameWithoutExt ((* char)) (* char))
  (define-foreign-procedure GetFileName ((* char)) (* char))
  (define-foreign-procedure GetFileExtension ((* char)) (* char))
  (define-foreign-procedure GetFileModTime ((* char)) long)
  (define-foreign-procedure GetFileLength ((* char)) int)
  (define-foreign-procedure IsFileExtension ((* char) (* char)) stdbool)
  (define-foreign-procedure DirectoryExists ((* char)) stdbool)
  (define-foreign-procedure FileExists ((* char)) stdbool)
  (define-foreign-procedure FileTextFindIndex ((* char) (* char)) int)
  (define-foreign-procedure FileTextReplace ((* char) (* char) (* char)) int)
  (define-foreign-procedure FileMove ((* char) (* char)) int)
  (define-foreign-procedure FileCopy ((* char) (* char)) int)
  (define-foreign-procedure FileRemove ((* char)) int)
  (define-foreign-procedure FileRename ((* char) (* char)) int)
  (define-foreign-procedure SetSaveFileTextCallback (SaveFileTextCallback) void)
  (define-foreign-procedure SetLoadFileTextCallback (LoadFileTextCallback) void)
  (define-foreign-procedure SetSaveFileDataCallback (SaveFileDataCallback) void)
  (define-foreign-procedure SetLoadFileDataCallback (LoadFileDataCallback) void)
  (define-foreign-procedure SaveFileText ((* char) (* char)) stdbool)
  (define-foreign-procedure UnloadFileText ((* char)) void)
  (define-foreign-procedure LoadFileText ((* char)) (* char))
  (define-foreign-procedure ExportDataAsCode (void* int (* char)) stdbool)
  (define-foreign-procedure SaveFileData ((* char) void* int) stdbool)
  (define-foreign-procedure UnloadFileData (void*) void)
  (define-foreign-procedure LoadFileData ((* char) (* int)) void*)
  (define-foreign-procedure MemFree (void*) void)
  (define-foreign-procedure MemRealloc (void* unsigned-int) void*)
  (define-foreign-procedure MemAlloc (unsigned-int) void*)
  (define-foreign-procedure SetTraceLogCallback (TraceLogCallback) void)
  (define-foreign-procedure TraceLog (int (* char)) void)
  (define-foreign-procedure SetTraceLogLevel (int) void)
  (define-foreign-procedure OpenURL ((* char)) void)
  (define-foreign-procedure SetConfigFlags (unsigned-int) void)
  (define-foreign-procedure TakeScreenshot ((* char)) void)
  (define-foreign-procedure UnloadRandomSequence ((* int)) void)
  (define-foreign-procedure LoadRandomSequence (unsigned-int int int) (* int))
  (define-foreign-procedure GetRandomValue (int int) int)
  (define-foreign-procedure SetRandomSeed (unsigned-int) void)
  (define-foreign-procedure WaitTime (double) void)
  (define-foreign-procedure PollInputEvents () void)
  (define-foreign-procedure SwapScreenBuffer () void)
  (define-foreign-procedure GetFPS () int)
  (define-foreign-procedure GetTime () double)
  (define-foreign-procedure GetFrameTime () float)
  (define-foreign-procedure SetTargetFPS (int) void)
  (define-foreign-procedure GetCameraMatrix2D (Camera2D) Matrix)
  (define-foreign-procedure GetCameraMatrix (Camera) Matrix)
  (define-foreign-procedure GetScreenToWorld2D (Vector2 Camera2D) Vector2)
  (define-foreign-procedure GetWorldToScreen2D (Vector2 Camera2D) Vector2)
  (define-foreign-procedure GetWorldToScreenEx (Vector3 Camera int int) Vector2)
  (define-foreign-procedure GetWorldToScreen (Vector3 Camera) Vector2)
  (define-foreign-procedure GetScreenToWorldRayEx (Vector2 Camera int int) Ray)
  (define-foreign-procedure GetScreenToWorldRay (Vector2 Camera) Ray)
  (define-foreign-procedure UnloadShader (Shader) void)
  (define-foreign-procedure SetShaderValueTexture (Shader int Texture2D) void)
  (define-foreign-procedure SetShaderValueMatrix (Shader int Matrix) void)
  (define-foreign-procedure SetShaderValueV (Shader int void* int int) void)
  (define-foreign-procedure SetShaderValue (Shader int void* int) void)
  (define-foreign-procedure GetShaderLocationAttrib (Shader (* char)) int)
  (define-foreign-procedure GetShaderLocation (Shader (* char)) int)
  (define-foreign-procedure IsShaderValid (Shader) stdbool)
  (define-foreign-procedure LoadShaderFromMemory ((* char) (* char)) Shader)
  (define-foreign-procedure LoadShader ((* char) (* char)) Shader)
  (define-foreign-procedure UnloadVrStereoConfig (VrStereoConfig) void)
  (define-foreign-procedure LoadVrStereoConfig (VrDeviceInfo) VrStereoConfig)
  (define-foreign-procedure EndVrStereoMode () void)
  (define-foreign-procedure BeginVrStereoMode (VrStereoConfig) void)
  (define-foreign-procedure EndScissorMode () void)
  (define-foreign-procedure BeginScissorMode (int int int int) void)
  (define-foreign-procedure EndBlendMode () void)
  (define-foreign-procedure BeginBlendMode (int) void)
  (define-foreign-procedure EndShaderMode () void)
  (define-foreign-procedure BeginShaderMode (Shader) void)
  (define-foreign-procedure EndTextureMode () void)
  (define-foreign-procedure BeginTextureMode (RenderTexture2D) void)
  (define-foreign-procedure EndMode3D () void)
  (define-foreign-procedure BeginMode3D (Camera3D) void)
  (define-foreign-procedure EndMode2D () void)
  (define-foreign-procedure BeginMode2D (Camera2D) void)
  (define-foreign-procedure EndDrawing () void)
  (define-foreign-procedure BeginDrawing () void)
  (define-foreign-procedure ClearBackground (Color) void)
  (define-foreign-procedure IsCursorOnScreen () stdbool)
  (define-foreign-procedure DisableCursor () void)
  (define-foreign-procedure EnableCursor () void)
  (define-foreign-procedure IsCursorHidden () stdbool)
  (define-foreign-procedure HideCursor () void)
  (define-foreign-procedure ShowCursor () void)
  (define-foreign-procedure DisableEventWaiting () void)
  (define-foreign-procedure EnableEventWaiting () void)
  (define-foreign-procedure GetClipboardImage () Image)
  (define-foreign-procedure GetClipboardText () (* char))
  (define-foreign-procedure SetClipboardText ((* char)) void)
  (define-foreign-procedure GetMonitorName (int) (* char))
  (define-foreign-procedure GetWindowScaleDPI () Vector2)
  (define-foreign-procedure GetWindowPosition () Vector2)
  (define-foreign-procedure GetMonitorRefreshRate (int) int)
  (define-foreign-procedure GetMonitorPhysicalHeight (int) int)
  (define-foreign-procedure GetMonitorPhysicalWidth (int) int)
  (define-foreign-procedure GetMonitorHeight (int) int)
  (define-foreign-procedure GetMonitorWidth (int) int)
  (define-foreign-procedure GetMonitorPosition (int) Vector2)
  (define-foreign-procedure GetCurrentMonitor () int)
  (define-foreign-procedure GetMonitorCount () int)
  (define-foreign-procedure GetRenderHeight () int)
  (define-foreign-procedure GetRenderWidth () int)
  (define-foreign-procedure GetScreenHeight () int)
  (define-foreign-procedure GetScreenWidth () int)
  (define-foreign-procedure GetWindowHandle () void*)
  (define-foreign-procedure SetWindowFocused () void)
  (define-foreign-procedure SetWindowOpacity (float) void)
  (define-foreign-procedure SetWindowSize (int int) void)
  (define-foreign-procedure SetWindowMaxSize (int int) void)
  (define-foreign-procedure SetWindowMinSize (int int) void)
  (define-foreign-procedure SetWindowMonitor (int) void)
  (define-foreign-procedure SetWindowPosition (int int) void)
  (define-foreign-procedure SetWindowTitle ((* char)) void)
  (define-foreign-procedure SetWindowIcons ((* Image) int) void)
  (define-foreign-procedure SetWindowIcon (Image) void)
  (define-foreign-procedure RestoreWindow () void)
  (define-foreign-procedure MinimizeWindow () void)
  (define-foreign-procedure MaximizeWindow () void)
  (define-foreign-procedure ToggleBorderlessWindowed () void)
  (define-foreign-procedure ToggleFullscreen () void)
  (define-foreign-procedure ClearWindowState (unsigned-int) void)
  (define-foreign-procedure SetWindowState (unsigned-int) void)
  (define-foreign-procedure IsWindowState (unsigned-int) stdbool)
  (define-foreign-procedure IsWindowResized () stdbool)
  (define-foreign-procedure IsWindowFocused () stdbool)
  (define-foreign-procedure IsWindowMaximized () stdbool)
  (define-foreign-procedure IsWindowMinimized () stdbool)
  (define-foreign-procedure IsWindowHidden () stdbool)
  (define-foreign-procedure IsWindowFullscreen () stdbool)
  (define-foreign-procedure IsWindowReady () stdbool)
  (define-foreign-procedure WindowShouldClose () stdbool)
  (define-foreign-procedure CloseWindow () void)
  (define-foreign-procedure InitWindow (int int (* char)) void)

  (load-shared-object "libraylib.so")

  (meta-cond
    [(= (optimize-level) 0)
      (assert (foreign-entry? "DetachAudioMixedProcessor"))
      (assert (foreign-entry? "AttachAudioMixedProcessor"))
      (assert (foreign-entry? "DetachAudioStreamProcessor"))
      (assert (foreign-entry? "AttachAudioStreamProcessor"))
      (assert (foreign-entry? "SetAudioStreamCallback"))
      (assert (foreign-entry? "SetAudioStreamBufferSizeDefault"))
      (assert (foreign-entry? "SetAudioStreamPan"))
      (assert (foreign-entry? "SetAudioStreamPitch"))
      (assert (foreign-entry? "SetAudioStreamVolume"))
      (assert (foreign-entry? "StopAudioStream"))
      (assert (foreign-entry? "IsAudioStreamPlaying"))
      (assert (foreign-entry? "ResumeAudioStream"))
      (assert (foreign-entry? "PauseAudioStream"))
      (assert (foreign-entry? "PlayAudioStream"))
      (assert (foreign-entry? "IsAudioStreamProcessed"))
      (assert (foreign-entry? "UpdateAudioStream"))
      (assert (foreign-entry? "UnloadAudioStream"))
      (assert (foreign-entry? "IsAudioStreamValid"))
      (assert (foreign-entry? "LoadAudioStream"))
      (assert (foreign-entry? "GetMusicTimePlayed"))
      (assert (foreign-entry? "GetMusicTimeLength"))
      (assert (foreign-entry? "SetMusicPan"))
      (assert (foreign-entry? "SetMusicPitch"))
      (assert (foreign-entry? "SetMusicVolume"))
      (assert (foreign-entry? "SeekMusicStream"))
      (assert (foreign-entry? "ResumeMusicStream"))
      (assert (foreign-entry? "PauseMusicStream"))
      (assert (foreign-entry? "StopMusicStream"))
      (assert (foreign-entry? "UpdateMusicStream"))
      (assert (foreign-entry? "IsMusicStreamPlaying"))
      (assert (foreign-entry? "PlayMusicStream"))
      (assert (foreign-entry? "UnloadMusicStream"))
      (assert (foreign-entry? "IsMusicValid"))
      (assert (foreign-entry? "LoadMusicStreamFromMemory"))
      (assert (foreign-entry? "LoadMusicStream"))
      (assert (foreign-entry? "UnloadWaveSamples"))
      (assert (foreign-entry? "LoadWaveSamples"))
      (assert (foreign-entry? "WaveFormat"))
      (assert (foreign-entry? "WaveCrop"))
      (assert (foreign-entry? "WaveCopy"))
      (assert (foreign-entry? "SetSoundPan"))
      (assert (foreign-entry? "SetSoundPitch"))
      (assert (foreign-entry? "SetSoundVolume"))
      (assert (foreign-entry? "IsSoundPlaying"))
      (assert (foreign-entry? "ResumeSound"))
      (assert (foreign-entry? "PauseSound"))
      (assert (foreign-entry? "StopSound"))
      (assert (foreign-entry? "PlaySound"))
      (assert (foreign-entry? "ExportWaveAsCode"))
      (assert (foreign-entry? "ExportWave"))
      (assert (foreign-entry? "UnloadSoundAlias"))
      (assert (foreign-entry? "UnloadSound"))
      (assert (foreign-entry? "UnloadWave"))
      (assert (foreign-entry? "UpdateSound"))
      (assert (foreign-entry? "IsSoundValid"))
      (assert (foreign-entry? "LoadSoundAlias"))
      (assert (foreign-entry? "LoadSoundFromWave"))
      (assert (foreign-entry? "LoadSound"))
      (assert (foreign-entry? "IsWaveValid"))
      (assert (foreign-entry? "LoadWaveFromMemory"))
      (assert (foreign-entry? "LoadWave"))
      (assert (foreign-entry? "GetMasterVolume"))
      (assert (foreign-entry? "SetMasterVolume"))
      (assert (foreign-entry? "IsAudioDeviceReady"))
      (assert (foreign-entry? "CloseAudioDevice"))
      (assert (foreign-entry? "InitAudioDevice"))
      (assert (foreign-entry? "GetRayCollisionQuad"))
      (assert (foreign-entry? "GetRayCollisionTriangle"))
      (assert (foreign-entry? "GetRayCollisionMesh"))
      (assert (foreign-entry? "GetRayCollisionBox"))
      (assert (foreign-entry? "GetRayCollisionSphere"))
      (assert (foreign-entry? "CheckCollisionBoxSphere"))
      (assert (foreign-entry? "CheckCollisionBoxes"))
      (assert (foreign-entry? "CheckCollisionSpheres"))
      (assert (foreign-entry? "IsModelAnimationValid"))
      (assert (foreign-entry? "UnloadModelAnimations"))
      (assert (foreign-entry? "UnloadModelAnimation"))
      (assert (foreign-entry? "UpdateModelAnimationBones"))
      (assert (foreign-entry? "UpdateModelAnimation"))
      (assert (foreign-entry? "LoadModelAnimations"))
      (assert (foreign-entry? "SetModelMeshMaterial"))
      (assert (foreign-entry? "SetMaterialTexture"))
      (assert (foreign-entry? "UnloadMaterial"))
      (assert (foreign-entry? "IsMaterialValid"))
      (assert (foreign-entry? "LoadMaterialDefault"))
      (assert (foreign-entry? "LoadMaterials"))
      (assert (foreign-entry? "GenMeshCubicmap"))
      (assert (foreign-entry? "GenMeshHeightmap"))
      (assert (foreign-entry? "GenMeshKnot"))
      (assert (foreign-entry? "GenMeshTorus"))
      (assert (foreign-entry? "GenMeshCone"))
      (assert (foreign-entry? "GenMeshCylinder"))
      (assert (foreign-entry? "GenMeshHemiSphere"))
      (assert (foreign-entry? "GenMeshSphere"))
      (assert (foreign-entry? "GenMeshCube"))
      (assert (foreign-entry? "GenMeshPlane"))
      (assert (foreign-entry? "GenMeshPoly"))
      (assert (foreign-entry? "ExportMeshAsCode"))
      (assert (foreign-entry? "ExportMesh"))
      (assert (foreign-entry? "GenMeshTangents"))
      (assert (foreign-entry? "GetMeshBoundingBox"))
      (assert (foreign-entry? "DrawMeshInstanced"))
      (assert (foreign-entry? "DrawMesh"))
      (assert (foreign-entry? "UnloadMesh"))
      (assert (foreign-entry? "UpdateMeshBuffer"))
      (assert (foreign-entry? "UploadMesh"))
      (assert (foreign-entry? "DrawBillboardPro"))
      (assert (foreign-entry? "DrawBillboardRec"))
      (assert (foreign-entry? "DrawBillboard"))
      (assert (foreign-entry? "DrawBoundingBox"))
      (assert (foreign-entry? "DrawModelPointsEx"))
      (assert (foreign-entry? "DrawModelPoints"))
      (assert (foreign-entry? "DrawModelWiresEx"))
      (assert (foreign-entry? "DrawModelWires"))
      (assert (foreign-entry? "DrawModelEx"))
      (assert (foreign-entry? "DrawModel"))
      (assert (foreign-entry? "GetModelBoundingBox"))
      (assert (foreign-entry? "UnloadModel"))
      (assert (foreign-entry? "IsModelValid"))
      (assert (foreign-entry? "LoadModelFromMesh"))
      (assert (foreign-entry? "LoadModel"))
      (assert (foreign-entry? "DrawGrid"))
      (assert (foreign-entry? "DrawRay"))
      (assert (foreign-entry? "DrawPlane"))
      (assert (foreign-entry? "DrawCapsuleWires"))
      (assert (foreign-entry? "DrawCapsule"))
      (assert (foreign-entry? "DrawCylinderWiresEx"))
      (assert (foreign-entry? "DrawCylinderWires"))
      (assert (foreign-entry? "DrawCylinderEx"))
      (assert (foreign-entry? "DrawCylinder"))
      (assert (foreign-entry? "DrawSphereWires"))
      (assert (foreign-entry? "DrawSphereEx"))
      (assert (foreign-entry? "DrawSphere"))
      (assert (foreign-entry? "DrawCubeWiresV"))
      (assert (foreign-entry? "DrawCubeWires"))
      (assert (foreign-entry? "DrawCubeV"))
      (assert (foreign-entry? "DrawCube"))
      (assert (foreign-entry? "DrawTriangleStrip3D"))
      (assert (foreign-entry? "DrawTriangle3D"))
      (assert (foreign-entry? "DrawCircle3D"))
      (assert (foreign-entry? "DrawPoint3D"))
      (assert (foreign-entry? "DrawLine3D"))
      (assert (foreign-entry? "TextToFloat"))
      (assert (foreign-entry? "TextToInteger"))
      (assert (foreign-entry? "TextToCamel"))
      (assert (foreign-entry? "TextToSnake"))
      (assert (foreign-entry? "TextToPascal"))
      (assert (foreign-entry? "TextToLower"))
      (assert (foreign-entry? "TextToUpper"))
      (assert (foreign-entry? "TextFindIndex"))
      (assert (foreign-entry? "TextAppend"))
      (assert (foreign-entry? "TextSplit"))
      (assert (foreign-entry? "TextJoin"))
      (assert (foreign-entry? "TextInsert"))
      (assert (foreign-entry? "TextReplaceBetween"))
      (assert (foreign-entry? "TextReplace"))
      (assert (foreign-entry? "GetTextBetween"))
      (assert (foreign-entry? "TextRemoveSpaces"))
      (assert (foreign-entry? "TextSubtext"))
      (assert (foreign-entry? "TextFormat"))
      (assert (foreign-entry? "TextLength"))
      (assert (foreign-entry? "TextIsEqual"))
      (assert (foreign-entry? "TextCopy"))
      (assert (foreign-entry? "UnloadTextLines"))
      (assert (foreign-entry? "LoadTextLines"))
      (assert (foreign-entry? "CodepointToUTF8"))
      (assert (foreign-entry? "GetCodepointPrevious"))
      (assert (foreign-entry? "GetCodepointNext"))
      (assert (foreign-entry? "GetCodepoint"))
      (assert (foreign-entry? "GetCodepointCount"))
      (assert (foreign-entry? "UnloadCodepoints"))
      (assert (foreign-entry? "LoadCodepoints"))
      (assert (foreign-entry? "UnloadUTF8"))
      (assert (foreign-entry? "LoadUTF8"))
      (assert (foreign-entry? "GetGlyphAtlasRec"))
      (assert (foreign-entry? "GetGlyphInfo"))
      (assert (foreign-entry? "GetGlyphIndex"))
      (assert (foreign-entry? "MeasureTextEx"))
      (assert (foreign-entry? "MeasureText"))
      (assert (foreign-entry? "SetTextLineSpacing"))
      (assert (foreign-entry? "DrawTextCodepoints"))
      (assert (foreign-entry? "DrawTextCodepoint"))
      (assert (foreign-entry? "DrawTextPro"))
      (assert (foreign-entry? "DrawTextEx"))
      (assert (foreign-entry? "DrawText"))
      (assert (foreign-entry? "DrawFPS"))
      (assert (foreign-entry? "ExportFontAsCode"))
      (assert (foreign-entry? "UnloadFont"))
      (assert (foreign-entry? "UnloadFontData"))
      (assert (foreign-entry? "GenImageFontAtlas"))
      (assert (foreign-entry? "LoadFontData"))
      (assert (foreign-entry? "IsFontValid"))
      (assert (foreign-entry? "LoadFontFromMemory"))
      (assert (foreign-entry? "LoadFontFromImage"))
      (assert (foreign-entry? "LoadFontEx"))
      (assert (foreign-entry? "LoadFont"))
      (assert (foreign-entry? "GetFontDefault"))
      (assert (foreign-entry? "GetPixelDataSize"))
      (assert (foreign-entry? "SetPixelColor"))
      (assert (foreign-entry? "GetPixelColor"))
      (assert (foreign-entry? "GetColor"))
      (assert (foreign-entry? "ColorLerp"))
      (assert (foreign-entry? "ColorAlphaBlend"))
      (assert (foreign-entry? "ColorAlpha"))
      (assert (foreign-entry? "ColorContrast"))
      (assert (foreign-entry? "ColorBrightness"))
      (assert (foreign-entry? "ColorTint"))
      (assert (foreign-entry? "ColorFromHSV"))
      (assert (foreign-entry? "ColorToHSV"))
      (assert (foreign-entry? "ColorFromNormalized"))
      (assert (foreign-entry? "ColorNormalize"))
      (assert (foreign-entry? "ColorToInt"))
      (assert (foreign-entry? "Fade"))
      (assert (foreign-entry? "ColorIsEqual"))
      (assert (foreign-entry? "DrawTextureNPatch"))
      (assert (foreign-entry? "DrawTexturePro"))
      (assert (foreign-entry? "DrawTextureRec"))
      (assert (foreign-entry? "DrawTextureEx"))
      (assert (foreign-entry? "DrawTextureV"))
      (assert (foreign-entry? "DrawTexture"))
      (assert (foreign-entry? "SetTextureWrap"))
      (assert (foreign-entry? "SetTextureFilter"))
      (assert (foreign-entry? "GenTextureMipmaps"))
      (assert (foreign-entry? "UpdateTextureRec"))
      (assert (foreign-entry? "UpdateTexture"))
      (assert (foreign-entry? "UnloadRenderTexture"))
      (assert (foreign-entry? "IsRenderTextureValid"))
      (assert (foreign-entry? "UnloadTexture"))
      (assert (foreign-entry? "IsTextureValid"))
      (assert (foreign-entry? "LoadRenderTexture"))
      (assert (foreign-entry? "LoadTextureCubemap"))
      (assert (foreign-entry? "LoadTextureFromImage"))
      (assert (foreign-entry? "LoadTexture"))
      (assert (foreign-entry? "ImageDrawTextEx"))
      (assert (foreign-entry? "ImageDrawText"))
      (assert (foreign-entry? "ImageDraw"))
      (assert (foreign-entry? "ImageDrawTriangleStrip"))
      (assert (foreign-entry? "ImageDrawTriangleFan"))
      (assert (foreign-entry? "ImageDrawTriangleLines"))
      (assert (foreign-entry? "ImageDrawTriangleEx"))
      (assert (foreign-entry? "ImageDrawTriangle"))
      (assert (foreign-entry? "ImageDrawRectangleLines"))
      (assert (foreign-entry? "ImageDrawRectangleRec"))
      (assert (foreign-entry? "ImageDrawRectangleV"))
      (assert (foreign-entry? "ImageDrawRectangle"))
      (assert (foreign-entry? "ImageDrawCircleLinesV"))
      (assert (foreign-entry? "ImageDrawCircleLines"))
      (assert (foreign-entry? "ImageDrawCircleV"))
      (assert (foreign-entry? "ImageDrawCircle"))
      (assert (foreign-entry? "ImageDrawLineEx"))
      (assert (foreign-entry? "ImageDrawLineV"))
      (assert (foreign-entry? "ImageDrawLine"))
      (assert (foreign-entry? "ImageDrawPixelV"))
      (assert (foreign-entry? "ImageDrawPixel"))
      (assert (foreign-entry? "ImageClearBackground"))
      (assert (foreign-entry? "GetImageColor"))
      (assert (foreign-entry? "GetImageAlphaBorder"))
      (assert (foreign-entry? "UnloadImagePalette"))
      (assert (foreign-entry? "UnloadImageColors"))
      (assert (foreign-entry? "LoadImagePalette"))
      (assert (foreign-entry? "LoadImageColors"))
      (assert (foreign-entry? "ImageColorReplace"))
      (assert (foreign-entry? "ImageColorBrightness"))
      (assert (foreign-entry? "ImageColorContrast"))
      (assert (foreign-entry? "ImageColorGrayscale"))
      (assert (foreign-entry? "ImageColorInvert"))
      (assert (foreign-entry? "ImageColorTint"))
      (assert (foreign-entry? "ImageRotateCCW"))
      (assert (foreign-entry? "ImageRotateCW"))
      (assert (foreign-entry? "ImageRotate"))
      (assert (foreign-entry? "ImageFlipHorizontal"))
      (assert (foreign-entry? "ImageFlipVertical"))
      (assert (foreign-entry? "ImageDither"))
      (assert (foreign-entry? "ImageMipmaps"))
      (assert (foreign-entry? "ImageResizeCanvas"))
      (assert (foreign-entry? "ImageResizeNN"))
      (assert (foreign-entry? "ImageResize"))
      (assert (foreign-entry? "ImageKernelConvolution"))
      (assert (foreign-entry? "ImageBlurGaussian"))
      (assert (foreign-entry? "ImageAlphaPremultiply"))
      (assert (foreign-entry? "ImageAlphaMask"))
      (assert (foreign-entry? "ImageAlphaClear"))
      (assert (foreign-entry? "ImageAlphaCrop"))
      (assert (foreign-entry? "ImageCrop"))
      (assert (foreign-entry? "ImageToPOT"))
      (assert (foreign-entry? "ImageFormat"))
      (assert (foreign-entry? "ImageTextEx"))
      (assert (foreign-entry? "ImageText"))
      (assert (foreign-entry? "ImageFromChannel"))
      (assert (foreign-entry? "ImageFromImage"))
      (assert (foreign-entry? "ImageCopy"))
      (assert (foreign-entry? "GenImageText"))
      (assert (foreign-entry? "GenImageCellular"))
      (assert (foreign-entry? "GenImagePerlinNoise"))
      (assert (foreign-entry? "GenImageWhiteNoise"))
      (assert (foreign-entry? "GenImageChecked"))
      (assert (foreign-entry? "GenImageGradientSquare"))
      (assert (foreign-entry? "GenImageGradientRadial"))
      (assert (foreign-entry? "GenImageGradientLinear"))
      (assert (foreign-entry? "GenImageColor"))
      (assert (foreign-entry? "ExportImageAsCode"))
      (assert (foreign-entry? "ExportImageToMemory"))
      (assert (foreign-entry? "ExportImage"))
      (assert (foreign-entry? "UnloadImage"))
      (assert (foreign-entry? "IsImageValid"))
      (assert (foreign-entry? "LoadImageFromScreen"))
      (assert (foreign-entry? "LoadImageFromTexture"))
      (assert (foreign-entry? "LoadImageFromMemory"))
      (assert (foreign-entry? "LoadImageAnimFromMemory"))
      (assert (foreign-entry? "LoadImageAnim"))
      (assert (foreign-entry? "LoadImageRaw"))
      (assert (foreign-entry? "LoadImage"))
      (assert (foreign-entry? "GetCollisionRec"))
      (assert (foreign-entry? "CheckCollisionLines"))
      (assert (foreign-entry? "CheckCollisionPointPoly"))
      (assert (foreign-entry? "CheckCollisionPointLine"))
      (assert (foreign-entry? "CheckCollisionPointTriangle"))
      (assert (foreign-entry? "CheckCollisionPointCircle"))
      (assert (foreign-entry? "CheckCollisionPointRec"))
      (assert (foreign-entry? "CheckCollisionCircleLine"))
      (assert (foreign-entry? "CheckCollisionCircleRec"))
      (assert (foreign-entry? "CheckCollisionCircles"))
      (assert (foreign-entry? "CheckCollisionRecs"))
      (assert (foreign-entry? "GetSplinePointBezierCubic"))
      (assert (foreign-entry? "GetSplinePointBezierQuad"))
      (assert (foreign-entry? "GetSplinePointCatmullRom"))
      (assert (foreign-entry? "GetSplinePointBasis"))
      (assert (foreign-entry? "GetSplinePointLinear"))
      (assert (foreign-entry? "DrawSplineSegmentBezierCubic"))
      (assert (foreign-entry? "DrawSplineSegmentBezierQuadratic"))
      (assert (foreign-entry? "DrawSplineSegmentCatmullRom"))
      (assert (foreign-entry? "DrawSplineSegmentBasis"))
      (assert (foreign-entry? "DrawSplineSegmentLinear"))
      (assert (foreign-entry? "DrawSplineBezierCubic"))
      (assert (foreign-entry? "DrawSplineBezierQuadratic"))
      (assert (foreign-entry? "DrawSplineCatmullRom"))
      (assert (foreign-entry? "DrawSplineBasis"))
      (assert (foreign-entry? "DrawSplineLinear"))
      (assert (foreign-entry? "DrawPolyLinesEx"))
      (assert (foreign-entry? "DrawPolyLines"))
      (assert (foreign-entry? "DrawPoly"))
      (assert (foreign-entry? "DrawTriangleStrip"))
      (assert (foreign-entry? "DrawTriangleFan"))
      (assert (foreign-entry? "DrawTriangleLines"))
      (assert (foreign-entry? "DrawTriangle"))
      (assert (foreign-entry? "DrawRectangleRoundedLinesEx"))
      (assert (foreign-entry? "DrawRectangleRoundedLines"))
      (assert (foreign-entry? "DrawRectangleRounded"))
      (assert (foreign-entry? "DrawRectangleLinesEx"))
      (assert (foreign-entry? "DrawRectangleLines"))
      (assert (foreign-entry? "DrawRectangleGradientEx"))
      (assert (foreign-entry? "DrawRectangleGradientH"))
      (assert (foreign-entry? "DrawRectangleGradientV"))
      (assert (foreign-entry? "DrawRectanglePro"))
      (assert (foreign-entry? "DrawRectangleRec"))
      (assert (foreign-entry? "DrawRectangleV"))
      (assert (foreign-entry? "DrawRectangle"))
      (assert (foreign-entry? "DrawRingLines"))
      (assert (foreign-entry? "DrawRing"))
      (assert (foreign-entry? "DrawEllipseLinesV"))
      (assert (foreign-entry? "DrawEllipseLines"))
      (assert (foreign-entry? "DrawEllipseV"))
      (assert (foreign-entry? "DrawEllipse"))
      (assert (foreign-entry? "DrawCircleLinesV"))
      (assert (foreign-entry? "DrawCircleLines"))
      (assert (foreign-entry? "DrawCircleV"))
      (assert (foreign-entry? "DrawCircleGradient"))
      (assert (foreign-entry? "DrawCircleSectorLines"))
      (assert (foreign-entry? "DrawCircleSector"))
      (assert (foreign-entry? "DrawCircle"))
      (assert (foreign-entry? "DrawLineDashed"))
      (assert (foreign-entry? "DrawLineBezier"))
      (assert (foreign-entry? "DrawLineStrip"))
      (assert (foreign-entry? "DrawLineEx"))
      (assert (foreign-entry? "DrawLineV"))
      (assert (foreign-entry? "DrawLine"))
      (assert (foreign-entry? "DrawPixelV"))
      (assert (foreign-entry? "DrawPixel"))
      (assert (foreign-entry? "GetShapesTextureRectangle"))
      (assert (foreign-entry? "GetShapesTexture"))
      (assert (foreign-entry? "SetShapesTexture"))
      (assert (foreign-entry? "UpdateCameraPro"))
      (assert (foreign-entry? "UpdateCamera"))
      (assert (foreign-entry? "GetGesturePinchAngle"))
      (assert (foreign-entry? "GetGesturePinchVector"))
      (assert (foreign-entry? "GetGestureDragAngle"))
      (assert (foreign-entry? "GetGestureDragVector"))
      (assert (foreign-entry? "GetGestureHoldDuration"))
      (assert (foreign-entry? "GetGestureDetected"))
      (assert (foreign-entry? "IsGestureDetected"))
      (assert (foreign-entry? "SetGesturesEnabled"))
      (assert (foreign-entry? "GetTouchPointCount"))
      (assert (foreign-entry? "GetTouchPointId"))
      (assert (foreign-entry? "GetTouchPosition"))
      (assert (foreign-entry? "GetTouchY"))
      (assert (foreign-entry? "GetTouchX"))
      (assert (foreign-entry? "SetMouseCursor"))
      (assert (foreign-entry? "GetMouseWheelMoveV"))
      (assert (foreign-entry? "GetMouseWheelMove"))
      (assert (foreign-entry? "SetMouseScale"))
      (assert (foreign-entry? "SetMouseOffset"))
      (assert (foreign-entry? "SetMousePosition"))
      (assert (foreign-entry? "GetMouseDelta"))
      (assert (foreign-entry? "GetMousePosition"))
      (assert (foreign-entry? "GetMouseY"))
      (assert (foreign-entry? "GetMouseX"))
      (assert (foreign-entry? "IsMouseButtonUp"))
      (assert (foreign-entry? "IsMouseButtonReleased"))
      (assert (foreign-entry? "IsMouseButtonDown"))
      (assert (foreign-entry? "IsMouseButtonPressed"))
      (assert (foreign-entry? "SetGamepadVibration"))
      (assert (foreign-entry? "SetGamepadMappings"))
      (assert (foreign-entry? "GetGamepadAxisMovement"))
      (assert (foreign-entry? "GetGamepadAxisCount"))
      (assert (foreign-entry? "GetGamepadButtonPressed"))
      (assert (foreign-entry? "IsGamepadButtonUp"))
      (assert (foreign-entry? "IsGamepadButtonReleased"))
      (assert (foreign-entry? "IsGamepadButtonDown"))
      (assert (foreign-entry? "IsGamepadButtonPressed"))
      (assert (foreign-entry? "GetGamepadName"))
      (assert (foreign-entry? "IsGamepadAvailable"))
      (assert (foreign-entry? "SetExitKey"))
      (assert (foreign-entry? "GetKeyName"))
      (assert (foreign-entry? "GetCharPressed"))
      (assert (foreign-entry? "GetKeyPressed"))
      (assert (foreign-entry? "IsKeyUp"))
      (assert (foreign-entry? "IsKeyReleased"))
      (assert (foreign-entry? "IsKeyDown"))
      (assert (foreign-entry? "IsKeyPressedRepeat"))
      (assert (foreign-entry? "IsKeyPressed"))
      (assert (foreign-entry? "PlayAutomationEvent"))
      (assert (foreign-entry? "StopAutomationEventRecording"))
      (assert (foreign-entry? "StartAutomationEventRecording"))
      (assert (foreign-entry? "SetAutomationEventBaseFrame"))
      (assert (foreign-entry? "SetAutomationEventList"))
      (assert (foreign-entry? "ExportAutomationEventList"))
      (assert (foreign-entry? "UnloadAutomationEventList"))
      (assert (foreign-entry? "LoadAutomationEventList"))
      (assert (foreign-entry? "ComputeSHA256"))
      (assert (foreign-entry? "ComputeSHA1"))
      (assert (foreign-entry? "ComputeMD5"))
      (assert (foreign-entry? "ComputeCRC32"))
      (assert (foreign-entry? "DecodeDataBase64"))
      (assert (foreign-entry? "EncodeDataBase64"))
      (assert (foreign-entry? "DecompressData"))
      (assert (foreign-entry? "CompressData"))
      (assert (foreign-entry? "UnloadDroppedFiles"))
      (assert (foreign-entry? "LoadDroppedFiles"))
      (assert (foreign-entry? "IsFileDropped"))
      (assert (foreign-entry? "UnloadDirectoryFiles"))
      (assert (foreign-entry? "LoadDirectoryFilesEx"))
      (assert (foreign-entry? "LoadDirectoryFiles"))
      (assert (foreign-entry? "IsFileNameValid"))
      (assert (foreign-entry? "IsPathFile"))
      (assert (foreign-entry? "ChangeDirectory"))
      (assert (foreign-entry? "MakeDirectory"))
      (assert (foreign-entry? "GetApplicationDirectory"))
      (assert (foreign-entry? "GetWorkingDirectory"))
      (assert (foreign-entry? "GetPrevDirectoryPath"))
      (assert (foreign-entry? "GetDirectoryPath"))
      (assert (foreign-entry? "GetFileNameWithoutExt"))
      (assert (foreign-entry? "GetFileName"))
      (assert (foreign-entry? "GetFileExtension"))
      (assert (foreign-entry? "GetFileModTime"))
      (assert (foreign-entry? "GetFileLength"))
      (assert (foreign-entry? "IsFileExtension"))
      (assert (foreign-entry? "DirectoryExists"))
      (assert (foreign-entry? "FileExists"))
      (assert (foreign-entry? "FileTextFindIndex"))
      (assert (foreign-entry? "FileTextReplace"))
      (assert (foreign-entry? "FileMove"))
      (assert (foreign-entry? "FileCopy"))
      (assert (foreign-entry? "FileRemove"))
      (assert (foreign-entry? "FileRename"))
      (assert (foreign-entry? "SetSaveFileTextCallback"))
      (assert (foreign-entry? "SetLoadFileTextCallback"))
      (assert (foreign-entry? "SetSaveFileDataCallback"))
      (assert (foreign-entry? "SetLoadFileDataCallback"))
      (assert (foreign-entry? "SaveFileText"))
      (assert (foreign-entry? "UnloadFileText"))
      (assert (foreign-entry? "LoadFileText"))
      (assert (foreign-entry? "ExportDataAsCode"))
      (assert (foreign-entry? "SaveFileData"))
      (assert (foreign-entry? "UnloadFileData"))
      (assert (foreign-entry? "LoadFileData"))
      (assert (foreign-entry? "MemFree"))
      (assert (foreign-entry? "MemRealloc"))
      (assert (foreign-entry? "MemAlloc"))
      (assert (foreign-entry? "SetTraceLogCallback"))
      (assert (foreign-entry? "TraceLog"))
      (assert (foreign-entry? "SetTraceLogLevel"))
      (assert (foreign-entry? "OpenURL"))
      (assert (foreign-entry? "SetConfigFlags"))
      (assert (foreign-entry? "TakeScreenshot"))
      (assert (foreign-entry? "UnloadRandomSequence"))
      (assert (foreign-entry? "LoadRandomSequence"))
      (assert (foreign-entry? "GetRandomValue"))
      (assert (foreign-entry? "SetRandomSeed"))
      (assert (foreign-entry? "WaitTime"))
      (assert (foreign-entry? "PollInputEvents"))
      (assert (foreign-entry? "SwapScreenBuffer"))
      (assert (foreign-entry? "GetFPS"))
      (assert (foreign-entry? "GetTime"))
      (assert (foreign-entry? "GetFrameTime"))
      (assert (foreign-entry? "SetTargetFPS"))
      (assert (foreign-entry? "GetCameraMatrix2D"))
      (assert (foreign-entry? "GetCameraMatrix"))
      (assert (foreign-entry? "GetScreenToWorld2D"))
      (assert (foreign-entry? "GetWorldToScreen2D"))
      (assert (foreign-entry? "GetWorldToScreenEx"))
      (assert (foreign-entry? "GetWorldToScreen"))
      (assert (foreign-entry? "GetScreenToWorldRayEx"))
      (assert (foreign-entry? "GetScreenToWorldRay"))
      (assert (foreign-entry? "UnloadShader"))
      (assert (foreign-entry? "SetShaderValueTexture"))
      (assert (foreign-entry? "SetShaderValueMatrix"))
      (assert (foreign-entry? "SetShaderValueV"))
      (assert (foreign-entry? "SetShaderValue"))
      (assert (foreign-entry? "GetShaderLocationAttrib"))
      (assert (foreign-entry? "GetShaderLocation"))
      (assert (foreign-entry? "IsShaderValid"))
      (assert (foreign-entry? "LoadShaderFromMemory"))
      (assert (foreign-entry? "LoadShader"))
      (assert (foreign-entry? "UnloadVrStereoConfig"))
      (assert (foreign-entry? "LoadVrStereoConfig"))
      (assert (foreign-entry? "EndVrStereoMode"))
      (assert (foreign-entry? "BeginVrStereoMode"))
      (assert (foreign-entry? "EndScissorMode"))
      (assert (foreign-entry? "BeginScissorMode"))
      (assert (foreign-entry? "EndBlendMode"))
      (assert (foreign-entry? "BeginBlendMode"))
      (assert (foreign-entry? "EndShaderMode"))
      (assert (foreign-entry? "BeginShaderMode"))
      (assert (foreign-entry? "EndTextureMode"))
      (assert (foreign-entry? "BeginTextureMode"))
      (assert (foreign-entry? "EndMode3D"))
      (assert (foreign-entry? "BeginMode3D"))
      (assert (foreign-entry? "EndMode2D"))
      (assert (foreign-entry? "BeginMode2D"))
      (assert (foreign-entry? "EndDrawing"))
      (assert (foreign-entry? "BeginDrawing"))
      (assert (foreign-entry? "ClearBackground"))
      (assert (foreign-entry? "IsCursorOnScreen"))
      (assert (foreign-entry? "DisableCursor"))
      (assert (foreign-entry? "EnableCursor"))
      (assert (foreign-entry? "IsCursorHidden"))
      (assert (foreign-entry? "HideCursor"))
      (assert (foreign-entry? "ShowCursor"))
      (assert (foreign-entry? "DisableEventWaiting"))
      (assert (foreign-entry? "EnableEventWaiting"))
      (assert (foreign-entry? "GetClipboardImage"))
      (assert (foreign-entry? "GetClipboardText"))
      (assert (foreign-entry? "SetClipboardText"))
      (assert (foreign-entry? "GetMonitorName"))
      (assert (foreign-entry? "GetWindowScaleDPI"))
      (assert (foreign-entry? "GetWindowPosition"))
      (assert (foreign-entry? "GetMonitorRefreshRate"))
      (assert (foreign-entry? "GetMonitorPhysicalHeight"))
      (assert (foreign-entry? "GetMonitorPhysicalWidth"))
      (assert (foreign-entry? "GetMonitorHeight"))
      (assert (foreign-entry? "GetMonitorWidth"))
      (assert (foreign-entry? "GetMonitorPosition"))
      (assert (foreign-entry? "GetCurrentMonitor"))
      (assert (foreign-entry? "GetMonitorCount"))
      (assert (foreign-entry? "GetRenderHeight"))
      (assert (foreign-entry? "GetRenderWidth"))
      (assert (foreign-entry? "GetScreenHeight"))
      (assert (foreign-entry? "GetScreenWidth"))
      (assert (foreign-entry? "GetWindowHandle"))
      (assert (foreign-entry? "SetWindowFocused"))
      (assert (foreign-entry? "SetWindowOpacity"))
      (assert (foreign-entry? "SetWindowSize"))
      (assert (foreign-entry? "SetWindowMaxSize"))
      (assert (foreign-entry? "SetWindowMinSize"))
      (assert (foreign-entry? "SetWindowMonitor"))
      (assert (foreign-entry? "SetWindowPosition"))
      (assert (foreign-entry? "SetWindowTitle"))
      (assert (foreign-entry? "SetWindowIcons"))
      (assert (foreign-entry? "SetWindowIcon"))
      (assert (foreign-entry? "RestoreWindow"))
      (assert (foreign-entry? "MinimizeWindow"))
      (assert (foreign-entry? "MaximizeWindow"))
      (assert (foreign-entry? "ToggleBorderlessWindowed"))
      (assert (foreign-entry? "ToggleFullscreen"))
      (assert (foreign-entry? "ClearWindowState"))
      (assert (foreign-entry? "SetWindowState"))
      (assert (foreign-entry? "IsWindowState"))
      (assert (foreign-entry? "IsWindowResized"))
      (assert (foreign-entry? "IsWindowFocused"))
      (assert (foreign-entry? "IsWindowMaximized"))
      (assert (foreign-entry? "IsWindowMinimized"))
      (assert (foreign-entry? "IsWindowHidden"))
      (assert (foreign-entry? "IsWindowFullscreen"))
      (assert (foreign-entry? "IsWindowReady"))
      (assert (foreign-entry? "WindowShouldClose"))
      (assert (foreign-entry? "CloseWindow"))
      (assert (foreign-entry? "InitWindow"))]))
