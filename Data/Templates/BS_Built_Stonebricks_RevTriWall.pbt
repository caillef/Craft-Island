Assets {
  Id: 15597386201396202475
  Name: "BS_Built_Stonebricks_RevTriWall"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9022986329737783930
      Objects {
        Id: 9022986329737783930
        Name: "BS_Built_Stonebricks_RevTriWall"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3182898936776604357
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
            String: "STONEBRICKS_REVTRI_WALL"
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
        }
      }
      Objects {
        Id: 3182898936776604357
        Name: "Fantasy Castle Wall 01 Half"
        Transform {
          Location {
            X: 200
            Z: 150
          }
          Rotation {
            Yaw: 180
          }
          Scale {
            X: 0.25
            Y: 0.5
            Z: -0.25
          }
        }
        ParentId: 9022986329737783930
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_WallInner:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Building_WallInner:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Building_WallOuter:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Building_WallInner2:id"
            AssetReference {
              Id: 17805378747911087859
            }
          }
          Overrides {
            Name: "ma:Building_WallInner2:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Building_WallInner2:vtile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Building_WallInner:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Building_WallInner:id"
            AssetReference {
              Id: 17805378747911087859
            }
          }
          Overrides {
            Name: "ma:Building_WallInner:color"
            Color {
              R: 0.486164957
              G: 0.694824
              B: 0.90625
              A: 1
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
            Id: 8299350573424211056
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
      Id: 8299350573424211056
      Name: "Whitebox Wall 01 Triangle"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_gen_whitebox_wall_001_tri"
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
