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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 9086663986850406737
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
      }
      BoundsScale: 1
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 15458865289033983629
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
}
