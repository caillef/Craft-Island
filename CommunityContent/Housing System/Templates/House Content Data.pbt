Assets {
  Id: 13393341671169837028
  Name: "House Content Data"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9239971970358251687
      Objects {
        Id: 9239971970358251687
        Name: "House Content Data"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 429157732334000693
        ChildIds: 6127930764712123644
        UnregisteredParameters {
          Overrides {
            Name: "cs:data"
            String: ""
          }
          Overrides {
            Name: "cs:houseId"
            Int: 0
          }
          Overrides {
            Name: "cs:floorNumber"
            Int: 0
          }
          Overrides {
            Name: "cs:refresh"
            Bool: false
          }
          Overrides {
            Name: "cs:Objects"
            ObjectReference {
              SubObjectId: 6127930764712123644
            }
          }
          Overrides {
            Name: "cs:data:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:houseId:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:floorNumber:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:refresh:isrep"
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
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        NetworkContext {
          Type: RuntimeStatic
        }
      }
      Objects {
        Id: 429157732334000693
        Name: "Floor Creator"
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
        ParentId: 9239971970358251687
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 9239971970358251687
            }
          }
          Overrides {
            Name: "cs:Objects"
            ObjectReference {
              SubObjectId: 6127930764712123644
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
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Script {
          ScriptAsset {
            Id: 14049894725135598658
          }
        }
      }
      Objects {
        Id: 6127930764712123644
        Name: "Objects"
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
        ParentId: 9239971970358251687
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
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 101
  VirtualFolderPath: "Housing"
  VirtualFolderPath: "Utilities"
}
