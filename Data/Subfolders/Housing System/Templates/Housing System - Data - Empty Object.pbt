Assets {
  Id: 12544697148335083205
  Name: "Housing System - Data - Empty Object"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12704066980464111124
      Objects {
        Id: 12704066980464111124
        Name: "Housing System - Data - Empty Object"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 18012483602335547237
        UnregisteredParameters {
          Overrides {
            Name: "cs:id"
            Int: 0
          }
          Overrides {
            Name: "cs:asset"
            AssetReference {
              Id: 841534158063459245
            }
          }
          Overrides {
            Name: "cs:size"
            Vector2 {
              X: 1
              Y: 1
            }
          }
          Overrides {
            Name: "cs:onFloor"
            Bool: false
          }
          Overrides {
            Name: "cs:onWall"
            Bool: false
          }
          Overrides {
            Name: "cs:onOtherObject"
            Bool: false
          }
          Overrides {
            Name: "cs:canSupportObject"
            Bool: false
          }
          Overrides {
            Name: "cs:isCarpet"
            Bool: false
          }
          Overrides {
            Name: "cs:wallOffsetPositionZ"
            Float: 0
          }
          Overrides {
            Name: "cs:scaleMultiplier"
            Float: 1
          }
          Overrides {
            Name: "cs:positionOffset"
            Vector {
            }
          }
          Overrides {
            Name: "cs:rotationOffset"
            Rotator {
            }
          }
          Overrides {
            Name: "cs:onWall:category"
            String: "Position"
          }
          Overrides {
            Name: "cs:canSupportObject:category"
            String: "Position"
          }
          Overrides {
            Name: "cs:onOtherObject:category"
            String: "Position"
          }
          Overrides {
            Name: "cs:onFloor:category"
            String: "Position"
          }
          Overrides {
            Name: "cs:isCarpet:category"
            String: "Position"
          }
          Overrides {
            Name: "cs:id:tooltip"
            String: "The identifier of the object. It must be unique for each object"
          }
          Overrides {
            Name: "cs:asset:tooltip"
            String: "Asset of the object"
          }
          Overrides {
            Name: "cs:size:tooltip"
            String: "Size of the object (in tile)"
          }
          Overrides {
            Name: "cs:onFloor:tooltip"
            String: "Can the object be placed on the ground ?"
          }
          Overrides {
            Name: "cs:onWall:tooltip"
            String: "Can the object be placed on the wall ?"
          }
          Overrides {
            Name: "cs:onOtherObject:tooltip"
            String: "Can the object be placed on other objects ?"
          }
          Overrides {
            Name: "cs:canSupportObject:tooltip"
            String: "Can the object can support other objects ?"
          }
          Overrides {
            Name: "cs:isCarpet:tooltip"
            String: "Is the object a carpet?"
          }
          Overrides {
            Name: "cs:positionOffset:category"
            String: "AssetCapture"
          }
          Overrides {
            Name: "cs:rotationOffset:category"
            String: "AssetCapture"
          }
          Overrides {
            Name: "cs:scaleMultiplier:category"
            String: "AssetCapture"
          }
          Overrides {
            Name: "cs:wallOffsetPositionZ:tooltip"
            String: "Offset position when object is on the wall. The base position for wall objects is 200 px"
          }
          Overrides {
            Name: "cs:wallOffsetPositionZ:category"
            String: "Position"
          }
          Overrides {
            Name: "cs:wallOffsetPositionZ:subcategory"
            String: "WallPosition"
          }
          Overrides {
            Name: "cs:scaleMultiplier:tooltip"
            String: "Scale multiplier for the icon"
          }
          Overrides {
            Name: "cs:positionOffset:tooltip"
            String: "Position offset for the icon"
          }
          Overrides {
            Name: "cs:rotationOffset:tooltip"
            String: "Rotation offset for the icon"
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
        Folder {
          IsGroup: true
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
    Description: "Create a full housing system easily and quickly\r\n\r\nThis module contains : \r\n\r\n- 4 tests houses (1 already filled to see the potential)\r\n- 80 basic objects\r\n- Saving/Loading system easy to implement\r\n- You can create your own objects\r\n- You can create your own houses\r\n- Networked optimization"
  }
  SerializationVersion: 110
  DirectlyPublished: true
}
