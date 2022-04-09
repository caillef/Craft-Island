Assets {
  Id: 9643977085030783529
  Name: "Housing System - Placeholder Wall - 1x2"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10898349154657206161
      Objects {
        Id: 10898349154657206161
        Name: "Housing System - Placeholder Wall - 1x1"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 12759127028524493967
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
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 12759127028524493967
        Name: "Dummy Object"
        Transform {
          Location {
            X: 10
            Y: 100
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 0.2
            Y: 2
            Z: 1
          }
        }
        ParentId: 10898349154657206161
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:evolumetype:0"
            }
          }
          Overrides {
            Name: "bp:Absolute Scale"
            Bool: false
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Blueprint {
          BlueprintAsset {
            Id: 4365344868190734849
          }
          TeamSettings {
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 4365344868190734849
      Name: "Dummy Object"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_dummy_pivot"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "Create a full housing system easily and quickly\r\n\r\nThis module contains : \r\n\r\n- 4 tests houses (1 already filled to see the potential)\r\n- 80 basic objects\r\n- Saving/Loading system easy to implement\r\n- You can create your own objects\r\n- You can create your own houses\r\n- Networked optimization"
  }
  SerializationVersion: 110
  DirectlyPublished: true
  VirtualFolderPath: "Housing"
  VirtualFolderPath: "Object Placeholder"
}
