Assets {
  Id: 17586668656808733543
  Name: "BS_Built_Spruce_Tree"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12357879788280165173
      Objects {
        Id: 12357879788280165173
        Name: "BS_Built_Spruce_Tree"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 10108745275524321392
        UnregisteredParameters {
          Overrides {
            Name: "cs:ItemId"
            String: "WOOD_LOG"
          }
          Overrides {
            Name: "cs:ItemId2"
            String: "SPRUCE_SAPLING"
          }
          Overrides {
            Name: "cs:ItemQty"
            Vector2 {
              X: 4
              Y: 6
            }
          }
          Overrides {
            Name: "cs:HP"
            Int: 5
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 10108745275524321392
        Name: "Built"
        Transform {
          Location {
            X: 100
            Y: -100
          }
          Scale {
            X: 0.6
            Y: 0.6
            Z: 0.4
          }
        }
        ParentId: 12357879788280165173
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Trunk:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Nature_Trunk:color"
            Color {
              R: 0.669999957
              G: 0.332781464
              A: 1
            }
          }
          Overrides {
            Name: "ma:Nature_Trunk:id"
            AssetReference {
              Id: 14307244558911102288
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
            Id: 17382456492051674893
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
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 17382456492051674893
      Name: "Tree Redwood Big"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tree_redwood_001"
      }
    }
    Assets {
      Id: 14307244558911102288
      Name: "Wood Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_raw_001_uv"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 110
  VirtualFolderPath: "StructureTemplates"
}
