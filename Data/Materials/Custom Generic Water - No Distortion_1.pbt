Assets {
  Id: 3846233925554891870
  Name: "Custom Generic Water - No Distortion_1"
  PlatformAssetType: 13
  SerializationVersion: 105
  CustomMaterialAsset {
    BaseMaterialId: 10089038802488719809
    ParameterOverrides {
      Overrides {
        Name: "emissive"
        Float: 0
      }
      Overrides {
        Name: "deep color"
        Color {
          G: 0.120066091
          B: 0.37
          A: 1
        }
      }
      Overrides {
        Name: "shallow color"
        Color {
          G: 0.208278149
          B: 0.37
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
