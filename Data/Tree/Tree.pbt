Name: "Root"
RootId: 4781671109827199097
Objects {
  Id: 4781671109827199097
  Name: "Root"
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
  ChildIds: 12292613699356748057
  ChildIds: 6236082347439009122
  ChildIds: 11705650449758980173
  ChildIds: 10457520934331886866
  ChildIds: 15776358281255524550
  ChildIds: 11584135646992845074
  ChildIds: 10357142915619545493
  ChildIds: 5517478133457200051
  ChildIds: 14592900131835349158
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  Folder {
  }
}
Objects {
  Id: 14592900131835349158
  Name: "MainIsland"
  Transform {
    Location {
      X: 615
      Y: 586.666687
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "MainIsland"
  }
}
Objects {
  Id: 5517478133457200051
  Name: "PlayerIsland"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 10521384055258147901
      value {
        Overrides {
          Name: "Name"
          String: "PlayerIsland"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 500000
            Y: 500000
            Z: 500000
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 3526051123066352755
    }
  }
}
Objects {
  Id: 10357142915619545493
  Name: "Islands"
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
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Islands"
  }
}
Objects {
  Id: 11584135646992845074
  Name: "ServerScripts"
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
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "ServerScripts"
  }
}
Objects {
  Id: 15776358281255524550
  Name: "Inventory System"
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
  ParentId: 4781671109827199097
  ChildIds: 12416723983507292273
  ChildIds: 8227678740540710611
  UnregisteredParameters {
    Overrides {
      Name: "cs:PlayerStorage"
      Bool: true
    }
    Overrides {
      Name: "cs:LevelResource"
      String: "Level"
    }
    Overrides {
      Name: "cs:LevelRequirement"
      Bool: false
    }
    Overrides {
      Name: "cs:Type1"
      String: "Weapon"
    }
    Overrides {
      Name: "cs:Type2"
      String: "Armor"
    }
    Overrides {
      Name: "cs:FullSFX"
      ObjectReference {
        SelfId: 1870496605475072265
      }
    }
    Overrides {
      Name: "cs:PickupSFX"
      ObjectReference {
        SelfId: 11092713001912641789
      }
    }
    Overrides {
      Name: "cs:FullMessage"
      String: "Inventory full!"
    }
    Overrides {
      Name: "cs:StartupMessage"
      String: ""
    }
    Overrides {
      Name: "cs:BindingOpen"
      String: "ability_extra_22"
    }
  }
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
    SelfId: 15776358281255524550
    SubobjectId: 2877635545145752383
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
    WasRoot: true
  }
}
Objects {
  Id: 8227678740540710611
  Name: "InventoryScriptServer"
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
  ParentId: 15776358281255524550
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 2609293838127685666
    }
  }
  InstanceHistory {
    SelfId: 8227678740540710611
    SubobjectId: 10318061438039653674
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 12416723983507292273
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
  ParentId: 15776358281255524550
  ChildIds: 10560737161818987498
  ChildIds: 1870496605475072265
  ChildIds: 11092713001912641789
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
  }
  InstanceHistory {
    SelfId: 12416723983507292273
    SubobjectId: 5858787978921550728
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 11092713001912641789
  Name: "Pickup SFX"
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
  ParentId: 12416723983507292273
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  AudioInstance {
    AudioAsset {
      Id: 16784863239120847236
    }
    Volume: 1
    Radius: 2000
  }
  InstanceHistory {
    SelfId: 11092713001912641789
    SubobjectId: 7272948055746808580
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 1870496605475072265
  Name: "Full SFX"
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
  ParentId: 12416723983507292273
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  AudioInstance {
    AudioAsset {
      Id: 17998453660103204987
    }
    Pitch: 1e+07
    Volume: 1
    Radius: 2000
    StartTime: 0.15
  }
  InstanceHistory {
    SelfId: 1870496605475072265
    SubobjectId: 16495241559732538096
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 10560737161818987498
  Name: "UI"
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
  ParentId: 12416723983507292273
  ChildIds: 16561298138335283646
  ChildIds: 15538898515459529892
  ChildIds: 10355342539032295300
  ChildIds: 18245133408332364769
  ChildIds: 10457375489978799243
  UnregisteredParameters {
  }
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
    SelfId: 10560737161818987498
    SubobjectId: 8039152331772196883
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 10457375489978799243
  Name: "E to open Inventory"
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
  ParentId: 10560737161818987498
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 575
    Height: 75
    UIX: 1070
    UIY: 980.51
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Inventory (E)"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 30
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10355342539032295300
    SubobjectId: 8262444098312918141
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 18245133408332364769
  Name: "Frame"
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
  ParentId: 10560737161818987498
  ChildIds: 2003679589723356960
  ChildIds: 11221310588044724504
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 900
    Height: 525
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 4763468874179608279
      }
      Color {
        A: 0.5
      }
      TeamSettings {
      }
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
    SelfId: 18245133408332364769
    SubobjectId: 12442237018773528
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 11221310588044724504
  Name: "Info"
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
  ParentId: 18245133408332364769
  ChildIds: 13873675612919023517
  ChildIds: 236548102846948159
  ChildIds: 11308735604693299563
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 390
    Height: 165
    UIX: -205
    UIY: -190
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Panel {
      IsClipping: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topcenter"
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
    SelfId: 11221310588044724504
    SubobjectId: 7396479092285532897
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 11308735604693299563
  Name: "Stats"
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
  ParentId: 11221310588044724504
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 45
    UIX: 20
    UIY: 50
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 16
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
    SelfId: 11308735604693299563
    SubobjectId: 7056924084482495122
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 236548102846948159
  Name: "Name"
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
  ParentId: 11221310588044724504
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 45
    UIX: 20
    UIY: 4
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Name"
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
    SelfId: 236548102846948159
    SubobjectId: 18327375808664436934
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 13873675612919023517
  Name: "BG"
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
  ParentId: 11221310588044724504
  ChildIds: 7312068734335741362
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 250
    Height: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 12117351831364607381
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.2
      }
      TeamSettings {
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
    SelfId: 13873675612919023517
    SubobjectId: 4437939523552142436
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 7312068734335741362
  Name: "Frame"
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
  ParentId: 13873675612919023517
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 300
    Height: 600
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 1802497849043859994
      }
      Color {
        A: 0.5
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
    SelfId: 7312068734335741362
    SubobjectId: 10981508484920921675
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 2003679589723356960
  Name: "BG"
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
  ParentId: 18245133408332364769
  ChildIds: 17911743556699882124
  ChildIds: 11227302548207234232
  ChildIds: 17717004353667155508
  ChildIds: 11833100820097482798
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 12117351831364607381
      }
      Color {
        R: 0.5
        G: 0.5
        B: 0.5
        A: 0.25
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
    SelfId: 2003679589723356960
    SubobjectId: 16632347532707306713
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 11833100820097482798
  Name: "Delete"
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
  ParentId: 2003679589723356960
  ChildIds: 8689580361384161653
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 100
    Height: 110
    UIX: -50
    UIY: -50
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 4763468874179608279
      }
      Color {
        R: 0.05
        G: 0.0125
        B: 0.0125
        A: 0.5
      }
      TeamSettings {
      }
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:bottomright"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:bottomright"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 11833100820097482798
    SubobjectId: 6424409664695264215
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 8689580361384161653
  Name: "BG"
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
  ParentId: 11833100820097482798
  ChildIds: 17492696976804968340
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 12117351831364607381
      }
      Color {
        R: 0.5
        G: 0.125
        B: 0.125
        A: 0.25
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
    SelfId: 8689580361384161653
    SubobjectId: 9621974970350916236
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 17492696976804968340
  Name: "Slot"
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
  ParentId: 8689580361384161653
  ChildIds: 4531221691926390666
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 10
    UIY: 10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 0.5
        B: 0.5
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 0.5
        B: 0.5
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 0.5
        B: 0.5
        A: 0.5
      }
      DisabledColor {
        R: 1
        G: 0.5
        B: 0.5
        A: 0.3
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 17492696976804968340
    SubobjectId: 1143073408015553645
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 4531221691926390666
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
  ParentId: 17492696976804968340
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 0.5
        B: 0.5
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 4531221691926390666
    SubobjectId: 14122631001312396403
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 17717004353667155508
  Name: "Slots"
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
  ParentId: 2003679589723356960
  ChildIds: 6410083577220856830
  ChildIds: 7234324370217812995
  ChildIds: 5375560809612258014
  ChildIds: 3033255985739140817
  ChildIds: 1819407500232326859
  ChildIds: 7122303105553555475
  ChildIds: 15640388495416490673
  ChildIds: 4853184432676351060
  ChildIds: 13452003231693975858
  ChildIds: 14450133185520725440
  ChildIds: 26206435519590675
  ChildIds: 8467313963218983385
  ChildIds: 11056528932915308244
  ChildIds: 18206210685826892848
  ChildIds: 10954479009339935272
  ChildIds: 11671630469813983281
  ChildIds: 13769334190208350959
  ChildIds: 2250965365045275048
  ChildIds: 15006414803788742089
  ChildIds: 11261400535391556606
  ChildIds: 10374527029340639673
  ChildIds: 1643322357079852574
  ChildIds: 12797027118772698155
  ChildIds: 1003868726301402582
  ChildIds: 7830967629446047982
  ChildIds: 16730692462956828374
  ChildIds: 14976573090254343865
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 819
    Height: 272
    UIX: 50
    UIY: 55
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
  Id: 14976573090254343865
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 11848606965709301480
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIY: 180
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 6410083577220856830
    SubobjectId: 11955571571099457543
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 11848606965709301480
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
  ParentId: 14976573090254343865
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 2399705381389615869
    SubobjectId: 15876032396460974340
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 16730692462956828374
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 2931486642749429779
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 630
    UIY: 180
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 4853184432676351060
    SubobjectId: 13710770953998634925
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 2931486642749429779
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
  ParentId: 16730692462956828374
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 5436182090200956398
    SubobjectId: 13145649705166872087
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 7830967629446047982
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 13951585090690334525
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 540
    UIY: 180
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 15640388495416490673
    SubobjectId: 2599239395325499720
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 13951585090690334525
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
  ParentId: 7830967629446047982
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 1130021956242302191
    SubobjectId: 17487808264820410134
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 1003868726301402582
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 9154967594276434141
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 450
    UIY: 180
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 7122303105553555475
    SubobjectId: 11513462331499234282
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 9154967594276434141
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
  ParentId: 1003868726301402582
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 1967217152596371296
    SubobjectId: 16596747172947149977
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 12797027118772698155
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 15251189923266426174
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 360
    UIY: 180
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 1819407500232326859
    SubobjectId: 16438241402765401394
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 15251189923266426174
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
  ParentId: 12797027118772698155
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 12817563898022540564
    SubobjectId: 5548059229739620077
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 1643322357079852574
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 7833722403680574851
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 270
    UIY: 180
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 3033255985739140817
    SubobjectId: 15494566565281213736
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 7833722403680574851
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
  ParentId: 1643322357079852574
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 12779187102195536944
    SubobjectId: 5496435517885675465
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 10374527029340639673
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 4628794822874908947
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 180
    UIY: 180
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 5375560809612258014
    SubobjectId: 13224358640871737639
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 4628794822874908947
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
  ParentId: 10374527029340639673
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 8291260924411780089
    SubobjectId: 10236666476992935936
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 11261400535391556606
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 2368818947757108816
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 90
    UIY: 180
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 7234324370217812995
    SubobjectId: 11059419714391173114
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 2368818947757108816
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
  ParentId: 11261400535391556606
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 9236498240105511922
    SubobjectId: 9021037962916681739
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 15006414803788742089
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 6851882757974783665
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 720
    UIY: 180
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 13452003231693975858
    SubobjectId: 5165793320583205579
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 6851882757974783665
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
  ParentId: 15006414803788742089
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 9968437284215760353
    SubobjectId: 8595270419211388440
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 2250965365045275048
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 11696787886998798684
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIY: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 6410083577220856830
    SubobjectId: 11955571571099457543
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 11696787886998798684
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
  ParentId: 2250965365045275048
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 2399705381389615869
    SubobjectId: 15876032396460974340
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 13769334190208350959
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 1870227569826862062
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 630
    UIY: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 4853184432676351060
    SubobjectId: 13710770953998634925
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 1870227569826862062
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
  ParentId: 13769334190208350959
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 5436182090200956398
    SubobjectId: 13145649705166872087
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 11671630469813983281
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 8623466424100209228
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 540
    UIY: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 15640388495416490673
    SubobjectId: 2599239395325499720
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 8623466424100209228
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
  ParentId: 11671630469813983281
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 1130021956242302191
    SubobjectId: 17487808264820410134
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 10954479009339935272
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 1856565604141549757
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 450
    UIY: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 7122303105553555475
    SubobjectId: 11513462331499234282
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 1856565604141549757
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
  ParentId: 10954479009339935272
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 1967217152596371296
    SubobjectId: 16596747172947149977
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 18206210685826892848
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 1897303188291510111
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 360
    UIY: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 1819407500232326859
    SubobjectId: 16438241402765401394
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 1897303188291510111
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
  ParentId: 18206210685826892848
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 12817563898022540564
    SubobjectId: 5548059229739620077
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 11056528932915308244
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 784491806409040636
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 270
    UIY: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 3033255985739140817
    SubobjectId: 15494566565281213736
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 784491806409040636
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
  ParentId: 11056528932915308244
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 12779187102195536944
    SubobjectId: 5496435517885675465
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 8467313963218983385
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 3509823482272261686
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 180
    UIY: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 5375560809612258014
    SubobjectId: 13224358640871737639
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 3509823482272261686
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
  ParentId: 8467313963218983385
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 8291260924411780089
    SubobjectId: 10236666476992935936
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 26206435519590675
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 1683150494945713129
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 90
    UIY: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 7234324370217812995
    SubobjectId: 11059419714391173114
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 1683150494945713129
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
  ParentId: 26206435519590675
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 9236498240105511922
    SubobjectId: 9021037962916681739
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 14450133185520725440
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 7699292219189300166
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 720
    UIY: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 13452003231693975858
    SubobjectId: 5165793320583205579
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 7699292219189300166
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
  ParentId: 14450133185520725440
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 9968437284215760353
    SubobjectId: 8595270419211388440
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 13452003231693975858
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 9968437284215760353
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 720
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 13452003231693975858
    SubobjectId: 5165793320583205579
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 9968437284215760353
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
  ParentId: 13452003231693975858
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 9968437284215760353
    SubobjectId: 8595270419211388440
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 4853184432676351060
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 5436182090200956398
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 630
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 4853184432676351060
    SubobjectId: 13710770953998634925
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 5436182090200956398
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
  ParentId: 4853184432676351060
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 5436182090200956398
    SubobjectId: 13145649705166872087
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 15640388495416490673
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 1130021956242302191
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 540
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 15640388495416490673
    SubobjectId: 2599239395325499720
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 1130021956242302191
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
  ParentId: 15640388495416490673
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 1130021956242302191
    SubobjectId: 17487808264820410134
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 7122303105553555475
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 1967217152596371296
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 450
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 7122303105553555475
    SubobjectId: 11513462331499234282
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 1967217152596371296
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
  ParentId: 7122303105553555475
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 1967217152596371296
    SubobjectId: 16596747172947149977
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 1819407500232326859
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 12817563898022540564
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 360
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 1819407500232326859
    SubobjectId: 16438241402765401394
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 12817563898022540564
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
  ParentId: 1819407500232326859
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 12817563898022540564
    SubobjectId: 5548059229739620077
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 3033255985739140817
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 12779187102195536944
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 270
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 3033255985739140817
    SubobjectId: 15494566565281213736
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 12779187102195536944
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
  ParentId: 3033255985739140817
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 12779187102195536944
    SubobjectId: 5496435517885675465
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 5375560809612258014
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 8291260924411780089
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 180
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 5375560809612258014
    SubobjectId: 13224358640871737639
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 8291260924411780089
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
  ParentId: 5375560809612258014
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 8291260924411780089
    SubobjectId: 10236666476992935936
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 7234324370217812995
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 9236498240105511922
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 90
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 7234324370217812995
    SubobjectId: 11059419714391173114
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 9236498240105511922
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
  ParentId: 7234324370217812995
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 9236498240105511922
    SubobjectId: 9021037962916681739
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 6410083577220856830
  Name: "Slot"
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
  ParentId: 17717004353667155508
  ChildIds: 2399705381389615869
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 6410083577220856830
    SubobjectId: 11955571571099457543
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 2399705381389615869
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
  ParentId: 6410083577220856830
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 2399705381389615869
    SubobjectId: 15876032396460974340
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 11227302548207234232
  Name: "R- Item Equipped invisible"
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
  ParentId: 2003679589723356960
  ChildIds: 14892074948101575185
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  Control {
    Width: 100
    Height: 200
    UIX: 50000
    UIY: 50000
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Image {
      Brush {
        Id: 4763468874179608279
      }
      Color {
        A: 0.5
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
    SelfId: 11227302548207234232
    SubobjectId: 7408681025402752833
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 14892074948101575185
  Name: "BG"
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
  ParentId: 11227302548207234232
  ChildIds: 3590763061043920879
  ChildIds: 14379220370074955038
  ChildIds: 3024356184405848483
  ChildIds: 17445948271852153811
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 12117351831364607381
      }
      Color {
        R: 0.5
        G: 0.5
        B: 0.5
        A: 0.25
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
    SelfId: 14892074948101575185
    SubobjectId: 3725830728020308456
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 17445948271852153811
  Name: "T2"
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
  ParentId: 14892074948101575185
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 60
    UIX: 110
    UIY: 125
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Type 2"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 18
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
    SelfId: 17445948271852153811
    SubobjectId: 1081987097254053930
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 3024356184405848483
  Name: "T1"
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
  ParentId: 14892074948101575185
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 60
    UIX: 110
    UIY: 30
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Type 1"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 18
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
    SelfId: 3024356184405848483
    SubobjectId: 15341270100694012506
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 14379220370074955038
  Name: "Type2"
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
  ParentId: 14892074948101575185
  ChildIds: 7503137033078224554
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 10
    UIY: 100
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 14379220370074955038
    SubobjectId: 4220656472185687783
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 7503137033078224554
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
  ParentId: 14379220370074955038
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 7503137033078224554
    SubobjectId: 10754586486385972563
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 3590763061043920879
  Name: "Type1"
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
  ParentId: 14892074948101575185
  ChildIds: 1440319304769308057
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 80
    Height: 80
    UIX: 10
    UIY: 10
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Button {
      FontColor {
        A: 1
      }
      FontSize: 20
      ButtonColor {
        R: 1
        G: 1
        B: 1
        A: 0.3
      }
      HoveredColor {
        R: 1
        G: 1
        B: 1
        A: 0.35
      }
      PressedColor {
        R: 1
        G: 1
        B: 1
        A: 0.5
      }
      DisabledColor {
        R: 0.25
        G: 0.25
        B: 0.25
        A: 0.35
      }
      Brush {
        Id: 12117351831364607381
      }
      IsButtonEnabled: true
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
    SelfId: 3590763061043920879
    SubobjectId: 14757024907899034646
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 1440319304769308057
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
  ParentId: 3590763061043920879
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
        Id: 142418088936896870
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 0.25
      }
      TeamSettings {
      }
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
    SelfId: 1440319304769308057
    SubobjectId: 17213464537460483680
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 17911743556699882124
  Name: "Text"
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
  ParentId: 2003679589723356960
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 875
    Height: 60
    UIX: 20
    UIY: 4
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Inventory"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 20
      Justification {
        Value: "mc:etextjustify:center"
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
    SelfId: 17911743556699882124
    SubobjectId: 399909766291857781
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 10355342539032295300
  Name: "Full"
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
  ParentId: 10560737161818987498
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 575
    Height: 75
    UIY: 75
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Text {
      Label: "Inventory full!"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      Size: 30
      Justification {
        Value: "mc:etextjustify:center"
      }
      ClipTextToSize: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topcenter"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topcenter"
        }
      }
    }
  }
  InstanceHistory {
    SelfId: 10355342539032295300
    SubobjectId: 8262444098312918141
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 15538898515459529892
  Name: "BG"
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
  ParentId: 10560737161818987498
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Control {
    Width: 200
    Height: 200
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
        A: 0.3
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
    SelfId: 15538898515459529892
    SubobjectId: 3078995199179587421
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 16561298138335283646
  Name: "InventoryScriptClient"
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
  ParentId: 10560737161818987498
  UnregisteredParameters {
    Overrides {
      Name: "cs:BuildingScript"
      ObjectReference {
        SelfId: 15493299283785528625
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
      Id: 1977091964501371636
    }
  }
  InstanceHistory {
    SelfId: 16561298138335283646
    SubobjectId: 1786245580648098375
    InstanceId: 1077525767448922125
    TemplateId: 12474514012364516574
  }
}
Objects {
  Id: 10457520934331886866
  Name: "Gold System"
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
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Gold System"
  }
}
Objects {
  Id: 11705650449758980173
  Name: "First Person Camera Settings"
  Transform {
    Location {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 4781671109827199097
  ChildIds: 6864625388613481227
  ChildIds: 14613018779587392656
  UnregisteredParameters {
  }
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
  Id: 14613018779587392656
  Name: "Client Context"
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
  ParentId: 11705650449758980173
  ChildIds: 2280081826134236301
  ChildIds: 15493299283785528625
  ChildIds: 9155869702511804562
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
  }
}
Objects {
  Id: 9155869702511804562
  Name: "KillZone"
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
  ParentId: 14613018779587392656
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 6662205043826260974
    }
  }
}
Objects {
  Id: 15493299283785528625
  Name: "BuildingSystemClient"
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
  ParentId: 14613018779587392656
  ChildIds: 7628289215616390574
  ChildIds: 11054881233204625149
  UnregisteredParameters {
    Overrides {
      Name: "cs:BlockSerializer"
      ObjectReference {
        SelfId: 7628289215616390574
      }
    }
    Overrides {
      Name: "cs:PrevisuDoor"
      AssetReference {
        Id: 2549814219481064674
      }
    }
    Overrides {
      Name: "cs:BuildingSystemList"
      ObjectReference {
        SelfId: 13835058745715878551
        SubObjectId: 14648870783588546942
        InstanceId: 11054881233204625149
        TemplateId: 7069407994925304852
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
      Id: 18383686534434694165
    }
  }
}
Objects {
  Id: 11054881233204625149
  Name: "BuildingSystemList"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15493299283785528625
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 14648870783588546942
      value {
        Overrides {
          Name: "Name"
          String: "BuildingSystemList"
        }
        Overrides {
          Name: "Position"
          Vector {
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 7069407994925304852
    }
  }
}
Objects {
  Id: 7628289215616390574
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
  ParentId: 15493299283785528625
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
  Id: 2280081826134236301
  Name: "First Person Camera"
  Transform {
    Location {
      Z: 500
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14613018779587392656
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Camera {
    UseAsDefault: true
    AttachToLocalPlayer: true
    FreeControl: true
    MinDistance: 300
    MaxDistance: 600
    PositionOffset {
    }
    RotationOffset {
    }
    FieldOfView: 100
    ViewWidth: 1200
    UseCameraSocket: true
    RotationMode {
      Value: "mc:erotationmode:lookangle"
    }
    MinPitch: -89
    MaxPitch: 89
  }
}
Objects {
  Id: 6864625388613481227
  Name: "First Person Player Settings"
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
  ParentId: 11705650449758980173
  UnregisteredParameters {
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Settings {
    IsDefault: true
    PlayerMovementSettings {
      WalkSpeed: 640
      MaxAcceleration: 1800
      WalkableFloorAngle: 44
      JumpMaxCount: 1
      JumpVelocity: 900
      GroundFriction: 8
      GravityScale: 1.9
      MaxSwimSpeed: 420
      Buoyancy: 1
      TouchForceFactor: 1
      BrakingDecelerationFlying: 600
      MaxFlightSpeed: 600
      MovementControlMode {
        Value: "mc:emovementcontrolmode:viewrelative"
      }
      LookControlMode {
        Value: "mc:elookcontrolmode:relative"
      }
      FacingMode {
        Value: "mc:efacingmode:faceaimalways"
      }
      DefaultRotationRate: 540
      SlideRotationRate: 20
      LookAtCursorProjectionPlane {
        Value: "mc:eprojectionplane:xy"
      }
      MountedMaxAcceleration: 1800
      MountedWalkSpeed: 960
      MountedJumpMaxCount: 1
      MountedJumpVelocity: 900
      IsSlideEnabled: true
      IsCrouchEnabled: true
      IsJumpEnabled: true
      CanMoveForward: true
      CanMoveBackward: true
      CanMoveLeft: true
      CanMoveRight: true
      AbilityAimMode {
        Value: "mc:eabilityaimmode:viewrelative"
      }
      AppearanceChannelingTime: 2
      MountChannelingTime: 2
      FlipOnMultiJump: true
      CanMoveUp: true
      CanMoveDown: true
      IsMountEnabled: true
    }
  }
}
Objects {
  Id: 6236082347439009122
  Name: "GameConfig"
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
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "GameConfig"
  }
}
Objects {
  Id: 12292613699356748057
  Name: "Terrain"
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
  ParentId: 4781671109827199097
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceon"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Terrain {
    Material {
      Id: 6384239941299099900
    }
    VoxelSize: 100
    OctreeDepth: 5
    GeneratorID: "DEPRECATED"
    Foliage {
      Asset {
        Id: 7039067125504711964
      }
      DistanceBetweenInstances: 200
      SpawnDistance: 22400
      CullDistance {
        Min: 10000
        Max: 20000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 90
      }
      Scaling {
        ScaleX {
          Min: 1
          Max: 1
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 1
          Max: 1
        }
      }
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Nature_Grass"
        value {
          Id: 841534158063459245
        }
      }
      LocalPositionOffset {
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 102400
      }
    }
    Foliage {
      Asset {
        Id: 966563861414155672
      }
      DistanceBetweenInstances: 200
      SpawnDistance: 22400
      CullDistance {
        Min: 10000
        Max: 20000
      }
      ReceivesDecals: true
      GroundSlopeAngle {
        Max: 90
      }
      Scaling {
        ScaleX {
          Min: 1
          Max: 1
        }
        ScaleY {
          Min: 1
          Max: 1
        }
        ScaleZ {
          Min: 1
          Max: 1
        }
      }
      RandomYaw: true
      RandomPitchAngle: 6
      Materials {
        key: "Nature_Grass"
        value {
          Id: 841534158063459245
        }
      }
      LocalPositionOffset {
      }
      LocalRotationOffset {
      }
      GlobalPositionOffset {
      }
      Height {
        Min: -102400
        Max: 102400
      }
    }
  }
}
