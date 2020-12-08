Assets {
  Id: 635060630630330843
  Name: "Grain Mill"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8350733278771340514
      Objects {
        Id: 8350733278771340514
        Name: "Grain Mill"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 12599082168062157534
        ChildIds: 16812162516230336012
        ChildIds: 9750497497757528164
        ChildIds: 1827414607609718057
        ChildIds: 270280443819411895
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
        Id: 12599082168062157534
        Name: "TriggerPutGrain"
        Transform {
          Location {
            Z: 74.8427734
          }
          Rotation {
          }
          Scale {
            X: 0.884996414
            Y: 1.08775878
            Z: 0.762146175
          }
        }
        ParentId: 8350733278771340514
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Trigger {
          Interactable: true
          InteractionLabel: "Add Wheat"
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
        Id: 16812162516230336012
        Name: "TriggerGetFlour"
        Transform {
          Location {
            Z: -27.5778809
          }
          Rotation {
          }
          Scale {
            X: 0.884996414
            Y: 1.08775878
            Z: 0.762146175
          }
        }
        ParentId: 8350733278771340514
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Trigger {
          Interactable: true
          InteractionLabel: "Get Flour"
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
        Id: 9750497497757528164
        Name: "GrainMill"
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
        ParentId: 8350733278771340514
        UnregisteredParameters {
          Overrides {
            Name: "cs:TriggerPutGrain"
            ObjectReference {
              SubObjectId: 12599082168062157534
            }
          }
          Overrides {
            Name: "cs:TriggerGetFlour"
            ObjectReference {
              SubObjectId: 16812162516230336012
            }
          }
          Overrides {
            Name: "cs:WheatNumber"
            ObjectReference {
              SubObjectId: 12307688318487228480
            }
          }
          Overrides {
            Name: "cs:FlourNumber"
            ObjectReference {
              SubObjectId: 4739337229702161213
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 8311151668808929102
          }
        }
      }
      Objects {
        Id: 1827414607609718057
        Name: "Cube"
        Transform {
          Location {
            X: -0.4375
            Y: -3.09375
            Z: -60.53125
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8350733278771340514
        ChildIds: 4739337229702161213
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 4739337229702161213
        Name: "FlourNumber"
        Transform {
          Location {
            X: 0.59375
            Y: 53.34375
            Z: 26.8125
          }
          Rotation {
            Yaw: 89.9999619
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1827414607609718057
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Text {
          Text: "0"
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
          HorizontalSize: 1
          VerticalSize: 1
          HorizontalAlignment {
            Value: "mc:ecoretexthorizontalalign:center"
          }
          VerticalAlignment {
            Value: "mc:ecoretextverticalalign:center"
          }
        }
      }
      Objects {
        Id: 270280443819411895
        Name: "Cube"
        Transform {
          Location {
            X: -0.4375
            Y: -3.09375
            Z: 58.5
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8350733278771340514
        ChildIds: 12307688318487228480
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
        Id: 12307688318487228480
        Name: "WheatNumber"
        Transform {
          Location {
            X: 0.59375
            Y: 53.34375
            Z: -5.40625
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 270280443819411895
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Text {
          Text: "0"
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
          HorizontalSize: 1
          VerticalSize: 1
          HorizontalAlignment {
            Value: "mc:ecoretexthorizontalalign:center"
          }
          VerticalAlignment {
            Value: "mc:ecoretextverticalalign:center"
          }
        }
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 68
}
