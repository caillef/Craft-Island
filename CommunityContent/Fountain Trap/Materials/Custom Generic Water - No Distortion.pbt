Assets {
  Id: 7131903954514599552
  Name: "Custom Generic Water - No Distortion"
  PlatformAssetType: 13
  SerializationVersion: 73
  CustomMaterialAsset {
    BaseMaterialId: 10089038802488719809
    ParameterOverrides {
      Overrides {
        Name: "opacity"
        Float: 1
      }
      Overrides {
        Name: "speed"
        Float: -0.0657593
      }
      Overrides {
        Name: "foam color"
        Color {
          R: 0.460000038
          G: 0.246755
          A: 1
        }
      }
      Overrides {
        Name: "shallow color"
        Color {
          R: 0.190000057
          G: 0.113245077
          A: 1
        }
      }
    }
    Assets {
      Id: 10089038802488719809
      Name: "Generic Water - No Distortion"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_parameter_driven_water_nodistortion"
      }
    }
  }
}
