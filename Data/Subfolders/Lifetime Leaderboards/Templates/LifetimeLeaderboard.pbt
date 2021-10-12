Assets {
  Id: 16896337210156732944
  Name: "LifetimeLeaderboard"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 5894418676826802140
      Objects {
        Id: 5894418676826802140
        Name: "LifetimeLeaderboard"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 2364796592091945380
        ChildIds: 12501067247465321149
        UnregisteredParameters {
          Overrides {
            Name: "cs:ResourceToTrack"
            String: "Zorkmids"
          }
          Overrides {
            Name: "cs:AutoSaveAndLoad"
            Bool: false
          }
          Overrides {
            Name: "cs:PlayerTextColor"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "cs:LocalPlayerColor"
            Color {
              R: 0.0211920161
              G: 0.64
              A: 1
            }
          }
          Overrides {
            Name: "cs:AutoSaveAndLoad:tooltip"
            String: "When active, the Lifetime Leaderboard will automatically save and load the tracked resource, when players join and leave."
          }
          Overrides {
            Name: "cs:ResourceToTrack:tooltip"
            String: "The player resource to base the leaderboard on."
          }
          Overrides {
            Name: "cs:PlayerTextColor:tooltip"
            String: "The color to use for the names displayed"
          }
          Overrides {
            Name: "cs:LocalPlayerColor:tooltip"
            String: "The color to use for the local player\'s name."
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
        Id: 2364796592091945380
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
        ParentId: 5894418676826802140
        ChildIds: 7461629244044327192
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
        Id: 7461629244044327192
        Name: "LifetimeLeaderboard"
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
        ParentId: 2364796592091945380
        ChildIds: 2072540113947188838
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Canvas {
            Opacity: 1
            IsHUD: true
            CanvasWorldSize {
              X: 1024
              Y: 1024
            }
            TwoSided: true
            TickWhenOffScreen: true
            RedrawTime: 30
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 2072540113947188838
        Name: "ScreenFrame"
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
        ParentId: 7461629244044327192
        ChildIds: 4362868324275113064
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Control {
          Width: 560
          Height: 490
          UIX: -20
          UIY: 20
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
            Opacity: 1
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topright"
              }
            }
          }
        }
      }
      Objects {
        Id: 4362868324275113064
        Name: "LifetimeLeaderboard_Client"
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
        ParentId: 2072540113947188838
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 5894418676826802140
            }
          }
          Overrides {
            Name: "cs:ScreenFrame"
            ObjectReference {
              SubObjectId: 2072540113947188838
            }
          }
          Overrides {
            Name: "cs:Leaderboard_PlayerEntry"
            AssetReference {
              Id: 5727271455396749094
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
            Id: 9121246063400579216
          }
        }
      }
      Objects {
        Id: 12501067247465321149
        Name: "LifetimeLeaderboard_Server"
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
        ParentId: 5894418676826802140
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 5894418676826802140
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
            Id: 5160954844379601589
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
    Description: "Have you ever wanted to have a leaderboard that ranks all the players based on some resource?\r\n\r\nHow about if it took care of saving that resource automatically, and all you had to do was modify it!\r\n\r\nIf that sounds good, this is the template for you!\r\n\r\nDisplay player rankings, automatically update, and automatically handle saving and loading of data!  Easy!"
  }
  SerializationVersion: 100
  DirectlyPublished: true
}
