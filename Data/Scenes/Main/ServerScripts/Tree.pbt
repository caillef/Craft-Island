Name: "ServerScripts"
RootId: 11584135646992845074
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
