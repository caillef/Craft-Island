Assets {
  Id: 13147306627443383789
  Name: "BS_Built_Wood_Chair"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16059720704279749843
      Objects {
        Id: 16059720704279749843
        Name: "BS_Built_Wood_Chair"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 6051842807123592194
        ChildIds: 6453606552057772443
        ChildIds: 7341997360065536662
        ChildIds: 3075367924190534397
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
        Id: 6051842807123592194
        Name: "HitBox"
        Transform {
          Location {
            X: 95
            Y: -75
            Z: 93.2154388
          }
          Rotation {
          }
          Scale {
            X: 1.2
            Y: 1.5
            Z: 1.7
          }
        }
        ParentId: 16059720704279749843
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Trigger {
          Interactable: true
          InteractionLabel: "Sit"
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
        }
      }
      Objects {
        Id: 6453606552057772443
        Name: "SitInChairScript"
        Transform {
          Location {
            X: 95
            Y: -8.93359375
            Z: 102.130112
          }
          Rotation {
            Yaw: 90.0000153
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16059720704279749843
        UnregisteredParameters {
          Overrides {
            Name: "cs:HitBox"
            ObjectReference {
              SubObjectId: 6051842807123592194
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
        Script {
          ScriptAsset {
            Id: 15444854414949713261
          }
        }
      }
      Objects {
        Id: 7341997360065536662
        Name: "DestroyableProp"
        Transform {
          Location {
            X: 90.4710693
            Y: -89.6642151
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
        ParentId: 16059720704279749843
        UnregisteredParameters {
          Overrides {
            Name: "cs:HP"
            Int: 1
          }
          Overrides {
            Name: "cs:ItemId"
            String: "CHAIR"
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
      Objects {
        Id: 3075367924190534397
        Name: "Craftsman Dining Chair"
        Transform {
          Location {
            X: 95
            Y: -130
            Z: 2
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16059720704279749843
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11345399511090385631
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
    }
    Assets {
      Id: 11345399511090385631
      Name: "Craftsman Dining Chair"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_chair_dining_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 73
}
