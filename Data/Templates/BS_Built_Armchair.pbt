Assets {
  Id: 8658751325208367719
  Name: "BS_Built_Armchair"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12224713165918550669
      Objects {
        Id: 12224713165918550669
        Name: "BS_Built_Armchair"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 5034906550340511100
        UnregisteredParameters {
          Overrides {
            Name: "cs:HP"
            Int: 1
          }
          Overrides {
            Name: "cs:ItemId"
            String: "ARMCHAIR"
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
          FilePartitionName: "BS_Built_Wood_Table"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 5034906550340511100
        Name: "Craftsman Chair 01"
        Transform {
          Location {
            X: 100
            Y: -105.644119
          }
          Rotation {
          }
          Scale {
            X: 0.846253
            Y: 0.875254929
            Z: 1
          }
        }
        ParentId: 12224713165918550669
        UnregisteredParameters {
          Overrides {
            Name: "ma:Prop_Cushion:id"
            AssetReference {
              Id: 8607207913822945905
            }
          }
          Overrides {
            Name: "ma:Prop_Cushion:color"
            Color {
              G: 0.303443462
              B: 0.580000043
              A: 1
            }
          }
          Overrides {
            Name: "ma:Prop_Cushion:smart"
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 8935735821268076112
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
    }
    Assets {
      Id: 8935735821268076112
      Name: "Craftsman Chair 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_chair_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 107
  VirtualFolderPath: "StructureTemplates"
}
