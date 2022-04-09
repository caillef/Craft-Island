Assets {
  Id: 6986673429478086849
  Name: "Vehicle Truck Car Fog Light Cover Material"
  PlatformAssetType: 13
  SerializationVersion: 110
  CustomMaterialAsset {
    BaseMaterialId: 2112804179467698174
    ParameterOverrides {
      Overrides {
        Name: "color_lights"
        Color {
          A: 1
        }
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.101
          G: 0.101
          B: 0.101
          A: 1
        }
      }
      Overrides {
        Name: "emissive_boost"
        Float: 0
      }
      Overrides {
        Name: "v_tiles"
        Float: 1
      }
      Overrides {
        Name: "u_tiles"
        Float: 1
      }
    }
    Assets {
      Id: 2112804179467698174
      Name: "Metal Frame 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_frames_001_uv"
      }
    }
  }
}
