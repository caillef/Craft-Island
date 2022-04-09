Assets {
  Id: 6106875022361030492
  Name: "Simple Generic Water Radioactive"
  PlatformAssetType: 13
  SerializationVersion: 110
  CustomMaterialAsset {
    BaseMaterialId: 3627032956109716191
    ParameterOverrides {
      Overrides {
        Name: "foam shape"
        Float: 1.90783787
      }
      Overrides {
        Name: "foam shape min"
        Float: 0.473100185
      }
      Overrides {
        Name: "foam shape max"
        Float: 0.643587768
      }
      Overrides {
        Name: "foam tightness"
        Float: 200
      }
      Overrides {
        Name: "opacity distance"
        Float: 42.8220749
      }
      Overrides {
        Name: "speed"
        Float: 0
      }
      Overrides {
        Name: "reflection brightness"
        Float: 0.578640103
      }
      Overrides {
        Name: "shallow color"
        Color {
          G: 0.230000019
          B: 0.0198013801
          A: 1
        }
      }
      Overrides {
        Name: "deep color"
        Color {
          G: 0.149999976
          B: 0.0129139405
          A: 1
        }
      }
      Overrides {
        Name: "edge foam brightness"
        Float: 0.489337087
      }
      Overrides {
        Name: "foam shift"
        Float: 0
      }
      Overrides {
        Name: "object displacement amount"
        Float: 0
      }
      Overrides {
        Name: "wind speed"
        Float: 0.53804785
      }
      Overrides {
        Name: "emissive"
        Float: 2.6202035
      }
      Overrides {
        Name: "normal distance"
        Float: 10
      }
      Overrides {
        Name: "foam color"
        Color {
          R: 0.0248343945
          G: 0.75
          A: 1
        }
      }
      Overrides {
        Name: "opacity"
        Float: 1
      }
      Overrides {
        Name: "normal foam brightness"
        Float: 1
      }
      Overrides {
        Name: "edge normal flattening"
        Float: 1
      }
      Overrides {
        Name: "material_scale"
        Float: 1
      }
    }
    Assets {
      Id: 3627032956109716191
      Name: "Generic Water"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_parameter_driven_water_manual"
      }
    }
  }
}
