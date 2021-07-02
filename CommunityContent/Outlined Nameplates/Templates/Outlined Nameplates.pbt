Assets {
  Id: 14809052639446992559
  Name: "Outlined Nameplates"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7985682287532708471
      Objects {
        Id: 7985682287532708471
        Name: "Outlined Nameplates"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 15660413392940771180
        UnregisteredParameters {
          Overrides {
            Name: "cs:ShowNames"
            Bool: true
          }
          Overrides {
            Name: "cs:ShowHealthbars"
            Bool: true
          }
          Overrides {
            Name: "cs:ShowOnSelf"
            Bool: true
          }
          Overrides {
            Name: "cs:ShowOnTeammates"
            Bool: true
          }
          Overrides {
            Name: "cs:MaxDistanceOnTeammates"
            Float: 0
          }
          Overrides {
            Name: "cs:ShowOnEnemies"
            Bool: true
          }
          Overrides {
            Name: "cs:MaxDistanceOnEnemies"
            Float: 2000
          }
          Overrides {
            Name: "cs:ShowOnDeadPlayers"
            Bool: false
          }
          Overrides {
            Name: "cs:Scale"
            Float: 1
          }
          Overrides {
            Name: "cs:ShowNumbers"
            Bool: true
          }
          Overrides {
            Name: "cs:AnimateChanges"
            Bool: true
          }
          Overrides {
            Name: "cs:ChangeAnimationTime"
            Float: 0.4
          }
          Overrides {
            Name: "cs:ShowSegments"
            Bool: false
          }
          Overrides {
            Name: "cs:SegmentSize"
            Float: 20
          }
          Overrides {
            Name: "cs:FriendlyNameColor"
            Color {
              G: 0.0762913
              B: 0.72
              A: 1
            }
          }
          Overrides {
            Name: "cs:EnemyNameColor"
            Color {
              R: 0.450000048
              A: 1
            }
          }
          Overrides {
            Name: "cs:BorderColor"
            Color {
              R: 0.0110000009
              G: 0.0110000009
              B: 0.0110000009
              A: 1
            }
          }
          Overrides {
            Name: "cs:BackgroundColor"
            Color {
              R: 0.334000021
              G: 0.334000021
              B: 0.334000021
              A: 1
            }
          }
          Overrides {
            Name: "cs:FriendlyHealthColor"
            Color {
              G: 0.0762913
              B: 0.72
              A: 1
            }
          }
          Overrides {
            Name: "cs:EnemyHealthColor"
            Color {
              R: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:DamageChangeColor"
            Color {
              R: 0.590000033
              G: 0.152384102
              A: 1
            }
          }
          Overrides {
            Name: "cs:HealChangeColor"
            Color {
              R: 0.0670196861
              G: 0.919999957
              A: 1
            }
          }
          Overrides {
            Name: "cs:HealthNumberColor"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:NameOutlineColor"
            Color {
              A: 1
            }
          }
          Overrides {
            Name: "cs:ShowNames:tooltip"
            String: "Show names as part of the nameplate. Default names are hidden either way."
          }
          Overrides {
            Name: "cs:ShowOnSelf:tooltip"
            String: "Show a nameplate on the local player"
          }
          Overrides {
            Name: "cs:ShowOnTeammates:tooltip"
            String: "Show nameplates on teammates"
          }
          Overrides {
            Name: "cs:MaxDistanceOnTeammates:tooltip"
            String: "Only show nameplates on teammates up to this distance away. 0 means always show them."
          }
          Overrides {
            Name: "cs:ShowOnEnemies:tooltip"
            String: "Show nameplates on enemies"
          }
          Overrides {
            Name: "cs:MaxDistanceOnEnemies:tooltip"
            String: "Only show nameplates on enemies up to this distance away. 0 means always show them."
          }
          Overrides {
            Name: "cs:ShowOnDeadPlayers:tooltip"
            String: "Show nameplates even on dead players"
          }
          Overrides {
            Name: "cs:Scale:tooltip"
            String: "Overall scale factor for nameplates"
          }
          Overrides {
            Name: "cs:ShowNumbers:tooltip"
            String: "Show numerical value for hitpoints and maximum"
          }
          Overrides {
            Name: "cs:AnimateChanges:tooltip"
            String: "Show animated region when a player\'s health changes"
          }
          Overrides {
            Name: "cs:ChangeAnimationTime:tooltip"
            String: "Duration of animated health change"
          }
          Overrides {
            Name: "cs:FriendlyNameColor:tooltip"
            String: "Name color for teammates and self"
          }
          Overrides {
            Name: "cs:EnemyNameColor:tooltip"
            String: "Name color for enemies"
          }
          Overrides {
            Name: "cs:BorderColor:tooltip"
            String: "Color of border"
          }
          Overrides {
            Name: "cs:BackgroundColor:tooltip"
            String: "Color of space where health is missing"
          }
          Overrides {
            Name: "cs:FriendlyHealthColor:tooltip"
            String: "Color of friendly health bars"
          }
          Overrides {
            Name: "cs:EnemyHealthColor:tooltip"
            String: "Color of enemy health bars"
          }
          Overrides {
            Name: "cs:DamageChangeColor:tooltip"
            String: "Color for damage when animating changes"
          }
          Overrides {
            Name: "cs:HealChangeColor:tooltip"
            String: "Color for heals when animating changes"
          }
          Overrides {
            Name: "cs:HealthNumberColor:tooltip"
            String: "Color of health number text"
          }
          Overrides {
            Name: "cs:ShowHealthbars:tooltip"
            String: "Whether to show healthbars at all"
          }
        }
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
        Id: 15660413392940771180
        Name: "ClientContext"
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
        ParentId: 7985682287532708471
        ChildIds: 8809729113143397520
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 8809729113143397520
        Name: "NameplateControllerClient"
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
        ParentId: 15660413392940771180
        UnregisteredParameters {
          Overrides {
            Name: "cs:API"
            AssetReference {
              Id: 3381971907442386198
            }
          }
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 7985682287532708471
            }
          }
          Overrides {
            Name: "cs:NameplateTemplate"
            AssetReference {
              Id: 12579491982369382313
            }
          }
          Overrides {
            Name: "cs:SegmentSeparatorTemplate"
            AssetReference {
              Id: 9302814347698874975
            }
          }
        }
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
            Id: 3353411852194215282
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "Nameplates, but with outlined text! Set the outline to any color you\'d like by modifying the NameOutlineColor field - use this when you can\'t seem to find a nameplate color that\'s visible over your game\'s backgrounds!"
  }
  SerializationVersion: 91
  DirectlyPublished: true
}
