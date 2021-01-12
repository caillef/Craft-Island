Assets {
  Id: 11197482665553418955
  Name: "Vehicle Paint"
  PlatformAssetType: 13
  SerializationVersion: 72
  CustomMaterialAsset {
    BaseMaterialId: 11393173066165088110
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.76
          G: 0.301986784
          A: 1
        }
      }
      Overrides {
        Name: "fresnel_color"
        Color {
          R: 0.39
          G: 0.0542384051
          A: 1
        }
      }
      Overrides {
        Name: "u_tiles"
        Float: 64
      }
      Overrides {
        Name: "v_tiles"
        Float: 64
      }
    }
    Assets {
      Id: 11393173066165088110
      Name: "Car Paint 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_car-paint_001"
      }
    }
  }
}
