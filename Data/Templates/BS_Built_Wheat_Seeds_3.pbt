Assets {
  Id: 17440755202029817840
  Name: "BS_Built_Wheat_Seeds_3"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10316135122354552981
      Objects {
        Id: 10316135122354552981
        Name: "BS_Built_Wheat_Seeds_3"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3876575322015261528
        ChildIds: 13826850507210487071
        ChildIds: 8641356739255187357
        ChildIds: 14632901935882891441
        UnregisteredParameters {
          Overrides {
            Name: "cs:CanGrow"
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
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 3876575322015261528
        Name: "GrowingAsset"
        Transform {
          Location {
            X: -108.682129
            Y: -305.106262
            Z: -1744.31226
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10316135122354552981
        UnregisteredParameters {
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
            Id: 3863084310947232921
          }
        }
      }
      Objects {
        Id: 13826850507210487071
        Name: "DestroyableProp"
        Transform {
          Location {
            X: 100
            Y: -100
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
        ParentId: 10316135122354552981
        ChildIds: 8600810897186459855
        ChildIds: 9471080509232650567
        UnregisteredParameters {
          Overrides {
            Name: "cs:HitSFX"
            ObjectReference {
              SubObjectId: 8600810897186459855
            }
          }
          Overrides {
            Name: "cs:BreakSFX"
            ObjectReference {
              SubObjectId: 9471080509232650567
            }
          }
          Overrides {
            Name: "cs:ItemUI"
            AssetReference {
              Id: 9407228459665687122
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
      Objects {
        Id: 8600810897186459855
        Name: "Axe Tree Wood Chop Hit Impact 01 SFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13826850507210487071
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 12536818827096695884
          }
          Volume: 2.11607981
          Falloff: -1
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
      Objects {
        Id: 9471080509232650567
        Name: "Small Wooden Structure Break Destroy Impact 01 SFX"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13826850507210487071
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 14602187725238456091
          }
          Volume: 1
          Falloff: -1
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
      Objects {
        Id: 8641356739255187357
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
        ParentId: 10316135122354552981
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
        CoreMesh {
          MeshAsset {
            Id: 10888788159873929006
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
        Id: 14632901935882891441
        Name: "BuiltFloor"
        Transform {
          Location {
            X: 100.850128
            Y: -102.494202
            Z: 10.9729
          }
          Rotation {
            Yaw: -175.295303
          }
          Scale {
            X: 0.8
            Y: 0.8
            Z: 1.3
          }
        }
        ParentId: 10316135122354552981
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
          Overrides {
            Name: "ma:Nature_Grass:color"
            Color {
              R: 0.620860934
              G: 0.75
              A: 1
            }
          }
          Overrides {
            Name: "ma:Nature_Grass:id"
            AssetReference {
              Id: 8418606461963829689
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
            Id: 966563861414155672
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
    }
    Assets {
      Id: 12536818827096695884
      Name: "Axe Tree Wood Chop Hit Impact 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_axe_tree_wood_chop_hit_impact_01a_Cue_ref"
      }
    }
    Assets {
      Id: 14602187725238456091
      Name: "Small Wooden Structure Break Destroy Impact 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_small_wooden_structure_break_impact_01a_Cue_ref"
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
    Assets {
      Id: 966563861414155672
      Name: "Grass Tall"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_grass_generic_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 70
}
