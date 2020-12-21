Name: "SellBread_1"
RootId: 5271566846307770488
Objects {
  Id: 12392014303140174635
  Name: "Bread Model"
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
  ParentId: 5271566846307770488
  ChildIds: 5067156380200295724
  ChildIds: 14745550804876027768
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
  Id: 14745550804876027768
  Name: "Bread"
  Transform {
    Location {
      X: -2.8840332
      Y: -2.29138184
      Z: -8.95459
    }
    Rotation {
      Yaw: 90.6680908
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12392014303140174635
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemUITemplate"
      AssetReference {
        Id: 6399384539132156144
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
  Folder {
    IsFilePartition: true
    FilePartitionName: "Bread_2"
  }
  InstanceHistory {
    SelfId: 14745550804876027768
    SubobjectId: 7749770008946076796
    InstanceId: 12981778777996398231
    TemplateId: 11374977346855187947
    WasRoot: true
  }
}
Objects {
  Id: 5067156380200295724
  Name: "Bread"
  Transform {
    Location {
      X: 4.4004364
      Y: 6.28149414
      Z: 0.362060547
    }
    Rotation {
      Pitch: -14.5346079
      Yaw: 102.179733
      Roll: -7.58042097
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12392014303140174635
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemUITemplate"
      AssetReference {
        Id: 6399384539132156144
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
  Folder {
    IsFilePartition: true
    FilePartitionName: "Bread_3"
  }
  InstanceHistory {
    SelfId: 14745550804876027768
    SubobjectId: 7749770008946076796
    InstanceId: 12981778777996398231
    TemplateId: 11374977346855187947
    WasRoot: true
  }
}
Objects {
  Id: 10130311404360392317
  Name: "BuySellTrigger"
  Transform {
    Location {
      X: -0.0640564
      Z: 12.7775879
    }
    Rotation {
    }
    Scale {
      X: 0.547660232
      Y: 0.669944763
      Z: 0.580976725
    }
  }
  ParentId: 5271566846307770488
  ChildIds: 9660001016294935060
  UnregisteredParameters {
    Overrides {
      Name: "cs:InventoryScriptServer"
      ObjectReference {
        SelfId: 8227678740540710611
      }
    }
    Overrides {
      Name: "cs:ItemUI"
      AssetReference {
        Id: 6399384539132156144
      }
    }
    Overrides {
      Name: "cs:Price"
      Int: 10
    }
    Overrides {
      Name: "cs:Buy"
      Bool: false
    }
    Overrides {
      Name: "cs:GoldScriptServer"
      ObjectReference {
        SelfId: 7046807597298804878
      }
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
    InteractionLabel: "Sell Bread (10g)"
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
  Id: 9660001016294935060
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
  ParentId: 10130311404360392317
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
