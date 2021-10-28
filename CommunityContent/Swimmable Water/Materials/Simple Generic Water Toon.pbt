Assets {
  Id: 18161745805969734008
  Name: "Simple Generic Water Toon"
  PlatformAssetType: 13
  SerializationVersion: 101
  CustomMaterialAsset {
    BaseMaterialId: 3627032956109716191
    ParameterOverrides {
      Overrides {
        Name: "foam shape"
        Float: 2.15139151
      }
      Overrides {
        Name: "foam shape min"
        Float: 0.351323366
      }
      Overrides {
        Name: "foam shape max"
        Float: 0.814075291
      }
      Overrides {
        Name: "foam tightness"
        Float: 0.206965089
      }
      Overrides {
        Name: "opacity distance"
        Float: 0
      }
      Overrides {
        Name: "speed"
        Float: 0.02
      }
      Overrides {
        Name: "reflection brightness"
        Float: 0.464981735
      }
      Overrides {
        Name: "shallow color"
        Color {
          G: 0.611258209
          B: 0.65
          A: 1
        }
      }
      Overrides {
        Name: "deep color"
        Color {
          G: 0.0956953391
          B: 0.169999957
          A: 1
        }
      }
      Overrides {
        Name: "edge foam brightness"
        Float: 0.805956841
      }
      Overrides {
        Name: "foam shift"
        Float: 0
      }
      Overrides {
        Name: "object displacement amount"
        Float: 0.424389452
      }
      Overrides {
        Name: "wind speed"
        Float: 0.1
      }
      Overrides {
        Name: "emissive"
        Float: 1.24006617
      }
      Overrides {
        Name: "normal distance"
        Float: 30
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
