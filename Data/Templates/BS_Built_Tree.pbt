Assets {
  Id: 3214907868370729841
  Name: "BS_Built_Tree"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12357879788280165173
      Objects {
        Id: 12357879788280165173
        Name: "BS_Built_Tree"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 10108745275524321392
        ChildIds: 10354695220758464185
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
        Id: 10108745275524321392
        Name: "Built"
        Transform {
          Location {
            X: 100
            Y: -100
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
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
        CoreMesh {
          MeshAsset {
            Id: 9086663986850406737
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
        Id: 10354695220758464185
        Name: "DestroyableProp"
        Transform {
          Location {
            X: 100
            Y: -100
            Z: 26.9046688
          }
          Rotation {
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 12357879788280165173
        ChildIds: 15746785397933900535
        ChildIds: 5585975310404605656
        ChildIds: 6433574503561080262
        UnregisteredParameters {
          Overrides {
            Name: "cs:HitSFX"
            ObjectReference {
              SubObjectId: 15746785397933900535
            }
          }
          Overrides {
            Name: "cs:BreakSFX"
            ObjectReference {
              SubObjectId: 5585975310404605656
            }
          }
          Overrides {
            Name: "cs:ItemUI"
            AssetReference {
              Id: 4707371283039740838
            }
          }
          Overrides {
            Name: "cs:HP"
            Int: 3
          }
          Overrides {
            Name: "cs:ItemUI2"
            AssetReference {
              Id: 15313945871510559390
            }
          }
          Overrides {
            Name: "cs:FallSFX"
            ObjectReference {
              SubObjectId: 6433574503561080262
            }
          }
          Overrides {
            Name: "cs:ItemUIQty"
            Vector2 {
              X: 2
              Y: 3
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
            Id: 15497607201579666542
          }
        }
      }
      Objects {
        Id: 15746785397933900535
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
        ParentId: 10354695220758464185
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
        Id: 5585975310404605656
        Name: "Object Wood Creak 01 SFX"
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
        ParentId: 10354695220758464185
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 12182257297979148996
          }
          Volume: 2.27027559
          Falloff: -1
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
      Objects {
        Id: 6433574503561080262
        Name: "Impact Nature Tree Branch Hard 01 SFX"
        Transform {
          Location {
            X: -4298.87256
            Y: -5874.09229
            Z: -4691.94336
          }
          Rotation {
          }
          Scale {
            X: 5
            Y: 5
            Z: 5
          }
        }
        ParentId: 10354695220758464185
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        AudioInstance {
          AudioAsset {
            Id: 3129712122533022477
          }
          Volume: 1
          Falloff: -1
          Radius: -1
          EnableOcclusion: true
          IsSpatializationEnabled: true
          IsAttenuationEnabled: true
        }
      }
    }
    Assets {
      Id: 9086663986850406737
      Name: "Tree Birch 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tree_birch_001"
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
      Id: 12182257297979148996
      Name: "Object Wood Creak 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_object_wood_creak_01a_Cue_ref"
      }
    }
    Assets {
      Id: 3129712122533022477
      Name: "Impact Nature Tree Branch Hard 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_impact_tree_hard_01_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 70
}
