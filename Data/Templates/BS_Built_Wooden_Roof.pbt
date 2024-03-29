Assets {
  Id: 2837725764267230654
  Name: "BS_Built_Wooden_Roof"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10553884848350847057
      Objects {
        Id: 10553884848350847057
        Name: "BS_Built_Wooden_Roof"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 6102395248213845511
        UnregisteredParameters {
          Overrides {
            Name: "cs:HP"
            Int: 1
          }
          Overrides {
            Name: "cs:ItemId"
            String: "WOODEN_ROOF"
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
          FilePartitionName: "BS_Built_Wooden_Roof"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 6102395248213845511
        Name: "BuiltStairs"
        Transform {
          Location {
            X: -48.8
            Y: 70.9737549
            Z: -54.0961914
          }
          Rotation {
            Pitch: 0.01
          }
          Scale {
            X: 0.374
            Y: 0.34
            Z: 0.342
          }
        }
        ParentId: 10553884848350847057
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Foundation:id"
            AssetReference {
              Id: 7426454697044131321
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 7426454697044131321
            }
          }
          Overrides {
            Name: "ma:Building_Ceiling:id"
            AssetReference {
              Id: 16572361283348950017
            }
          }
          Overrides {
            Name: "ma:Building_Roof:id"
            AssetReference {
              Id: 16572361283348950017
            }
          }
          Overrides {
            Name: "ma:Building_Roof:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Building_Roof:color"
            Color {
              R: 0.179999948
              G: 0.0822516
              A: 1
            }
          }
          Overrides {
            Name: "ma:Building_Ceiling:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Building_Ceiling:color"
            Color {
              R: 0.179999948
              G: 0.0822516
              A: 1
            }
          }
          Overrides {
            Name: "ma:Building_Ceiling:utile"
            Float: 0.75
          }
          Overrides {
            Name: "ma:Building_Roof:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Building_Roof:vtile"
            Float: 0.75
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
            Id: 12734953040941445440
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
      Id: 12734953040941445440
      Name: "Whitebox Roof 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_gen_whitebox_roof_001"
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
    Assets {
      Id: 16572361283348950017
      Name: "Wood Siding White"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_siding_white_001_uv"
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
