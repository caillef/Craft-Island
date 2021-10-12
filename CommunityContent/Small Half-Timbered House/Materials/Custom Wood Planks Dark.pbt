Assets {
  Id: 491677280925474687
  Name: "Custom Wood Planks Dark"
  PlatformAssetType: 13
  SerializationVersion: 100
  CustomMaterialAsset {
    BaseMaterialId: 11175064704197830413
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "u_tiles"
        Float: 2
      }
      Overrides {
        Name: "v_tiles"
        Float: 0.1
      }
      Overrides {
        Name: "rotate_material"
        Float: 90
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0.5
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 0.5
      }
      Overrides {
        Name: "gradient_direction"
        Vector {
          Z: 1
        }
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: false
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 1
      }
      Overrides {
        Name: "u_offset"
        Float: 0
      }
      Overrides {
        Name: "v_offset"
        Float: 0
      }
    }
    Assets {
      Id: 11175064704197830413
      Name: "Wood Planks"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_planks_dark_001_uv"
      }
    }
  }
}
