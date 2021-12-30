Assets {
  Id: 3235791965859497890
  Name: "VFX_Rocks"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13857607603704569762
      Objects {
        Id: 13857607603704569762
        Name: "VFX_Rocks"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 1866327120945038241
        Lifespan: 2
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
        NetworkContext {
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 1866327120945038241
        Name: "Explosion Kit Rock Burst VFX"
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
        ParentId: 13857607603704569762
        UnregisteredParameters {
          Overrides {
            Name: "bp:Particle Scale"
            Float: 1
          }
          Overrides {
            Name: "bp:Burst Velocity Max"
            Float: 1
          }
          Overrides {
            Name: "bp:Burst Velocity Min"
            Float: 1
          }
          Overrides {
            Name: "bp:Burst Angle Max"
            Float: 50
          }
          Overrides {
            Name: "bp:Looping"
            Bool: false
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.285000026
              G: 0.285000026
              B: 0.285000026
              A: 1
            }
          }
          Overrides {
            Name: "bp:Density"
            Float: 1.55756
          }
          Overrides {
            Name: "bp:Gravity"
            Float: -30
          }
          Overrides {
            Name: "bp:Initial Velocity Multiplier"
            Float: 0.25
          }
        }
        Lifespan: 1.5
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
            Id: 13633554897267187231
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 13633554897267187231
      Name: "Explosion Kit Rock Burst VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_mil_dirt_impact_explosikit_debris"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 103
}
