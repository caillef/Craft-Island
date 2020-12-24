Assets {
  Id: 15889321362244336609
  Name: "BS_Built_Window_Small"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2391212272018020454
      Objects {
        Id: 2391212272018020454
        Name: "BS_Built_Window_Small"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 11124005740040406042
        ChildIds: 11535027093222630394
        WantsNetworking: true
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
        Id: 11124005740040406042
        Name: "BuiltWall"
        Transform {
          Location {
            X: 200
          }
          Rotation {
            Yaw: 180
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
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8125012155363092865
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
            Name: "cs:ItemUI"
            AssetReference {
              Id: 2255328222457084666
            }
          }
          Overrides {
            Name: "cs:HP"
            Int: 1
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 15497607201579666542
          }
        }
      }
    }
    Assets {
      Id: 8125012155363092865
      Name: "Craftsman Wall 02 Window"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_sub_craftsman_wall_002_window"
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 70
}
