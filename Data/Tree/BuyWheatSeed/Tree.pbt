Name: "BuyWheatSeed"
RootId: 5745221345826254586
Objects {
  Id: 3146416075805088460
  Name: "Wheat Seeds Model"
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
  ParentId: 5745221345826254586
  ChildIds: 14622500238559466524
  ChildIds: 10972020105270034571
  ChildIds: 14979908768794551681
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 3146416075805088460
    SubobjectId: 1478885907885714469
    InstanceId: 17522159150630198821
    TemplateId: 7689519216032096316
  }
}
Objects {
  Id: 14979908768794551681
  Name: "Fantasy Sack Open"
  Transform {
    Location {
      X: 10
      Y: -3.7286377
      Z: -9.0246582
    }
    Rotation {
      Yaw: -140
    }
    Scale {
      X: 0.2
      Y: 0.2
      Z: 0.2
    }
  }
  ParentId: 3146416075805088460
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 15458865289033983629
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 10972020105270034571
  Name: "Fantasy Sack Open"
  Transform {
    Location {
      X: -20
      Y: -8.72876
      Z: -9.0246582
    }
    Rotation {
      Yaw: -10.0000143
    }
    Scale {
      X: 0.2
      Y: 0.2
      Z: 0.2
    }
  }
  ParentId: 3146416075805088460
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 15458865289033983629
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 14622500238559466524
  Name: "Fantasy Sack Open"
  Transform {
    Location {
      X: -5
      Y: 11.2712402
      Z: -9.0246582
    }
    Rotation {
      Yaw: -54.9999886
    }
    Scale {
      X: 0.2
      Y: 0.2
      Z: 0.2
    }
  }
  ParentId: 3146416075805088460
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 15458865289033983629
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 15032199138794897978
  Name: "BuySellTrigger"
  Transform {
    Location {
      X: 1.10900879
      Z: 12.7775879
    }
    Rotation {
    }
    Scale {
      X: 0.576915
      Y: 0.669944763
      Z: 0.580976725
    }
  }
  ParentId: 5745221345826254586
  ChildIds: 16109528110070014021
  UnregisteredParameters {
    Overrides {
      Name: "cs:InventoryScriptServer"
      ObjectReference {
        SelfId: 8227678740540710611
      }
    }
    Overrides {
      Name: "cs:Price"
      Int: 20
    }
    Overrides {
      Name: "cs:Buy"
      Bool: true
    }
    Overrides {
      Name: "cs:GoldScriptServer"
      ObjectReference {
        SelfId: 7046807597298804878
      }
    }
    Overrides {
      Name: "cs:ItemId"
      String: "WHEAT_SEEDS"
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Trigger {
    Interactable: true
    InteractionLabel: "Buy Wheat Seed (20g)"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  InstanceHistory {
    SelfId: 15032199138794897978
    SubobjectId: 17271664510564218067
    InstanceId: 17522159150630198821
    TemplateId: 7689519216032096316
  }
}
Objects {
  Id: 16109528110070014021
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
  ParentId: 15032199138794897978
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 25654430572870202
    }
  }
  InstanceHistory {
    SelfId: 16109528110070014021
    SubobjectId: 16194051813615310508
    InstanceId: 17522159150630198821
    TemplateId: 7689519216032096316
  }
}
