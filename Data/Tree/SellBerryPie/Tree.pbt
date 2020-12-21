Name: "SellBerryPie"
RootId: 194322440282189979
Objects {
  Id: 1972486403270729882
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
  ParentId: 194322440282189979
  ChildIds: 10353423363495445987
  ChildIds: 10943210008604953948
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
  Id: 10943210008604953948
  Name: "Berry Pie"
  Transform {
    Location {
      X: -3.68363452
      Y: -20.8909264
      Z: -9.0246582
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1972486403270729882
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
    FilePartitionName: "Berry Pie"
  }
  InstanceHistory {
    SelfId: 10943210008604953948
    SubobjectId: 3892096667864797693
    InstanceId: 12030764566353647305
    TemplateId: 2351731877209191770
    WasRoot: true
  }
}
Objects {
  Id: 10353423363495445987
  Name: "Berry Pie"
  Transform {
    Location {
      X: 2.45575666
      Y: 13.9272842
      Z: -9.0246582
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1972486403270729882
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
    FilePartitionName: "Berry Pie_1"
  }
  InstanceHistory {
    SelfId: 10353423363495445987
    SubobjectId: 3892096667864797693
    InstanceId: 16857065896188657405
    TemplateId: 2351731877209191770
    WasRoot: true
  }
}
Objects {
  Id: 5152715558766895278
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
  ParentId: 194322440282189979
  ChildIds: 990523088605946730
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
        Id: 7713744306647527414
      }
    }
    Overrides {
      Name: "cs:Price"
      Int: 50
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
    InteractionLabel: "Sell Berry Pie (50g)"
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
  Id: 990523088605946730
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
  ParentId: 5152715558766895278
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
