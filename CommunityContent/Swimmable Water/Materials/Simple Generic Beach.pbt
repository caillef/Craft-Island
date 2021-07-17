Assets {
  Id: 16156648826322051309
  Name: "Simple Generic Beach"
  PlatformAssetType: 13
  SerializationVersion: 92
  CustomMaterialAsset {
    BaseMaterialId: 3627032956109716191
    ParameterOverrides {
      Overrides {
        Name: "foam shape"
        Float: 3.68577957
      }
      Overrides {
        Name: "foam shape min"
        Float: 0.513692439
      }
      Overrides {
        Name: "foam shape max"
        Float: 0.351323366
      }
      Overrides {
        Name: "foam tightness"
        Float: 20
      }
      Overrides {
        Name: "opacity distance"
        Float: 115.888168
      }
      Overrides {
        Name: "speed"
        Float: 0.108569503
      }
      Overrides {
        Name: "reflection brightness"
        Float: 0.335086465
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
        Name: "normal foam brightness"
        Float: 0.627350807
      }
      Overrides {
        Name: "wind speed"
        Float: 0.432507902
      }
      Overrides {
        Name: "opacity"
        Float: 0.968325913
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
