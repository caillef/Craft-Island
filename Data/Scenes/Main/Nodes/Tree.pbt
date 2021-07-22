Name: "Nodes"
RootId: 15936383160020470568
Objects {
  Id: 11075696996068611828
  Name: "Fishing Node (Duplicate Me)"
  Transform {
    Location {
      X: -1292.87207
      Y: -1156.10266
      Z: 107.010498
    }
    Rotation {
      Yaw: 59.642765
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15936383160020470568
  ChildIds: 9140399242856660553
  UnregisteredParameters {
    Overrides {
      Name: "cs:LootTable"
      AssetReference {
        Id: 10873954238957152888
      }
    }
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 9002653851651783666
      }
    }
    Overrides {
      Name: "cs:CatchRate"
      Float: 0.38
    }
    Overrides {
      Name: "cs:TickIntervalRange"
      Vector2 {
        X: 5
        Y: 10
      }
    }
    Overrides {
      Name: "cs:NodePositionMarker"
      ObjectReference {
        SelfId: 1884545518915613065
      }
    }
    Overrides {
      Name: "cs:NodePositionOffset"
      Vector {
        Z: 100
      }
    }
    Overrides {
      Name: "cs:RequiresTool"
      Bool: true
    }
    Overrides {
      Name: "cs:RequiredTool"
      String: "Fishing Rod"
    }
    Overrides {
      Name: "cs:CatchRate:tooltip"
      String: "The percent chance that a fish will be caught per tick"
    }
    Overrides {
      Name: "cs:TickIntervalRange:tooltip"
      String: "Max and Min amount of time (in seconds) between each tick"
    }
    Overrides {
      Name: "cs:RequiresTool:tooltip"
      String: "Whether or not the player needs to have a fishing rod equipped in order to use this node"
    }
    Overrides {
      Name: "cs:RequiredTool:tooltip"
      String: "This should match the EquipmentType custom property on the Fishing Rod equipment"
    }
    Overrides {
      Name: "cs:LootTable:tooltip"
      String: "A loot table (as an asset) is required. See the example for how to set one up."
    }
    Overrides {
      Name: "cs:NodePositionMarker:tooltip"
      String: "An object marking where the player should be placed when fishing."
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
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 10616007458063217445
    SubobjectId: 17205959907183207253
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 9140399242856660553
  Name: "ClientContext"
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
  ParentId: 11075696996068611828
  ChildIds: 7086909773416815177
  ChildIds: 1884545518915613065
  ChildIds: 18300694769891683230
  ChildIds: 17092129501027092169
  ChildIds: 4532675706509811549
  ChildIds: 7245292605360726503
  ChildIds: 7010065024193818580
  ChildIds: 9002653851651783666
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  NetworkContext {
  }
  InstanceHistory {
    SelfId: 15293804016681084047
    SubobjectId: 12225859496306685183
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 9002653851651783666
  Name: "Trigger"
  Transform {
    Location {
      Z: 125
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 2
    }
  }
  ParentId: 9140399242856660553
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Trigger {
    Interactable: true
    InteractionLabel: "Fish"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  InstanceHistory {
    SelfId: 8145638425095801605
    SubobjectId: 909556888819882869
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 7010065024193818580
  Name: "SFXGet"
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
  ParentId: 9140399242856660553
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
  AudioInstance {
    AudioAsset {
      Id: 14962227442425468708
    }
    Volume: 1
    Falloff: -1
    Radius: -1
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
}
Objects {
  Id: 7245292605360726503
  Name: "SFXFail"
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
  ParentId: 9140399242856660553
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
  AudioInstance {
    AudioAsset {
      Id: 9470920421131636839
    }
    Volume: 1
    Falloff: -1
    Radius: -1
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
}
Objects {
  Id: 4532675706509811549
  Name: "SFXCatch"
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
  ParentId: 9140399242856660553
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
  AudioInstance {
    AudioAsset {
      Id: 17221219849056144428
    }
    Volume: 1
    Falloff: -1
    Radius: -1
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
}
Objects {
  Id: 17092129501027092169
  Name: "UI Container"
  Transform {
    Location {
      X: -1754.87183
      Y: -816.904053
    }
    Rotation {
      Yaw: -145.791382
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9140399242856660553
  ChildIds: 816139324958009524
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
  Control {
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Canvas {
      ContentType {
        Value: "mc:ecanvascontenttype:dynamic"
      }
      Opacity: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11407368524735864767
    SubobjectId: 16418830024458604495
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 816139324958009524
  Name: "UI Panel"
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
  ParentId: 17092129501027092169
  ChildIds: 17957374231975307586
  ChildIds: 745687238915435365
  ChildIds: 9354217752437438249
  ChildIds: 9873171090047017156
  ChildIds: 13241382711320312674
  ChildIds: 15723826201677765976
  ChildIds: 11278714518838478348
  ChildIds: 1657702974462335010
  ChildIds: 6437351103769936937
  ChildIds: 9220476792850015689
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 117
    Height: 400
    UIX: 400
    UIY: -160
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 9948964071350941516
    SubobjectId: 17835848587716257596
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 9220476792850015689
  Name: "HoldClick"
  Transform {
    Location {
      X: 2921.96851
      Y: -1650.0332
      Z: -1542.91833
    }
    Rotation {
      Yaw: -24.148119
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 816139324958009524
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
  Control {
    Width: 362
    Height: 60
    UIX: -97.932373
    UIY: 420.336365
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Hold Click"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 50
      Justification {
        Value: "mc:etextjustify:center"
      }
      AutoWrapText: true
      Font {
        Id: 841534158063459245
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
}
Objects {
  Id: 6437351103769936937
  Name: "bg"
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
  ParentId: 816139324958009524
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
  Control {
    Width: 35
    Height: 30
    UIX: 63.967
    UIY: -295
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 3467803285355733619
      }
      Color {
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14661706962488642485
    SubobjectId: 13181089548006071237
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 1657702974462335010
  Name: "bg"
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
  ParentId: 816139324958009524
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
  Control {
    Width: 35
    Height: 30
    UIX: 63.967
    UIY: -195
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 3467803285355733619
      }
      Color {
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15900325004026279057
    SubobjectId: 11618502598805071073
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 11278714518838478348
  Name: "bg"
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
  ParentId: 816139324958009524
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
  Control {
    Width: 35
    Height: 30
    UIX: 63.967
    UIY: -95
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 3467803285355733619
      }
      Color {
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16202058952391716207
    SubobjectId: 11334782979424337183
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 15723826201677765976
  Name: "bar"
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
  ParentId: 816139324958009524
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
  Control {
    Width: 31
    UIX: 63.9667969
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 11238652274762542248
      }
      Color {
        R: 0.121390693
        G: 0.39
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1532206590472026973
    SubobjectId: 7554513565896223533
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 13241382711320312674
  Name: "bg"
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
  ParentId: 816139324958009524
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
  Control {
    Width: 31
    Height: 400
    UIX: 63.9667969
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 11238652274762542248
      }
      Color {
        R: 1
        G: 0.991523206
        B: 0.98
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11975888484414301824
    SubobjectId: 15827510523075852016
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 9873171090047017156
  Name: "cursor"
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
  ParentId: 816139324958009524
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
  Control {
    Width: 50
    Height: 50
    UIX: 9.84094238
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 33655154599584727
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10639305480052714329
    SubobjectId: 17163812055018208041
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 9354217752437438249
  Name: "goal"
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
  ParentId: 816139324958009524
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
  Control {
    Width: 54
    Height: 50
    UIX: 9.84094238
    UIY: -100
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 10786409948748860935
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1866421261556767970
    SubobjectId: 7238032170472049810
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 745687238915435365
  Name: "bg"
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
  ParentId: 816139324958009524
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
  Control {
    Width: 39
    Height: 400
    UIX: 9.84094238
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 12996869249342634221
      }
      Color {
        G: 0.202648818
        B: 0.9
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 4032112466763459169
    SubobjectId: 5359436639042664977
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 17957374231975307586
  Name: "bg"
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
  ParentId: 816139324958009524
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
  Control {
    Width: 134
    Height: 423
    UIX: 29.5228271
    UIY: 10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 9978180934616254575
      }
      Color {
        R: 0.654000044
        G: 0.18190743
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 958666265008493260
    SubobjectId: 8131713349403443900
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 18300694769891683230
  Name: "Node Marker"
  Transform {
    Location {
      Z: -25
    }
    Rotation {
    }
    Scale {
      X: 1.5
      Y: 1.5
      Z: 2.5
    }
  }
  ParentId: 9140399242856660553
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1244999148900956141
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 6747614045051753376
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
  InstanceHistory {
    SelfId: 10588806919218832908
    SubobjectId: 17250620679132903036
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 1884545518915613065
  Name: "Node Position"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.1
      Y: 0.1
      Z: 0.1
    }
  }
  ParentId: 9140399242856660553
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5489775416547967874
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
  InstanceHistory {
    SelfId: 2740708474264108780
    SubobjectId: 6601300689562889884
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 7086909773416815177
  Name: "FihsingNodeController"
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
  ParentId: 9140399242856660553
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 11075696996068611828
      }
    }
    Overrides {
      Name: "cs:cursor"
      ObjectReference {
        SelfId: 9873171090047017156
      }
    }
    Overrides {
      Name: "cs:goal"
      ObjectReference {
        SelfId: 9354217752437438249
      }
    }
    Overrides {
      Name: "cs:bar"
      ObjectReference {
        SelfId: 15723826201677765976
      }
    }
    Overrides {
      Name: "cs:UIContainer"
      ObjectReference {
        SelfId: 816139324958009524
      }
    }
    Overrides {
      Name: "cs:SFXCatch"
      ObjectReference {
        SelfId: 4532675706509811549
      }
    }
    Overrides {
      Name: "cs:SFXGet"
      ObjectReference {
        SelfId: 7010065024193818580
      }
    }
    Overrides {
      Name: "cs:SFXFail"
      ObjectReference {
        SelfId: 7245292605360726503
      }
    }
    Overrides {
      Name: "cs:HoldClick"
      ObjectReference {
        SelfId: 9220476792850015689
      }
    }
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 9002653851651783666
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
      Id: 7412360561092640653
    }
  }
  InstanceHistory {
    SelfId: 8141487506287187916
    SubobjectId: 966061800233797564
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 4483081126971789844
  Name: "Fishing Node (Duplicate Me)"
  Transform {
    Location {
      X: -338.771
      Y: 1145.82947
      Z: 129.419678
    }
    Rotation {
      Yaw: -105.663055
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15936383160020470568
  ChildIds: 14294308384027423956
  UnregisteredParameters {
    Overrides {
      Name: "cs:LootTable"
      AssetReference {
        Id: 10873954238957152888
      }
    }
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 13336847156353309845
      }
    }
    Overrides {
      Name: "cs:CatchRate"
      Float: 0.38
    }
    Overrides {
      Name: "cs:TickIntervalRange"
      Vector2 {
        X: 5
        Y: 10
      }
    }
    Overrides {
      Name: "cs:NodePositionMarker"
      ObjectReference {
        SelfId: 12677819859218157255
      }
    }
    Overrides {
      Name: "cs:NodePositionOffset"
      Vector {
        Z: 100
      }
    }
    Overrides {
      Name: "cs:RequiresTool"
      Bool: true
    }
    Overrides {
      Name: "cs:RequiredTool"
      String: "Fishing Rod"
    }
    Overrides {
      Name: "cs:CatchRate:tooltip"
      String: "The percent chance that a fish will be caught per tick"
    }
    Overrides {
      Name: "cs:TickIntervalRange:tooltip"
      String: "Max and Min amount of time (in seconds) between each tick"
    }
    Overrides {
      Name: "cs:RequiresTool:tooltip"
      String: "Whether or not the player needs to have a fishing rod equipped in order to use this node"
    }
    Overrides {
      Name: "cs:RequiredTool:tooltip"
      String: "This should match the EquipmentType custom property on the Fishing Rod equipment"
    }
    Overrides {
      Name: "cs:LootTable:tooltip"
      String: "A loot table (as an asset) is required. See the example for how to set one up."
    }
    Overrides {
      Name: "cs:NodePositionMarker:tooltip"
      String: "An object marking where the player should be placed when fishing."
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
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 10616007458063217445
    SubobjectId: 17205959907183207253
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 14294308384027423956
  Name: "ClientContext"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -36.3805542
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4483081126971789844
  ChildIds: 3825246356997282212
  ChildIds: 12677819859218157255
  ChildIds: 7114196547651227517
  ChildIds: 14846995191781574427
  ChildIds: 8155402427600005103
  ChildIds: 3191845660729860967
  ChildIds: 13918819499151125
  ChildIds: 13336847156353309845
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  NetworkContext {
  }
  InstanceHistory {
    SelfId: 15293804016681084047
    SubobjectId: 12225859496306685183
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 13336847156353309845
  Name: "Trigger"
  Transform {
    Location {
      Z: 125
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 2
    }
  }
  ParentId: 14294308384027423956
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Trigger {
    Interactable: true
    InteractionLabel: "Fish"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  InstanceHistory {
    SelfId: 8145638425095801605
    SubobjectId: 909556888819882869
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 13918819499151125
  Name: "SFXGet"
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
  ParentId: 14294308384027423956
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
  AudioInstance {
    AudioAsset {
      Id: 14962227442425468708
    }
    Volume: 1
    Falloff: -1
    Radius: -1
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
}
Objects {
  Id: 3191845660729860967
  Name: "SFXFail"
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
  ParentId: 14294308384027423956
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
  AudioInstance {
    AudioAsset {
      Id: 9470920421131636839
    }
    Volume: 1
    Falloff: -1
    Radius: -1
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
}
Objects {
  Id: 8155402427600005103
  Name: "SFXCatch"
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
  ParentId: 14294308384027423956
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
  AudioInstance {
    AudioAsset {
      Id: 17221219849056144428
    }
    Volume: 1
    Falloff: -1
    Radius: -1
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
}
Objects {
  Id: 14846995191781574427
  Name: "UI Container"
  Transform {
    Location {
      X: -1754.87183
      Y: -816.904053
    }
    Rotation {
      Yaw: -145.791382
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14294308384027423956
  ChildIds: 605395815239053964
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
  Control {
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Canvas {
      ContentType {
        Value: "mc:ecanvascontenttype:dynamic"
      }
      Opacity: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11407368524735864767
    SubobjectId: 16418830024458604495
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 605395815239053964
  Name: "UI Panel"
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
  ParentId: 14846995191781574427
  ChildIds: 16694694543741696477
  ChildIds: 3677134774197341553
  ChildIds: 13134065364842174531
  ChildIds: 10342377416778153135
  ChildIds: 9200687600889349992
  ChildIds: 8304356932332870234
  ChildIds: 6816691885557025732
  ChildIds: 13035210359142468181
  ChildIds: 10344148063173354758
  ChildIds: 16313465343578903674
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 117
    Height: 400
    UIX: 400
    UIY: -160
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 9948964071350941516
    SubobjectId: 17835848587716257596
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 16313465343578903674
  Name: "HoldClick"
  Transform {
    Location {
      X: 2921.96851
      Y: -1650.0332
      Z: -1542.91833
    }
    Rotation {
      Yaw: -24.148119
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 605395815239053964
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
  Control {
    Width: 362
    Height: 60
    UIX: -97.932373
    UIY: 420.336365
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Hold Click"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 50
      Justification {
        Value: "mc:etextjustify:center"
      }
      AutoWrapText: true
      Font {
        Id: 841534158063459245
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
}
Objects {
  Id: 10344148063173354758
  Name: "bg"
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
  ParentId: 605395815239053964
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
  Control {
    Width: 35
    Height: 30
    UIX: 63.967
    UIY: -295
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 3467803285355733619
      }
      Color {
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14661706962488642485
    SubobjectId: 13181089548006071237
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 13035210359142468181
  Name: "bg"
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
  ParentId: 605395815239053964
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
  Control {
    Width: 35
    Height: 30
    UIX: 63.967
    UIY: -195
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 3467803285355733619
      }
      Color {
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15900325004026279057
    SubobjectId: 11618502598805071073
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 6816691885557025732
  Name: "bg"
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
  ParentId: 605395815239053964
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
  Control {
    Width: 35
    Height: 30
    UIX: 63.967
    UIY: -95
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 3467803285355733619
      }
      Color {
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16202058952391716207
    SubobjectId: 11334782979424337183
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 8304356932332870234
  Name: "bar"
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
  ParentId: 605395815239053964
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
  Control {
    Width: 31
    UIX: 63.9667969
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 11238652274762542248
      }
      Color {
        R: 0.121390693
        G: 0.39
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1532206590472026973
    SubobjectId: 7554513565896223533
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 9200687600889349992
  Name: "bg"
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
  ParentId: 605395815239053964
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
  Control {
    Width: 31
    Height: 400
    UIX: 63.9667969
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 11238652274762542248
      }
      Color {
        R: 1
        G: 0.991523206
        B: 0.98
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11975888484414301824
    SubobjectId: 15827510523075852016
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 10342377416778153135
  Name: "cursor"
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
  ParentId: 605395815239053964
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
  Control {
    Width: 50
    Height: 50
    UIX: 9.84094238
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 33655154599584727
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10639305480052714329
    SubobjectId: 17163812055018208041
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 13134065364842174531
  Name: "goal"
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
  ParentId: 605395815239053964
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
  Control {
    Width: 54
    Height: 50
    UIX: 9.84094238
    UIY: -100
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 10786409948748860935
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1866421261556767970
    SubobjectId: 7238032170472049810
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 3677134774197341553
  Name: "bg"
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
  ParentId: 605395815239053964
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
  Control {
    Width: 39
    Height: 400
    UIX: 9.84094238
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 12996869249342634221
      }
      Color {
        G: 0.202648818
        B: 0.9
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 4032112466763459169
    SubobjectId: 5359436639042664977
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 16694694543741696477
  Name: "bg"
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
  ParentId: 605395815239053964
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
  Control {
    Width: 134
    Height: 423
    UIX: 29.5228271
    UIY: 10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 9978180934616254575
      }
      Color {
        R: 0.654000044
        G: 0.18190743
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 958666265008493260
    SubobjectId: 8131713349403443900
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 7114196547651227517
  Name: "Node Marker"
  Transform {
    Location {
      Z: -25
    }
    Rotation {
      Yaw: -47.3210144
    }
    Scale {
      X: 1.5
      Y: 1.5
      Z: 2.5
    }
  }
  ParentId: 14294308384027423956
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1244999148900956141
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 6747614045051753376
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
  InstanceHistory {
    SelfId: 10588806919218832908
    SubobjectId: 17250620679132903036
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 12677819859218157255
  Name: "Node Position"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.1
      Y: 0.1
      Z: 0.1
    }
  }
  ParentId: 14294308384027423956
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5489775416547967874
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
  InstanceHistory {
    SelfId: 2740708474264108780
    SubobjectId: 6601300689562889884
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 3825246356997282212
  Name: "FihsingNodeController"
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
  ParentId: 14294308384027423956
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 4483081126971789844
      }
    }
    Overrides {
      Name: "cs:cursor"
      ObjectReference {
        SelfId: 10342377416778153135
      }
    }
    Overrides {
      Name: "cs:goal"
      ObjectReference {
        SelfId: 13134065364842174531
      }
    }
    Overrides {
      Name: "cs:bar"
      ObjectReference {
        SelfId: 8304356932332870234
      }
    }
    Overrides {
      Name: "cs:UIContainer"
      ObjectReference {
        SelfId: 605395815239053964
      }
    }
    Overrides {
      Name: "cs:SFXCatch"
      ObjectReference {
        SelfId: 8155402427600005103
      }
    }
    Overrides {
      Name: "cs:SFXGet"
      ObjectReference {
        SelfId: 13918819499151125
      }
    }
    Overrides {
      Name: "cs:SFXFail"
      ObjectReference {
        SelfId: 3191845660729860967
      }
    }
    Overrides {
      Name: "cs:HoldClick"
      ObjectReference {
        SelfId: 16313465343578903674
      }
    }
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 13336847156353309845
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
      Id: 7412360561092640653
    }
  }
  InstanceHistory {
    SelfId: 8141487506287187916
    SubobjectId: 966061800233797564
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 426068684600124191
  Name: "Fishing Node (Duplicate Me)"
  Transform {
    Location {
      X: -10.7089844
      Y: 454.484772
      Z: 62.1291504
    }
    Rotation {
      Yaw: -153.078659
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15936383160020470568
  ChildIds: 94471894491195003
  UnregisteredParameters {
    Overrides {
      Name: "cs:LootTable"
      AssetReference {
        Id: 10873954238957152888
      }
    }
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 10724164113673581196
      }
    }
    Overrides {
      Name: "cs:CatchRate"
      Float: 0.38
    }
    Overrides {
      Name: "cs:TickIntervalRange"
      Vector2 {
        X: 5
        Y: 10
      }
    }
    Overrides {
      Name: "cs:NodePositionMarker"
      ObjectReference {
        SelfId: 11708329036921448491
      }
    }
    Overrides {
      Name: "cs:NodePositionOffset"
      Vector {
        Z: 100
      }
    }
    Overrides {
      Name: "cs:RequiresTool"
      Bool: true
    }
    Overrides {
      Name: "cs:RequiredTool"
      String: "Fishing Rod"
    }
    Overrides {
      Name: "cs:CatchRate:tooltip"
      String: "The percent chance that a fish will be caught per tick"
    }
    Overrides {
      Name: "cs:TickIntervalRange:tooltip"
      String: "Max and Min amount of time (in seconds) between each tick"
    }
    Overrides {
      Name: "cs:RequiresTool:tooltip"
      String: "Whether or not the player needs to have a fishing rod equipped in order to use this node"
    }
    Overrides {
      Name: "cs:RequiredTool:tooltip"
      String: "This should match the EquipmentType custom property on the Fishing Rod equipment"
    }
    Overrides {
      Name: "cs:LootTable:tooltip"
      String: "A loot table (as an asset) is required. See the example for how to set one up."
    }
    Overrides {
      Name: "cs:NodePositionMarker:tooltip"
      String: "An object marking where the player should be placed when fishing."
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
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 10616007458063217445
    SubobjectId: 17205959907183207253
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 94471894491195003
  Name: "ClientContext"
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
  ParentId: 426068684600124191
  ChildIds: 9670466635944516999
  ChildIds: 11708329036921448491
  ChildIds: 18277504682277184729
  ChildIds: 12235426610138609487
  ChildIds: 18035713678846219023
  ChildIds: 8174788878241724344
  ChildIds: 3349869733756231360
  ChildIds: 10724164113673581196
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  NetworkContext {
  }
  InstanceHistory {
    SelfId: 15293804016681084047
    SubobjectId: 12225859496306685183
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 10724164113673581196
  Name: "Trigger"
  Transform {
    Location {
      Z: 125
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 2
    }
  }
  ParentId: 94471894491195003
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Trigger {
    Interactable: true
    InteractionLabel: "Fish"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  InstanceHistory {
    SelfId: 8145638425095801605
    SubobjectId: 909556888819882869
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 3349869733756231360
  Name: "SFXGet"
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
  ParentId: 94471894491195003
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
  AudioInstance {
    AudioAsset {
      Id: 14962227442425468708
    }
    Volume: 1
    Falloff: -1
    Radius: -1
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
}
Objects {
  Id: 8174788878241724344
  Name: "SFXFail"
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
  ParentId: 94471894491195003
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
  AudioInstance {
    AudioAsset {
      Id: 9470920421131636839
    }
    Volume: 1
    Falloff: -1
    Radius: -1
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
}
Objects {
  Id: 18035713678846219023
  Name: "SFXCatch"
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
  ParentId: 94471894491195003
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
  AudioInstance {
    AudioAsset {
      Id: 17221219849056144428
    }
    Volume: 1
    Falloff: -1
    Radius: -1
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
}
Objects {
  Id: 12235426610138609487
  Name: "UI Container"
  Transform {
    Location {
      X: -1754.87183
      Y: -816.904053
    }
    Rotation {
      Yaw: -145.791382
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 94471894491195003
  ChildIds: 8337799701400279456
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
  Control {
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Canvas {
      ContentType {
        Value: "mc:ecanvascontenttype:dynamic"
      }
      Opacity: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11407368524735864767
    SubobjectId: 16418830024458604495
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 8337799701400279456
  Name: "UI Panel"
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
  ParentId: 12235426610138609487
  ChildIds: 4243268182020666847
  ChildIds: 8861926894042872023
  ChildIds: 2053875617979523505
  ChildIds: 7863279676254630377
  ChildIds: 12793943981010201876
  ChildIds: 15741741031745141944
  ChildIds: 5649163127490457354
  ChildIds: 16193357028799141592
  ChildIds: 9724481717143715047
  ChildIds: 3607288166959065347
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 117
    Height: 400
    UIX: 400
    UIY: -160
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 9948964071350941516
    SubobjectId: 17835848587716257596
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 3607288166959065347
  Name: "HoldClick"
  Transform {
    Location {
      X: 2921.96851
      Y: -1650.0332
      Z: -1542.91833
    }
    Rotation {
      Yaw: -24.148119
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8337799701400279456
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
  Control {
    Width: 362
    Height: 60
    UIX: -97.932373
    UIY: 420.336365
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Hold Click"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 50
      Justification {
        Value: "mc:etextjustify:center"
      }
      AutoWrapText: true
      Font {
        Id: 841534158063459245
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
}
Objects {
  Id: 9724481717143715047
  Name: "bg"
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
  ParentId: 8337799701400279456
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
  Control {
    Width: 35
    Height: 30
    UIX: 63.967
    UIY: -295
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 3467803285355733619
      }
      Color {
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14661706962488642485
    SubobjectId: 13181089548006071237
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 16193357028799141592
  Name: "bg"
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
  ParentId: 8337799701400279456
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
  Control {
    Width: 35
    Height: 30
    UIX: 63.967
    UIY: -195
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 3467803285355733619
      }
      Color {
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15900325004026279057
    SubobjectId: 11618502598805071073
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 5649163127490457354
  Name: "bg"
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
  ParentId: 8337799701400279456
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
  Control {
    Width: 35
    Height: 30
    UIX: 63.967
    UIY: -95
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 3467803285355733619
      }
      Color {
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16202058952391716207
    SubobjectId: 11334782979424337183
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 15741741031745141944
  Name: "bar"
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
  ParentId: 8337799701400279456
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
  Control {
    Width: 31
    UIX: 63.9667969
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 11238652274762542248
      }
      Color {
        R: 0.121390693
        G: 0.39
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1532206590472026973
    SubobjectId: 7554513565896223533
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 12793943981010201876
  Name: "bg"
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
  ParentId: 8337799701400279456
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
  Control {
    Width: 31
    Height: 400
    UIX: 63.9667969
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 11238652274762542248
      }
      Color {
        R: 1
        G: 0.991523206
        B: 0.98
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11975888484414301824
    SubobjectId: 15827510523075852016
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 7863279676254630377
  Name: "cursor"
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
  ParentId: 8337799701400279456
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
  Control {
    Width: 50
    Height: 50
    UIX: 9.84094238
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 33655154599584727
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10639305480052714329
    SubobjectId: 17163812055018208041
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 2053875617979523505
  Name: "goal"
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
  ParentId: 8337799701400279456
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
  Control {
    Width: 54
    Height: 50
    UIX: 9.84094238
    UIY: -100
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 10786409948748860935
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1866421261556767970
    SubobjectId: 7238032170472049810
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 8861926894042872023
  Name: "bg"
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
  ParentId: 8337799701400279456
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
  Control {
    Width: 39
    Height: 400
    UIX: 9.84094238
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 12996869249342634221
      }
      Color {
        G: 0.202648818
        B: 0.9
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 4032112466763459169
    SubobjectId: 5359436639042664977
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 4243268182020666847
  Name: "bg"
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
  ParentId: 8337799701400279456
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
  Control {
    Width: 134
    Height: 423
    UIX: 29.5228271
    UIY: 10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 9978180934616254575
      }
      Color {
        R: 0.654000044
        G: 0.18190743
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 958666265008493260
    SubobjectId: 8131713349403443900
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 18277504682277184729
  Name: "Node Marker"
  Transform {
    Location {
      Z: -25
    }
    Rotation {
    }
    Scale {
      X: 1.5
      Y: 1.5
      Z: 2.5
    }
  }
  ParentId: 94471894491195003
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1244999148900956141
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 6747614045051753376
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
  InstanceHistory {
    SelfId: 10588806919218832908
    SubobjectId: 17250620679132903036
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 11708329036921448491
  Name: "Node Position"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.1
      Y: 0.1
      Z: 0.1
    }
  }
  ParentId: 94471894491195003
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5489775416547967874
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
  InstanceHistory {
    SelfId: 2740708474264108780
    SubobjectId: 6601300689562889884
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 9670466635944516999
  Name: "FihsingNodeController"
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
  ParentId: 94471894491195003
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 426068684600124191
      }
    }
    Overrides {
      Name: "cs:cursor"
      ObjectReference {
        SelfId: 7863279676254630377
      }
    }
    Overrides {
      Name: "cs:goal"
      ObjectReference {
        SelfId: 2053875617979523505
      }
    }
    Overrides {
      Name: "cs:bar"
      ObjectReference {
        SelfId: 15741741031745141944
      }
    }
    Overrides {
      Name: "cs:UIContainer"
      ObjectReference {
        SelfId: 8337799701400279456
      }
    }
    Overrides {
      Name: "cs:SFXCatch"
      ObjectReference {
        SelfId: 18035713678846219023
      }
    }
    Overrides {
      Name: "cs:SFXGet"
      ObjectReference {
        SelfId: 3349869733756231360
      }
    }
    Overrides {
      Name: "cs:SFXFail"
      ObjectReference {
        SelfId: 8174788878241724344
      }
    }
    Overrides {
      Name: "cs:HoldClick"
      ObjectReference {
        SelfId: 3607288166959065347
      }
    }
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 10724164113673581196
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
      Id: 7412360561092640653
    }
  }
  InstanceHistory {
    SelfId: 8141487506287187916
    SubobjectId: 966061800233797564
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 10616007458063217445
  Name: "Fishing Node (Duplicate Me)"
  Transform {
    Location {
      Z: 50.1315918
    }
    Rotation {
      Yaw: 169.939529
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15936383160020470568
  ChildIds: 15293804016681084047
  UnregisteredParameters {
    Overrides {
      Name: "cs:LootTable"
      AssetReference {
        Id: 10873954238957152888
      }
    }
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 8145638425095801605
      }
    }
    Overrides {
      Name: "cs:CatchRate"
      Float: 0.38
    }
    Overrides {
      Name: "cs:TickIntervalRange"
      Vector2 {
        X: 5
        Y: 10
      }
    }
    Overrides {
      Name: "cs:NodePositionMarker"
      ObjectReference {
        SelfId: 2740708474264108780
      }
    }
    Overrides {
      Name: "cs:NodePositionOffset"
      Vector {
        Z: 100
      }
    }
    Overrides {
      Name: "cs:RequiresTool"
      Bool: true
    }
    Overrides {
      Name: "cs:RequiredTool"
      String: "Fishing Rod"
    }
    Overrides {
      Name: "cs:CatchRate:tooltip"
      String: "The percent chance that a fish will be caught per tick"
    }
    Overrides {
      Name: "cs:TickIntervalRange:tooltip"
      String: "Max and Min amount of time (in seconds) between each tick"
    }
    Overrides {
      Name: "cs:RequiresTool:tooltip"
      String: "Whether or not the player needs to have a fishing rod equipped in order to use this node"
    }
    Overrides {
      Name: "cs:RequiredTool:tooltip"
      String: "This should match the EquipmentType custom property on the Fishing Rod equipment"
    }
    Overrides {
      Name: "cs:LootTable:tooltip"
      String: "A loot table (as an asset) is required. See the example for how to set one up."
    }
    Overrides {
      Name: "cs:NodePositionMarker:tooltip"
      String: "An object marking where the player should be placed when fishing."
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
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 10616007458063217445
    SubobjectId: 17205959907183207253
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 15293804016681084047
  Name: "ClientContext"
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
  ParentId: 10616007458063217445
  ChildIds: 8141487506287187916
  ChildIds: 2740708474264108780
  ChildIds: 10588806919218832908
  ChildIds: 11407368524735864767
  ChildIds: 1046572303834904383
  ChildIds: 14228897273292482391
  ChildIds: 5092317698446548585
  ChildIds: 8145638425095801605
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  NetworkContext {
  }
  InstanceHistory {
    SelfId: 15293804016681084047
    SubobjectId: 12225859496306685183
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 8145638425095801605
  Name: "Trigger"
  Transform {
    Location {
      Z: 125
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 2
    }
  }
  ParentId: 15293804016681084047
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Trigger {
    Interactable: true
    InteractionLabel: "Fish"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  InstanceHistory {
    SelfId: 8145638425095801605
    SubobjectId: 909556888819882869
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 5092317698446548585
  Name: "SFXGet"
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
  ParentId: 15293804016681084047
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
  AudioInstance {
    AudioAsset {
      Id: 14962227442425468708
    }
    Volume: 1
    Falloff: -1
    Radius: -1
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
}
Objects {
  Id: 14228897273292482391
  Name: "SFXFail"
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
  ParentId: 15293804016681084047
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
  AudioInstance {
    AudioAsset {
      Id: 9470920421131636839
    }
    Volume: 1
    Falloff: -1
    Radius: -1
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
}
Objects {
  Id: 1046572303834904383
  Name: "SFXCatch"
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
  ParentId: 15293804016681084047
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
  AudioInstance {
    AudioAsset {
      Id: 17221219849056144428
    }
    Volume: 1
    Falloff: -1
    Radius: -1
    EnableOcclusion: true
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
}
Objects {
  Id: 11407368524735864767
  Name: "UI Container"
  Transform {
    Location {
      X: -1754.87183
      Y: -816.904053
    }
    Rotation {
      Yaw: -145.791382
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15293804016681084047
  ChildIds: 9948964071350941516
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
  Control {
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Canvas {
      ContentType {
        Value: "mc:ecanvascontenttype:dynamic"
      }
      Opacity: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11407368524735864767
    SubobjectId: 16418830024458604495
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 9948964071350941516
  Name: "UI Panel"
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
  ParentId: 11407368524735864767
  ChildIds: 958666265008493260
  ChildIds: 4032112466763459169
  ChildIds: 1866421261556767970
  ChildIds: 10639305480052714329
  ChildIds: 11975888484414301824
  ChildIds: 1532206590472026973
  ChildIds: 16202058952391716207
  ChildIds: 15900325004026279057
  ChildIds: 14661706962488642485
  ChildIds: 8793260784978844706
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Control {
    Width: 117
    Height: 400
    UIX: 400
    UIY: -160
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      Opacity: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:middlecenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 9948964071350941516
    SubobjectId: 17835848587716257596
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 8793260784978844706
  Name: "HoldClick"
  Transform {
    Location {
      X: 2921.96851
      Y: -1650.0332
      Z: -1542.91833
    }
    Rotation {
      Yaw: -24.148119
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9948964071350941516
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
  Control {
    Width: 362
    Height: 60
    UIX: -97.932373
    UIY: 420.336365
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Hold Click"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 50
      Justification {
        Value: "mc:etextjustify:center"
      }
      AutoWrapText: true
      Font {
        Id: 841534158063459245
      }
      VerticalJustification {
        Value: "mc:everticaljustification:center"
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      OutlineColor {
        A: 1
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
}
Objects {
  Id: 14661706962488642485
  Name: "bg"
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
  ParentId: 9948964071350941516
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
  Control {
    Width: 35
    Height: 30
    UIX: 63.967
    UIY: -295
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 3467803285355733619
      }
      Color {
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 14661706962488642485
    SubobjectId: 13181089548006071237
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 15900325004026279057
  Name: "bg"
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
  ParentId: 9948964071350941516
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
  Control {
    Width: 35
    Height: 30
    UIX: 63.967
    UIY: -195
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 3467803285355733619
      }
      Color {
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 15900325004026279057
    SubobjectId: 11618502598805071073
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 16202058952391716207
  Name: "bg"
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
  ParentId: 9948964071350941516
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
  Control {
    Width: 35
    Height: 30
    UIX: 63.967
    UIY: -95
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 3467803285355733619
      }
      Color {
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 16202058952391716207
    SubobjectId: 11334782979424337183
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 1532206590472026973
  Name: "bar"
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
  ParentId: 9948964071350941516
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
  Control {
    Width: 31
    UIX: 63.9667969
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 11238652274762542248
      }
      Color {
        R: 0.121390693
        G: 0.39
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1532206590472026973
    SubobjectId: 7554513565896223533
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 11975888484414301824
  Name: "bg"
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
  ParentId: 9948964071350941516
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
  Control {
    Width: 31
    Height: 400
    UIX: 63.9667969
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 11238652274762542248
      }
      Color {
        R: 1
        G: 0.991523206
        B: 0.98
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11975888484414301824
    SubobjectId: 15827510523075852016
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 10639305480052714329
  Name: "cursor"
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
  ParentId: 9948964071350941516
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
  Control {
    Width: 50
    Height: 50
    UIX: 9.84094238
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 33655154599584727
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10639305480052714329
    SubobjectId: 17163812055018208041
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 1866421261556767970
  Name: "goal"
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
  ParentId: 9948964071350941516
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
  Control {
    Width: 54
    Height: 50
    UIX: 9.84094238
    UIY: -100
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 10786409948748860935
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 1866421261556767970
    SubobjectId: 7238032170472049810
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 4032112466763459169
  Name: "bg"
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
  ParentId: 9948964071350941516
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
  Control {
    Width: 39
    Height: 400
    UIX: 9.84094238
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 12996869249342634221
      }
      Color {
        G: 0.202648818
        B: 0.9
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 4032112466763459169
    SubobjectId: 5359436639042664977
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 958666265008493260
  Name: "bg"
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
  ParentId: 9948964071350941516
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
  Control {
    Width: 134
    Height: 423
    UIX: 29.5228271
    UIY: 10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 9978180934616254575
      }
      Color {
        R: 0.654000044
        G: 0.18190743
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 958666265008493260
    SubobjectId: 8131713349403443900
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 10588806919218832908
  Name: "Node Marker"
  Transform {
    Location {
      Z: -25
    }
    Rotation {
    }
    Scale {
      X: 1.5
      Y: 1.5
      Z: 2.5
    }
  }
  ParentId: 15293804016681084047
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 1244999148900956141
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 6747614045051753376
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
  InstanceHistory {
    SelfId: 10588806919218832908
    SubobjectId: 17250620679132903036
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 2740708474264108780
  Name: "Node Position"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 0.1
      Y: 0.1
      Z: 0.1
    }
  }
  ParentId: 15293804016681084047
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 5489775416547967874
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
  InstanceHistory {
    SelfId: 2740708474264108780
    SubobjectId: 6601300689562889884
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
Objects {
  Id: 8141487506287187916
  Name: "FihsingNodeController"
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
  ParentId: 15293804016681084047
  UnregisteredParameters {
    Overrides {
      Name: "cs:ComponentRoot"
      ObjectReference {
        SelfId: 10616007458063217445
      }
    }
    Overrides {
      Name: "cs:cursor"
      ObjectReference {
        SelfId: 10639305480052714329
      }
    }
    Overrides {
      Name: "cs:goal"
      ObjectReference {
        SelfId: 1866421261556767970
      }
    }
    Overrides {
      Name: "cs:bar"
      ObjectReference {
        SelfId: 1532206590472026973
      }
    }
    Overrides {
      Name: "cs:UIContainer"
      ObjectReference {
        SelfId: 9948964071350941516
      }
    }
    Overrides {
      Name: "cs:SFXCatch"
      ObjectReference {
        SelfId: 1046572303834904383
      }
    }
    Overrides {
      Name: "cs:SFXGet"
      ObjectReference {
        SelfId: 5092317698446548585
      }
    }
    Overrides {
      Name: "cs:SFXFail"
      ObjectReference {
        SelfId: 14228897273292482391
      }
    }
    Overrides {
      Name: "cs:HoldClick"
      ObjectReference {
        SelfId: 8793260784978844706
      }
    }
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 8145638425095801605
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
      Id: 7412360561092640653
    }
  }
  InstanceHistory {
    SelfId: 8141487506287187916
    SubobjectId: 966061800233797564
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
  }
}
