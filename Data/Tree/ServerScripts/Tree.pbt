Name: "ServerScripts"
RootId: 11584135646992845074
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
  Script {
    ScriptAsset {
      Id: 6497723591349818000
    }
  }
}
Objects {
  Id: 4878395841234236053
  Name: "StoryManager"
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
  Script {
    ScriptAsset {
      Id: 14196624896830847953
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
      Name: "cs:StoryManager"
      ObjectReference {
        SelfId: 4878395841234236053
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
  Script {
    ScriptAsset {
      Id: 8011119035382229952
    }
  }
}
Objects {
  Id: 16375166676192963401
  Name: "BuildingSystemServer"
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
      Name: "cs:InventoryScriptServer"
      ObjectReference {
        SelfId: 8227678740540710611
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
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 18313405971573075606
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
      Name: "cs:PlayerIsland"
      AssetReference {
        Id: 3526051123066352755
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
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 4316728097649207683
    }
  }
}
Objects {
  Id: 1699577541822663217
  Name: "BlockSerializer"
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
  Script {
    ScriptAsset {
      Id: 7339519165257358670
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
  Script {
    ScriptAsset {
      Id: 11526358357864682441
    }
  }
}
Objects {
  Id: 3477392683278034334
  Name: "SOUNDS"
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
      Name: "cs:RockImpact"
      AssetReference {
        Id: 12323704023193685185
      }
    }
    Overrides {
      Name: "cs:WoodImpact"
      AssetReference {
        Id: 8919834695524188661
      }
    }
    Overrides {
      Name: "cs:BonusItem"
      AssetReference {
        Id: 12403158611811931962
      }
    }
    Overrides {
      Name: "cs:PickAxeChiselMineRockHit01SFX"
      ObjectReference {
      }
    }
    Overrides {
      Name: "cs:AxeTreeWoodChopHitImpact01SFX"
      ObjectReference {
      }
    }
    Overrides {
      Name: "cs:UIBrightNotification01SFX"
      ObjectReference {
      }
    }
    Overrides {
      Name: "cs:BurningFurnace"
      AssetReference {
        Id: 15558228533079543248
      }
    }
    Overrides {
      Name: "cs:GiftCodeSuccessSFX"
      AssetReference {
        Id: 14398622975927397500
      }
    }
    Overrides {
      Name: "cs:GiftCodeErrorSFX"
      AssetReference {
        Id: 10821605564121231263
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 7087234599356691858
    }
  }
}
