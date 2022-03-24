Assets {
  Id: 2873530386899145135
  Name: "Require A Script: How To"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8585313990363571940
      Objects {
        Id: 8585313990363571940
        Name: "Require A Script: How To"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 8634059963342528975
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 8634059963342528975
        Name: "CallingARequiredScriptFunction"
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
        ParentId: 8585313990363571940
        UnregisteredParameters {
          Overrides {
            Name: "cs:UtilityApi"
            AssetReference {
              Id: 7690291507654196652
            }
          }
          Overrides {
            Name: "cs:UtilityApi:tooltip"
            String: "Must require the script from Project Content as a template vs draging a script here from the Hierarchy"
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
            Id: 5994405868787299201
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "This is a short example of how to use the powerful require script feature. Well documented, short, and to the point.\r\n\r\n@LuckofBuck on Twitter"
  }
  SerializationVersion: 107
  DirectlyPublished: true
}
