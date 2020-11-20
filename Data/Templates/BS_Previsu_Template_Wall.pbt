Assets {
  Id: 17513909115496730133
  Name: "BS_Previsu_Template_Wall"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8456781659918628961
      Objects {
        Id: 8456781659918628961
        Name: "BS_Previsu_Template_Wall"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14419583533663607855
        ChildIds: 10423861635502193637
        UnregisteredParameters {
          Overrides {
            Name: "cs:Built"
            AssetReference {
              Id: 14836191695451775469
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 10423861635502193637
        Name: "Preview"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.625
            Y: 0.625
            Z: 0.5
          }
        }
        ParentId: 8456781659918628961
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
            Id: 1608526019857160819
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
    }
    Assets {
      Id: 1608526019857160819
      Name: "Craftsman Part - Wall 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_sub_craftsman_part_wall_001"
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
