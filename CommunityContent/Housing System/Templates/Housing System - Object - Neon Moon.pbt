Assets {
  Id: 9718007592019284777
  Name: "Housing System - Object - Neon Moon"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7437409232850638376
      Objects {
        Id: 7437409232850638376
        Name: "Housing System - Object - Neon Moon"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1818309238597738651
        ChildIds: 7697339081038043978
        ChildIds: 15319394721587031927
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 7697339081038043978
        Name: "Animated Neon Sign - Moon"
        Transform {
          Location {
            X: 2
            Y: 50
            Z: 50
          }
          Rotation {
            Yaw: 90
          }
          Scale {
            X: 0.47473973
            Y: -0.475
            Z: 0.47473973
          }
        }
        ParentId: 7437409232850638376
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 8072340534592332056
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 15319394721587031927
        Name: "Dummy Object"
        Transform {
          Location {
            X: 10
            Y: 50
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 0.2
            Y: 1
            Z: 1
          }
        }
        ParentId: 7437409232850638376
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Absolute Scale"
            Bool: false
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Blueprint {
          BlueprintAsset {
            Id: 4365344868190734849
          }
          TeamSettings {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 8072340534592332056
      Name: "Animated Neon Sign - Moon"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "fxsm_neonSign_moon"
      }
    }
    Assets {
      Id: 4365344868190734849
      Name: "Dummy Object"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_dummy_pivot"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 103
  VirtualFolderPath: "Housing"
  VirtualFolderPath: "Objects"
  VirtualFolderPath: "Decoration"
}
