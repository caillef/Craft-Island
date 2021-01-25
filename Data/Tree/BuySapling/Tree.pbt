Name: "BuySapling"
RootId: 13392707250728637150
Objects {
  Id: 18039920924929410091
  Name: "Built"
  Transform {
    Location {
      X: 4.15228271
      Y: -3.56677246
      Z: 10.4797363
    }
    Rotation {
    }
    Scale {
      X: 0.04
      Y: 0.04
      Z: 0.04
    }
  }
  ParentId: 13392707250728637150
  UnregisteredParameters {
    Overrides {
      Name: "ma:Nature_Trunk:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Nature_Trunk:color"
      Color {
        R: 0.669999957
        G: 0.332781464
        A: 1
      }
    }
    Overrides {
      Name: "ma:Nature_Trunk:id"
      AssetReference {
        Id: 14307244558911102288
      }
    }
  }
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 9086663986850406737
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
      }
    }
  }
  InstanceHistory {
    SelfId: 1176658626015912605
    SubobjectId: 10108745275524321392
    InstanceId: 5267789816503545484
    TemplateId: 3214907868370729841
  }
}
Objects {
  Id: 10751649567154811930
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
  ParentId: 13392707250728637150
  ChildIds: 17394021693142774417
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
    SelfId: 9615740226136691553
    SubobjectId: 1478885907885714469
    InstanceId: 15966456142674523695
    TemplateId: 7689519216032096316
  }
}
Objects {
  Id: 17394021693142774417
  Name: "Fantasy Sack Open"
  Transform {
    Location {
      X: 4.74662495
      Y: -1.57148015
      Z: -9.0246582
    }
    Rotation {
      Yaw: 106.681709
    }
    Scale {
      X: 0.2
      Y: 0.2
      Z: 0.2
    }
  }
  ParentId: 10751649567154811930
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.460000038
        G: 0.338145733
        A: 1
      }
    }
  }
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
  Id: 18088392479311977907
  Name: "BuySellTrigger"
  Transform {
    Location {
      X: 1.94784951
      Y: -1.259781
      Z: 12.7775879
    }
    Rotation {
      Yaw: 161.681656
    }
    Scale {
      X: 0.547660232
      Y: 0.669944763
      Z: 0.580976725
    }
  }
  ParentId: 13392707250728637150
  ChildIds: 10918696018156261777
  UnregisteredParameters {
    Overrides {
      Name: "cs:InventoryScriptServer"
      ObjectReference {
        SelfId: 8227678740540710611
      }
    }
    Overrides {
      Name: "cs:Price"
      Int: 50
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
      String: "SAPLING"
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
    InteractionLabel: "Buy Sapling (50g)"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  InstanceHistory {
    SelfId: 9099155205340171159
    SubobjectId: 17271664510564218067
    InstanceId: 15966456142674523695
    TemplateId: 7689519216032096316
  }
}
Objects {
  Id: 10918696018156261777
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
  ParentId: 18088392479311977907
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
    SelfId: 8163656669761087976
    SubobjectId: 16194051813615310508
    InstanceId: 15966456142674523695
    TemplateId: 7689519216032096316
  }
}
