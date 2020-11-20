Assets {
  Id: 2549814219481064674
  Name: "PrevisuDoor"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3746688200497603801
      Objects {
        Id: 3746688200497603801
        Name: "PrevisuDoor"
        Transform {
          Scale {
            X: 0.4
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 4781671109827199097
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_WallInner:id"
            AssetReference {
              Id: 231800746144079014
            }
          }
          Overrides {
            Name: "ma:Building_WallInner2:id"
            AssetReference {
              Id: 231800746144079014
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 415692327610349676
          }
          Teams {
          }
          StaticMesh {
            Physics {
            }
          }
        }
      }
    }
    Assets {
      Id: 415692327610349676
      Name: "Craftsman Part - Wall 01 Doorway"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_sub_craftsman_part_wall_001_doorway"
      }
    }
    Assets {
      Id: 231800746144079014
      Name: "Basic Hologram"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_basic_hologram"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
