Assets {
  Id: 9617896818035383632
  Name: "BS_Preview_Half_Wooden_Wall"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14717133089499430638
      Objects {
        Id: 14717133089499430638
        Name: "BS_Preview_Half_Wooden_Wall"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 16648206347449830102
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
        Id: 16648206347449830102
        Name: "BuiltWall"
        Transform {
          Location {
            X: 100
            Z: 75
          }
          Rotation {
            Yaw: -179.999985
          }
          Scale {
            X: 2
            Y: 0.1
            Z: 1.5
          }
        }
        ParentId: 14717133089499430638
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_WallInner:id"
            AssetReference {
              Id: 7426454697044131321
            }
          }
          Overrides {
            Name: "ma:Building_WallInner2:id"
            AssetReference {
              Id: 7426454697044131321
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
            Float: 1
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
              Id: 231800746144079014
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.139999986
              G: 0.726622462
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.5
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
            Id: 12095835209017042614
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
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    Assets {
      Id: 7426454697044131321
      Name: "Wood Planks"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_planks_001_uv"
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
