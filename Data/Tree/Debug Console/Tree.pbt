Name: "Debug Console"
RootId: 13644968004114680986
Objects {
  Id: 4637766595276735296
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
  ParentId: 13644968004114680986
  ChildIds: 8468052238903684389
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
  }
  InstanceHistory {
    SelfId: 4637766595276735296
    SubobjectId: 14165327566044309358
    InstanceId: 13527164212975628923
    TemplateId: 11400331072192085439
  }
}
Objects {
  Id: 8468052238903684389
  Name: "Debug Console Client"
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
  ParentId: 4637766595276735296
  ChildIds: 8077782172547281863
  UnregisteredParameters {
    Overrides {
      Name: "cs:Command"
      ObjectReference {
        SelfId: 17423006937027600657
      }
    }
    Overrides {
      Name: "cs:Response"
      ObjectReference {
        SelfId: 8466343042358585971
      }
    }
    Overrides {
      Name: "cs:OpenConsoleBinding"
      String: "ability_extra_11"
    }
    Overrides {
      Name: "cs:SendCommandBinding"
      String: "ability_extra_13"
    }
    Overrides {
      Name: "cs:AdminAllowlist"
      String: "caillef,Bot1"
    }
    Overrides {
      Name: "cs:AZERTY"
      Bool: true
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
      Id: 15499144523226886213
    }
  }
  InstanceHistory {
    SelfId: 8468052238903684389
    SubobjectId: 17387662446213466379
    InstanceId: 13527164212975628923
    TemplateId: 11400331072192085439
  }
}
Objects {
  Id: 8077782172547281863
  Name: "UI Container"
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
  ParentId: 8468052238903684389
  ChildIds: 1982327300445654001
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  Control {
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Canvas {
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
    SelfId: 8077782172547281863
    SubobjectId: 17641723910453188585
    InstanceId: 13527164212975628923
    TemplateId: 11400331072192085439
  }
}
Objects {
  Id: 1982327300445654001
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
  ParentId: 8077782172547281863
  ChildIds: 14308145399106939326
  ChildIds: 9110912770771572512
  ChildIds: 17423006937027600657
  ChildIds: 8281746170354807333
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 722
    Height: 392
    UIY: 231.62085
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
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
    SelfId: 1982327300445654001
    SubobjectId: 11478363006680002527
    InstanceId: 13527164212975628923
    TemplateId: 11400331072192085439
  }
}
Objects {
  Id: 8281746170354807333
  Name: "UI Scroll Panel"
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
  ParentId: 1982327300445654001
  ChildIds: 8466343042358585971
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 700
    Height: 295
    UIX: 10
    UIY: 80
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    ScrollPanel {
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
  Id: 8466343042358585971
  Name: "Response"
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
  ParentId: 8281746170354807333
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    AddSizeToParentIfUsingParentSize: true
    UseParentWidth: true
    Text {
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:left"
      }
      AutoWrapText: true
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
    SelfId: 8466343042358585971
    SubobjectId: 17417544394702589533
    InstanceId: 13527164212975628923
    TemplateId: 11400331072192085439
  }
}
Objects {
  Id: 17423006937027600657
  Name: "Prompt"
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
  ParentId: 1982327300445654001
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 702
    Height: 49
    UIX: 11.8392944
    UIY: 39.4122314
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "> "
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:left"
      }
      AutoWrapText: true
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
    SelfId: 17423006937027600657
    SubobjectId: 8431589542473516351
    InstanceId: 13527164212975628923
    TemplateId: 11400331072192085439
  }
}
Objects {
  Id: 9110912770771572512
  Name: "UI Text Box"
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
  ParentId: 1982327300445654001
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 702
    Height: 49
    UIX: 10
    UIY: 10.000061
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Admin Console"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:left"
      }
      AutoWrapText: true
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
    SelfId: 9110912770771572512
    SubobjectId: 18066617198789718798
    InstanceId: 13527164212975628923
    TemplateId: 11400331072192085439
  }
}
Objects {
  Id: 14308145399106939326
  Name: "UI Image"
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
  ParentId: 1982327300445654001
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 754
    Height: 410
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
      }
      Color {
        A: 0.415000021
      }
      TeamSettings {
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
  InstanceHistory {
    SelfId: 14308145399106939326
    SubobjectId: 4780936134653021584
    InstanceId: 13527164212975628923
    TemplateId: 11400331072192085439
  }
}
Objects {
  Id: 16125591140111315377
  Name: "Debug Console Server"
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
  ParentId: 13644968004114680986
  UnregisteredParameters {
    Overrides {
      Name: "cs:ItemUIList"
      ObjectReference {
        SelfId: 841534158063459245
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
      Id: 6880895822827942458
    }
  }
  InstanceHistory {
    SelfId: 16125591140111315377
    SubobjectId: 6557357398590182815
    InstanceId: 13527164212975628923
    TemplateId: 11400331072192085439
  }
}
