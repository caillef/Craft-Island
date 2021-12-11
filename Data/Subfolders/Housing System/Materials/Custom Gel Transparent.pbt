Assets {
  Id: 17841571102348162538
  Name: "Custom Gel Transparent"
  PlatformAssetType: 13
  SerializationVersion: 101
  CustomMaterialAsset {
    BaseMaterialId: 3163822663083136310
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.198190853
          G: 0.624382734
          B: 0.776042
          A: 0.700000048
        }
      }
      Overrides {
        Name: "inner color"
        Color {
          G: 0.310254782
          B: 0.674000144
          A: 1
        }
      }
      Overrides {
        Name: "emissive"
        Float: 0.5
      }
      Overrides {
        Name: "bubble brightness"
        Float: 0.359712064
      }
      Overrides {
        Name: "scale"
        Float: 0.2
      }
      Overrides {
        Name: "bubble speed"
        Float: 0.01
      }
      Overrides {
        Name: "inner refraction"
        Float: 0
      }
    }
    Assets {
      Id: 3163822663083136310
      Name: "Gel Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_gel"
      }
    }
  }
}
