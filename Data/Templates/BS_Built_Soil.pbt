Assets {
  Id: 1971048685715293379
  Name: "BS_Built_Soil"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14757139173859955053
      Objects {
        Id: 14757139173859955053
        Name: "BS_Built_Soil"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 12707322221592985545
        ChildIds: 9078462774628426977
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
        Id: 12707322221592985545
        Name: "DestroyableProp"
        Transform {
          Location {
            X: 91.2196503
            Y: -97.1334229
            Z: -1.52587891e-05
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
        ParentId: 14757139173859955053
        UnregisteredParameters {
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
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 15497607201579666542
          }
        }
      }
      Objects {
        Id: 9078462774628426977
        Name: "BuiltFloor"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 14757139173859955053
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Ceiling:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Building_Floor:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Building_Floor:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Building_Ceiling:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
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
            Id: 10888788159873929006
          }
          Teams {
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
    }
    Assets {
      Id: 10888788159873929006
      Name: "Craftsman Floor 01 4m x 4m"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_sub_craftsman_floor_001_4x4"
      }
    }
    Assets {
      Id: 18265638366922665013
      Name: "Dirt 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "dirt_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 91
}
