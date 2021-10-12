Assets {
  Id: 12807717473814041882
  Name: "BS_Built_Window_Big"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2391212272018020454
      Objects {
        Id: 2391212272018020454
        Name: "BS_Built_Window_Big"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 4336796038030551972
        ChildIds: 11535027093222630394
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
        Id: 4336796038030551972
        Name: "Geo"
        Transform {
          Location {
            X: 50
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2391212272018020454
        ChildIds: 988599227426795361
        ChildIds: 8756407051291026229
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
          IsGroup: true
        }
      }
      Objects {
        Id: 988599227426795361
        Name: "Whitebox Wall 01 Half - Window Slot 1x"
        Transform {
          Location {
            X: -50
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 4336796038030551972
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_WallInner2:id"
            AssetReference {
              Id: 3605030238014728915
            }
          }
          Overrides {
            Name: "ma:Building_WallInner:id"
            AssetReference {
              Id: 3605030238014728915
            }
          }
          Overrides {
            Name: "ma:Building_WallInner2:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Building_WallInner:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
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
            Name: "ma:Building_WallInner:vtile"
            Float: 1
          }
          Overrides {
            Name: "ma:Building_WallInner:utile"
            Float: 0.5
          }
          Overrides {
            Name: "ma:Building_WallInner2:utile"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 6923167763518814697
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
        Id: 8756407051291026229
        Name: "Whitebox Wall 01 Half - Window Slot 1x"
        Transform {
          Location {
            X: 50
            Z: 75
          }
          Rotation {
          }
          Scale {
            X: 0.45
            Y: 0.5
            Z: 0.55
          }
        }
        ParentId: 4336796038030551972
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_WallInner2:id"
            AssetReference {
              Id: 3605030238014728915
            }
          }
          Overrides {
            Name: "ma:Building_WallInner:id"
            AssetReference {
              Id: 3605030238014728915
            }
          }
          Overrides {
            Name: "ma:Building_WallInner2:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Building_WallInner:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
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
        CoreMesh {
          MeshAsset {
            Id: 12690870342875295760
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
        Id: 11535027093222630394
        Name: "DestroyableProp"
        Transform {
          Location {
            X: 107.543755
            Z: 134.782623
          }
          Rotation {
            Yaw: 87.2511749
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.5
          }
        }
        ParentId: 2391212272018020454
        UnregisteredParameters {
          Overrides {
            Name: "cs:HP"
            Int: 1
          }
          Overrides {
            Name: "cs:ItemId"
            String: "BIG_WOODEN_WINDOW"
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
        Script {
          ScriptAsset {
            Id: 15497607201579666542
          }
        }
      }
    }
    Assets {
      Id: 6923167763518814697
      Name: "Whitebox Wall 01 Window Large"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_gen_whitebox_wall_001_windowL"
      }
    }
    Assets {
      Id: 3605030238014728915
      Name: "Wood Planks"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_planks_001_uv"
      }
    }
    Assets {
      Id: 12690870342875295760
      Name: "Craftsman Part - Window 01 2x"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_sub_craftsman_part_window_001_2x"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 100
  VirtualFolderPath: "StructureTemplates"
}
