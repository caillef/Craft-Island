Assets {
  Id: 14836191695451775469
  Name: "BS_Built_Wooden_Wall"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14730714539227928723
      Objects {
        Id: 14730714539227928723
        Name: "BS_Built_Wooden_Wall"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3155986259828645211
        ChildIds: 10667219681633226133
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
        Id: 3155986259828645211
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
        ParentId: 14730714539227928723
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
            Id: 453487308539368474
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
        Id: 10667219681633226133
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
        ParentId: 14730714539227928723
        UnregisteredParameters {
          Overrides {
            Name: "cs:HP"
            Int: 1
          }
          Overrides {
            Name: "cs:ItemId"
            String: "WOODEN_WALL"
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
      Id: 453487308539368474
      Name: "Craftsman Wall 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_sub_craftsman_wall_002"
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
  SerializationVersion: 73
}
