Assets {
  Id: 1244999148900956141
  Name: "Fishing Node Material"
  PlatformAssetType: 13
  SerializationVersion: 101
  CustomMaterialAsset {
    BaseMaterialId: 15596870760343554385
    ParameterOverrides {
      Overrides {
        Name: "overall brightness"
        Float: 4.5
      }
      Overrides {
        Name: "vertical fade"
        Float: 12
      }
      Overrides {
        Name: "color"
        Color {
          R: 1
          G: 0.783333361
          A: 1
        }
      }
      Overrides {
        Name: "noise color"
        Color {
          R: 0.2
          G: 0.0800000057
          A: 1
        }
      }
      Overrides {
        Name: "edge line brightness"
        Float: 70
      }
      Overrides {
        Name: "fresnel"
        Float: 3
      }
      Overrides {
        Name: "fresnel brightness"
        Float: 12
      }
      Overrides {
        Name: "noise spread"
        Float: 140
      }
    }
    Assets {
      Id: 15596870760343554385
      Name: "Additive Edgeline Top Fade"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_add_edgeline_sharpline_topfade"
      }
    }
  }
}
