Assets {
  Id: 7675034160880028355
  Name: "BuySellTrigger"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 16011687614160410098
      Objects {
        Id: 16011687614160410098
        Name: "Trigger_SellWood"
        Transform {
          Scale {
            X: 3.61050797
            Y: 1.35096061
            Z: 1.9000001
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 10289017242712445349
        UnregisteredParameters {
          Overrides {
            Name: "cs:InventoryScriptServer"
            ObjectReference {
              SelfId: 8227678740540710611
            }
          }
          Overrides {
            Name: "cs:GoldScriptServer"
            ObjectReference {
              SelfId: 7046807597298804878
            }
          }
          Overrides {
            Name: "cs:ItemUI"
            AssetReference {
              Id: 4707371283039740838
            }
          }
          Overrides {
            Name: "cs:Price"
            Int: 5
          }
          Overrides {
            Name: "cs:Buy"
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
        Trigger {
          Interactable: true
          InteractionLabel: "Sell 1 wood log"
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
        Id: 10289017242712445349
        Name: "BuySellScript"
        Transform {
          Location {
            X: -242.123932
            Y: -1334.96
            Z: -1242.10522
          }
          Rotation {
            Yaw: 24.999979
          }
          Scale {
            X: 0.476190448
            Y: 1
            Z: 0.526315749
          }
        }
        ParentId: 16011687614160410098
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
        Script {
          ScriptAsset {
            Id: 25654430572870202
          }
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 78
}
