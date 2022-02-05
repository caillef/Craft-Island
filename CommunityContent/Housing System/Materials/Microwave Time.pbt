Assets {
  Id: 12384956264461953186
  Name: "Microwave Time"
  PlatformAssetType: 13
  SerializationVersion: 105
  CustomMaterialAsset {
    BaseMaterialId: 10846451580392138186
    ParameterOverrides {
      Overrides {
        Name: "digit_set"
        Int: 0
      }
      Overrides {
        Name: "digit_style"
        Int: 1
      }
      Overrides {
        Name: "source"
        Int: 3
      }
      Overrides {
        Name: "vertical_scale"
        Float: 0.9
      }
      Overrides {
        Name: "use_stepped_time"
        Bool: false
      }
    }
    Assets {
      Id: 10846451580392138186
      Name: "Digital Clock"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_digital_clock"
      }
    }
  }
}
