Name: "MainIsland"
RootId: 14592900131835349158
Objects {
  Id: 3875291460084591420
  Name: "Sellers"
  Transform {
    Location {
      X: -1085.03918
      Y: -2080.49756
      Z: 2268.4436
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
  ChildIds: 17962164154774248583
  ChildIds: 2266316651283896195
  ChildIds: 11626730896790120294
  ChildIds: 7086928093804741488
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
}
Objects {
  Id: 7086928093804741488
  Name: "Materials"
  Transform {
    Location {
      X: -87.0444336
      Y: -16.5776367
      Z: 1.01660156
    }
    Rotation {
      Yaw: 72.4797745
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3875291460084591420
  ChildIds: 18354816756218499678
  ChildIds: 8678575965044671623
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
      Id: 17471560546391109885
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    AnimatedMesh {
      AnimationStance: "unarmed_idle_relaxed"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        Animation: "unarmed_wave"
        PlaybackRate: 1
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
    }
  }
}
Objects {
  Id: 8678575965044671623
  Name: "World Text"
  Transform {
    Location {
      Z: 121.739746
    }
    Rotation {
      Yaw: -0.0413513184
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7086928093804741488
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Text {
    Text: "MATERIALS"
    FontAsset {
      Id: 5125151642496914779
    }
    Color {
      G: 0.261721641
      B: 0.76
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
  Id: 18354816756218499678
  Name: "Trigger"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 2.28212476
    }
  }
  ParentId: 7086928093804741488
  ChildIds: 5058024693623340580
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Trigger {
    Interactable: true
    InteractionLabel: "Trade"
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
  Id: 5058024693623340580
  Name: "UITriggerScript"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 0.438188136
    }
  }
  ParentId: 18354816756218499678
  UnregisteredParameters {
    Overrides {
      Name: "cs:UIName"
      String: "BuySellMaterials"
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 1347959603203994334
    }
  }
}
Objects {
  Id: 11626730896790120294
  Name: "Farmer"
  Transform {
    Location {
      X: -309.627808
      Y: 175.094971
      Z: 1.45996094
    }
    Rotation {
      Yaw: 22.1069031
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3875291460084591420
  ChildIds: 9363295296355310752
  ChildIds: 18334681479680838131
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
      Id: 17386725906433127088
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    AnimatedMesh {
      AnimationStance: "unarmed_idle_relaxed"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        Animation: "unarmed_wave"
        PlaybackRate: 1
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
    }
  }
}
Objects {
  Id: 18334681479680838131
  Name: "World Text"
  Transform {
    Location {
      X: -5.65480477e-05
      Y: 2.29697343e-05
      Z: 121.296387
    }
    Rotation {
      Yaw: -1.34851074
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 11626730896790120294
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Text {
    Text: "FARMER"
    FontAsset {
      Id: 5125151642496914779
    }
    Color {
      G: 0.261721641
      B: 0.76
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
  Id: 9363295296355310752
  Name: "Trigger"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 2.28212476
    }
  }
  ParentId: 11626730896790120294
  ChildIds: 7916215167290344635
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Trigger {
    Interactable: true
    InteractionLabel: "Trade"
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
  Id: 7916215167290344635
  Name: "UITriggerScript"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 0.438188136
    }
  }
  ParentId: 9363295296355310752
  UnregisteredParameters {
    Overrides {
      Name: "cs:UIName"
      String: "BuySellFarmer"
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 1347959603203994334
    }
  }
}
Objects {
  Id: 2266316651283896195
  Name: "Seeds"
  Transform {
    Location {
      X: 65.6173096
      Y: -59.5323486
    }
    Rotation {
      Yaw: 56.9620399
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3875291460084591420
  ChildIds: 13505538043456871352
  ChildIds: 1315627219650353016
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
      Id: 8051971039432359698
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    AnimatedMesh {
      AnimationStance: "unarmed_idle_relaxed"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        Animation: "unarmed_wave"
        PlaybackRate: 1
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
    }
  }
}
Objects {
  Id: 1315627219650353016
  Name: "World Text"
  Transform {
    Location {
      Z: 120
    }
    Rotation {
      Yaw: 5.14978552
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2266316651283896195
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Text {
    Text: "SEEDS"
    FontAsset {
      Id: 5125151642496914779
    }
    Color {
      G: 0.261721641
      B: 0.76
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
  Id: 13505538043456871352
  Name: "Trigger"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 2.28212476
    }
  }
  ParentId: 2266316651283896195
  ChildIds: 799686389351956084
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Trigger {
    Interactable: true
    InteractionLabel: "Trade"
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
  Id: 799686389351956084
  Name: "UITriggerScript"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 0.438188136
    }
  }
  ParentId: 13505538043456871352
  UnregisteredParameters {
    Overrides {
      Name: "cs:UIName"
      String: "BuySellSeeds"
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 1347959603203994334
    }
  }
}
Objects {
  Id: 17962164154774248583
  Name: "Baker"
  Transform {
    Location {
      X: 331.054962
      Y: -98.9853516
      Z: 1.7109375
    }
    Rotation {
      Yaw: 97.0442047
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3875291460084591420
  ChildIds: 11941888192035615859
  ChildIds: 17034746523230958290
  ChildIds: 5311818264508629817
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Detail2:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail3:color"
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16955162695139626198
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    AnimatedMesh {
      AnimationStance: "unarmed_idle_relaxed"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        Animation: "unarmed_wave"
        PlaybackRate: 1
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
    }
  }
}
Objects {
  Id: 5311818264508629817
  Name: "World Text"
  Transform {
    Location {
      Z: 151.515137
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17962164154774248583
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Text {
    Text: "BAKER"
    FontAsset {
      Id: 5125151642496914779
    }
    Color {
      G: 0.261721641
      B: 0.76
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
  Id: 17034746523230958290
  Name: "ClientContext"
  Transform {
    Location {
      X: 1476.15674
      Y: 494.671753
      Z: -2270.15454
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17962164154774248583
  ChildIds: 5393001555951308276
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
}
Objects {
  Id: 5393001555951308276
  Name: "NPCCostumeAutoEquip"
  Transform {
    Location {
    }
    Rotation {
      Yaw: -90.3166962
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 17034746523230958290
  UnregisteredParameters {
    Overrides {
      Name: "cs:head"
      AssetReference {
        Id: 16665243468020450750
      }
    }
    Overrides {
      Name: "cs:pelvis"
      AssetReference {
        Id: 17224264277557183870
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
      Id: 6652383155670487881
    }
  }
}
Objects {
  Id: 11941888192035615859
  Name: "Trigger"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 2.28212476
    }
  }
  ParentId: 17962164154774248583
  ChildIds: 8753953635876348695
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Trigger {
    Interactable: true
    InteractionLabel: "Trade"
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
  Id: 8753953635876348695
  Name: "UITriggerScript"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 0.438188136
    }
  }
  ParentId: 11941888192035615859
  UnregisteredParameters {
    Overrides {
      Name: "cs:UIName"
      String: "BuySellBaker"
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 1347959603203994334
    }
  }
}
Objects {
  Id: 447721355931517050
  Name: "MainPortal"
  Transform {
    Location {
      X: -688.301453
      Y: 1292.44238
      Z: 2180
    }
    Rotation {
      Yaw: -95.8829041
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14592900131835349158
  ChildIds: 9397904567759714370
  ChildIds: 10020863202486002930
  UnregisteredParameters {
    Overrides {
      Name: "cs:Destination"
      String: "own_island"
    }
    Overrides {
      Name: "cs:TeleportManager"
      ObjectReference {
        SelfId: 11215959900169722424
      }
    }
    Overrides {
      Name: "cs:Destination:tooltip"
      String: "The id of the game that this will portal players to. Example: The game ID for the URL https://www.coregames.com/games/577d80/core-royale is 577d80/core-royale."
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
    SelfId: 447721355931517050
    SubobjectId: 3636187373852440861
    InstanceId: 14527408875923109141
    TemplateId: 8323218518488701719
    WasRoot: true
  }
}
Objects {
  Id: 10020863202486002930
  Name: "Human Guy 2"
  Transform {
    Location {
      X: -203.26265
      Y: 111.38559
      Z: 117.007813
    }
    Rotation {
      Yaw: -40.3926048
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 447721355931517050
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
      Id: 16955162695139626198
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
    AnimatedMesh {
      AnimationStance: "unarmed_idle_relaxed"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        Animation: "unarmed_sit_ground_crossed"
        PlaybackRate: 1
        ShouldLoop: true
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
    }
  }
}
Objects {
  Id: 9397904567759714370
  Name: "Geo"
  Transform {
    Location {
      Z: 150
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 447721355931517050
  ChildIds: 11882168745340849388
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
    SelfId: 9397904567759714370
    SubobjectId: 13127119335888584997
    InstanceId: 14527408875923109141
    TemplateId: 8323218518488701719
  }
}
Objects {
  Id: 11882168745340849388
  Name: "Ring - Thin"
  Transform {
    Location {
    }
    Rotation {
      Roll: 89.9999542
    }
    Scale {
      X: 5
      Y: 5
      Z: 5
    }
  }
  ParentId: 9397904567759714370
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10184847056121543272
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.205078766
        G: 0.205078766
        B: 0.205078766
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
      Id: 16353917461806733124
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
    SelfId: 11882168745340849388
    SubobjectId: 10422741934288270731
    InstanceId: 14527408875923109141
    TemplateId: 8323218518488701719
  }
}
Objects {
  Id: 15775420194678160801
  Name: "Mining Island"
  Transform {
    Location {
      X: 1711.06958
      Y: 5083.7915
      Z: 1295
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
  ChildIds: 13447030391291750854
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
    Model {
    }
  }
}
Objects {
  Id: 13447030391291750854
  Name: "Mining Island"
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
  ParentId: 15775420194678160801
  ChildIds: 15600497498965827223
  ChildIds: 6851632399685065068
  ChildIds: 6443730830449758519
  ChildIds: 18143767628965238595
  ChildIds: 7758221452521465617
  ChildIds: 3989216378650949107
  ChildIds: 17605056671340359523
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
}
Objects {
  Id: 17605056671340359523
  Name: "Chain Tile 01"
  Transform {
    Location {
      X: -656.06958
      Y: -3630.45801
      Z: 500
    }
    Rotation {
      Yaw: -15.0000219
      Roll: 79.9999771
    }
    Scale {
      X: 10
      Y: 10
      Z: 10
    }
  }
  ParentId: 13447030391291750854
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
      Id: 3558895387750759534
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
Objects {
  Id: 3989216378650949107
  Name: "Chain Ceiling Anchor"
  Transform {
    Location {
      X: 103.93042
      Y: -990.458
      Z: 945
    }
    Rotation {
      Pitch: -1.89693463
      Yaw: 58.2060852
      Roll: 17.6971016
    }
    Scale {
      X: 5
      Y: 5
      Z: 5
    }
  }
  ParentId: 13447030391291750854
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
      Id: 722115353060441594
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
Objects {
  Id: 7758221452521465617
  Name: "Chain Ceiling Anchor"
  Transform {
    Location {
      X: -576.06958
      Y: -3460.45801
      Z: 555
    }
    Rotation {
      Pitch: 10.3279352
      Yaw: 136.515717
      Roll: 119.438148
    }
    Scale {
      X: 5
      Y: 5
      Z: 5
    }
  }
  ParentId: 13447030391291750854
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
      Id: 722115353060441594
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
Objects {
  Id: 18143767628965238595
  Name: "Chain Ceiling Anchor"
  Transform {
    Location {
      X: -3141.06958
      Y: -3075.45801
      Z: 605
    }
    Rotation {
      Pitch: -8.81982327
      Yaw: -163.295532
      Roll: 90.3008957
    }
    Scale {
      X: 5
      Y: 5
      Z: 5
    }
  }
  ParentId: 13447030391291750854
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
      Id: 722115353060441594
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
Objects {
  Id: 6443730830449758519
  Name: "Chain Ceiling Anchor"
  Transform {
    Location {
      X: -2706.06958
      Y: -725.458
      Z: 1015
    }
    Rotation {
      Pitch: -6.94369268
      Yaw: -47.6535378
      Roll: 85.6219559
    }
    Scale {
      X: 5
      Y: 5
      Z: 5
    }
  }
  ParentId: 13447030391291750854
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
      Id: 722115353060441594
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
Objects {
  Id: 6851632399685065068
  Name: "Chain Tile 01"
  Transform {
    Location {
      X: -3206.06958
      Y: -3630.45801
      Z: 500
    }
    Rotation {
      Yaw: -10.0000153
      Roll: 79.9999771
    }
    Scale {
      X: 10
      Y: 10
      Z: 10
    }
  }
  ParentId: 13447030391291750854
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
      Id: 3558895387750759534
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
Objects {
  Id: 15600497498965827223
  Name: "Broken Bridge"
  Transform {
    Location {
      X: -1461.06958
      Y: -1460.45801
    }
    Rotation {
      Pitch: -18.0577698
      Yaw: -73.6078949
      Roll: -8.74476147
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13447030391291750854
  ChildIds: 14025908665786396707
  ChildIds: 10451716905822495566
  ChildIds: 10364854266899208178
  ChildIds: 1547827473875730812
  ChildIds: 3243712136777316811
  ChildIds: 14816285769525520246
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
}
Objects {
  Id: 14816285769525520246
  Name: "Decals"
  Transform {
    Location {
      X: 194.138321
      Y: -67.7381058
      Z: 1293.41797
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15600497498965827223
  ChildIds: 13722550885836670993
  ChildIds: 17779523877964121690
  ChildIds: 6162705501416731611
  ChildIds: 2909547810547697861
  ChildIds: 14993891186819047246
  ChildIds: 8033920530470159215
  ChildIds: 1349272127307419834
  ChildIds: 1224280791644278348
  ChildIds: 6337418872157758188
  ChildIds: 3081423198362799454
  ChildIds: 14888425477427726156
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
}
Objects {
  Id: 14888425477427726156
  Name: "Decal Stains Round 01"
  Transform {
    Location {
      X: 300.453125
      Y: -231.816406
    }
    Rotation {
    }
    Scale {
      X: 1.5981251
      Y: 1
      Z: 1
    }
  }
  ParentId: 14816285769525520246
  UnregisteredParameters {
    Overrides {
      Name: "bp:Sort Order"
      Int: -2
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
  Blueprint {
    BlueprintAsset {
      Id: 10795596082366365410
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3081423198362799454
  Name: "Decal Stone Cracks Variants 01"
  Transform {
    Location {
      X: -378.419922
      Y: 164.746094
      Z: 69.1298828
    }
    Rotation {
      Pitch: 1.82484889
      Yaw: 47.0040245
      Roll: 3.84275341
    }
    Scale {
      X: 0.844696641
      Y: 0.844696641
      Z: 0.844696641
    }
  }
  ParentId: 14816285769525520246
  UnregisteredParameters {
    Overrides {
      Name: "bp:Sort Order"
      Int: -1
    }
    Overrides {
      Name: "bp:Shape Index"
      Int: 2
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
    }
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.559999943
        G: 0.254799932
        B: 0.137199953
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 4137343365013533672
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6337418872157758188
  Name: "Decal Stone Cracks Variants 01"
  Transform {
    Location {
      X: 156.380859
      Y: -57.7753906
      Z: 69.1298828
    }
    Rotation {
      Pitch: 1.82484889
      Yaw: 36.2224312
      Roll: 3.84242344
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14816285769525520246
  UnregisteredParameters {
    Overrides {
      Name: "bp:Sort Order"
      Int: -1
    }
    Overrides {
      Name: "bp:Shape Index"
      Int: 1
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
    }
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.559999943
        G: 0.254799932
        B: 0.137199953
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 4137343365013533672
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1224280791644278348
  Name: "Decal Dirt Patch"
  Transform {
    Location {
      X: 789.365234
      Y: -479.757813
      Z: 68.2334
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1.21085954
      Z: 1
    }
  }
  ParentId: 14816285769525520246
  UnregisteredParameters {
    Overrides {
      Name: "bp:Sort Order"
      Int: -1
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
  Blueprint {
    BlueprintAsset {
      Id: 14964967653464214432
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1349272127307419834
  Name: "Decal Bullet Damage Wood"
  Transform {
    Location {
      X: 907.439453
      Y: -177.787109
      Z: 25.3947754
    }
    Rotation {
      Yaw: -179.774811
    }
    Scale {
      X: 1.96771193
      Y: 1.28217566
      Z: 1
    }
  }
  ParentId: 14816285769525520246
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 1
    }
    Overrides {
      Name: "bp:Sort Order"
      Int: 0
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
  Blueprint {
    BlueprintAsset {
      Id: 6536381687833057398
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8033920530470159215
  Name: "Decal Stains Round 01"
  Transform {
    Location {
      X: -498.150391
      Y: 121.771484
      Z: 68.2334
    }
    Rotation {
    }
    Scale {
      X: 0.625011742
      Y: 0.625011742
      Z: 0.625011742
    }
  }
  ParentId: 14816285769525520246
  UnregisteredParameters {
    Overrides {
      Name: "bp:Sort Order"
      Int: 0
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
  Blueprint {
    BlueprintAsset {
      Id: 10795596082366365410
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14993891186819047246
  Name: "Decal Ivy Big"
  Transform {
    Location {
      X: 655.382813
      Y: -561.390625
      Z: 68.2334
    }
    Rotation {
    }
    Scale {
      X: 1.3958987
      Y: 1.78070283
      Z: 1
    }
  }
  ParentId: 14816285769525520246
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 15556869846635109627
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2909547810547697861
  Name: "Decal Moss Patch"
  Transform {
    Location {
      X: 419.484375
      Y: 74.0625
      Z: 68.2334
    }
    Rotation {
      Yaw: 89.5240173
    }
    Scale {
      X: 0.933944345
      Y: 1.04230964
      Z: 0.909982741
    }
  }
  ParentId: 14816285769525520246
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 6120199285221091708
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6162705501416731611
  Name: "Decal Moss Patch"
  Transform {
    Location {
      X: -799.757813
      Y: 588.541
      Z: 68.2334
    }
    Rotation {
    }
    Scale {
      X: 1.37113309
      Y: 1.11019516
      Z: 1
    }
  }
  ParentId: 14816285769525520246
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 6120199285221091708
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17779523877964121690
  Name: "Decal Ivy Small (variations)"
  Transform {
    Location {
      X: -1142.91992
      Y: 331.082031
      Z: 68.2334
    }
    Rotation {
      Yaw: 50.1469498
    }
    Scale {
      X: 3.50803494
      Y: 3.50803494
      Z: 3.50803494
    }
  }
  ParentId: 14816285769525520246
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 10279419131238093919
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13722550885836670993
  Name: "Decal Ivy Big"
  Transform {
    Location {
      X: -409.261719
      Y: 228.326172
      Z: 68.2334
    }
    Rotation {
      Yaw: -18.6357841
    }
    Scale {
      X: 2.15854764
      Y: 2.15854764
      Z: 2.15854764
    }
  }
  ParentId: 14816285769525520246
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 15556869846635109627
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3243712136777316811
  Name: "Bridge Planks"
  Transform {
    Location {
      X: 79.7285156
      Y: 25.6640625
      Z: 1142.33887
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15600497498965827223
  ChildIds: 5451379602995277641
  ChildIds: 17407263016955450876
  ChildIds: 14085756720320545933
  ChildIds: 2379556344731848885
  ChildIds: 1875850103349763742
  ChildIds: 6850343889206983223
  ChildIds: 17801385233754335187
  ChildIds: 7254935945007657362
  ChildIds: 17784534944501895228
  ChildIds: 9932294448631477516
  ChildIds: 18166439007750074154
  ChildIds: 15071860159624801571
  ChildIds: 14083471471236492004
  ChildIds: 8450006641344035252
  ChildIds: 5563099483176985780
  ChildIds: 6196363676950947748
  ChildIds: 7423828198058249826
  ChildIds: 10982316837215316420
  ChildIds: 14381847355382332078
  ChildIds: 1587096355684351453
  ChildIds: 4935678272519322445
  ChildIds: 16545684145638862468
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
}
Objects {
  Id: 16545684145638862468
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -495.325317
      Y: 267.804932
      Z: 208.025757
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: -25.3486938
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 4935678272519322445
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 667.787659
      Y: -311.78186
      Z: 212.432724
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: -25.3493958
      Roll: 1.2912742e-06
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 1587096355684351453
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 186.855515
      Y: -104.383224
      Z: 218.758606
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: -25.3492126
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 14381847355382332078
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 96.1035767
      Y: -46.1446609
      Z: 218.758453
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: -25.3491516
      Roll: 1.10394922e-06
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 10982316837215316420
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -7.82208252
      Y: -7.0746727
      Z: 218.758499
    }
    Rotation {
      Pitch: 4.24685431
      Yaw: -25.302063
      Roll: -0.230773926
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 7423828198058249826
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 1050.07117
      Y: -472.241882
      Z: 208.912674
    }
    Rotation {
      Pitch: 1.36603776e-05
      Yaw: -25.3495789
      Roll: 8.96549182e-07
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 6196363676950947748
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -979.714844
      Y: 483.482422
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3483067
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 5563099483176985780
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -881.007813
      Y: 441.259766
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3483658
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 8450006641344035252
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -781.744141
      Y: 391.644531
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3484554
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 14083471471236492004
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -686.359375
      Y: 339.585938
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3485203
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 15071860159624801571
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -585.240234
      Y: 308.34375
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3485813
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 18166439007750074154
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -399.917969
      Y: 207.982422
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3487034
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 9932294448631477516
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -312.242188
      Y: 160.222656
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3487644
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 17784534944501895228
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -211.792969
      Y: 116.539063
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3488274
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 7254935945007657362
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -106.087555
      Y: 63.0412827
      Z: 207.842834
    }
    Rotation {
      Pitch: -4.43762207
      Yaw: -24.5540771
      Roll: -2.25048828
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 17801385233754335187
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 284.568359
      Y: -129.814453
      Z: 212.864624
    }
    Rotation {
      Pitch: 4.24685431
      Yaw: -25.3020744
      Roll: -0.230773747
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 6850343889206983223
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 388.494141
      Y: -168.884766
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3491898
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 1875850103349763742
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 479.246094
      Y: -227.123047
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3492508
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 2379556344731848885
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 572.875
      Y: -266.615234
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3493156
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 14085756720320545933
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 765.15625
      Y: -355.205078
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3494339
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 17407263016955450876
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 856.267578
      Y: -408.111328
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3494968
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 5451379602995277641
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 953.433594
      Y: -445.033203
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3496189
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 3243712136777316811
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 1547827473875730812
  Name: "Bridge Struts"
  Transform {
    Location {
      X: 78.2148438
      Y: -25.6132813
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15600497498965827223
  ChildIds: 11515079445389251223
  ChildIds: 4601634108592339943
  ChildIds: 7828412766104493540
  ChildIds: 10431341860818203308
  ChildIds: 4628371252748414216
  ChildIds: 1543239159322151316
  ChildIds: 7425122969613601383
  ChildIds: 5151554149437329959
  ChildIds: 13618856936377185684
  ChildIds: 10175834670509802048
  ChildIds: 12995785428720548054
  ChildIds: 8815189969396535621
  ChildIds: 4728716930553620261
  ChildIds: 14665630579224892248
  ChildIds: 11743323464131023532
  ChildIds: 4223682204655485778
  ChildIds: 9609873143122582772
  ChildIds: 14922023030415646640
  ChildIds: 16652605547292614234
  ChildIds: 13959330649541444014
  ChildIds: 18296354174935998893
  ChildIds: 9912356708983847676
  ChildIds: 1076384494807433310
  ChildIds: 5398483605753598763
  ChildIds: 17603894576080167623
  ChildIds: 3647443080975594983
  ChildIds: 17373456447416368399
  ChildIds: 8791487002629687273
  ChildIds: 12696704427112855243
  ChildIds: 10037569356621591696
  ChildIds: 1771310976008726836
  ChildIds: 1872804504449297283
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
}
Objects {
  Id: 1872804504449297283
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -111.778137
      Y: -449.076904
      Z: 1424.09363
    }
    Rotation {
      Pitch: -1.33648682
      Yaw: 137.277084
      Roll: -178.712
    }
    Scale {
      X: 0.5
      Y: 0.5
      Z: 2.7
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 1771310976008726836
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 237.52774
      Y: -600.186279
      Z: 1397.61511
    }
    Rotation {
      Pitch: -1.33648682
      Yaw: 137.277084
      Roll: -178.712
    }
    Scale {
      X: 0.5
      Y: 0.5
      Z: 2.7
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 10037569356621591696
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 861.133423
      Y: -939.6698
      Z: 1581.26697
    }
    Rotation {
      Pitch: -9.40264893
      Yaw: -123.705933
      Roll: 130.267822
    }
    Scale {
      X: 0.2
      Y: 0.500002623
      Z: 5.64670181
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 12696704427112855243
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 717.225037
      Y: -835.06604
      Z: 1489.87085
    }
    Rotation {
      Pitch: -1.33648682
      Yaw: 137.277588
      Roll: -178.712
    }
    Scale {
      X: 0.500014
      Y: 0.500018418
      Z: 6.63769
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 8791487002629687273
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -612.170776
      Y: -158.771423
      Z: 1421.88904
    }
    Rotation {
      Pitch: -1.33648682
      Yaw: 137.277145
      Roll: -178.712
    }
    Scale {
      X: 0.5
      Y: 0.5
      Z: 2.7
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 17373456447416368399
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -612.299377
      Y: -173.149796
      Z: 1513.69458
    }
    Rotation {
      Pitch: -89.1528
      Yaw: -18.0019531
      Roll: 78.8861847
    }
    Scale {
      X: 1.00001299
      Y: 12.7121134
      Z: 0.128957167
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 3647443080975594983
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 312.986389
      Y: -642.238892
      Z: 1511.04053
    }
    Rotation {
      Pitch: -88.9580688
      Yaw: 158.212967
      Roll: 86.3232727
    }
    Scale {
      X: 1.00001299
      Y: 9.49667454
      Z: 0.128957167
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 17603894576080167623
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -201.273438
      Y: 743.457031
      Z: 1508.28613
    }
    Rotation {
      Pitch: -89.1648941
      Yaw: -18.0062885
      Roll: 78.899025
    }
    Scale {
      X: 1.00001299
      Y: 12.7121134
      Z: 0.128957167
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 5398483605753598763
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 724.013672
      Y: 274.363281
      Z: 1505.63354
    }
    Rotation {
      Pitch: -89.004158
      Yaw: 158.23082
      Roll: 86.3661957
    }
    Scale {
      X: 1.00001299
      Y: 9.49667454
      Z: 0.128957167
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3902767697519824467
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
}
Objects {
  Id: 1076384494807433310
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 555.291
      Y: -800.345703
      Z: 1371.88086
    }
    Rotation {
      Pitch: -58.3200455
      Yaw: -76.3462677
      Roll: 88.2616959
    }
    Scale {
      X: 0.199999884
      Y: 0.500002801
      Z: 4.93613195
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 9912356708983847676
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 910.300781
      Y: 130.666016
      Z: 1433.76587
    }
    Rotation {
      Pitch: 0.14272362
      Yaw: -117.19342
      Roll: 73.7826538
    }
    Scale {
      X: 0.199999884
      Y: 0.500002801
      Z: 4.93613195
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 18296354174935998893
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -319.103516
      Y: -273.109375
      Z: 1296.83521
    }
    Rotation {
      Pitch: 61.6274
      Yaw: -34.8263359
      Roll: -6.51734114
    }
    Scale {
      X: 0.50000006
      Y: 0.499996364
      Z: 1.53628051
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 13959330649541444014
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -1097.85156
      Y: -93.8007813
      Z: 1183.63599
    }
    Rotation {
      Pitch: 47.8104591
      Yaw: -43.4360962
      Roll: 43.5882072
    }
    Scale {
      X: 0.199999884
      Y: 0.500002801
      Z: 4.93613195
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 16652605547292614234
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -557.164063
      Y: 880.097656
      Z: 1433.76563
    }
    Rotation {
      Pitch: 0.142682642
      Yaw: 62.0682907
      Roll: 73.7852097
    }
    Scale {
      X: 0.199999884
      Y: 0.500002801
      Z: 4.93613195
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 14922023030415646640
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 306.607544
      Y: 445.931519
      Z: 1387.18835
    }
    Rotation {
      Pitch: -1.33648682
      Yaw: 137.277191
      Roll: -178.712
    }
    Scale {
      X: 0.5
      Y: 0.5
      Z: 3.7
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 9609873143122582772
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -1197.57104
      Y: 157.607
      Z: 1541.93799
    }
    Rotation {
      Pitch: -0.340698242
      Yaw: 55.9884529
      Roll: 136.626114
    }
    Scale {
      X: 0.2
      Y: 0.500002623
      Z: 5.64670181
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 4223682204655485778
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -897.340698
      Y: 1095.74072
      Z: 1416.85657
    }
    Rotation {
      Pitch: -0.722595215
      Yaw: 58.6763496
      Roll: 134.461639
    }
    Scale {
      X: 0.2
      Y: 0.500002623
      Z: 5.64670181
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 11743323464131023532
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 673.617188
      Y: -916.041
      Z: 1400.11987
    }
    Rotation {
      Pitch: -78.6693573
      Yaw: -20.6432152
      Roll: 3.03076601
    }
    Scale {
      X: 0.2
      Y: 0.500002623
      Z: 5.64670181
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 14665630579224892248
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 1262.84961
      Y: -52.3828125
      Z: 1577.29761
    }
    Rotation {
      Pitch: -9.40265
      Yaw: -123.705948
      Roll: 130.267853
    }
    Scale {
      X: 0.2
      Y: 0.500002623
      Z: 5.64670181
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 4728716930553620261
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 894.136719
      Y: -362.886719
      Z: 1296.94629
    }
    Rotation {
      Pitch: -40.1545105
      Yaw: 156.33046
      Roll: 89.3982544
    }
    Scale {
      X: 0.50001055
      Y: 0.500021
      Z: 10.831212
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 8815189969396535621
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -815.548828
      Y: 470.947266
      Z: 1296.94604
    }
    Rotation {
      Pitch: -40.1545143
      Yaw: 156.330414
      Roll: 89.3982544
    }
    Scale {
      X: 0.50001055
      Y: 0.500021
      Z: 10.831212
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 12995785428720548054
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 1118.94141
      Y: 52.2207031
      Z: 1485.90137
    }
    Rotation {
      Pitch: -1.33648348
      Yaw: 137.277618
      Roll: -178.712
    }
    Scale {
      X: 0.500014
      Y: 0.500018418
      Z: 6.63769
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 10175834670509802048
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 634.988281
      Y: -863.537109
      Z: 1274.87207
    }
    Rotation {
      Pitch: -45.9639473
      Yaw: 102.63784
      Roll: -107.267761
    }
    Scale {
      X: 0.500014
      Y: 0.500018418
      Z: 6.63769
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 13618856936377185684
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -724.988281
      Y: 1000.41797
      Z: 1485.90137
    }
    Rotation {
      Pitch: -7.08035135
      Yaw: 137.739166
      Roll: 175.009735
    }
    Scale {
      X: 0.500014
      Y: 0.500018418
      Z: 6.63769
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 5151554149437329959
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -1054.67188
      Y: 49.0566406
      Z: 1485.90137
    }
    Rotation {
      Pitch: -1.33648348
      Yaw: 137.27774
      Roll: -178.712
    }
    Scale {
      X: 0.500014
      Y: 0.500018418
      Z: 6.63769
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 7425122969613601383
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -514.019531
      Y: 969.771484
      Z: 1214.97241
    }
    Rotation {
      Pitch: -11.3200951
      Yaw: 32.0316277
      Roll: 116.266754
    }
    Scale {
      X: 0.2
      Y: 0.500002623
      Z: 5.64670181
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 1543239159322151316
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 1035.38477
      Y: 186.171875
      Z: 1214.97241
    }
    Rotation {
      Pitch: -9.40265
      Yaw: -108.093079
      Roll: 130.267853
    }
    Scale {
      X: 0.2
      Y: 0.500002623
      Z: 5.64670181
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 4628371252748414216
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 616.695313
      Y: -897.421875
      Z: 1214.97241
    }
    Rotation {
      Pitch: -11.3200951
      Yaw: -157.400391
      Roll: 116.266151
    }
    Scale {
      X: 0.2
      Y: 0.500002623
      Z: 5.64670181
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 10431341860818203308
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -829.529297
      Y: -183.638672
      Z: 1214.97241
    }
    Rotation {
      Pitch: -11.3201017
      Yaw: 89.9993362
      Roll: 116.268501
    }
    Scale {
      X: 0.2
      Y: 0.500002623
      Z: 5.64670181
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 7828412766104493540
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 567.484375
      Y: -690.871094
      Z: 1332.10742
    }
    Rotation {
      Pitch: 90
      Yaw: 180
      Roll: -153.729
    }
    Scale {
      X: 0.5
      Y: 0.5
      Z: 12.5
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 4601634108592339943
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -820.712891
      Y: -19.0761719
      Z: 1332.10742
    }
    Rotation {
      Pitch: 90
      Roll: 26.2710266
    }
    Scale {
      X: 0.5
      Y: 0.499987781
      Z: 10.0582018
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 11515079445389251223
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 178.472656
      Y: 470.142578
      Z: 1332.10742
    }
    Rotation {
      Pitch: 90
      Yaw: -26.565033
      Roll: -0.294311523
    }
    Scale {
      X: 0.5
      Y: 0.5
      Z: 25
    }
  }
  ParentId: 1547827473875730812
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 935439690914032352
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 10457545783047106170
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
}
Objects {
  Id: 10364854266899208178
  Name: "Ivy 05"
  Transform {
    Location {
      X: 389.013672
      Y: 452.123047
      Z: 1426.04541
    }
    Rotation {
      Pitch: -0.980862916
      Yaw: -25.403389
      Roll: 90.0630722
    }
    Scale {
      X: 1.58420539
      Y: 2.37195921
      Z: 0.999997735
    }
  }
  ParentId: 15600497498965827223
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
      Id: 5059558495047150203
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
}
Objects {
  Id: 10451716905822495566
  Name: "Ivy 04"
  Transform {
    Location {
      X: -428.53125
      Y: -241.287109
      Z: 1224.45532
    }
    Rotation {
      Pitch: 12.5676088
      Yaw: 162.766708
      Roll: 86.394104
    }
    Scale {
      X: 1.94267881
      Y: 1.00000072
      Z: 1.00001144
    }
  }
  ParentId: 15600497498965827223
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
      Id: 14456918266950896187
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
}
Objects {
  Id: 14025908665786396707
  Name: "Ivy 02"
  Transform {
    Location {
      X: 187.970703
      Y: -532.806641
      Z: 1229.16211
    }
    Rotation {
      Pitch: 44.0742226
      Yaw: 151.473297
      Roll: 85.0034637
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15600497498965827223
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
      Id: 1770156510782188641
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
}
Objects {
  Id: 18325433601720868126
  Name: "MiningZoneSystem"
  Transform {
    Location {
      X: 1168.26477
      Y: 2868.02856
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
  ChildIds: 7211235477142523334
  ChildIds: 4401043014206607319
  ChildIds: 10753996777154350082
  WantsNetworking: true
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
}
Objects {
  Id: 10753996777154350082
  Name: "Spawners"
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
  ParentId: 18325433601720868126
  ChildIds: 10988677416128734945
  ChildIds: 11184864577335270992
  ChildIds: 6727785966765252743
  ChildIds: 15853497194626275103
  ChildIds: 17719196393124048405
  ChildIds: 18069237358294015096
  ChildIds: 10143366605465057466
  ChildIds: 13767551751191811026
  ChildIds: 15066965380313906341
  ChildIds: 11662508113210616421
  ChildIds: 899222680797267061
  ChildIds: 11900290928924034792
  ChildIds: 4560786535749932595
  ChildIds: 11326784880562780340
  ChildIds: 4144007005040499251
  ChildIds: 14706937720793266945
  UnregisteredParameters {
    Overrides {
      Name: "cs:ParentProp"
      ObjectReference {
        SelfId: 7211235477142523334
      }
    }
    Overrides {
      Name: "cs:SpawnDelay"
      Vector2 {
        X: 10
        Y: 30
      }
    }
    Overrides {
      Name: "cs:Prop1"
      AssetReference {
        Id: 12608001148984257959
      }
    }
    Overrides {
      Name: "cs:Prop2"
      AssetReference {
        Id: 7549492464676050365
      }
    }
    Overrides {
      Name: "cs:Prop3"
      AssetReference {
        Id: 12608001148984257959
      }
    }
    Overrides {
      Name: "cs:Prop1:tooltip"
      String: "Test"
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
}
Objects {
  Id: 14706937720793266945
  Name: "RockSpawner"
  Transform {
    Location {
      X: 2556.73535
      Y: 4830.30469
      Z: 3865
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner_1"
  }
  InstanceHistory {
    SelfId: 10988677416128734945
    SubobjectId: 13326456227818208202
    InstanceId: 10831329912381409974
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 4144007005040499251
  Name: "RockSpawner"
  Transform {
    Location {
      X: 4596.73535
      Y: 2725.30469
      Z: 4200
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner"
  }
  InstanceHistory {
    SelfId: 10988677416128734945
    SubobjectId: 13326456227818208202
    InstanceId: 10831329912381409974
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 11326784880562780340
  Name: "RockSpawner"
  Transform {
    Location {
      X: -1438.26477
      Y: 1915.30469
      Z: 3090
    }
    Rotation {
      Pitch: 33.6080132
      Yaw: 90.3193817
      Roll: 0.0605257712
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner_4"
  }
  InstanceHistory {
    SelfId: 10143366605465057466
    SubobjectId: 13326456227818208202
    InstanceId: 13017799240849911674
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 4560786535749932595
  Name: "RockSpawner"
  Transform {
    Location {
      X: 1711.73523
      Y: 3085.30469
      Z: 3655
    }
    Rotation {
      Pitch: 33.6080208
      Yaw: 90.3193741
      Roll: 0.0605237223
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner_2"
  }
  InstanceHistory {
    SelfId: 10143366605465057466
    SubobjectId: 13326456227818208202
    InstanceId: 13017799240849911674
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 11900290928924034792
  Name: "RockSpawner"
  Transform {
    Location {
      X: 3561.73535
      Y: 3525.30469
      Z: 3725
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner_8"
  }
  InstanceHistory {
    SelfId: 10988677416128734945
    SubobjectId: 13326456227818208202
    InstanceId: 10831329912381409974
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 899222680797267061
  Name: "RockSpawner"
  Transform {
    Location {
      X: 2111.73535
      Y: 4880.30469
      Z: 3870
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner_3"
  }
  InstanceHistory {
    SelfId: 10988677416128734945
    SubobjectId: 13326456227818208202
    InstanceId: 10831329912381409974
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 11662508113210616421
  Name: "RockSpawner"
  Transform {
    Location {
      X: -748.264771
      Y: 3460.30469
      Z: 3480
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner_5"
  }
  InstanceHistory {
    SelfId: 10988677416128734945
    SubobjectId: 13326456227818208202
    InstanceId: 10831329912381409974
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 15066965380313906341
  Name: "RockSpawner"
  Transform {
    Location {
      X: 3530.25879
      Y: 2920.69727
      Z: 3875
    }
    Rotation {
      Pitch: 29.3015366
      Yaw: -31.4953613
      Roll: 1.95807024e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner_6"
  }
  InstanceHistory {
    SelfId: 15066965380313906341
    SubobjectId: 13326456227818208202
    InstanceId: 5571664601598756986
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 13767551751191811026
  Name: "RockSpawner"
  Transform {
    Location {
      X: 1915.96814
      Y: 3690.18311
      Z: 3715
    }
    Rotation {
      Pitch: 26.4570446
      Yaw: 123.547134
      Roll: 5.79138088
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner_7"
  }
  InstanceHistory {
    SelfId: 13767551751191811026
    SubobjectId: 13326456227818208202
    InstanceId: 16248187114299145738
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 10143366605465057466
  Name: "RockSpawner"
  Transform {
    Location {
      X: 990.97229
      Y: 2533.09473
      Z: 3475
    }
    Rotation {
      Pitch: 33.608036
      Yaw: 90.3193817
      Roll: 0.0605298951
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner_9"
  }
  InstanceHistory {
    SelfId: 10143366605465057466
    SubobjectId: 13326456227818208202
    InstanceId: 13017799240849911674
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 18069237358294015096
  Name: "RockSpawner"
  Transform {
    Location {
      X: 2343.44727
      Y: 2701.73535
      Z: 3640
    }
    Rotation {
      Pitch: 7.49755955
      Yaw: -60.6025391
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner_10"
  }
  InstanceHistory {
    SelfId: 18069237358294015096
    SubobjectId: 13326456227818208202
    InstanceId: 5958376322323695345
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 17719196393124048405
  Name: "RockSpawner"
  Transform {
    Location {
      X: -240.20166
      Y: 4559.17871
      Z: 3705
    }
    Rotation {
      Pitch: 22.2805748
      Yaw: 52.5734596
      Roll: 9.22661059e-07
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner_11"
  }
  InstanceHistory {
    SelfId: 17719196393124048405
    SubobjectId: 13326456227818208202
    InstanceId: 1760861134372875880
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 15853497194626275103
  Name: "RockSpawner"
  Transform {
    Location {
      X: 725.331909
      Y: 3361.38477
      Z: 3710
    }
    Rotation {
      Pitch: 18.0751648
      Yaw: 73.4235306
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner_12"
  }
  InstanceHistory {
    SelfId: 15853497194626275103
    SubobjectId: 13326456227818208202
    InstanceId: 15617547640335760102
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 6727785966765252743
  Name: "RockSpawner"
  Transform {
    Location {
      X: -165.477661
      Y: 3928.65137
      Z: 3665
    }
    Rotation {
      Pitch: 20.7017288
      Yaw: -3.83511353
      Roll: 1.14087982e-07
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner_13"
  }
  InstanceHistory {
    SelfId: 6727785966765252743
    SubobjectId: 13326456227818208202
    InstanceId: 2595158937907818724
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 11184864577335270992
  Name: "RockSpawner"
  Transform {
    Location {
      X: -244.877319
      Y: 2943.92236
      Z: 3440
    }
    Rotation {
      Pitch: 27.3388748
      Yaw: 60.9763756
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner_14"
  }
  InstanceHistory {
    SelfId: 11184864577335270992
    SubobjectId: 13326456227818208202
    InstanceId: 11317094626328414791
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 10988677416128734945
  Name: "RockSpawner"
  Transform {
    Location {
      X: -1611.06201
      Y: 3581.76855
      Z: 3435
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10753996777154350082
  WantsNetworking: true
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
    IsFilePartition: true
    FilePartitionName: "RockSpawner_15"
  }
  InstanceHistory {
    SelfId: 10988677416128734945
    SubobjectId: 13326456227818208202
    InstanceId: 10831329912381409974
    TemplateId: 12608001148984257959
    WasRoot: true
  }
}
Objects {
  Id: 4401043014206607319
  Name: "MiningZone"
  Transform {
    Location {
      X: 1783.26477
      Y: 3454.69531
      Z: 3181.39893
    }
    Rotation {
    }
    Scale {
      X: 98.5572052
      Y: 66.6936722
      Z: 55.6832962
    }
  }
  ParentId: 18325433601720868126
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Trigger {
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  InstanceHistory {
    SelfId: 4401043014206607319
    SubobjectId: 7057006111918251491
    InstanceId: 17319175333114290406
    TemplateId: 3526051123066352755
  }
}
Objects {
  Id: 7211235477142523334
  Name: "Rocks"
  Transform {
    Location {
      X: -1783.26477
      Y: -3454.69531
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 18325433601720868126
  WantsNetworking: true
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
}
Objects {
  Id: 6207580416035483729
  Name: "Architect"
  Transform {
    Location {
      X: 50000
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
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 16955162695139626198
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    InteractWithTriggers: true
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
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
      }
      SkinnedMeshes {
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Trigger {
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Text {
    Text: "The Architect"
    FontAsset {
    }
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  ChildIds: 5745221345826254586
  ChildIds: 6700608513344214770
  ChildIds: 5271566846307770488
  ChildIds: 194322440282189979
  ChildIds: 11701481937421177063
  ChildIds: 3860228205628029101
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
}
Objects {
  Id: 3860228205628029101
  Name: "SellWheat"
  Transform {
    Location {
      X: -564.921692
      Y: -354.648804
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  Id: 11701481937421177063
  Name: "BuyBerrySprout"
  Transform {
    Location {
      X: -219.411621
      Y: -540.93689
      Z: 2284.02466
    }
    Rotation {
      Yaw: -161.681641
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "BuyBerrySprout"
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
  Id: 194322440282189979
  Name: "SellBerryPie"
  Transform {
    Location {
      X: -4.60014343
      Y: -557.95813
      Z: 2284.02466
    }
    Rotation {
      Yaw: -8.18527222
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
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
      X: -54.1359253
      Y: -562.062744
      Z: 2284.02466
    }
    Rotation {
      Yaw: 12.3539124
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  Id: 6700608513344214770
  Name: "Wood"
  Transform {
    Location {
      X: -445.449036
      Y: -433.083618
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
  ChildIds: 9145669533399247540
  ChildIds: 17150355236440318542
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 8556281639390552608
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 8556281639390552608
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
    SelfId: 17150355236440318542
    SubobjectId: 7640432072859289763
    InstanceId: 14307561003301865797
    TemplateId: 5679982547435929442
  }
}
Objects {
  Id: 5745221345826254586
  Name: "BuyWheatSeed"
  Transform {
    Location {
      X: -183.925781
      Y: -552.090454
      Z: 2284.02466
    }
    Rotation {
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "BuyWheatSeed"
  }
  InstanceHistory {
    SelfId: 5745221345826254586
    SubobjectId: 8113092316498761747
    InstanceId: 17522159150630198821
    TemplateId: 7689519216032096316
    WasRoot: true
  }
}
Objects {
  Id: 13392707250728637150
  Name: "BuySapling"
  Transform {
    Location {
      X: -134.578369
      Y: -537.420654
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
      X: -533.585449
      Y: -376.385132
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "SellWheat_1"
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6598245629754481566
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 4232662368414213271
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 1217607205458813639
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3300185404184952750
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 7959943984560897135
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 2097480292430635919
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 2097480292430635919
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 17788011970778134380
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 17788011970778134380
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 17788011970778134380
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 7028419796120990025
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 15668426925995745039
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 15668426925995745039
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6598245629754481566
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 4232662368414213271
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 1217607205458813639
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 3300185404184952750
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 7959943984560897135
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 2097480292430635919
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 2097480292430635919
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 17788011970778134380
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 17788011970778134380
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 17788011970778134380
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 7028419796120990025
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 15668426925995745039
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 15668426925995745039
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceon"
  }
  CoreMesh {
    MeshAsset {
      Id: 6897042636459259472
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
    ParameterOverrideMap {
      key: 6667834918522682281
      value {
        Overrides {
          Name: "Collidable"
          Enum {
            Value: "mc:ecollisionsetting:inheritfromparent"
          }
        }
        Overrides {
          Name: "Position"
          Vector {
            Z: 132.713135
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "MainIslandProps"
  }
}
