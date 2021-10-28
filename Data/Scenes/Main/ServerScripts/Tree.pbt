Name: "ServerScripts"
RootId: 11584135646992845074
Objects {
  Id: 14129066812945052936
  Name: "InteractionServer"
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
  ParentId: 11584135646992845074
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
      Id: 63614235653257907
    }
  }
}
Objects {
  Id: 4888686829961194661
  Name: "RewardPointsDaily"
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
  ParentId: 11584135646992845074
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
      Id: 9525272680058773397
    }
  }
}
Objects {
  Id: 10074411831079104885
  Name: "BuySellServer"
  Transform {
    Location {
      X: -100
      Y: 65
      Z: -45
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11584135646992845074
  UnregisteredParameters {
    Overrides {
      Name: "cs:InventoryScriptServer"
      ObjectReference {
        SelfId: 8227678740540710611
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
      Id: 6497723591349818000
    }
  }
}
Objects {
  Id: 16979679800511636798
  Name: "ServerResetPlayer"
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
  ParentId: 11584135646992845074
  UnregisteredParameters {
    Overrides {
      Name: "cs:SpawnManager"
      ObjectReference {
        SelfId: 9614478160158227700
      }
    }
    Overrides {
      Name: "cs:SharedKeyIslands"
      NetReference {
        Key: "94aa09be828c4cb295ada6a9d891c2f8"
        Type {
          Value: "mc:enetreferencetype:sharedpersistence"
        }
      }
    }
    Overrides {
      Name: "cs:SharedKeyInventory"
      NetReference {
        Key: "e6f6a0ce79ac4187b47b15c4d6b4579a"
        Type {
          Value: "mc:enetreferencetype:sharedpersistence"
        }
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
      Id: 8011119035382229952
    }
  }
}
Objects {
  Id: 7271539280238961795
  Name: "InventoryManager"
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
  ParentId: 11584135646992845074
  UnregisteredParameters {
    Overrides {
      Name: "cs:Inventory"
      NetReference {
        Key: "e6f6a0ce79ac4187b47b15c4d6b4579a"
        Type {
          Value: "mc:enetreferencetype:sharedpersistence"
        }
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
      Id: 5377384609381946468
    }
  }
}
Objects {
  Id: 11215959900169722424
  Name: "TeleportManager"
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
  ParentId: 11584135646992845074
  UnregisteredParameters {
    Overrides {
      Name: "cs:SpawnManager"
      ObjectReference {
        SelfId: 9614478160158227700
      }
    }
    Overrides {
      Name: "cs:PortalSFX"
      AssetReference {
        Id: 3054833864129765767
      }
    }
    Overrides {
      Name: "cs:MainPortal"
      ObjectReference {
        SelfId: 10914697275734499140
        SubObjectId: 3636187373852440861
        InstanceId: 5487678312414092913
        TemplateId: 8323218518488701719
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
      Id: 10935553613204209229
    }
  }
}
Objects {
  Id: 9614478160158227700
  Name: "SpawnManager"
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
  ParentId: 11584135646992845074
  UnregisteredParameters {
    Overrides {
      Name: "cs:BuildingSystemServerattherootofthe"
      ObjectReference {
        SelfId: 16375166676192963401
      }
    }
    Overrides {
      Name: "cs:Islands"
      ObjectReference {
        SelfId: 10357142915619545493
      }
    }
    Overrides {
      Name: "cs:TeleportManager"
      ObjectReference {
        SelfId: 11215959900169722424
      }
    }
    Overrides {
      Name: "cs:PlayerIsland"
      AssetReference {
        Id: 3526051123066352755
      }
    }
    Overrides {
      Name: "cs:PlayerIsland2"
      AssetReference {
        Id: 4829224692537125149
      }
    }
    Overrides {
      Name: "cs:PlayerIsland3"
      AssetReference {
        Id: 4792945804198263382
      }
    }
    Overrides {
      Name: "cs:PlayerIsland4"
      AssetReference {
        Id: 8839826875352274532
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
      Id: 4316728097649207683
    }
  }
}
Objects {
  Id: 15359744225092119989
  Name: "OBJECTS"
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
  ParentId: 11584135646992845074
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
      Id: 11526358357864682441
    }
  }
}
