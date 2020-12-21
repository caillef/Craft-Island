Name: "MainIsland"
RootId: 14592900131835349158
Objects {
  Id: 6207580416035483729
  Name: "Architect"
  Transform {
    Location {
      X: -1642.80469
      Y: -347.825317
      Z: 2559.73706
    }
    Rotation {
      Yaw: -13.9896736
    }
    Scale {
      X: 3
      Y: 3
      Z: 3
    }
  }
  ParentId: 14592900131835349158
  ChildIds: 748043130431444194
  ChildIds: 6898455751249458655
  ChildIds: 9146284165510496393
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 18397768696529362585
      }
    }
    Overrides {
      Name: "ma:Shared_Detail3:id"
      AssetReference {
        Id: 18397768696529362585
      }
    }
    Overrides {
      Name: "ma:Shared_Detail2:id"
      AssetReference {
        Id: 18397768696529362585
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
      Id: 16955162695139626198
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    AnimatedMesh {
      AnimationStance: "unarmed_idle_relaxed"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        Animation: "unarmed_sit_ground_crossed"
        StartPosition: 0.482480824
        PlaybackRate: 1
        ShouldLoop: true
      }
    }
  }
}
Objects {
  Id: 9146284165510496393
  Name: "Trigger"
  Transform {
    Location {
      X: 57.5785904
      Y: 0.574614823
      Z: -44.2425156
    }
    Rotation {
      Yaw: -6.30599976
    }
    Scale {
      X: 2
      Y: 2
      Z: 2
    }
  }
  ParentId: 6207580416035483729
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Trigger {
    Interactable: true
    InteractionLabel: "Talk"
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
  Id: 6898455751249458655
  Name: "World Text"
  Transform {
    Location {
      Z: 18.5146484
    }
    Rotation {
    }
    Scale {
      X: 0.5
      Y: 0.5
      Z: 0.5
    }
  }
  ParentId: 6207580416035483729
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Text {
    Text: "The Architect"
    Color {
      R: 1
      G: 1
      B: 1
      A: 1
    }
    HorizontalSize: 1
    VerticalSize: 1
    HorizontalAlignment {
      Value: "mc:ecoretexthorizontalalign:center"
    }
    VerticalAlignment {
      Value: "mc:ecoretextverticalalign:center"
    }
  }
}
Objects {
  Id: 748043130431444194
  Name: "FloatingArchitect"
  Transform {
    Location {
      X: 320.667145
      Y: 72.3912811
      Z: -853.245728
    }
    Rotation {
      Yaw: 19.9771099
    }
    Scale {
      X: 0.333333343
      Y: 0.333333343
      Z: 0.333333343
    }
  }
  ParentId: 6207580416035483729
  UnregisteredParameters {
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 9146284165510496393
      }
    }
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
      Id: 7168434004233138452
    }
  }
}
Objects {
  Id: 4973484096715360362
  Name: "Group"
  Transform {
    Location {
      X: -831.074219
      Y: -1690.84766
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14592900131835349158
  ChildIds: 16240130158429218647
  ChildIds: 13392707250728637150
  ChildIds: 17522159150630198821
  ChildIds: 13579967103648911087
  ChildIds: 5271566846307770488
  ChildIds: 194322440282189979
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
}
Objects {
  Id: 194322440282189979
  Name: "SellBerryPie"
  Transform {
    Location {
      X: -453.925781
      Y: -435.819092
      Z: 2284.02466
    }
    Rotation {
      Yaw: -35
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4973484096715360362
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "SellBerryPie"
  }
  InstanceHistory {
    SelfId: 16240130158429218647
    SubobjectId: 8113092316498761747
    InstanceId: 15966456142674523695
    TemplateId: 7689519216032096316
    WasRoot: true
  }
}
Objects {
  Id: 5271566846307770488
  Name: "SellBread"
  Transform {
    Location {
      X: -508.925781
      Y: -400.819092
      Z: 2284.02466
    }
    Rotation {
      Yaw: -35
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4973484096715360362
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "SellBread_1"
  }
  InstanceHistory {
    SelfId: 16240130158429218647
    SubobjectId: 8113092316498761747
    InstanceId: 15966456142674523695
    TemplateId: 7689519216032096316
    WasRoot: true
  }
}
Objects {
  Id: 13579967103648911087
  Name: "BuySell_Wood"
  Transform {
    Location {
      X: -403.925781
      Y: -475.819092
      Z: 2295
    }
    Rotation {
      Yaw: -35
    }
    Scale {
      X: 0.5
      Y: 0.6
      Z: 0.6
    }
  }
  ParentId: 4973484096715360362
  ChildIds: 17044052592504130232
  ChildIds: 6700608513344214770
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
  Trigger {
    Interactable: true
    InteractionLabel: "Sell Wood (5g)"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  InstanceHistory {
    SelfId: 13579967103648911087
    SubobjectId: 16011687614160410098
    InstanceId: 13472055517086043436
    TemplateId: 7675034160880028355
    WasRoot: true
  }
}
Objects {
  Id: 6700608513344214770
  Name: "Group"
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
  ParentId: 13579967103648911087
  ChildIds: 9145669533399247540
  ChildIds: 17150355236440318542
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
}
Objects {
  Id: 17150355236440318542
  Name: "Large Round Wood Beam 8m"
  Transform {
    Location {
      X: 37.677597
      Y: 42.331356
      Z: -16.666666
    }
    Rotation {
      Yaw: -100.000031
    }
    Scale {
      X: 0.16
      Y: 0.833333313
      Z: 0.833333313
    }
  }
  ParentId: 6700608513344214770
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 12049206672583490916
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
      Id: 8556281639390552608
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
    SelfId: 17150355236440318542
    SubobjectId: 7640432072859289763
    InstanceId: 14307561003301865797
    TemplateId: 5679982547435929442
  }
}
Objects {
  Id: 9145669533399247540
  Name: "Large Round Wood Beam 8m"
  Transform {
    Location {
      X: -48.3418694
      Y: 43.0040665
      Z: -16.666666
    }
    Rotation {
      Pitch: 24.8982792
      Yaw: -49.4860229
      Roll: 2.32729053
    }
    Scale {
      X: 0.16
      Y: 0.833333313
      Z: 0.833333313
    }
  }
  ParentId: 6700608513344214770
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 12049206672583490916
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
      Id: 8556281639390552608
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
    SelfId: 17150355236440318542
    SubobjectId: 7640432072859289763
    InstanceId: 14307561003301865797
    TemplateId: 5679982547435929442
  }
}
Objects {
  Id: 17044052592504130232
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
  ParentId: 13579967103648911087
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
    SelfId: 17044052592504130232
    SubobjectId: 10289017242712445349
    InstanceId: 13472055517086043436
    TemplateId: 7675034160880028355
  }
}
Objects {
  Id: 17522159150630198821
  Name: "BuyableItem"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4973484096715360362
  TemplateInstance {
    ParameterOverrideMap {
      key: 8113092316498761747
      value {
        Overrides {
          Name: "Name"
          String: "BuyWheatSeed"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -158.925781
            Y: -552.090454
            Z: 2284.02466
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 17271664510564218067
      value {
        Overrides {
          Name: "InteractionLabel"
          String: "Buy Wheat Seed (20g)"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 1.10900879
            Z: 12.7775879
          }
        }
      }
    }
    TemplateAsset {
      Id: 7689519216032096316
    }
  }
}
Objects {
  Id: 13392707250728637150
  Name: "BuySapling"
  Transform {
    Location {
      X: -68.9257813
      Y: -550.819092
      Z: 2284.02466
    }
    Rotation {
      Yaw: -161.681686
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4973484096715360362
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "BuySapling"
  }
  InstanceHistory {
    SelfId: 16240130158429218647
    SubobjectId: 8113092316498761747
    InstanceId: 15966456142674523695
    TemplateId: 7689519216032096316
    WasRoot: true
  }
}
Objects {
  Id: 16240130158429218647
  Name: "SellWheat"
  Transform {
    Location {
      X: -563.925781
      Y: -360.819092
      Z: 2284.02466
    }
    Rotation {
      Yaw: -35
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4973484096715360362
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "SellWheat"
  }
  InstanceHistory {
    SelfId: 16240130158429218647
    SubobjectId: 8113092316498761747
    InstanceId: 15966456142674523695
    TemplateId: 7689519216032096316
    WasRoot: true
  }
}
Objects {
  Id: 10070911445812904906
  Name: "MergedModel"
  Transform {
    Location {
      X: 655
      Y: 973.333313
      Z: 2270
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14592900131835349158
  ChildIds: 12867865519974131295
  ChildIds: 9222490443025482937
  ChildIds: 10707336120018729295
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    Model {
    }
  }
}
Objects {
  Id: 10707336120018729295
  Name: "RebirthMarketStall"
  Transform {
    Location {
      X: -2002.33594
      Y: -3122.17041
      Z: -104.160156
    }
    Rotation {
      Yaw: -36.2425842
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10070911445812904906
  ChildIds: 105249976649481598
  ChildIds: 15968302252826027345
  ChildIds: 8885179309209760736
  ChildIds: 11470802540323255918
  ChildIds: 6374209719003431965
  ChildIds: 10484624231199969382
  ChildIds: 14253363823001144489
  ChildIds: 18016318078898062975
  ChildIds: 11984801906704211217
  ChildIds: 13410262653271442370
  ChildIds: 13659696779087760286
  ChildIds: 12019645602265744241
  ChildIds: 17070000617920056422
  ChildIds: 1571364473479036993
  ChildIds: 16440642128218217822
  ChildIds: 4061473859996814687
  ChildIds: 2440328533433870911
  ChildIds: 15660071300034666301
  ChildIds: 1237083128879401508
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
    SelfId: 9222490443025482937
    SubobjectId: 14003170835353246918
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
    WasRoot: true
  }
}
Objects {
  Id: 1237083128879401508
  Name: "Seeds Bag"
  Transform {
    Location {
      X: -415.327148
      Y: -1643.10327
      Z: 2284.02466
    }
    Rotation {
      Yaw: 161.87973
    }
    Scale {
      X: 0.5
      Y: 0.5
      Z: 0.5
    }
  }
  ParentId: 10707336120018729295
  TemplateInstance {
    ParameterOverrideMap {
      key: 8272421696643094225
      value {
        Overrides {
          Name: "Name"
          String: "Seeds Bag"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -134.622559
            Y: 1.49169922
            Z: 5.88452148
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 161.879715
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 13464214550922927114
      value {
        Overrides {
          Name: "Position"
          Vector {
            X: 2.85098267
            Y: -2.95275879
          }
        }
      }
    }
    TemplateAsset {
      Id: 1334819220904432357
    }
  }
}
Objects {
  Id: 15660071300034666301
  Name: "Rebirth"
  Transform {
    Location {
      X: -1.09747314
      Y: 99.1984482
      Z: 81.187973
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10707336120018729295
  ChildIds: 12847781314922844270
  ChildIds: 5842481350156389279
  ChildIds: 7344004251403687249
  ChildIds: 10823702294326650174
  ChildIds: 994771205818350820
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
    SelfId: 14788755785140431849
    SubobjectId: 8112575672182076310
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 994771205818350820
  Name: "Text 05: R"
  Transform {
    Location {
      X: 28.3035278
      Y: 0.0970459
      Z: 2.03369141
    }
    Rotation {
    }
    Scale {
      X: 0.150057971
      Y: 0.150057971
      Z: 0.150057971
    }
  }
  ParentId: 15660071300034666301
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font.Sides:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Faces:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Sides:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Faces:color"
      Color {
        R: 1
        G: 1
        B: 1
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
      Id: 6598245629754481566
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
    SelfId: 10989176464982386154
    SubobjectId: 2677665245810703765
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 10823702294326650174
  Name: "Text 05: I"
  Transform {
    Location {
      X: 13.2142639
      Y: 1.09240723
      Z: 2.47753906
    }
    Rotation {
    }
    Scale {
      X: 0.150057971
      Y: 0.150057971
      Z: 0.150057971
    }
  }
  ParentId: 15660071300034666301
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font.Sides:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Faces:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Sides:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Faces:color"
      Color {
        R: 1
        G: 1
        B: 1
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
      Id: 4232662368414213271
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
    SelfId: 11478558937713772125
    SubobjectId: 2514582090209533474
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 7344004251403687249
  Name: "Text 05: B"
  Transform {
    Location {
      X: -10.9698181
      Y: 1.31640625
      Z: 2.49438477
    }
    Rotation {
    }
    Scale {
      X: 0.150057971
      Y: 0.150057971
      Z: 0.150057971
    }
  }
  ParentId: 15660071300034666301
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font.Sides:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Faces:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Sides:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Faces:color"
      Color {
        R: 1
        G: 1
        B: 1
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
      Id: 1217607205458813639
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
    SelfId: 10847225835532577901
    SubobjectId: 3107635415896880146
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 5842481350156389279
  Name: "Text 05: E"
  Transform {
    Location {
      X: -26.4266357
      Y: 0.995849609
      Z: 2.88110352
    }
    Rotation {
    }
    Scale {
      X: 0.150057971
      Y: 0.150057971
      Z: 0.150057971
    }
  }
  ParentId: 15660071300034666301
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font.Sides:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Faces:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Sides:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Faces:color"
      Color {
        R: 1
        G: 1
        B: 1
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
      Id: 3300185404184952750
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
    SelfId: 5843019224497997981
    SubobjectId: 17059367768284221666
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 12847781314922844270
  Name: "Rock Block 02"
  Transform {
    Location {
      X: 11.0012817
      Y: -1.57950592
      Z: 8.07793427
    }
    Rotation {
    }
    Scale {
      X: 0.43454358
      Y: 0.0448170677
      Z: 0.234311834
    }
  }
  ParentId: 15660071300034666301
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 128608786371127728
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 7959943984560897135
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
    SelfId: 13382096856896001143
    SubobjectId: 297059109239737352
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 2440328533433870911
  Name: "Long Banner Manticore"
  Transform {
    Location {
      X: 150.019958
      Y: -19.5610352
      Z: 252.039612
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 0.431281745
    }
  }
  ParentId: 10707336120018729295
  UnregisteredParameters {
    Overrides {
      Name: "ma:Prop_Cloth:id"
      AssetReference {
        Id: 4507200794092684400
      }
    }
    Overrides {
      Name: "ma:Prop_Pole:id"
      AssetReference {
        Id: 1905556081030873598
      }
    }
    Overrides {
      Name: "ma:Prop_Cloth:smart"
      Bool: false
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
      Id: 2097480292430635919
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
    SelfId: 8603034158284794406
    SubobjectId: 14613479728836964953
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 4061473859996814687
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: 163.963684
      Y: -14.3917465
      Z: 247.061966
    }
    Rotation {
    }
    Scale {
      X: 0.099008657
      Y: 0.539000869
      Z: 0.5
    }
  }
  ParentId: 10707336120018729295
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 16316293070048759348
    SubobjectId: 6901345894499849803
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 16440642128218217822
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: -164.380493
      Y: -13.3209801
      Z: 247.061966
    }
    Rotation {
      Yaw: -179.999954
    }
    Scale {
      X: 0.099008657
      Y: 0.539000869
      Z: 0.5
    }
  }
  ParentId: 10707336120018729295
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 57967454888144571
    SubobjectId: 13647154305252931268
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 1571364473479036993
  Name: "Long Banner Manticore"
  Transform {
    Location {
      X: -150.035767
      Y: -9.3995018
      Z: 252.039612
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 0.431281745
    }
  }
  ParentId: 10707336120018729295
  UnregisteredParameters {
    Overrides {
      Name: "ma:Prop_Cloth:id"
      AssetReference {
        Id: 4507200794092684400
      }
    }
    Overrides {
      Name: "ma:Prop_Pole:id"
      AssetReference {
        Id: 1905556081030873598
      }
    }
    Overrides {
      Name: "ma:Prop_Cloth:smart"
      Bool: false
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
      Id: 2097480292430635919
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
    SelfId: 3060924134503228763
    SubobjectId: 10940098740242038052
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 17070000617920056422
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: 0.0509033203
      Y: -86.2427673
      Z: 41.5805969
    }
    Rotation {
      Yaw: 89.999939
    }
    Scale {
      X: 0.121236674
      Y: 1.22818351
      Z: 0.5
    }
  }
  ParentId: 10707336120018729295
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 12101146492574263881
    SubobjectId: 1893331543468110390
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 12019645602265744241
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: 0.0509033203
      Y: -90.9437332
      Z: 276.460388
    }
    Rotation {
      Yaw: 89.999939
    }
    Scale {
      X: 0.121236674
      Y: 1.22818351
      Z: 0.5
    }
  }
  ParentId: 10707336120018729295
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 6994012644002231984
    SubobjectId: 15899438340722192079
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 13659696779087760286
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: 0.0509033203
      Y: 63.7428665
      Z: 247.061966
    }
    Rotation {
      Yaw: 89.999939
    }
    Scale {
      X: 0.0990090743
      Y: 1.22818351
      Z: 0.5
    }
  }
  ParentId: 10707336120018729295
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 1928059602922485876
    SubobjectId: 12062971185027522571
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 13410262653271442370
  Name: "Carpet Tile 02"
  Transform {
    Location {
      X: -1.32629395
      Y: 68.1959
      Z: 237.02002
    }
    Rotation {
      Roll: 89.9999542
    }
    Scale {
      X: 0.476785
      Y: 0.0454720184
      Z: 0.476785094
    }
  }
  ParentId: 10707336120018729295
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9833834140376127917
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
      Id: 17788011970778134380
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
    SelfId: 11552238819884705739
    SubobjectId: 2159567964378742708
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 11984801906704211217
  Name: "Carpet Tile 02"
  Transform {
    Location {
      X: -1.32629395
      Y: -16.7120056
      Z: 271.427246
    }
    Rotation {
      Roll: -169.999908
    }
    Scale {
      X: 0.476785
      Y: 0.219305
      Z: 0.476784885
    }
  }
  ParentId: 10707336120018729295
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 17788011970778134380
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
    SelfId: 12547707674467199096
    SubobjectId: 1408490033167495175
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 18016318078898062975
  Name: "Carpet Tile 02"
  Transform {
    Location {
      X: -1.32629395
      Y: -103.02021
      Z: 134.036362
    }
    Rotation {
      Roll: 89.9999542
    }
    Scale {
      X: 0.476785
      Y: 0.37945345
      Z: 0.476785
    }
  }
  ParentId: 10707336120018729295
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 17788011970778134380
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
    SelfId: 1761165138883503551
    SubobjectId: 11950712570465025472
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 14253363823001144489
  Name: "Small Crate Lid"
  Transform {
    Location {
      X: 5.05090332
      Y: 52.8334732
      Z: 105
    }
    Rotation {
      Yaw: 89.9999084
    }
    Scale {
      X: 1.1
      Y: 1.80000007
      Z: 1
    }
  }
  ParentId: 10707336120018729295
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 1905556081030873598
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
      Id: 7028419796120990025
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
    SelfId: 9175593534743806959
    SubobjectId: 14051193641425804176
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 10484624231199969382
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: 70.0509
      Y: 52.8334732
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10707336120018729295
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 15668426925995745039
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
    SelfId: 7595875788580214772
    SubobjectId: 15330366758200496011
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 6374209719003431965
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: -69.9491
      Y: 52.8334732
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10707336120018729295
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 15668426925995745039
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
    SelfId: 16030242369534380032
    SubobjectId: 7196544533896384639
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 11470802540323255918
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: 160.050903
      Y: 66.9852676
      Z: 123.711914
    }
    Rotation {
      Pitch: 3.4150944e-05
      Yaw: 89.9999466
      Roll: 90.0000076
    }
    Scale {
      X: 0.100000016
      Y: 0.877422512
      Z: 0.5
    }
  }
  ParentId: 10707336120018729295
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 3362903733446693172
    SubobjectId: 10593293980806662475
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 8885179309209760736
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: -159.949097
      Y: 66.9852676
      Z: 123.711914
    }
    Rotation {
      Pitch: 3.4150944e-05
      Yaw: 89.9999466
      Roll: 90.0000076
    }
    Scale {
      X: 0.100000016
      Y: 0.877422512
      Z: 0.5
    }
  }
  ParentId: 10707336120018729295
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 9434144412036621501
    SubobjectId: 4559137905267899586
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 15968302252826027345
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: 160.050903
      Y: -85.0598831
      Z: 130
    }
    Rotation {
      Pitch: 3.4150944e-05
      Yaw: 89.9999466
      Roll: 90.0000076
    }
    Scale {
      X: 0.25
      Y: 1
      Z: 1
    }
  }
  ParentId: 10707336120018729295
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 3387240856673539485
    SubobjectId: 10567830682755157474
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 105249976649481598
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: -159.949097
      Y: -84.9562759
      Z: 130
    }
    Rotation {
      Pitch: 3.4150944e-05
      Yaw: 89.9999466
      Roll: 90.0000076
    }
    Scale {
      X: 0.25
      Y: 0.99999994
      Z: 1
    }
  }
  ParentId: 10707336120018729295
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 2356034729835186131
    SubobjectId: 11320869161718013868
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 9222490443025482937
  Name: "RebirthMarketStall"
  Transform {
    Location {
      X: -1600.63721
      Y: -3274.59473
      Z: -104.160156
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10070911445812904906
  ChildIds: 2356034729835186131
  ChildIds: 3387240856673539485
  ChildIds: 9434144412036621501
  ChildIds: 3362903733446693172
  ChildIds: 16030242369534380032
  ChildIds: 7595875788580214772
  ChildIds: 9175593534743806959
  ChildIds: 1761165138883503551
  ChildIds: 12547707674467199096
  ChildIds: 11552238819884705739
  ChildIds: 1928059602922485876
  ChildIds: 6994012644002231984
  ChildIds: 12101146492574263881
  ChildIds: 3060924134503228763
  ChildIds: 57967454888144571
  ChildIds: 16316293070048759348
  ChildIds: 8603034158284794406
  ChildIds: 14788755785140431849
  ChildIds: 5358168818794287733
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
    SelfId: 9222490443025482937
    SubobjectId: 14003170835353246918
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
    WasRoot: true
  }
}
Objects {
  Id: 5358168818794287733
  Name: "Seeds Bag"
  Transform {
    Location {
      X: -415.327148
      Y: -1643.10327
      Z: 2284.02466
    }
    Rotation {
      Yaw: 161.87973
    }
    Scale {
      X: 0.5
      Y: 0.5
      Z: 0.5
    }
  }
  ParentId: 9222490443025482937
  TemplateInstance {
    ParameterOverrideMap {
      key: 8272421696643094225
      value {
        Overrides {
          Name: "Name"
          String: "Seeds Bag"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -134.622559
            Y: 1.49169922
            Z: 5.88452148
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 161.879715
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 13464214550922927114
      value {
        Overrides {
          Name: "Position"
          Vector {
            X: 2.85098267
            Y: -2.95275879
          }
        }
      }
    }
    TemplateAsset {
      Id: 1334819220904432357
    }
  }
}
Objects {
  Id: 14788755785140431849
  Name: "Rebirth"
  Transform {
    Location {
      X: -1.09747314
      Y: 99.1984482
      Z: 81.187973
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9222490443025482937
  ChildIds: 13382096856896001143
  ChildIds: 5843019224497997981
  ChildIds: 10847225835532577901
  ChildIds: 11478558937713772125
  ChildIds: 10989176464982386154
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
    SelfId: 14788755785140431849
    SubobjectId: 8112575672182076310
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 10989176464982386154
  Name: "Text 05: R"
  Transform {
    Location {
      X: 28.3035278
      Y: 0.0970459
      Z: 2.03369141
    }
    Rotation {
    }
    Scale {
      X: 0.150057971
      Y: 0.150057971
      Z: 0.150057971
    }
  }
  ParentId: 14788755785140431849
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font.Sides:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Faces:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Sides:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Faces:color"
      Color {
        R: 1
        G: 1
        B: 1
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
      Id: 6598245629754481566
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
    SelfId: 10989176464982386154
    SubobjectId: 2677665245810703765
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 11478558937713772125
  Name: "Text 05: I"
  Transform {
    Location {
      X: 13.2142639
      Y: 1.09240723
      Z: 2.47753906
    }
    Rotation {
    }
    Scale {
      X: 0.150057971
      Y: 0.150057971
      Z: 0.150057971
    }
  }
  ParentId: 14788755785140431849
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font.Sides:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Faces:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Sides:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Faces:color"
      Color {
        R: 1
        G: 1
        B: 1
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
      Id: 4232662368414213271
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
    SelfId: 11478558937713772125
    SubobjectId: 2514582090209533474
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 10847225835532577901
  Name: "Text 05: B"
  Transform {
    Location {
      X: -10.9698181
      Y: 1.31640625
      Z: 2.49438477
    }
    Rotation {
    }
    Scale {
      X: 0.150057971
      Y: 0.150057971
      Z: 0.150057971
    }
  }
  ParentId: 14788755785140431849
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font.Sides:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Faces:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Sides:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Faces:color"
      Color {
        R: 1
        G: 1
        B: 1
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
      Id: 1217607205458813639
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
    SelfId: 10847225835532577901
    SubobjectId: 3107635415896880146
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 5843019224497997981
  Name: "Text 05: E"
  Transform {
    Location {
      X: -26.4266357
      Y: 0.995849609
      Z: 2.88110352
    }
    Rotation {
    }
    Scale {
      X: 0.150057971
      Y: 0.150057971
      Z: 0.150057971
    }
  }
  ParentId: 14788755785140431849
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font.Sides:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Faces:id"
      AssetReference {
        Id: 132672053610873933
      }
    }
    Overrides {
      Name: "ma:Font.Sides:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Bevel:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font.Faces:color"
      Color {
        R: 1
        G: 1
        B: 1
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
      Id: 3300185404184952750
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
    SelfId: 5843019224497997981
    SubobjectId: 17059367768284221666
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 13382096856896001143
  Name: "Rock Block 02"
  Transform {
    Location {
      X: 11.0012817
      Y: -1.57950592
      Z: 8.07793427
    }
    Rotation {
    }
    Scale {
      X: 0.43454358
      Y: 0.0448170677
      Z: 0.234311834
    }
  }
  ParentId: 14788755785140431849
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 128608786371127728
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 7959943984560897135
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
    SelfId: 13382096856896001143
    SubobjectId: 297059109239737352
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 8603034158284794406
  Name: "Long Banner Manticore"
  Transform {
    Location {
      X: 150.019958
      Y: -19.5610352
      Z: 252.039612
    }
    Rotation {
      Yaw: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 0.431281745
    }
  }
  ParentId: 9222490443025482937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Prop_Cloth:id"
      AssetReference {
        Id: 4507200794092684400
      }
    }
    Overrides {
      Name: "ma:Prop_Pole:id"
      AssetReference {
        Id: 1905556081030873598
      }
    }
    Overrides {
      Name: "ma:Prop_Cloth:smart"
      Bool: false
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
      Id: 2097480292430635919
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
    SelfId: 8603034158284794406
    SubobjectId: 14613479728836964953
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 16316293070048759348
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: 163.963684
      Y: -14.3917465
      Z: 247.061966
    }
    Rotation {
    }
    Scale {
      X: 0.099008657
      Y: 0.539000869
      Z: 0.5
    }
  }
  ParentId: 9222490443025482937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 16316293070048759348
    SubobjectId: 6901345894499849803
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 57967454888144571
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: -164.380493
      Y: -13.3209801
      Z: 247.061966
    }
    Rotation {
      Yaw: -179.999954
    }
    Scale {
      X: 0.099008657
      Y: 0.539000869
      Z: 0.5
    }
  }
  ParentId: 9222490443025482937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 57967454888144571
    SubobjectId: 13647154305252931268
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 3060924134503228763
  Name: "Long Banner Manticore"
  Transform {
    Location {
      X: -150.035767
      Y: -9.3995018
      Z: 252.039612
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1
      Y: 1
      Z: 0.431281745
    }
  }
  ParentId: 9222490443025482937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Prop_Cloth:id"
      AssetReference {
        Id: 4507200794092684400
      }
    }
    Overrides {
      Name: "ma:Prop_Pole:id"
      AssetReference {
        Id: 1905556081030873598
      }
    }
    Overrides {
      Name: "ma:Prop_Cloth:smart"
      Bool: false
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
      Id: 2097480292430635919
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
    SelfId: 3060924134503228763
    SubobjectId: 10940098740242038052
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 12101146492574263881
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: 0.0509033203
      Y: -86.2427673
      Z: 41.5805969
    }
    Rotation {
      Yaw: 89.999939
    }
    Scale {
      X: 0.121236674
      Y: 1.22818351
      Z: 0.5
    }
  }
  ParentId: 9222490443025482937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 12101146492574263881
    SubobjectId: 1893331543468110390
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 6994012644002231984
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: 0.0509033203
      Y: -90.9437332
      Z: 276.460388
    }
    Rotation {
      Yaw: 89.999939
    }
    Scale {
      X: 0.121236674
      Y: 1.22818351
      Z: 0.5
    }
  }
  ParentId: 9222490443025482937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 6994012644002231984
    SubobjectId: 15899438340722192079
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 1928059602922485876
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: 0.0509033203
      Y: 63.7428665
      Z: 247.061966
    }
    Rotation {
      Yaw: 89.999939
    }
    Scale {
      X: 0.0990090743
      Y: 1.22818351
      Z: 0.5
    }
  }
  ParentId: 9222490443025482937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 1928059602922485876
    SubobjectId: 12062971185027522571
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 11552238819884705739
  Name: "Carpet Tile 02"
  Transform {
    Location {
      X: -1.32629395
      Y: 68.1959
      Z: 237.02002
    }
    Rotation {
      Roll: 89.9999542
    }
    Scale {
      X: 0.476785
      Y: 0.0454720184
      Z: 0.476785094
    }
  }
  ParentId: 9222490443025482937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 9833834140376127917
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
      Id: 17788011970778134380
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
    SelfId: 11552238819884705739
    SubobjectId: 2159567964378742708
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 12547707674467199096
  Name: "Carpet Tile 02"
  Transform {
    Location {
      X: -1.32629395
      Y: -16.7120056
      Z: 271.427246
    }
    Rotation {
      Roll: -169.999908
    }
    Scale {
      X: 0.476785
      Y: 0.219305
      Z: 0.476784885
    }
  }
  ParentId: 9222490443025482937
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 17788011970778134380
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
    SelfId: 12547707674467199096
    SubobjectId: 1408490033167495175
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 1761165138883503551
  Name: "Carpet Tile 02"
  Transform {
    Location {
      X: -1.32629395
      Y: -103.02021
      Z: 134.036362
    }
    Rotation {
      Roll: 89.9999542
    }
    Scale {
      X: 0.476785
      Y: 0.37945345
      Z: 0.476785
    }
  }
  ParentId: 9222490443025482937
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 17788011970778134380
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
    SelfId: 1761165138883503551
    SubobjectId: 11950712570465025472
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 9175593534743806959
  Name: "Small Crate Lid"
  Transform {
    Location {
      X: 5.05090332
      Y: 52.8334732
      Z: 105
    }
    Rotation {
      Yaw: 89.9999084
    }
    Scale {
      X: 1.1
      Y: 1.80000007
      Z: 1
    }
  }
  ParentId: 9222490443025482937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 1905556081030873598
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
      Id: 7028419796120990025
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
    SelfId: 9175593534743806959
    SubobjectId: 14051193641425804176
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 7595875788580214772
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: 70.0509
      Y: 52.8334732
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9222490443025482937
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 15668426925995745039
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
    SelfId: 7595875788580214772
    SubobjectId: 15330366758200496011
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 16030242369534380032
  Name: "Wooden Barrel"
  Transform {
    Location {
      X: -69.9491
      Y: 52.8334732
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9222490443025482937
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 15668426925995745039
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
    SelfId: 16030242369534380032
    SubobjectId: 7196544533896384639
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 3362903733446693172
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: 160.050903
      Y: 66.9852676
      Z: 123.711914
    }
    Rotation {
      Pitch: 3.4150944e-05
      Yaw: 89.9999466
      Roll: 90.0000076
    }
    Scale {
      X: 0.100000016
      Y: 0.877422512
      Z: 0.5
    }
  }
  ParentId: 9222490443025482937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 3362903733446693172
    SubobjectId: 10593293980806662475
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 9434144412036621501
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: -159.949097
      Y: 66.9852676
      Z: 123.711914
    }
    Rotation {
      Pitch: 3.4150944e-05
      Yaw: 89.9999466
      Roll: 90.0000076
    }
    Scale {
      X: 0.100000016
      Y: 0.877422512
      Z: 0.5
    }
  }
  ParentId: 9222490443025482937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 9434144412036621501
    SubobjectId: 4559137905267899586
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 3387240856673539485
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: 160.050903
      Y: -85.0598831
      Z: 130
    }
    Rotation {
      Pitch: 3.4150944e-05
      Yaw: 89.9999466
      Roll: 90.0000076
    }
    Scale {
      X: 0.25
      Y: 1
      Z: 1
    }
  }
  ParentId: 9222490443025482937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 3387240856673539485
    SubobjectId: 10567830682755157474
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 2356034729835186131
  Name: "Scifi Panel 1x3m Angled Right"
  Transform {
    Location {
      X: -159.949097
      Y: -84.9562759
      Z: 130
    }
    Rotation {
      Pitch: 3.4150944e-05
      Yaw: 89.9999466
      Roll: 90.0000076
    }
    Scale {
      X: 0.25
      Y: 0.99999994
      Z: 1
    }
  }
  ParentId: 9222490443025482937
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 836214920779783306
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
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
      Id: 6897042636459259472
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
    SelfId: 2356034729835186131
    SubobjectId: 11320869161718013868
    InstanceId: 4228625512046108575
    TemplateId: 9907846851988540438
  }
}
Objects {
  Id: 12867865519974131295
  Name: "Cabane \303\240 bois"
  Transform {
    Location {
      X: 372.748169
      Y: -192.00293
    }
    Rotation {
      Yaw: 148.235428
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10070911445812904906
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Cabane \303\240 bois"
  }
  InstanceHistory {
    SelfId: 12867865519974131295
    SubobjectId: 9751402986272935424
    InstanceId: 11958579143685187290
    TemplateId: 5679982547435929442
    WasRoot: true
  }
}
Objects {
  Id: 5487678312414092913
  Name: "Portal"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14592900131835349158
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 3636187373852440861
      value {
        Overrides {
          Name: "Name"
          String: "MainPortal"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 1235
            Y: -516.666687
            Z: 2180
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -90
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 8323218518488701719
    }
  }
}
Objects {
  Id: 8853590466296554917
  Name: "MainIslandProps"
  Transform {
    Location {
      X: -40
      Y: -386.666687
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14592900131835349158
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "MainIslandProps"
  }
}
