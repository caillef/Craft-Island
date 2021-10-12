Assets {
  Id: 9349532382375038560
  Name: "BS_Built_Lantern"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16573946682751979781
      Objects {
        Id: 16573946682751979781
        Name: "BS_Built_Lantern"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 7220668948056284375
        ChildIds: 11055887794781098475
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
        Id: 7220668948056284375
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
        ParentId: 16573946682751979781
        UnregisteredParameters {
          Overrides {
            Name: "cs:HP"
            Int: 1
          }
          Overrides {
            Name: "cs:Material"
            Int: 0
          }
          Overrides {
            Name: "cs:ItemId"
            String: "LANTERN"
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
        Id: 11055887794781098475
        Name: "Geo"
        Transform {
          Location {
            X: 110
            Y: -80
            Z: 15
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16573946682751979781
        ChildIds: 11161738090438395169
        ChildIds: 17978086339962883210
        ChildIds: 2585129677121347666
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
          IsGroup: true
        }
      }
      Objects {
        Id: 11161738090438395169
        Name: "Urban Interior - Oil Lantern 02 - Base 01"
        Transform {
          Location {
            X: 0.728530765
            Z: -17.9574127
          }
          Rotation {
            Yaw: 89.9999542
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 11055887794781098475
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
            Id: 1227539998602669490
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 17978086339962883210
        Name: "Torch Fire VFX"
        Transform {
          Location {
            Z: -7.46086121
          }
          Rotation {
            Yaw: 2.04905627e-05
          }
          Scale {
            X: 0.75
            Y: 0.75
            Z: 0.75
          }
        }
        ParentId: 11055887794781098475
        UnregisteredParameters {
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 13.1137047
          }
          Overrides {
            Name: "bp:Life"
            Float: 0.80192709
          }
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 0.54014492
          }
          Overrides {
            Name: "bp:Initial Velocity"
            Vector {
              Z: 50
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Blueprint {
          BlueprintAsset {
            Id: 705505624071018057
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:medium"
        }
      }
      Objects {
        Id: 2585129677121347666
        Name: "Point Light"
        Transform {
          Location {
            Z: 18.9170151
          }
          Rotation {
            Yaw: 5.46415031e-05
          }
          Scale {
            X: 1.5
            Y: 1.5
            Z: 1.5
          }
        }
        ParentId: 11055887794781098475
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
        Light {
          Intensity: 10.3527565
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            UseTemperature: true
            Temperature: 1628.47278
            LocalLight {
              AttenuationRadius: 793.63269
              PointLight {
                SourceRadius: 2
                SoftSourceRadius: 6
                FallOffExponent: 8
                UseFallOffExponent: true
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
    }
    Assets {
      Id: 1227539998602669490
      Name: "Urban Interior - Oil Lantern 02 - Base 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_urb_lantern_oil_base_002_ref"
      }
    }
    Assets {
      Id: 705505624071018057
      Name: "Torch Fire VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_torch_fire"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 100
  VirtualFolderPath: "StructureTemplates"
}
