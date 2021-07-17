Assets {
  Id: 1326672500699165209
  Name: "BS_Preview_Window_Wall_Stonebricks"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9837578319794629569
      Objects {
        Id: 9837578319794629569
        Name: "BS_Preview_Window_Wall_Stonebricks"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 9196925691873395205
        UnregisteredParameters {
          Overrides {
            Name: "cs:Built"
            AssetReference {
              Id: 15889321362244336609
            }
          }
          Overrides {
            Name: "cs:InventoryIconMuid"
            AssetReference {
              Id: 2255328222457084666
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "BS_Previsu_Small_Window_Wall_Wood"
        }
      }
      Objects {
        Id: 9196925691873395205
        Name: "Fantasy Castle Wall 01 Half"
        Transform {
          Location {
            X: 199.972122
          }
          Rotation {
            Yaw: -179.999985
          }
          Scale {
            X: 0.500176728
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 9837578319794629569
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_TrimInner:id"
            AssetReference {
              Id: 231800746144079014
            }
          }
          Overrides {
            Name: "ma:Shared_TrimOuter:id"
            AssetReference {
              Id: 231800746144079014
            }
          }
          Overrides {
            Name: "ma:Building_WallOuter:id"
            AssetReference {
              Id: 231800746144079014
            }
          }
          Overrides {
            Name: "ma:Building_WallInner:id"
            AssetReference {
              Id: 231800746144079014
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15162282678206902548
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
    }
    Assets {
      Id: 15162282678206902548
      Name: "Fantasy Castle Wall 03 Half - Window 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_fan_cas_wall_half_003_win_01"
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
  SerializationVersion: 92
}
