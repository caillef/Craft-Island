Assets {
  Id: 7222697325601562508
  Name: "BS_Built_Stonebricks_Door"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3592139336295586736
      Objects {
        Id: 3592139336295586736
        Name: "BS_Built_Stonebricks_Door"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 2284067968660856587
        ChildIds: 10215272691844556202
        UnregisteredParameters {
          Overrides {
            Name: "cs:HP"
            Int: 1
          }
          Overrides {
            Name: "cs:Material"
            Int: 0
          }
          Overrides {
            Name: "cs:ItemId"
            String: "STONEBRICKS_DOOR"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "BS_Built_Stonebricks_Door"
        }
      }
      Objects {
        Id: 2284067968660856587
        Name: "Craftsman Wall 02 Corner"
        Transform {
          Location {
            Z: -4
          }
          Rotation {
          }
          Scale {
            X: 0.9
            Y: 1
            Z: 0.86
          }
        }
        ParentId: 3592139336295586736
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_WallInner:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Building_WallOuter:utile"
            Float: 0.282603621
          }
          Overrides {
            Name: "ma:Building_WallInner2:id"
            AssetReference {
              Id: 17805378747911087859
            }
          }
          Overrides {
            Name: "ma:Building_WallInner:id"
            AssetReference {
              Id: 17805378747911087859
            }
          }
          Overrides {
            Name: "ma:Building_WallInner:vtile"
            Float: 1.52
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
            Id: 1628849511756280386
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
      Objects {
        Id: 10215272691844556202
        Name: "Craftsman Wall 02 Corner"
        Transform {
          Location {
            X: 10
            Z: 176
          }
          Rotation {
          }
          Scale {
            X: 0.22
            Y: 0.8
            Z: 0.2
          }
        }
        ParentId: 3592139336295586736
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_WallInner:utile"
            Float: 0.321359724
          }
          Overrides {
            Name: "ma:Building_WallInner:vtile"
            Float: 0.377362251
          }
          Overrides {
            Name: "ma:Building_WallOuter:utile"
            Float: 0.314549595
          }
          Overrides {
            Name: "ma:Building_WallOuter:vtile"
            Float: 0.377362251
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
            Id: 11432809364951486537
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
      Id: 1628849511756280386
      Name: "Whitebox Wall 01 Doorway 01 Frame"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gen_whitebox_wall_001_doorframe"
      }
    }
    Assets {
      Id: 11432809364951486537
      Name: "Fantasy Castle Wall 03 - Arch 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_fan_cas_wall_003_arch_01"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 101
  VirtualFolderPath: "StructureTemplates"
}
