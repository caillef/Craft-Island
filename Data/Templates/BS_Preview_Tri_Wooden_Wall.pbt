Assets {
  Id: 7809153861769228501
  Name: "BS_Preview_Tri_Wooden_Wall"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17211168617314502548
      Objects {
        Id: 17211168617314502548
        Name: "BS_Preview_Tri_Wooden_Wall"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 11403849735920083831
        UnregisteredParameters {
          Overrides {
            Name: "cs:Built"
            AssetReference {
              Id: 14836191695451775469
            }
          }
          Overrides {
            Name: "cs:InventoryIconMuid"
            AssetReference {
              Id: 1697846266050145255
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "BS_Previsu_Wall_Wood"
        }
      }
      Objects {
        Id: 11403849735920083831
        Name: "BuiltWall"
        Transform {
          Location {
            X: 200
          }
          Rotation {
            Yaw: -179.999985
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.25
          }
        }
        ParentId: 17211168617314502548
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
          Overrides {
            Name: "ma:Building_WallInner2:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Building_WallInner:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Building_WallInner2:utile"
            Float: 0.613038778
          }
          Overrides {
            Name: "ma:Building_WallInner:utile"
            Float: 0.613
          }
          Overrides {
            Name: "ma:Building_WallOuter:color"
            Color {
              R: 0.179999948
              G: 0.0822516
              A: 1
            }
          }
          Overrides {
            Name: "ma:Building_WallInner:vtile"
            Float: 0.665
          }
          Overrides {
            Name: "ma:Building_WallOuter:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Building_WallOuter:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Building_Accent:color"
            Color {
              R: 0.179999948
              G: 0.0822516
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15253620613510313924
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.179999948
              G: 0.0822516
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.8
          }
          Overrides {
            Name: "ma:Building_WallInner2:color"
            Color {
              R: 0.0600000024
              G: 0.906622648
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Building_WallInner:color"
            Color {
              G: 0.78145647
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Building_WallInner2:vtile"
            Float: 0.665
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
            Id: 8299350573424211056
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
    }
    Assets {
      Id: 8299350573424211056
      Name: "Whitebox Wall 01 Triangle"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_gen_whitebox_wall_001_tri"
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
  SerializationVersion: 91
}
