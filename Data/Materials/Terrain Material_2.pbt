Assets {
  Id: 6384239941299099900
  Name: "Terrain Material_2"
  PlatformAssetType: 13
  SerializationVersion: 110
  CustomMaterialAsset {
    BaseMaterialId: 12542962902722244080
    ParameterOverrides {
      Overrides {
        Name: "cmp:Material2"
        AssetReference {
          Id: 12639901332311628558
        }
      }
      Overrides {
        Name: "cmp:Material2_Sides"
        AssetReference {
          Id: 6827774581160948083
        }
      }
    }
    Assets {
      Id: 12542962902722244080
      Name: "Terrain Composite Triplanar Complex Blend"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_terrain_composite_triplanar_blend_001_wa"
      }
    }
    Assets {
      Id: 12639901332311628558
      Name: "Sand Waves 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_sand_waves_001_uv_ref"
      }
    }
    Assets {
      Id: 6827774581160948083
      Name: "Cliff Desert Wind Eroded 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_cliff_desert_eroded_001_uv_ref"
      }
    }
  }
}
