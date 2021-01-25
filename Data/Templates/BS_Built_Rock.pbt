Assets {
  Id: 12608001148984257959
  Name: "BS_Built_Rock"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13326456227818208202
      Objects {
        Id: 13326456227818208202
        Name: "BS_Built_Rock"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3353948417995451109
        ChildIds: 15132059030894101674
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
        Id: 3353948417995451109
        Name: "Rock 03"
        Transform {
          Location {
            X: 105.085968
            Y: -93.609375
            Z: 4.99243164
          }
          Rotation {
            Yaw: 95.9531784
          }
          Scale {
            X: 0.800302088
            Y: 0.67103529
            Z: 1
          }
        }
        ParentId: 13326456227818208202
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 15624145861512632379
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
          }
        }
      }
      Objects {
        Id: 15132059030894101674
        Name: "DestroyableProp"
        Transform {
          Location {
            X: 100
            Y: -100
            Z: 26.9047852
          }
          Rotation {
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 13326456227818208202
        UnregisteredParameters {
          Overrides {
            Name: "cs:HP"
            Int: 2
          }
          Overrides {
            Name: "cs:ItemUIQty"
            Vector2 {
              X: 2
              Y: 4
            }
          }
          Overrides {
            Name: "cs:Material"
            Int: 0
          }
          Overrides {
            Name: "cs:ItemId"
            String: "STONE"
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
      Id: 15624145861512632379
      Name: "Rock 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rock_generic_003"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 73
}
