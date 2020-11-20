Assets {
  Id: 16210374113896557264
  Name: "BS_Previsu_Template_Stairs"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 18422955429713741810
      Objects {
        Id: 18422955429713741810
        Name: "BS_Previsu_Template_Stairs"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14419583533663607855
        ChildIds: 15084423555630534386
        UnregisteredParameters {
          Overrides {
            Name: "cs:Built"
            AssetReference {
              Id: 15033179693905802780
            }
          }
        }
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
        Id: 15084423555630534386
        Name: "Preview"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.25
            Y: 2.5
            Z: 2
          }
        }
        ParentId: 18422955429713741810
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Foundation:id"
            AssetReference {
              Id: 231800746144079014
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 231800746144079014
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 3484535885344630159
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
      Id: 3484535885344630159
      Name: "Stairs 01 1.5m Mainstreet"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_urb_dtn_mst_stairs_001_150cm_ref"
      }
    }
    Assets {
      Id: 231800746144079014
      Name: "Basic Hologram"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_basic_hologram"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
