Name: "MainIsland"
RootId: 14592900131835349158
Objects {
  Id: 10736656283205010988
  Name: "Lights"
  Transform {
    Location {
      X: 141.818359
      Y: -356.616821
      Z: 2216.86
    }
    Rotation {
      Yaw: -126.718582
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 14592900131835349158
  ChildIds: 11817202782761572635
  ChildIds: 16726267811798604276
  ChildIds: 3171690124801074935
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
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
  NetworkContext {
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3171690124801074935
  Name: "Geo"
  Transform {
    Location {
      X: 1610.42456
      Y: -1079.94507
      Z: -55.2226562
    }
    Rotation {
      Yaw: 3.04312611
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10736656283205010988
  ChildIds: 6481710699622807233
  ChildIds: 11159405536304975665
  ChildIds: 2272354035875680288
  ChildIds: 425253390078445412
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 425253390078445412
  Name: "Urban Interior - Oil Lantern 02 - Base 01"
  Transform {
    Location {
      Z: -14.4059334
    }
    Rotation {
      Yaw: 90
      Roll: 180
    }
    Scale {
      X: 1.5
      Y: 1.5
      Z: 0.284534216
    }
  }
  ParentId: 3171690124801074935
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
  CoreMesh {
    MeshAsset {
      Id: 1227539998602669490
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2272354035875680288
  Name: "Point Light"
  Transform {
    Location {
      Z: 18.9170151
    }
    Rotation {
      Yaw: 5.46415031e-05
    }
    Scale {
      X: 1.5
      Y: 1.5
      Z: 1.5
    }
  }
  ParentId: 3171690124801074935
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
  Light {
    Intensity: 10.3527565
    Color {
      R: 1
      G: 1
      B: 1
      A: 1
    }
    VolumetricIntensity: 5
    TeamSettings {
    }
    Light {
      UseTemperature: true
      Temperature: 1628.47278
      LocalLight {
        AttenuationRadius: 500
        PointLight {
          SourceRadius: 2
          SoftSourceRadius: 6
          FallOffExponent: 8
          UseFallOffExponent: true
        }
      }
      MaxDrawDistance: 5000
      MaxDistanceFadeRange: 1000
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11159405536304975665
  Name: "Torch Fire VFX"
  Transform {
    Location {
      Z: -7.46086121
    }
    Rotation {
      Yaw: 2.04905627e-05
    }
    Scale {
      X: 0.75
      Y: 0.75
      Z: 0.75
    }
  }
  ParentId: 3171690124801074935
  UnregisteredParameters {
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 13.1137047
    }
    Overrides {
      Name: "bp:Life"
      Float: 0.80192709
    }
    Overrides {
      Name: "bp:Particle Scale Multiplier"
      Float: 0.54014492
    }
    Overrides {
      Name: "bp:Initial Velocity"
      Vector {
        Z: 50
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 705505624071018057
    }
    TeamSettings {
    }
    Vfx {
      AutoPlay: true
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6481710699622807233
  Name: "Urban Interior - Oil Lantern 02 - Base 01"
  Transform {
    Location {
      Z: -17.9574127
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1.5
      Y: 1.5
      Z: 1.5
    }
  }
  ParentId: 3171690124801074935
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
  CoreMesh {
    MeshAsset {
      Id: 1227539998602669490
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 16726267811798604276
  Name: "Geo"
  Transform {
    Location {
      X: 2179.01953
      Y: -419.458496
      Z: -41.5852051
    }
    Rotation {
      Yaw: -44.9473572
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10736656283205010988
  ChildIds: 7158957844241714514
  ChildIds: 17282191577472253939
  ChildIds: 2477488502542729600
  ChildIds: 14668874717056670658
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14668874717056670658
  Name: "Urban Interior - Oil Lantern 02 - Base 01"
  Transform {
    Location {
      Z: -14.4059334
    }
    Rotation {
      Yaw: 90
      Roll: 180
    }
    Scale {
      X: 1.5
      Y: 1.5
      Z: 0.284534216
    }
  }
  ParentId: 16726267811798604276
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
  CoreMesh {
    MeshAsset {
      Id: 1227539998602669490
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2477488502542729600
  Name: "Point Light"
  Transform {
    Location {
      Z: 18.9170151
    }
    Rotation {
      Yaw: 5.46415031e-05
    }
    Scale {
      X: 1.5
      Y: 1.5
      Z: 1.5
    }
  }
  ParentId: 16726267811798604276
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
  Light {
    Intensity: 10.3527565
    Color {
      R: 1
      G: 1
      B: 1
      A: 1
    }
    VolumetricIntensity: 5
    TeamSettings {
    }
    Light {
      UseTemperature: true
      Temperature: 1628.47278
      LocalLight {
        AttenuationRadius: 500
        PointLight {
          SourceRadius: 2
          SoftSourceRadius: 6
          FallOffExponent: 8
          UseFallOffExponent: true
        }
      }
      MaxDrawDistance: 5000
      MaxDistanceFadeRange: 1000
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17282191577472253939
  Name: "Torch Fire VFX"
  Transform {
    Location {
      Z: -7.46086121
    }
    Rotation {
      Yaw: 2.04905627e-05
    }
    Scale {
      X: 0.75
      Y: 0.75
      Z: 0.75
    }
  }
  ParentId: 16726267811798604276
  UnregisteredParameters {
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 13.1137047
    }
    Overrides {
      Name: "bp:Life"
      Float: 0.80192709
    }
    Overrides {
      Name: "bp:Particle Scale Multiplier"
      Float: 0.54014492
    }
    Overrides {
      Name: "bp:Initial Velocity"
      Vector {
        Z: 50
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 705505624071018057
    }
    TeamSettings {
    }
    Vfx {
      AutoPlay: true
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 7158957844241714514
  Name: "Urban Interior - Oil Lantern 02 - Base 01"
  Transform {
    Location {
      Z: -17.9574127
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1.5
      Y: 1.5
      Z: 1.5
    }
  }
  ParentId: 16726267811798604276
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
  CoreMesh {
    MeshAsset {
      Id: 1227539998602669490
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11817202782761572635
  Name: "Geo"
  Transform {
    Location {
      X: 2069.67773
      Y: 497.705078
      Z: -40.6879883
    }
    Rotation {
      Pitch: -0.778564453
      Yaw: 22.8774967
      Roll: -3.15670776
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 10736656283205010988
  ChildIds: 6813178675131463088
  ChildIds: 12043977332733482945
  ChildIds: 9933036702844393470
  ChildIds: 12792235614108776227
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12792235614108776227
  Name: "Urban Interior - Oil Lantern 02 - Base 01"
  Transform {
    Location {
      Z: -14.4059334
    }
    Rotation {
      Yaw: 90
      Roll: 180
    }
    Scale {
      X: 1.5
      Y: 1.5
      Z: 0.284534216
    }
  }
  ParentId: 11817202782761572635
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
  CoreMesh {
    MeshAsset {
      Id: 1227539998602669490
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9933036702844393470
  Name: "Point Light"
  Transform {
    Location {
      Z: 18.9170151
    }
    Rotation {
      Yaw: 5.46415031e-05
    }
    Scale {
      X: 1.5
      Y: 1.5
      Z: 1.5
    }
  }
  ParentId: 11817202782761572635
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
  Light {
    Intensity: 10.3527565
    Color {
      R: 1
      G: 1
      B: 1
      A: 1
    }
    VolumetricIntensity: 5
    TeamSettings {
    }
    Light {
      UseTemperature: true
      Temperature: 1628.47278
      LocalLight {
        AttenuationRadius: 500
        PointLight {
          SourceRadius: 2
          SoftSourceRadius: 6
          FallOffExponent: 8
          UseFallOffExponent: true
        }
      }
      MaxDrawDistance: 5000
      MaxDistanceFadeRange: 1000
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12043977332733482945
  Name: "Torch Fire VFX"
  Transform {
    Location {
      Z: -7.46086121
    }
    Rotation {
      Yaw: 2.04905627e-05
    }
    Scale {
      X: 0.75
      Y: 0.75
      Z: 0.75
    }
  }
  ParentId: 11817202782761572635
  UnregisteredParameters {
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 13.1137047
    }
    Overrides {
      Name: "bp:Life"
      Float: 0.80192709
    }
    Overrides {
      Name: "bp:Particle Scale Multiplier"
      Float: 0.54014492
    }
    Overrides {
      Name: "bp:Initial Velocity"
      Vector {
        Z: 50
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Blueprint {
    BlueprintAsset {
      Id: 705505624071018057
    }
    TeamSettings {
    }
    Vfx {
      AutoPlay: true
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6813178675131463088
  Name: "Urban Interior - Oil Lantern 02 - Base 01"
  Transform {
    Location {
      Z: -17.9574127
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 1.5
      Y: 1.5
      Z: 1.5
    }
  }
  ParentId: 11817202782761572635
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
  CoreMesh {
    MeshAsset {
      Id: 1227539998602669490
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3978672501796615017
  Name: "DesertIsland"
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
  ParentId: 14592900131835349158
  ChildIds: 17872065178085272721
  ChildIds: 276426636095154814
  ChildIds: 5576106819183588476
  ChildIds: 15086921634544753310
  ChildIds: 14230598138946358933
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14230598138946358933
  Name: "Minigam Fishing System"
  Transform {
    Location {
      X: -5826.88428
      Y: -774.185
      Z: 1542.91833
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3978672501796615017
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
    FilePartitionName: "Minigam Fishing System"
  }
  InstanceHistory {
    SelfId: 14230598138946358933
    SubobjectId: 13324258260031528677
    InstanceId: 11638937993570712534
    TemplateId: 15898429781010274466
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15086921634544753310
  Name: "Palm Tree"
  Transform {
    Location {
      X: -5673.80078
      Y: -1423.85742
      Z: 1546.12439
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3978672501796615017
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 16943467546914236483
      value {
        Overrides {
          Name: "Name"
          String: "Palm Tree"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -4556.57129
            Y: -717.820312
            Z: 1734.51245
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -136.486984
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
      Id: 11703909996055005150
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5576106819183588476
  Name: "Palm Tree"
  Transform {
    Location {
      X: -7048.06104
      Y: 1638.07935
      Z: 1718.11487
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3978672501796615017
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 16943467546914236483
      value {
        Overrides {
          Name: "Name"
          String: "Palm Tree"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -6419.97607
            Y: -2010.52417
            Z: 1546.12439
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -101.250076
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
      Id: 11703909996055005150
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 276426636095154814
  Name: "Palm Tree"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3978672501796615017
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 16943467546914236483
      value {
        Overrides {
          Name: "Name"
          String: "Palm Tree"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -7778.96875
            Y: 971.483704
            Z: 1718.11487
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
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
      Id: 8528089699025246121
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17872065178085272721
  Name: "Palm Tree"
  Transform {
    Location {
      X: -7163.96875
      Y: 1558.15039
      Z: 1718.11487
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3978672501796615017
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 16943467546914236483
      value {
        Overrides {
          Name: "Name"
          String: "Palm Tree"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -5982.06787
            Y: 978.128845
            Z: 1622.61511
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 103.942551
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
      Id: 8528089699025246121
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
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
  ChildIds: 8197359199373036066
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8197359199373036066
  Name: "Reseller"
  Transform {
    Location {
      X: 1951.15198
      Y: 850.055237
      Z: -86.3327637
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3875291460084591420
  ChildIds: 9157258234213634656
  ChildIds: 2300040219900579890
  ChildIds: 7181786994297321306
  ChildIds: 17227017780368207427
  ChildIds: 10803171802007786672
  ChildIds: 15442131491928269169
  ChildIds: 2240911232524133777
  ChildIds: 3585515861386690597
  ChildIds: 17529096909415119069
  ChildIds: 6944656822972435958
  ChildIds: 8194481054008934357
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8194481054008934357
  Name: "Small Open Crate"
  Transform {
    Location {
      X: 221.818848
      Y: 185.316467
      Z: 74.8483887
    }
    Rotation {
      Yaw: 22.1126633
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8197359199373036066
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
  CoreMesh {
    MeshAsset {
      Id: 16956733454952297098
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6944656822972435958
  Name: "Small Crate Lid"
  Transform {
    Location {
      X: 220.948486
      Y: 186.691132
      Z: 134.581543
    }
    Rotation {
      Yaw: 22.1126633
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8197359199373036066
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
  CoreMesh {
    MeshAsset {
      Id: 6201988555087709525
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17529096909415119069
  Name: "Small Open Crate"
  Transform {
    Location {
      X: 278.301636
      Y: 137.797852
      Z: 11.3007812
    }
    Rotation {
      Yaw: -29.1619244
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8197359199373036066
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
  CoreMesh {
    MeshAsset {
      Id: 16956733454952297098
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3585515861386690597
  Name: "Small Crate Lid"
  Transform {
    Location {
      X: 278.82959
      Y: 139.336792
      Z: 71.0339355
    }
    Rotation {
      Yaw: -29.1619244
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8197359199373036066
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
  CoreMesh {
    MeshAsset {
      Id: 6201988555087709525
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2240911232524133777
  Name: "Small Crate Lid"
  Transform {
    Location {
      X: 167.531494
      Y: 247.054901
      Z: 71.0339355
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8197359199373036066
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
  CoreMesh {
    MeshAsset {
      Id: 6201988555087709525
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15442131491928269169
  Name: "Small Open Crate"
  Transform {
    Location {
      X: 167.82019
      Y: 245.453674
      Z: 11.3007812
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8197359199373036066
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
  CoreMesh {
    MeshAsset {
      Id: 16956733454952297098
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10803171802007786672
  Name: "Simple Crate 150cm"
  Transform {
    Location {
      X: -339.505737
      Y: -149.533203
      Z: 8.61523438
    }
    Rotation {
      Yaw: 39.4054337
    }
    Scale {
      X: 0.529413462
      Y: 0.529413462
      Z: 0.529413462
    }
  }
  ParentId: 8197359199373036066
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
  CoreMesh {
    MeshAsset {
      Id: 5460868543701694927
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17227017780368207427
  Name: "Simple Crate 150cm"
  Transform {
    Location {
      X: -400.834595
      Y: -341.544
      Z: 144.292725
    }
    Rotation {
      Yaw: 40.9152
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8197359199373036066
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
  CoreMesh {
    MeshAsset {
      Id: 5460868543701694927
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 7181786994297321306
  Name: "Simple Crate 150cm"
  Transform {
    Location {
      X: -408.545044
      Y: -340.841675
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8197359199373036066
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
  CoreMesh {
    MeshAsset {
      Id: 5460868543701694927
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2300040219900579890
  Name: "Geo"
  Transform {
    Location {
      X: -8.91162109
      Y: -177.795471
      Z: 9.45678711
    }
    Rotation {
      Yaw: -135.626053
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8197359199373036066
  ChildIds: 1536303141730303723
  ChildIds: 12627295301410939329
  ChildIds: 8030116816206123349
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8030116816206123349
  Name: "Outside"
  Transform {
    Location {
      Z: 18.6550903
    }
    Rotation {
      Yaw: 6.83018516e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2300040219900579890
  ChildIds: 822572699868426191
  ChildIds: 5144842904621918015
  ChildIds: 6722243518013764393
  ChildIds: 15773422160490649851
  ChildIds: 1229908228690532312
  ChildIds: 5009317738536403125
  ChildIds: 4960873000859568248
  ChildIds: 3470015367482547035
  ChildIds: 6962366670725635990
  ChildIds: 14226406442902539242
  ChildIds: 15170920075069966863
  ChildIds: 7136824782880068552
  ChildIds: 17242039189096281326
  ChildIds: 15692756514635757484
  ChildIds: 11581107045859545232
  ChildIds: 7304293803994626863
  ChildIds: 500802718210414376
  ChildIds: 10233143860123776913
  ChildIds: 17003307954997189520
  ChildIds: 13113988301839476140
  ChildIds: 9388452537307157335
  ChildIds: 15210365771551834757
  ChildIds: 14456488270358527548
  ChildIds: 14187732462952957244
  ChildIds: 3108242455245053340
  ChildIds: 1420076166746735911
  ChildIds: 7737555484367537155
  ChildIds: 6325057369002640441
  ChildIds: 14689872023927019360
  ChildIds: 18156672302752373192
  ChildIds: 14990289866552254903
  ChildIds: 17142955794875494639
  ChildIds: 5773105486022904625
  ChildIds: 10098262241006275730
  ChildIds: 4284559108632643752
  ChildIds: 17465061344742064042
  ChildIds: 3896050429691669288
  ChildIds: 1440136299017735194
  ChildIds: 17746571059456734588
  ChildIds: 950294996944650980
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 950294996944650980
  Name: "Spring"
  Transform {
    Location {
      X: -203.454712
      Y: 74.7181396
      Z: 56.4016609
    }
    Rotation {
      Pitch: -44.9999771
      Yaw: -2.41483554e-06
      Roll: 89.9999695
    }
    Scale {
      X: 1.09879434
      Y: 1.09879434
      Z: 1.09879434
    }
  }
  ParentId: 8030116816206123349
  ChildIds: 2774615444241808395
  ChildIds: 7383463472632591025
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 7383463472632591025
  Name: "Trim - Curve 90\302\260 - 16m Radius"
  Transform {
    Location {
      X: 26.2521305
      Y: -25.1186447
      Z: -5.65060964e-06
    }
    Rotation {
      Yaw: -179.999985
    }
    Scale {
      X: 0.0330671668
      Y: 0.0330671668
      Z: 0.186433092
    }
  }
  ParentId: 950294996944650980
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 17061008485545637567
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2774615444241808395
  Name: "Trim - Curve 90\302\260 - 16m Radius"
  Transform {
    Location {
      X: -26.2521305
      Y: 25.1186447
      Z: 5.65060964e-06
    }
    Rotation {
    }
    Scale {
      X: 0.0330671668
      Y: 0.0330671668
      Z: 0.186433092
    }
  }
  ParentId: 950294996944650980
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 17061008485545637567
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17746571059456734588
  Name: "Spring"
  Transform {
    Location {
      X: 207.897095
      Y: -75.3686523
      Z: 58.6896553
    }
    Rotation {
      Pitch: -44.9999771
      Yaw: -2.41483554e-06
      Roll: 89.9999695
    }
    Scale {
      X: 1.1814158
      Y: 1.1814158
      Z: 1.1814158
    }
  }
  ParentId: 8030116816206123349
  ChildIds: 2854993771505044310
  ChildIds: 4238678266400049552
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 4238678266400049552
  Name: "Trim - Curve 90\302\260 - 16m Radius"
  Transform {
    Location {
      X: 26.2521362
      Y: -25.1186523
    }
    Rotation {
      Yaw: -179.999985
    }
    Scale {
      X: 0.0330671668
      Y: 0.0330671668
      Z: 0.186433092
    }
  }
  ParentId: 17746571059456734588
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 17061008485545637567
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2854993771505044310
  Name: "Trim - Curve 90\302\260 - 16m Radius"
  Transform {
    Location {
      X: -26.2521362
      Y: 25.1186523
    }
    Rotation {
    }
    Scale {
      X: 0.0330671668
      Y: 0.0330671668
      Z: 0.186433092
    }
  }
  ParentId: 17746571059456734588
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 17061008485545637567
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1440136299017735194
  Name: "Spring"
  Transform {
    Location {
      X: 207.897095
      Y: 74.7181396
      Z: 58.6896553
    }
    Rotation {
      Pitch: -44.9999733
      Yaw: -2.41483531e-06
      Roll: 89.9999771
    }
    Scale {
      X: 1.1814158
      Y: 1.1814158
      Z: 1.1814158
    }
  }
  ParentId: 8030116816206123349
  ChildIds: 5144397783866355857
  ChildIds: 840343787620237185
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 840343787620237185
  Name: "Trim - Curve 90\302\260 - 16m Radius"
  Transform {
    Location {
      X: 26.2521362
      Y: -25.1186523
    }
    Rotation {
      Yaw: -179.999985
    }
    Scale {
      X: 0.0330671668
      Y: 0.0330671668
      Z: 0.186433092
    }
  }
  ParentId: 1440136299017735194
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 17061008485545637567
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5144397783866355857
  Name: "Trim - Curve 90\302\260 - 16m Radius"
  Transform {
    Location {
      X: -26.2521362
      Y: 25.1186523
    }
    Rotation {
    }
    Scale {
      X: 0.0330671668
      Y: 0.0330671668
      Z: 0.186433092
    }
  }
  ParentId: 1440136299017735194
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 17061008485545637567
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3896050429691669288
  Name: "Cylinder"
  Transform {
    Location {
      X: 133.175781
      Z: 86.4205627
    }
    Rotation {
      Pitch: 55.6243057
    }
    Scale {
      X: 0.0799998417
      Y: 0.08
      Z: 1.65033221
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17465061344742064042
  Name: "Cylinder"
  Transform {
    Location {
      X: 163.807861
      Y: 0.000122070312
      Z: 60.1528816
    }
    Rotation {
      Yaw: -89.9998932
      Roll: -179.999954
    }
    Scale {
      X: 0.250469297
      Y: 0.250470042
      Z: 0.232198387
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 4284559108632643752
  Name: "Steering"
  Transform {
    Location {
      X: 133.244507
      Y: -51.8562
      Z: 35.8243637
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8030116816206123349
  ChildIds: 9625643862903186628
  ChildIds: 22792703770621759
  ChildIds: 12103680542971705168
  ChildIds: 13681070511744412355
  ChildIds: 8848378930153159062
  ChildIds: 5502784025467700453
  ChildIds: 17751644863736854662
  ChildIds: 7903351615563241656
  ChildIds: 3298251869798175794
  ChildIds: 10922344856161084653
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10922344856161084653
  Name: "Sci-fi Gear Small 02"
  Transform {
    Location {
      X: -126.430412
      Y: 50.199585
      Z: 127.53154
    }
    Rotation {
      Pitch: 16.495
      Roll: -90
    }
    Scale {
      X: 0.392803907
      Y: 0.392803907
      Z: 0.392803907
    }
  }
  ParentId: 4284559108632643752
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 5084347846093468164
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3298251869798175794
  Name: "Cylinder"
  Transform {
    Location {
      X: -114.877579
      Y: 50.5491943
      Z: 88.9785
    }
    Rotation {
      Pitch: 16.4950829
    }
    Scale {
      X: 0.053565681
      Y: 0.0535656661
      Z: 0.833146
    }
  }
  ParentId: 4284559108632643752
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 7903351615563241656
  Name: "Cylinder"
  Transform {
    Location {
      X: -128.108063
      Y: 0.127197266
      Z: 149.304123
    }
    Rotation {
      Pitch: 74.076004
      Yaw: 180
      Roll: 89.8672791
    }
    Scale {
      X: 0.0300695021
      Y: 0.0493947454
      Z: 0.448131442
    }
  }
  ParentId: 4284559108632643752
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2406187765220985106
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.663541615
        G: 0.0516687259
        B: 0.0480831899
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17751644863736854662
  Name: "Ring"
  Transform {
    Location {
      X: -128.759064
      Y: 0.127197266
      Z: 149.650604
    }
    Rotation {
      Pitch: 16.4950905
    }
    Scale {
      X: 0.488104254
      Y: 0.488104254
      Z: 0.488104254
    }
  }
  ParentId: 4284559108632643752
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2406187765220985106
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.663541615
        G: 0.0516687259
        B: 0.0480831899
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 778452043913102112
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5502784025467700453
  Name: "Cylinder"
  Transform {
    Location {
      X: -128.108063
      Y: 0.127197266
      Z: 149.304123
    }
    Rotation {
      Pitch: 74.0773697
      Yaw: 180
      Roll: 180
    }
    Scale {
      X: 0.0300695021
      Y: 0.0493947454
      Z: 0.448131442
    }
  }
  ParentId: 4284559108632643752
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 2406187765220985106
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.663541615
        G: 0.0516687259
        B: 0.0480831899
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8848378930153159062
  Name: "Cylinder"
  Transform {
    Location {
      X: -124.020584
      Y: 0.127197266
      Z: 138.857193
    }
    Rotation {
      Pitch: 16.4950829
    }
    Scale {
      X: 0.140727609
      Y: 0.140727326
      Z: 0.161101
    }
  }
  ParentId: 4284559108632643752
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13681070511744412355
  Name: "Cylinder"
  Transform {
    Location {
      X: -104.395935
      Y: 0.127197266
      Z: 72.695694
    }
    Rotation {
      Pitch: 16.4950905
    }
    Scale {
      X: 0.08
      Y: 0.08
      Z: 1.55537164
    }
  }
  ParentId: 4284559108632643752
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12103680542971705168
  Name: "Cylinder"
  Transform {
    Location {
      X: -3.57980347
      Y: 0.127197266
      Z: 2.67028809e-05
    }
    Rotation {
      Pitch: 90
      Yaw: -179.366989
      Roll: -179.366974
    }
    Scale {
      X: 0.0999999568
      Y: 0.0999998152
      Z: 1.47647262
    }
  }
  ParentId: 4284559108632643752
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 22792703770621759
  Name: "Cylinder"
  Transform {
    Location {
      X: -86.3276062
      Y: 0.30291748
    }
    Rotation {
      Yaw: -90
      Roll: -179.999985
    }
    Scale {
      X: 0.250469297
      Y: 0.250470042
      Z: 0.232198387
    }
  }
  ParentId: 4284559108632643752
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9625643862903186628
  Name: "Cylinder"
  Transform {
    Location {
      X: 72.5997467
      Y: -0.302978516
      Z: 1.14440918e-05
    }
    Rotation {
      Pitch: 90
      Roll: -90
    }
    Scale {
      X: 0.250469297
      Y: 0.250470042
      Z: 0.232198387
    }
  }
  ParentId: 4284559108632643752
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10098262241006275730
  Name: "Urban Pipe Straight"
  Transform {
    Location {
      X: 189.869385
      Z: 184.435989
    }
    Rotation {
    }
    Scale {
      X: 0.669635832
      Y: 0.669635832
      Z: 0.669635832
    }
  }
  ParentId: 8030116816206123349
  ChildIds: 15299813284724987652
  ChildIds: 595003461814214806
  ChildIds: 15066255256940238073
  ChildIds: 11003504514344723189
  ChildIds: 5013464978045105539
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8965609622990320946
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 14.5819283
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 15897705887741699672
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5013464978045105539
  Name: "Sphere"
  Transform {
    Location {
      Z: 67.4469833
    }
    Rotation {
    }
    Scale {
      X: 0.109426737
      Y: 0.109426737
      Z: 0.109426737
    }
  }
  ParentId: 10098262241006275730
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 7672894170880533820
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11003504514344723189
  Name: "Cone - Concave"
  Transform {
    Location {
      Z: 56.9459152
    }
    Rotation {
    }
    Scale {
      X: 0.281828761
      Y: 0.281828761
      Z: 0.291600794
    }
  }
  ParentId: 10098262241006275730
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16093619303051529766
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15066255256940238073
  Name: "Urban Pipe Flange 01"
  Transform {
    Location {
      X: -1.17691443e-05
      Z: 17.4789677
    }
    Rotation {
      Pitch: 180
    }
    Scale {
      X: 0.546468496
      Y: 0.546468496
      Z: 0.546468496
    }
  }
  ParentId: 10098262241006275730
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 18393437648231545508
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 595003461814214806
  Name: "Ring"
  Transform {
    Location {
      Z: 26.6222038
    }
    Rotation {
    }
    Scale {
      X: 0.258236378
      Y: 0.258236378
      Z: 0.297759056
    }
  }
  ParentId: 10098262241006275730
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 6214301894479469588
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15299813284724987652
  Name: "Urban Pipe Flange 01"
  Transform {
    Location {
      Z: 56.9184113
    }
    Rotation {
      Pitch: 180
    }
    Scale {
      X: 0.546468496
      Y: 0.546468496
      Z: 0.546468496
    }
  }
  ParentId: 10098262241006275730
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 18393437648231545508
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5773105486022904625
  Name: "Urban Pipe Straight"
  Transform {
    Location {
      X: 122.582642
      Z: 174.774338
    }
    Rotation {
    }
    Scale {
      X: 1.29650795
      Y: 1.29650795
      Z: 1.29650795
    }
  }
  ParentId: 8030116816206123349
  ChildIds: 8148079063123971827
  ChildIds: 15379352755789452396
  ChildIds: 4767877359623818225
  ChildIds: 12665357213820862155
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8965609622990320946
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 14.5819283
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 15897705887741699672
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12665357213820862155
  Name: "Urban Pipe Straight - 03 (Prop)"
  Transform {
    Location {
      Y: 16.5275974
      Z: 50.6224785
    }
    Rotation {
      Pitch: 90
      Roll: -90
    }
    Scale {
      X: 0.139618859
      Y: 0.139618859
      Z: 0.139618859
    }
  }
  ParentId: 5773105486022904625
  ChildIds: 15229793361869738012
  ChildIds: 13099800488400679359
  ChildIds: 5685610862668566138
  ChildIds: 8627425932480054974
  ChildIds: 5083589787500219765
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5083589787500219765
  Name: "Sphere"
  Transform {
    Location {
      X: -9.16435909
      Y: 3.2927656e-07
      Z: -0.584671378
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: -90
      Roll: 89.9999847
    }
    Scale {
      X: 0.136790797
      Y: 0.136790797
      Z: 0.136790797
    }
  }
  ParentId: 12665357213820862155
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 7672894170880533820
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8627425932480054974
  Name: "Cone - Concave"
  Transform {
    Location {
      X: -25.1633415
      Y: 1.31710624e-06
      Z: -0.584674
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: -90
      Roll: 89.9999847
    }
    Scale {
      X: 0.352304935
      Y: 0.352304935
      Z: 0.364520699
    }
  }
  ParentId: 12665357213820862155
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16093619303051529766
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5685610862668566138
  Name: "Urban Pipe Elbow 01"
  Transform {
    Location {
      X: -103.719009
      Z: -3.85513231e-05
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12665357213820862155
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 5381367210591412322
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13099800488400679359
  Name: "Urban Pipe Cap 03"
  Transform {
    Location {
      X: -35.0479126
      Y: 1.31710624e-06
      Z: -1.05368499e-05
    }
    Rotation {
      Pitch: -90
      Yaw: -0.00991821289
      Roll: 0.00992305
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12665357213820862155
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 12632251234297570874
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15229793361869738012
  Name: "Urban Pipe Straight"
  Transform {
    Location {
      X: -109.999985
    }
    Rotation {
      Pitch: -90
      Roll: 5.77877763e-05
    }
    Scale {
      X: 1
      Y: 1.00000024
      Z: 1.61078703
    }
  }
  ParentId: 12665357213820862155
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15897705887741699672
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 4767877359623818225
  Name: "Urban Pipe Flange 01"
  Transform {
    Location {
      X: -1.17691443e-05
      Z: 17.4789677
    }
    Rotation {
      Pitch: 180
    }
    Scale {
      X: 0.546468496
      Y: 0.546468496
      Z: 0.546468496
    }
  }
  ParentId: 5773105486022904625
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 18393437648231545508
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15379352755789452396
  Name: "Ring"
  Transform {
    Location {
      Z: 26.6222038
    }
    Rotation {
    }
    Scale {
      X: 0.258236378
      Y: 0.258236378
      Z: 0.297759056
    }
  }
  ParentId: 5773105486022904625
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 6214301894479469588
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8148079063123971827
  Name: "Urban Pipe Flange 01"
  Transform {
    Location {
      Z: 49.3168182
    }
    Rotation {
    }
    Scale {
      X: 0.546468496
      Y: 0.546468496
      Z: 0.546468496
    }
  }
  ParentId: 5773105486022904625
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 18393437648231545508
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17142955794875494639
  Name: "Spring"
  Transform {
    Location {
      X: -203.454712
      Y: -75.3686523
      Z: 56.4016609
    }
    Rotation {
      Pitch: -44.9999771
      Yaw: 4.82967152e-06
      Roll: 89.9999313
    }
    Scale {
      X: 1.09879434
      Y: 1.09879434
      Z: 1.09879434
    }
  }
  ParentId: 8030116816206123349
  ChildIds: 3353887002533889492
  ChildIds: 14984809962151512968
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14984809962151512968
  Name: "Trim - Curve 90\302\260 - 16m Radius"
  Transform {
    Location {
      X: 26.2521362
      Y: -25.1186523
    }
    Rotation {
      Yaw: -179.999985
    }
    Scale {
      X: 0.0330671668
      Y: 0.0330671668
      Z: 0.186433092
    }
  }
  ParentId: 17142955794875494639
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 17061008485545637567
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3353887002533889492
  Name: "Trim - Curve 90\302\260 - 16m Radius"
  Transform {
    Location {
      X: -26.2521362
      Y: 25.1186523
    }
    Rotation {
    }
    Scale {
      X: 0.0330671668
      Y: 0.0330671668
      Z: 0.186433092
    }
  }
  ParentId: 17142955794875494639
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 17061008485545637567
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14990289866552254903
  Name: "Step"
  Transform {
    Location {
      X: -66.3746338
      Y: -92.6722412
      Z: 56.0250206
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8030116816206123349
  ChildIds: 1835524051365383168
  ChildIds: 6227443643785035854
  ChildIds: 12426989502339555951
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12426989502339555951
  Name: "Frame End - Neon Double"
  Transform {
    Location {
      X: 55.8384323
      Y: 13.5994873
      Z: 3.364151
    }
    Rotation {
      Yaw: 179.536346
    }
    Scale {
      X: 0.999999881
      Y: 1.42360497
      Z: 1.36308742
    }
  }
  ParentId: 14990289866552254903
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font_Neon:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Font_Neon:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 1463036384152246880
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6227443643785035854
  Name: "Cube - Arched"
  Transform {
    Location {
      X: 7.27112579
      Y: -27.1989746
    }
    Rotation {
      Roll: -89.9999924
    }
    Scale {
      X: 1.48650312
      Y: 0.066
      Z: 0.120940812
    }
  }
  ParentId: 14990289866552254903
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7331698549137569392
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.685696363
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.163599208
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 18427021604278916103
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1835524051365383168
  Name: "Frame End - Neon Double"
  Transform {
    Location {
      X: -63.1095581
      Y: 13.5994873
      Z: 3.364151
    }
    Rotation {
      Yaw: 179.536346
    }
    Scale {
      X: 0.999999881
      Y: 1.42360497
      Z: 1.36308742
    }
  }
  ParentId: 14990289866552254903
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font_Neon:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Font_Neon:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 1463036384152246880
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 18156672302752373192
  Name: "Step"
  Transform {
    Location {
      X: -49.0036621
      Y: 92.672
      Z: 56.0250206
    }
    Rotation {
      Yaw: -179.999954
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8030116816206123349
  ChildIds: 14997848062392502184
  ChildIds: 14936219650197394709
  ChildIds: 5733917212172486256
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5733917212172486256
  Name: "Frame End - Neon Double"
  Transform {
    Location {
      X: 55.8384323
      Y: 13.5994873
      Z: 3.364151
    }
    Rotation {
      Yaw: 179.536346
    }
    Scale {
      X: 0.999999881
      Y: 1.42360497
      Z: 1.36308742
    }
  }
  ParentId: 18156672302752373192
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font_Neon:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Font_Neon:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 1463036384152246880
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14936219650197394709
  Name: "Cube - Arched"
  Transform {
    Location {
      X: 7.27112579
      Y: -27.1989746
    }
    Rotation {
      Roll: -89.9999924
    }
    Scale {
      X: 1.48650312
      Y: 0.066
      Z: 0.120940812
    }
  }
  ParentId: 18156672302752373192
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7331698549137569392
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.685696363
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.163599208
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 18427021604278916103
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14997848062392502184
  Name: "Frame End - Neon Double"
  Transform {
    Location {
      X: -63.1095581
      Y: 13.5994873
      Z: 3.364151
    }
    Rotation {
      Yaw: 179.536346
    }
    Scale {
      X: 0.999999881
      Y: 1.42360497
      Z: 1.36308742
    }
  }
  ParentId: 18156672302752373192
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font_Neon:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Font_Neon:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 1463036384152246880
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14689872023927019360
  Name: "Urban Pipe Elbow 01"
  Transform {
    Location {
      X: 102.768555
      Y: -43.0999756
      Z: 70.6721649
    }
    Rotation {
      Pitch: 90
      Yaw: -174.948837
      Roll: 5.05114746
    }
    Scale {
      X: 0.172
      Y: 0.172
      Z: 0.172
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 5381367210591412322
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6325057369002640441
  Name: "Urban Pipe Straight"
  Transform {
    Location {
      X: 103
      Y: -43.0999756
      Z: 70.6721649
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 0.171999872
      Y: 0.172
      Z: 6.73180389
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 15897705887741699672
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 7737555484367537155
  Name: "Urban Pipe Elbow 01"
  Transform {
    Location {
      X: 102.768555
      Y: 43.0999756
      Z: 70.6721649
    }
    Rotation {
      Pitch: 90
      Yaw: -3.37228656
      Roll: 176.627701
    }
    Scale {
      X: 0.172
      Y: 0.172
      Z: 0.172
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 5381367210591412322
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1420076166746735911
  Name: "Urban Pipe Straight"
  Transform {
    Location {
      X: 103
      Y: 43.0999756
      Z: 70.6721649
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 0.171999872
      Y: 0.172
      Z: 6.73180389
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 15897705887741699672
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3108242455245053340
  Name: "Urban Pipe Elbow 01"
  Transform {
    Location {
      X: -233.5
      Y: 43.0999756
      Z: 70.6721649
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 0.172
      Y: 0.172
      Z: 0.172
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 5381367210591412322
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14187732462952957244
  Name: "Urban Pipe Elbow 01"
  Transform {
    Location {
      X: -233.5
      Y: -43.0999756
      Z: 70.672
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 0.172
      Y: 0.172
      Z: 0.172
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 5381367210591412322
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14456488270358527548
  Name: "Frame Small Straight - Neon 1 Sided Ending"
  Transform {
    Location {
      X: -229.363892
      Y: 12.8569336
      Z: 76.6378326
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1.11845291
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font_Neon:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Font_Neon:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font_Neon:smart"
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 1463036384152246880
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15210365771551834757
  Name: "Frame Small Straight - Neon 1 Sided Ending"
  Transform {
    Location {
      X: -253.812622
      Y: -12.8570557
      Z: 76.638
    }
    Rotation {
      Yaw: -179.999954
    }
    Scale {
      X: 1
      Y: 1
      Z: 1.118
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Font_Neon:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Font_Neon:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Font_Neon:smart"
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 1463036384152246880
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9388452537307157335
  Name: "Urban Pipe Flange 01"
  Transform {
    Location {
      X: -241.544922
      Y: 19.6992188
      Z: 99.6040039
    }
    Rotation {
      Roll: 89.9999542
    }
    Scale {
      X: 0.708500743
      Y: 0.708500743
      Z: 0.708500743
    }
  }
  ParentId: 8030116816206123349
  ChildIds: 15294541178673236805
  ChildIds: 11023489848665792919
  ChildIds: 13276734311073766686
  ChildIds: 10596733327648131817
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 18393437648231545508
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10596733327648131817
  Name: "Ring"
  Transform {
    Location {
      Y: -4.03813647e-06
      Z: -13.2644711
    }
    Rotation {
    }
    Scale {
      X: 0.472554922
      Y: 0.472554922
      Z: 0.544878721
    }
  }
  ParentId: 9388452537307157335
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 6214301894479469588
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13276734311073766686
  Name: "Urban Pipe Straight"
  Transform {
    Location {
      Y: -1.61525459e-05
      Z: -62.9870033
    }
    Rotation {
      Roll: 1.02452814e-05
    }
    Scale {
      X: 1.82993162
      Y: 1.82993162
      Z: 1.37312388
    }
  }
  ParentId: 9388452537307157335
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 8965609622990320946
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 14.5819283
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 15897705887741699672
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11023489848665792919
  Name: "Urban Pipe Flange 01"
  Transform {
    Location {
      X: -2.1536729e-05
      Y: -1.07683645e-05
      Z: -58.2610741
    }
    Rotation {
      Pitch: -2.04905664e-05
      Yaw: -180
      Roll: 179.999954
    }
    Scale {
      X: 0.99999994
      Y: 0.99999994
      Z: 0.99999994
    }
  }
  ParentId: 9388452537307157335
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 18393437648231545508
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15294541178673236805
  Name: "Ring"
  Transform {
    Location {
      Y: -1.07683645e-05
      Z: -41.5296173
    }
    Rotation {
    }
    Scale {
      X: 0.472554922
      Y: 0.472554922
      Z: 0.544878721
    }
  }
  ParentId: 9388452537307157335
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 6214301894479469588
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13113988301839476140
  Name: "Headlight"
  Transform {
    Location {
      X: 190.410767
      Y: 80
      Z: 183.764572
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 0.353256971
      Y: 0.353256971
      Z: 0.353256971
    }
  }
  ParentId: 8030116816206123349
  ChildIds: 9509218315857230353
  ChildIds: 6165690136861611495
  ChildIds: 17328891096119887152
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 8525716773274028240
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17328891096119887152
  Name: "Horn"
  Transform {
    Location {
      X: -24.1892262
    }
    Rotation {
      Pitch: -2.04905664e-05
      Yaw: 89.9999542
      Roll: 89.9999695
    }
    Scale {
      X: 0.740800202
      Y: 0.740800202
      Z: 0.740800202
    }
  }
  ParentId: 13113988301839476140
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 17441575764739754278
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6165690136861611495
  Name: "Lens - Half"
  Transform {
    Location {
      X: 5.39932353e-06
      Z: -68.6590805
    }
    Rotation {
      Pitch: 180
    }
    Scale {
      X: 0.864476681
      Y: 0.864476681
      Z: 0.864476681
    }
  }
  ParentId: 13113988301839476140
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4331532816339933917
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 5
        G: 3.33333349
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16258530429147644632
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9509218315857230353
  Name: "Urban Pipe Flange 02"
  Transform {
    Location {
      X: 5.39932353e-06
      Z: -68.2134857
    }
    Rotation {
    }
    Scale {
      X: 1.93926406
      Y: 1.93926442
      Z: 7.81427622
    }
  }
  ParentId: 13113988301839476140
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 1527224994251334627
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17003307954997189520
  Name: "Headlight"
  Transform {
    Location {
      X: 190.410767
      Y: -80
      Z: 183.764572
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 0.353256971
      Y: 0.353256971
      Z: 0.353256971
    }
  }
  ParentId: 8030116816206123349
  ChildIds: 13634978870806220399
  ChildIds: 4486832568731669910
  ChildIds: 16233543951056478803
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 8525716773274028240
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 16233543951056478803
  Name: "Horn"
  Transform {
    Location {
      X: -24.1892262
    }
    Rotation {
      Yaw: 90
      Roll: 90
    }
    Scale {
      X: 0.740800202
      Y: 0.740800202
      Z: 0.740800202
    }
  }
  ParentId: 17003307954997189520
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 17441575764739754278
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 4486832568731669910
  Name: "Lens - Half"
  Transform {
    Location {
      X: 5.39932353e-06
      Z: -68.6590805
    }
    Rotation {
      Pitch: 6.83018879e-06
      Yaw: 180
      Roll: 180
    }
    Scale {
      X: 0.864476681
      Y: 0.864476681
      Z: 0.864476681
    }
  }
  ParentId: 17003307954997189520
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 4331532816339933917
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 5
        G: 3.33333349
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 16258530429147644632
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13634978870806220399
  Name: "Urban Pipe Flange 02"
  Transform {
    Location {
      X: 5.39932353e-06
      Z: -68.2134857
    }
    Rotation {
    }
    Scale {
      X: 1.93926406
      Y: 1.93926442
      Z: 7.81427622
    }
  }
  ParentId: 17003307954997189520
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 1527224994251334627
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10233143860123776913
  Name: "Car horn"
  Transform {
    Location {
      X: 52.71521
      Y: -137.197021
      Z: 143.946487
    }
    Rotation {
      Pitch: 88.6296844
      Yaw: -179.999954
      Roll: -179.999954
    }
    Scale {
      X: 0.236942217
      Y: 0.236942217
      Z: 0.236942217
    }
  }
  ParentId: 8030116816206123349
  ChildIds: 2235844856727200431
  ChildIds: 12466744857187859463
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7734760151740531453
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.00828930549
        G: 0.517708302
        B: 0.215383604
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.351319939
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 7672894170880533820
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12466744857187859463
  Name: "Horn"
  Transform {
    Location {
      X: 5.63489266e-05
      Y: 0.409318596
      Z: -88.8010864
    }
    Rotation {
      Pitch: -0.113494873
      Yaw: -0.546508789
      Roll: 66.4792786
    }
    Scale {
      X: 0.554546416
      Y: 0.554546416
      Z: 0.554546416
    }
  }
  ParentId: 10233143860123776913
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 17441575764739754278
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2235844856727200431
  Name: "Cone - Truncated Hollow Concave"
  Transform {
    Location {
      X: -1.1558454
      Z: -215.717026
    }
    Rotation {
    }
    Scale {
      X: 1.21258497
      Y: 1.21258497
      Z: 3.54918742
    }
  }
  ParentId: 10233143860123776913
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 15311550138640852139
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 500802718210414376
  Name: "Ring"
  Transform {
    Location {
      X: 218.736084
      Z: 127.777435
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 1.40011716
      Y: 1.40011728
      Z: 0.514341116
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 778452043913102112
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 7304293803994626863
  Name: "Ring"
  Transform {
    Location {
      X: 93.8093262
      Z: 127.777435
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 1.40011716
      Y: 1.40011728
      Z: 0.514341116
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 778452043913102112
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11581107045859545232
  Name: "Ring"
  Transform {
    Location {
      X: 76.2811279
      Z: 127.777435
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 1.40011728
      Y: 1.40011728
      Z: 1.40011716
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 778452043913102112
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15692756514635757484
  Name: "Ring"
  Transform {
    Location {
      X: 237.981567
      Z: 127.777435
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 1.40011728
      Y: 1.40011728
      Z: 1.40011716
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 778452043913102112
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17242039189096281326
  Name: "Cylinder"
  Transform {
    Location {
      X: 156.497803
      Z: 127.777435
    }
    Rotation {
      Pitch: 90
    }
    Scale {
      X: 1.32850361
      Y: 1.32850337
      Z: 1.56401777
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 7136824782880068552
  Name: "Bottom Plate"
  Transform {
    Location {
      X: -53.0740967
      Z: 79.6071472
    }
    Rotation {
    }
    Scale {
      X: 2.47132039
      Y: 2.37306023
      Z: 0.06
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7331698549137569392
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.755208313
        G: 0.748375475
        B: 0.726510406
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15170920075069966863
  Name: "Pole"
  Transform {
    Location {
      X: -53.9914551
      Y: -0.000122070312
      Z: 159
    }
    Rotation {
      Yaw: -179.999924
    }
    Scale {
      X: 1.03903401
      Y: 1.03903401
      Z: 1.03903401
    }
  }
  ParentId: 8030116816206123349
  ChildIds: 12264944130369193702
  ChildIds: 13256421373802711898
  ChildIds: 14636838825051877073
  ChildIds: 16846821700446729558
  ChildIds: 5779529596589756507
  ChildIds: 11159462398818683463
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11159462398818683463
  Name: "Urban Fence Pole - Gate End"
  Transform {
    Location {
      X: 0.106414728
      Y: -0.078900367
      Z: 103.538101
    }
    Rotation {
      Yaw: -179.999985
      Roll: -89.9999466
    }
    Scale {
      X: 0.25
      Y: 0.25
      Z: 0.205995902
    }
  }
  ParentId: 15170920075069966863
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.623529434
        G: 0.384313762
        B: 0.160784319
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 13828543934035461460
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5779529596589756507
  Name: "Urban Fence Pole - Gate End"
  Transform {
    Location {
      X: 0.106414728
      Y: -0.0788956
      Z: 103.538101
    }
    Rotation {
      Roll: -89.9999542
    }
    Scale {
      X: 0.25
      Y: 0.25
      Z: 0.205995902
    }
  }
  ParentId: 15170920075069966863
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.623529434
        G: 0.384313762
        B: 0.160784319
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 13828543934035461460
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 16846821700446729558
  Name: "Pipe - 90-Degree Long"
  Transform {
    Location {
      X: -0.0531692505
      Y: 97.3599472
      Z: 94.0963
    }
    Rotation {
      Yaw: -89.9999542
    }
    Scale {
      X: 0.0515265912
      Y: 0.0515265912
      Z: 0.0471125729
    }
  }
  ParentId: 15170920075069966863
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15595088918670417532
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14636838825051877073
  Name: "Pipe - 90-Degree Long"
  Transform {
    Location {
      X: -0.0531845093
      Y: -97.2511749
      Z: 94.0963
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 0.0515265912
      Y: 0.0515265912
      Z: 0.0471125729
    }
  }
  ParentId: 15170920075069966863
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15595088918670417532
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13256421373802711898
  Name: "Urban Fence Pole - Gate End"
  Transform {
    Location {
      X: -0.0531792156
      Y: -97.2625656
      Z: -50.3476448
    }
    Rotation {
      Yaw: 2.73207479e-05
    }
    Scale {
      X: 0.259259194
      Y: 0.259259194
      Z: 0.336452
    }
  }
  ParentId: 15170920075069966863
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.623529434
        G: 0.384313762
        B: 0.160784319
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 13828543934035461460
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12264944130369193702
  Name: "Urban Fence Pole - Gate End"
  Transform {
    Location {
      X: -0.0530104898
      Y: 97.3115768
      Z: -50.3476448
    }
    Rotation {
    }
    Scale {
      X: 0.259259194
      Y: 0.259259194
      Z: 0.336452
    }
  }
  ParentId: 15170920075069966863
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.623529434
        G: 0.384313762
        B: 0.160784319
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 13828543934035461460
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14226406442902539242
  Name: "Pole"
  Transform {
    Location {
      X: -167.161743
      Y: -0.000122070312
      Z: 159.944595
    }
    Rotation {
      Yaw: -179.999924
    }
    Scale {
      X: 1.03903401
      Y: 1.03903401
      Z: 1.03903401
    }
  }
  ParentId: 8030116816206123349
  ChildIds: 14253716771619589223
  ChildIds: 2555302528432437112
  ChildIds: 17138564211719908203
  ChildIds: 14515091974631954168
  ChildIds: 5593700291644296622
  ChildIds: 1716595145834396667
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1716595145834396667
  Name: "Urban Fence Pole - Gate End"
  Transform {
    Location {
      X: 0.106414728
      Y: -0.078900367
      Z: 103.538101
    }
    Rotation {
      Yaw: -179.999985
      Roll: -89.9999466
    }
    Scale {
      X: 0.25
      Y: 0.25
      Z: 0.205995902
    }
  }
  ParentId: 14226406442902539242
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.623529434
        G: 0.384313762
        B: 0.160784319
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 13828543934035461460
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5593700291644296622
  Name: "Urban Fence Pole - Gate End"
  Transform {
    Location {
      X: 0.106414728
      Y: -0.0788956
      Z: 103.538101
    }
    Rotation {
      Roll: -89.9999542
    }
    Scale {
      X: 0.25
      Y: 0.25
      Z: 0.205995902
    }
  }
  ParentId: 14226406442902539242
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.623529434
        G: 0.384313762
        B: 0.160784319
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 13828543934035461460
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14515091974631954168
  Name: "Pipe - 90-Degree Long"
  Transform {
    Location {
      X: -0.0531692505
      Y: 97.3599472
      Z: 94.0963
    }
    Rotation {
      Yaw: -89.9999542
    }
    Scale {
      X: 0.0515265912
      Y: 0.0515265912
      Z: 0.0471125729
    }
  }
  ParentId: 14226406442902539242
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15595088918670417532
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17138564211719908203
  Name: "Pipe - 90-Degree Long"
  Transform {
    Location {
      X: -0.0531845093
      Y: -97.2511749
      Z: 94.0963
    }
    Rotation {
      Yaw: 89.9999542
    }
    Scale {
      X: 0.0515265912
      Y: 0.0515265912
      Z: 0.0471125729
    }
  }
  ParentId: 14226406442902539242
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 15595088918670417532
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2555302528432437112
  Name: "Urban Fence Pole - Gate End"
  Transform {
    Location {
      X: -0.0531792156
      Y: -97.2625656
      Z: -50.3476448
    }
    Rotation {
      Yaw: 2.73207479e-05
    }
    Scale {
      X: 0.259259194
      Y: 0.259259194
      Z: 0.336452
    }
  }
  ParentId: 14226406442902539242
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.125
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.623529434
        G: 0.384313762
        B: 0.160784319
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 13828543934035461460
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14253716771619589223
  Name: "Urban Fence Pole - Gate End"
  Transform {
    Location {
      X: -0.0530104898
      Y: 97.3115768
      Z: -50.3476448
    }
    Rotation {
    }
    Scale {
      X: 0.259259194
      Y: 0.259259194
      Z: 0.336452
    }
  }
  ParentId: 14226406442902539242
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.623529434
        G: 0.384313762
        B: 0.160784319
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 13828543934035461460
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6962366670725635990
  Name: "Roof"
  Transform {
    Location {
      X: -126.881226
      Y: -1.58996582
      Z: 280.021912
    }
    Rotation {
      Pitch: 1.67119694
      Yaw: -179.999954
    }
    Scale {
      X: 9.92898369
      Y: 27.0475883
      Z: 1.10140789
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_Trim:id"
      AssetReference {
        Id: 7556079334320139636
      }
    }
    Overrides {
      Name: "ma:Shared_Trim2:id"
      AssetReference {
        Id: 7556079334320139636
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 7556079334320139636
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 7556079334320139636
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.101
        G: 0.101
        B: 0.101
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Trim:utile"
      Float: 0.870676696
    }
    Overrides {
      Name: "ma:Shared_Trim:vtile"
      Float: 0.830068171
    }
    Overrides {
      Name: "ma:Shared_Detail1:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Trim2:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_Trim:smart"
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 10135613355360866567
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3470015367482547035
  Name: "Cube"
  Transform {
    Location {
      X: 63.1439209
      Z: 119.07309
    }
    Rotation {
    }
    Scale {
      X: 0.287562132
      Y: 2.37
      Z: 0.852137566
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10736742004743896517
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.396825194
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 4960873000859568248
  Name: "Cube - Arched"
  Transform {
    Location {
      X: 71.2403564
      Z: 119.193695
    }
    Rotation {
      Pitch: -6.83018879e-06
      Yaw: 89.9999542
      Roll: -89.9999542
    }
    Scale {
      X: 2.37299919
      Y: 0.853578269
      Z: 1.03573334
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 18427021604278916103
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5009317738536403125
  Name: "Arch"
  Transform {
    Location {
      X: 0.918212891
      Y: -112.800049
      Z: 120.65593
    }
    Rotation {
      Yaw: -179.999954
      Roll: -89.9999161
    }
    Scale {
      X: 0.936042428
      Y: 0.595539
      Z: 0.08
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10736742004743896517
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.396825194
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 7078258892319859606
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1229908228690532312
  Name: "Arch"
  Transform {
    Location {
      X: -116.439331
      Y: -112.800049
      Z: 120.65593
    }
    Rotation {
      Yaw: -179.999954
      Roll: -89.9999466
    }
    Scale {
      X: 0.936042428
      Y: 0.595539
      Z: 0.08
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10736742004743896517
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.396825194
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 7078258892319859606
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15773422160490649851
  Name: "Arch"
  Transform {
    Location {
      X: 0.918212891
      Y: 112.800049
      Z: 120.65593
    }
    Rotation {
      Yaw: -179.999954
      Roll: -89.9999466
    }
    Scale {
      X: 0.936042428
      Y: 0.595539
      Z: 0.08
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10736742004743896517
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.396825194
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 7078258892319859606
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6722243518013764393
  Name: "Arch"
  Transform {
    Location {
      X: -191.186157
      Z: 72.5891266
    }
    Rotation {
      Yaw: -89.9999847
    }
    Scale {
      X: 2.39530849
      Y: 0.811004043
      Z: 0.551932812
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10736742004743896517
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.396825194
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 5199824919016904048
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5144842904621918015
  Name: "Arch"
  Transform {
    Location {
      X: -116.439331
      Y: 112.800049
      Z: 120.65593
    }
    Rotation {
      Yaw: -179.999969
      Roll: -89.9999619
    }
    Scale {
      X: 0.936042428
      Y: 0.595539
      Z: 0.08
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10736742004743896517
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.396825194
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 7078258892319859606
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 822572699868426191
  Name: "Cube"
  Transform {
    Location {
      X: -57.9516602
      Z: 102
    }
    Rotation {
    }
    Scale {
      X: 0.217664227
      Y: 2.24160957
      Z: 0.372642845
    }
  }
  ParentId: 8030116816206123349
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10736742004743896517
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.396825194
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12627295301410939329
  Name: "Inside"
  Transform {
    Location {
      Z: 18.6550903
    }
    Rotation {
      Yaw: 6.83018516e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2300040219900579890
  ChildIds: 12841132064768712384
  ChildIds: 13625144586281115450
  ChildIds: 9411686778089378613
  ChildIds: 3615044135923439207
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3615044135923439207
  Name: "Seat"
  Transform {
    Location {
      X: -23.4592285
      Y: 54.5219727
      Z: 139.981094
    }
    Rotation {
      Yaw: -89.9999847
    }
    Scale {
      X: 0.734265804
      Y: 0.734265804
      Z: 0.734265804
    }
  }
  ParentId: 12627295301410939329
  ChildIds: 6412310881617191691
  ChildIds: 17300293026622819468
  ChildIds: 16014120058546309047
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 16014120058546309047
  Name: "Cube"
  Transform {
    Location {
      Y: -45.6123238
      Z: -15.9493876
    }
    Rotation {
      Yaw: -3.40336101e-06
      Roll: 9.50152206
    }
    Scale {
      X: 0.293400496
      Y: 0.119777955
      Z: 0.317342132
    }
  }
  ParentId: 3615044135923439207
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17300293026622819468
  Name: "Mecha - Armor - Thruster Flap 01"
  Transform {
    Location {
      Y: -78.7374649
      Z: 48.8440514
    }
    Rotation {
      Roll: -22.6981506
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3615044135923439207
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 10488053347299699556
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 64
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 64
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.663541615
        G: 0.0516687259
        B: 0.0480831899
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 15891933185750340516
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6412310881617191691
  Name: "Cube - Arched"
  Transform {
    Location {
      X: -2.59762692e-06
      Y: -32.6482277
    }
    Rotation {
      Roll: -90
    }
    Scale {
      X: 0.763504326
      Y: 0.181214452
      Z: 0.411954939
    }
  }
  ParentId: 3615044135923439207
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10488053347299699556
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.79134804
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.754439294
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.663541615
        G: 0.0516687259
        B: 0.0480831899
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 14550730405571121233
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9411686778089378613
  Name: "Seat"
  Transform {
    Location {
      X: -23.4592285
      Y: -54.5224609
      Z: 139.981094
    }
    Rotation {
      Yaw: -89.9999847
    }
    Scale {
      X: 0.734265804
      Y: 0.734265804
      Z: 0.734265804
    }
  }
  ParentId: 12627295301410939329
  ChildIds: 8103554782194514170
  ChildIds: 1621091075308323241
  ChildIds: 6307327771873560991
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6307327771873560991
  Name: "Cube"
  Transform {
    Location {
      Y: -45.6124
      Z: -15.9493876
    }
    Rotation {
      Roll: 9.50149
    }
    Scale {
      X: 0.293400496
      Y: 0.119777955
      Z: 0.317342132
    }
  }
  ParentId: 9411686778089378613
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 12095835209017042614
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1621091075308323241
  Name: "Mecha - Armor - Thruster Flap 01"
  Transform {
    Location {
      Y: -78.7374649
      Z: 48.8440514
    }
    Rotation {
      Roll: -22.6981506
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9411686778089378613
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 10488053347299699556
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 64
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 64
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.663541615
        G: 0.0516687259
        B: 0.0480831899
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 15891933185750340516
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8103554782194514170
  Name: "Cube - Arched"
  Transform {
    Location {
      X: -2.59762692e-06
      Y: -32.6482277
    }
    Rotation {
      Roll: -90
    }
    Scale {
      X: 0.763504326
      Y: 0.181214452
      Z: 0.411954939
    }
  }
  ParentId: 9411686778089378613
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10488053347299699556
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 0.79134804
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.754439294
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.663541615
        G: 0.0516687259
        B: 0.0480831899
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 14550730405571121233
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13625144586281115450
  Name: "Seat"
  Transform {
    Location {
      X: -157.44519
      Z: 139.981
    }
    Rotation {
      Yaw: -89.9999847
    }
    Scale {
      X: 0.734265804
      Y: 0.734265804
      Z: 0.734265804
    }
  }
  ParentId: 12627295301410939329
  ChildIds: 8558253265842919046
  ChildIds: 10722084295370447063
  ChildIds: 17872984028695243264
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17872984028695243264
  Name: "Office Chair Arms"
  Transform {
    Location {
      X: -2.59762692e-06
      Y: -40.7194977
      Z: -82.0381927
    }
    Rotation {
      Yaw: 1.02452814e-05
    }
    Scale {
      X: 1.95584905
      Y: 1.36190474
      Z: 2.43404341
    }
  }
  ParentId: 13625144586281115450
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.663541615
        G: 0.0516687259
        B: 0.0480831899
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 10488053347299699556
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 14
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 14.5819283
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 14725493583493743076
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10722084295370447063
  Name: "Cube - Rounded"
  Transform {
    Location {
      X: -2.59762692e-06
      Y: -23.3275394
      Z: -2.6408515
    }
    Rotation {
      Roll: 90
    }
    Scale {
      X: 1.9279443
      Y: 0.181214422
      Z: 0.616384268
    }
  }
  ParentId: 13625144586281115450
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10488053347299699556
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.663541615
        G: 0.0516687259
        B: 0.0480831899
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1.69937456
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 14550730405571121233
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8558253265842919046
  Name: "Mecha - Armor - Thruster Flap 01"
  Transform {
    Location {
      X: -5.19525383e-06
      Y: -78.7374496
      Z: 48.8440514
    }
    Rotation {
      Roll: -22.6981506
    }
    Scale {
      X: 2.52512407
      Y: 0.99999994
      Z: 1
    }
  }
  ParentId: 13625144586281115450
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Detail1:id"
      AssetReference {
        Id: 10488053347299699556
      }
    }
    Overrides {
      Name: "ma:Shared_Detail1:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_Detail1:utile"
      Float: 64
    }
    Overrides {
      Name: "ma:Shared_Detail1:vtile"
      Float: 64
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.623529434
        G: 0.384313762
        B: 0.160784319
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_Detail1:color"
      Color {
        R: 0.663541615
        G: 0.0516687259
        B: 0.0480831899
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 15891933185750340516
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12841132064768712384
  Name: "Dashboard"
  Transform {
    Location {
      X: 53.5614
      Y: -52.6497803
      Z: 138.017563
    }
    Rotation {
      Pitch: -85.532341
      Yaw: -179.999969
      Roll: 2.09060321e-11
    }
    Scale {
      X: 0.236229658
      Y: 0.251941949
      Z: 0.0984019563
    }
  }
  ParentId: 12627295301410939329
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 3905911149885392865
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1536303141730303723
  Name: "Wheels"
  Transform {
    Location {
      X: 2.24438381
      Y: -5.3510297e-07
      Z: 54.479454
    }
    Rotation {
      Yaw: 6.83018516e-06
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2300040219900579890
  ChildIds: 9800739585588788691
  ChildIds: 18137809644545251471
  ChildIds: 11121838107683651553
  ChildIds: 9859182774909045783
  ChildIds: 188572347896659537
  ChildIds: 4569535322164743641
  ChildIds: 14919725366593758082
  ChildIds: 13439111945420607344
  ChildIds: 16108743828764777634
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 16108743828764777634
  Name: "Cylinder"
  Transform {
    Location {
      X: 203.599823
      Y: 0.000122070312
      Z: 1.14440918e-05
    }
    Rotation {
      Pitch: 90
      Roll: -90
    }
    Scale {
      X: 0.250469297
      Y: 0.250470042
      Z: 0.232198387
    }
  }
  ParentId: 1536303141730303723
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13439111945420607344
  Name: "Cylinder"
  Transform {
    Location {
      X: 203.599945
      Z: 4.95910645e-05
    }
    Rotation {
      Pitch: 90
      Yaw: -4.76364136
      Roll: -94.7636414
    }
    Scale {
      X: 0.1
      Y: 0.1
      Z: 2.63011813
    }
  }
  ParentId: 1536303141730303723
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14919725366593758082
  Name: "Cylinder"
  Transform {
    Location {
      X: -202.477722
    }
    Rotation {
      Pitch: 90
      Yaw: -4.76364136
      Roll: -94.7636414
    }
    Scale {
      X: 0.250469297
      Y: 0.250470042
      Z: 0.232198387
    }
  }
  ParentId: 1536303141730303723
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 4569535322164743641
  Name: "Cylinder"
  Transform {
    Location {
      X: -202.477722
    }
    Rotation {
      Pitch: 90
      Yaw: 7.12502289
      Roll: -82.8749695
    }
    Scale {
      X: 0.1
      Y: 0.1
      Z: 2.63011813
    }
  }
  ParentId: 1536303141730303723
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 188572347896659537
  Name: "Cylinder"
  Transform {
    Location {
      Z: 2.67028809e-05
    }
    Rotation {
      Pitch: 90
      Yaw: -13.2626953
      Roll: -13.2626953
    }
    Scale {
      X: 0.099999696
      Y: 0.100000061
      Z: 3.93909073
    }
  }
  ParentId: 1536303141730303723
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9859182774909045783
  Name: "Front Left"
  Transform {
    Location {
      X: 203.599945
      Y: -130
      Z: 0.815029144
    }
    Rotation {
    }
    Scale {
      X: 0.574525356
      Y: 0.574525356
      Z: 0.574525356
    }
  }
  ParentId: 1536303141730303723
  ChildIds: 8133122652766133699
  ChildIds: 3056233514804438812
  ChildIds: 12282616542682271585
  ChildIds: 8130157536372159401
  ChildIds: 10717740973918464711
  ChildIds: 4400741208219875522
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 4400741208219875522
  Name: "Prism - 3-Sided Convex"
  Transform {
    Location {
      X: 45.4050179
      Y: -7.50927687
      Z: 6.63973697e-06
    }
    Rotation {
      Pitch: -90
      Roll: -90
    }
    Scale {
      X: 0.39391911
      Y: 1
      Z: 0.0510240607
    }
  }
  ParentId: 9859182774909045783
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 9220156565600741768
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10717740973918464711
  Name: "Prism - 3-Sided Convex"
  Transform {
    Location {
      X: -45.4050179
      Y: -7.50925
      Z: -6.63973697e-06
    }
    Rotation {
      Pitch: 90
      Yaw: -4.76364374
      Roll: -94.7636414
    }
    Scale {
      X: 0.39391911
      Y: 1
      Z: 0.0510240607
    }
  }
  ParentId: 9859182774909045783
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 9220156565600741768
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8130157536372159401
  Name: "Pipe"
  Transform {
    Location {
      Y: -4.63496113
    }
    Rotation {
      Pitch: 90
      Yaw: -4.76364374
      Roll: -94.7636414
    }
    Scale {
      X: 1.81721473
      Y: 1.81721473
      Z: 0.13886109
    }
  }
  ParentId: 9859182774909045783
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.623529434
        G: 0.323692679
        B: 0.0435171276
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 5055429345916703247
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12282616542682271585
  Name: "Pipe"
  Transform {
    Location {
      Y: 4.59416676
      Z: -2.65589479e-05
    }
    Rotation {
      Pitch: 90
      Yaw: -4.76364374
      Roll: -94.7636414
    }
    Scale {
      X: 1.95384991
      Y: 1.95384991
      Z: 0.295262665
    }
  }
  ParentId: 9859182774909045783
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 18230361406907615749
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 11.4839163
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.386537939
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 5055429345916703247
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3056233514804438812
  Name: "Urban Pipe Coupling 01"
  Transform {
    Location {
    }
    Rotation {
      Pitch: 90
      Yaw: -4.76364374
      Roll: -94.7636414
    }
    Scale {
      X: 1.2
      Y: 1.2
      Z: 0.387051702
    }
  }
  ParentId: 9859182774909045783
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15376374145827134769
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 14541379120575232735
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8133122652766133699
  Name: "Cylinder"
  Transform {
    Location {
      Y: -7.5092926
    }
    Rotation {
      Pitch: 90
      Yaw: 32.0054
      Roll: -57.9945374
    }
    Scale {
      X: 0.714686394
      Y: 0.714686394
      Z: -0.0902705789
    }
  }
  ParentId: 9859182774909045783
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11121838107683651553
  Name: "Front Right"
  Transform {
    Location {
      X: 203.599945
      Y: 130
      Z: 0.815029144
    }
    Rotation {
    }
    Scale {
      X: 0.574525356
      Y: 0.574525356
      Z: 0.574525356
    }
  }
  ParentId: 1536303141730303723
  ChildIds: 12769475339044180111
  ChildIds: 13599337285797024097
  ChildIds: 12435249601693986981
  ChildIds: 11245394116155484051
  ChildIds: 11426590127352145766
  ChildIds: 10680394062857124374
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10680394062857124374
  Name: "Prism - 3-Sided Convex"
  Transform {
    Location {
      X: -45.4050179
      Y: 7.50925
    }
    Rotation {
      Pitch: -90
      Yaw: -90
      Roll: 180
    }
    Scale {
      X: 0.39391911
      Y: 1
      Z: 0.0510240607
    }
  }
  ParentId: 11121838107683651553
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 9220156565600741768
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11426590127352145766
  Name: "Prism - 3-Sided Convex"
  Transform {
    Location {
      X: 45.4050179
      Y: 7.50927687
      Z: 6.63973697e-06
    }
    Rotation {
      Pitch: 90
      Roll: 90.0000076
    }
    Scale {
      X: 0.39391911
      Y: 1
      Z: 0.0510240607
    }
  }
  ParentId: 11121838107683651553
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 9220156565600741768
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11245394116155484051
  Name: "Pipe"
  Transform {
    Location {
      Y: 4.63485527
    }
    Rotation {
      Pitch: 90
      Roll: 90.0000076
    }
    Scale {
      X: 1.81721473
      Y: 1.81721473
      Z: 0.13886109
    }
  }
  ParentId: 11121838107683651553
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.623529434
        G: 0.323692679
        B: 0.0435171276
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 5055429345916703247
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12435249601693986981
  Name: "Pipe"
  Transform {
    Location {
      Y: -4.59399414
    }
    Rotation {
      Pitch: 90
      Roll: 90.0000076
    }
    Scale {
      X: 1.95384991
      Y: 1.95384991
      Z: 0.295262665
    }
  }
  ParentId: 11121838107683651553
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 18230361406907615749
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 11.4839163
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.386537939
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 5055429345916703247
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13599337285797024097
  Name: "Urban Pipe Coupling 01"
  Transform {
    Location {
    }
    Rotation {
      Pitch: 90
      Roll: 90.0000076
    }
    Scale {
      X: 1.2
      Y: 1.2
      Z: 0.387051702
    }
  }
  ParentId: 11121838107683651553
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15376374145827134769
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 14541379120575232735
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12769475339044180111
  Name: "Cylinder"
  Transform {
    Location {
      Y: 7.50924683
    }
    Rotation {
      Pitch: 90
      Yaw: -35.8376503
      Roll: 54.1622658
    }
    Scale {
      X: 0.714686394
      Y: 0.714686394
      Z: -0.0902705789
    }
  }
  ParentId: 11121838107683651553
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 18137809644545251471
  Name: "Rear Left"
  Transform {
    Location {
      X: -202.477753
      Y: -130
      Z: 0.814979553
    }
    Rotation {
    }
    Scale {
      X: 0.574525356
      Y: 0.574525356
      Z: 0.574525356
    }
  }
  ParentId: 1536303141730303723
  ChildIds: 15282031723850633122
  ChildIds: 7696404951929128751
  ChildIds: 9352150024448456116
  ChildIds: 17852934179476556539
  ChildIds: 5861294382321456985
  ChildIds: 8094323454792246403
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8094323454792246403
  Name: "Prism - 3-Sided Convex"
  Transform {
    Location {
      X: 45.4050713
      Y: -7.50925
      Z: 6.63973697e-06
    }
    Rotation {
      Pitch: -90
      Yaw: 18.4349556
      Roll: -108.434937
    }
    Scale {
      X: 0.39391911
      Y: 1
      Z: 0.0510240607
    }
  }
  ParentId: 18137809644545251471
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 9220156565600741768
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5861294382321456985
  Name: "Prism - 3-Sided Convex"
  Transform {
    Location {
      X: -45.4050713
      Y: -7.50927687
    }
    Rotation {
      Pitch: 90
      Yaw: -14.0362635
      Roll: -104.03627
    }
    Scale {
      X: 0.39391911
      Y: 1
      Z: 0.0510240607
    }
  }
  ParentId: 18137809644545251471
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 9220156565600741768
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17852934179476556539
  Name: "Pipe"
  Transform {
    Location {
      Y: -4.63496113
    }
    Rotation {
      Pitch: 90
      Yaw: -14.0362635
      Roll: -104.03627
    }
    Scale {
      X: 1.81721473
      Y: 1.81721473
      Z: 0.13886109
    }
  }
  ParentId: 18137809644545251471
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 5055429345916703247
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9352150024448456116
  Name: "Pipe"
  Transform {
    Location {
      X: -0.000106235791
      Y: 4.59416676
      Z: -0.000152713954
    }
    Rotation {
      Pitch: 90
      Yaw: -14.0362635
      Roll: -104.03627
    }
    Scale {
      X: 1.95384991
      Y: 1.95384991
      Z: 0.295262665
    }
  }
  ParentId: 18137809644545251471
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 18230361406907615749
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 11.4839163
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.386537939
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 5055429345916703247
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 7696404951929128751
  Name: "Urban Pipe Coupling 01"
  Transform {
    Location {
    }
    Rotation {
      Pitch: 90
      Yaw: -14.0362635
      Roll: -104.03627
    }
    Scale {
      X: 1.2
      Y: 1.2
      Z: 0.387051702
    }
  }
  ParentId: 18137809644545251471
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15376374145827134769
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 14541379120575232735
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15282031723850633122
  Name: "Cylinder"
  Transform {
    Location {
      X: -0.000122070312
      Y: -7.5092926
      Z: 7.62939453e-06
    }
    Rotation {
      Pitch: 90
      Yaw: 38.6597862
      Roll: -51.3401489
    }
    Scale {
      X: 0.714686394
      Y: 0.714686394
      Z: -0.0902705789
    }
  }
  ParentId: 18137809644545251471
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9800739585588788691
  Name: "Rear Right"
  Transform {
    Location {
      X: -202.477722
      Y: 130
      Z: 0.814979553
    }
    Rotation {
    }
    Scale {
      X: 0.574525356
      Y: 0.574525356
      Z: 0.574525356
    }
  }
  ParentId: 1536303141730303723
  ChildIds: 11384399584080756149
  ChildIds: 828496789897538706
  ChildIds: 11012722720767325276
  ChildIds: 6516200743155779318
  ChildIds: 10025470788238854496
  ChildIds: 18444981379452329746
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 18444981379452329746
  Name: "Prism - 3-Sided Convex"
  Transform {
    Location {
      X: 45.4050713
      Y: 7.50927687
      Z: 6.63973697e-06
    }
    Rotation {
      Pitch: 90
      Roll: 90.0000076
    }
    Scale {
      X: 0.39391911
      Y: 1
      Z: 0.0510240607
    }
  }
  ParentId: 9800739585588788691
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 9220156565600741768
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10025470788238854496
  Name: "Pipe"
  Transform {
    Location {
      Y: 4.63485527
    }
    Rotation {
      Pitch: 90
      Roll: 90.0000076
    }
    Scale {
      X: 1.81721473
      Y: 1.81721473
      Z: 0.13886109
    }
  }
  ParentId: 9800739585588788691
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.623529434
        G: 0.323692679
        B: 0.0435171276
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 5055429345916703247
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6516200743155779318
  Name: "Pipe"
  Transform {
    Location {
      Y: -4.59399414
      Z: -6.63973697e-06
    }
    Rotation {
      Pitch: 90
      Roll: 90.0000076
    }
    Scale {
      X: 1.95384991
      Y: 1.95384991
      Z: 0.295262665
    }
  }
  ParentId: 9800739585588788691
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 18230361406907615749
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 11.4839163
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 0.386537939
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 5055429345916703247
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11012722720767325276
  Name: "Urban Pipe Coupling 01"
  Transform {
    Location {
    }
    Rotation {
      Pitch: 90
      Roll: 90.0000076
    }
    Scale {
      X: 1.2
      Y: 1.2
      Z: 0.387051702
    }
  }
  ParentId: 9800739585588788691
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15376374145827134769
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
        A: 1
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 14541379120575232735
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 828496789897538706
  Name: "Cylinder"
  Transform {
    Location {
      Y: 7.50924683
      Z: 7.62939453e-06
    }
    Rotation {
      Pitch: 90
      Yaw: -35.8376503
      Roll: 54.1622658
    }
    Scale {
      X: 0.714686394
      Y: 0.714686394
      Z: -0.0902705789
    }
  }
  ParentId: 9800739585588788691
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.519129753
        B: 0.069791615
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 13949441344821433690
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11384399584080756149
  Name: "Prism - 3-Sided Convex"
  Transform {
    Location {
      X: -45.4050713
      Y: 7.50925
    }
    Rotation {
      Pitch: -90
      Yaw: -90
      Roll: 180
    }
    Scale {
      X: 0.39391911
      Y: 1
      Z: 0.0510240607
    }
  }
  ParentId: 9800739585588788691
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 16115905030413172164
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: false
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 0.61635232
        B: 0.257861614
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 9220156565600741768
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
      BoundsScale: 1
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9157258234213634656
  Name: "Reseller"
  Transform {
    Location {
      X: -177.976685
      Y: -132.470337
      Z: 112.88916
    }
    Rotation {
      Yaw: 124.625267
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8197359199373036066
  ChildIds: 2179614332394857876
  ChildIds: 11139628140196143478
  UnregisteredParameters {
    Overrides {
      Name: "ma:2:Shared_BaseMaterial:color"
      Color {
        R: 0.922119558
        G: 0.160000026
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  CoreMesh {
    MeshAsset {
      Id: 9840611693768026226
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    AnimatedMesh {
      AnimationStance: "unarmed_idle_relaxed"
      AnimationStancePlaybackRate: 1
      AnimationStanceShouldLoop: true
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        PlaybackRate: 1
      }
      SkinnedMeshes {
        Id: 2083989405713520803
      }
      SkinnedMeshes {
        Id: 13789121556799257281
      }
      SkinnedMeshes {
        Id: 9492847461095610360
      }
      SkinnedMeshes {
        Id: 9334709213929929682
      }
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11139628140196143478
  Name: "ClientContext"
  Transform {
    Location {
      X: 5.02249713e-05
      Y: -3.46805682e-05
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9157258234213634656
  ChildIds: 6017298724231066845
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
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
  NetworkContext {
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6017298724231066845
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
  ParentId: 11139628140196143478
  ChildIds: 1903729294286819678
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
    InteractionLabel: "Trade"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1903729294286819678
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
  ParentId: 6017298724231066845
  UnregisteredParameters {
    Overrides {
      Name: "cs:UIName"
      String: "BuySellReseller"
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
      Id: 1347959603203994334
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2179614332394857876
  Name: "ResellerPerksScript"
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
  ParentId: 9157258234213634656
  UnregisteredParameters {
    Overrides {
      Name: "cs:TwoRandomResellersItems"
      NetReference {
        Key: "106ec0d040a740279f429d217cda31c2"
        Type {
          Value: "mc:enetreferencetype:creatorperk"
        }
      }
    }
    Overrides {
      Name: "cs:APIObjects"
      AssetReference {
        Id: 11526358357864682441
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
  EditorIndicatorVisibility {
    Value: "mc:eindicatorvisibility:visiblewhenselected"
  }
  Script {
    ScriptAsset {
      Id: 1696135128532814228
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  ChildIds: 8678575965044671623
  ChildIds: 12511711667366630750
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12511711667366630750
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
  ParentId: 7086928093804741488
  ChildIds: 18354816756218499678
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
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
  NetworkContext {
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  ParentId: 12511711667366630750
  ChildIds: 5058024693623340580
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
    InteractionLabel: "Trade"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  ChildIds: 18334681479680838131
  ChildIds: 2719154698229303389
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2719154698229303389
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
  ParentId: 11626730896790120294
  ChildIds: 9363295296355310752
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
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
  NetworkContext {
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  ParentId: 2719154698229303389
  ChildIds: 7916215167290344635
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
    InteractionLabel: "Trade"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  ChildIds: 1315627219650353016
  ChildIds: 6882535522941914510
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6882535522941914510
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
  ParentId: 2266316651283896195
  ChildIds: 13505538043456871352
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
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
  NetworkContext {
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  ParentId: 6882535522941914510
  ChildIds: 799686389351956084
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
    InteractionLabel: "Trade"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  ChildIds: 11941888192035615859
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11941888192035615859
  Name: "Trigger"
  Transform {
    Location {
      X: -1476.15662
      Y: -494.671875
      Z: 2270.15454
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 2.28212476
    }
  }
  ParentId: 17034746523230958290
  ChildIds: 8753953635876348695
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
    InteractionLabel: "Trade"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10020863202486002930
  Name: "Human Guy 2"
  Transform {
    Location {
      X: -203.26265
      Y: 111.38559
      Z: 117.007812
    }
    Rotation {
      Yaw: -40.3926086
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  ChildIds: 13153351708235370343
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13153351708235370343
  Name: "Desert island"
  Transform {
    Location {
      X: -3322.22412
      Y: -6381.49561
      Z: -997.502686
    }
    Rotation {
      Pitch: -4.16531372
      Yaw: -88.0735474
      Roll: 10.1011496
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15775420194678160801
  ChildIds: 3165724189433649583
  ChildIds: 16432347317687613650
  ChildIds: 12699342919031509328
  ChildIds: 8548871287924066290
  ChildIds: 8561631714939211040
  ChildIds: 6629198305332827152
  ChildIds: 1335561000542777746
  ChildIds: 14963949249226789245
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14963949249226789245
  Name: "Swimmable Water Blue"
  Transform {
    Location {
      X: -1137.12354
      Y: -5374.28027
      Z: -182.057587
    }
    Rotation {
      Pitch: 10.2353115
      Yaw: 88.0475616
      Roll: 3.82059979
    }
    Scale {
      X: 19.4088135
      Y: 25.3055096
      Z: 6.08106709
    }
  }
  ParentId: 13153351708235370343
  ChildIds: 664910377866544089
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 236997020205566010
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
      Id: 12095835209017042614
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 664910377866544089
  Name: "Underwater Post Process (for swimming)"
  Transform {
    Location {
      Y: -2.54830029e-05
      Z: 50
    }
    Rotation {
    }
    Scale {
      X: 1.00000012
      Y: 1.00000012
      Z: 1
    }
  }
  ParentId: 14963949249226789245
  UnregisteredParameters {
    Overrides {
      Name: "bp:Control Fog"
      Bool: true
    }
    Overrides {
      Name: "bp:Create Water Physics Volume"
      Bool: true
    }
    Overrides {
      Name: "bp:Caustics"
      Bool: true
    }
    Overrides {
      Name: "bp:Water"
      Bool: true
    }
    Overrides {
      Name: "bp:Distortion Amount"
      Float: 0.924429178
    }
    Overrides {
      Name: "bp:Fog Density"
      Float: 0.677319825
    }
    Overrides {
      Name: "bp:Caustics Fade Distance"
      Float: 1.95782602
    }
    Overrides {
      Name: "bp:Use Sun Direction for Directional Caustics"
      Bool: true
    }
    Overrides {
      Name: "bp:Fog Color"
      Color {
        G: 0.155761421
        B: 0.480000019
        A: 1
      }
    }
    Overrides {
      Name: "bp:Blend Weight"
      Float: 1
    }
    Overrides {
      Name: "bp:Unbounded"
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 16244414786145463704
    }
    TeamSettings {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1335561000542777746
  Name: "Chain Tile 01"
  Transform {
    Location {
      X: -626.709473
      Y: -3559.76196
      Z: 103.029526
    }
    Rotation {
      Pitch: -2.01467896
      Yaw: -14.1946716
      Roll: 70.5129623
    }
    Scale {
      X: 10
      Y: 10
      Z: 10
    }
  }
  ParentId: 13153351708235370343
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6629198305332827152
  Name: "Chain Ceiling Anchor"
  Transform {
    Location {
      X: -41.3527832
      Y: -1453.34509
      Z: 892.53418
    }
    Rotation {
      Pitch: -31.8964233
      Yaw: 41.4077911
      Roll: 35.3037529
    }
    Scale {
      X: 5
      Y: 5
      Z: 5
    }
  }
  ParentId: 13153351708235370343
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8561631714939211040
  Name: "Chain Ceiling Anchor"
  Transform {
    Location {
      X: -370.254883
      Y: -2951.74194
      Z: 394.019165
    }
    Rotation {
      Pitch: -5.20407104
      Yaw: 124.345665
      Roll: 88.3944168
    }
    Scale {
      X: 5
      Y: 5
      Z: 5
    }
  }
  ParentId: 13153351708235370343
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8548871287924066290
  Name: "Chain Ceiling Anchor"
  Transform {
    Location {
      X: -3060.65015
      Y: -3602.98584
      Z: 62.375
    }
    Rotation {
      Pitch: -12.7580566
      Yaw: -111.935379
      Roll: 81.7460709
    }
    Scale {
      X: 5
      Y: 5
      Z: 5
    }
  }
  ParentId: 13153351708235370343
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12699342919031509328
  Name: "Chain Ceiling Anchor"
  Transform {
    Location {
      X: -2800.5896
      Y: -787.356934
      Z: 982.691589
    }
    Rotation {
      Pitch: -13.789856
      Yaw: -8.3678894
      Roll: 30.5788479
    }
    Scale {
      X: 5
      Y: 5
      Z: 5
    }
  }
  ParentId: 13153351708235370343
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 16432347317687613650
  Name: "Chain Tile 01"
  Transform {
    Location {
      X: -3077.7146
      Y: -3602.50244
      Z: 93.1839
    }
    Rotation {
      Pitch: 43.9484253
      Yaw: -23.3761902
      Roll: 64.9687042
    }
    Scale {
      X: 10
      Y: 10
      Z: 10
    }
  }
  ParentId: 13153351708235370343
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3165724189433649583
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
  ParentId: 13153351708235370343
  ChildIds: 17485371469524103552
  ChildIds: 16932900959359436128
  ChildIds: 9161652122010236704
  ChildIds: 1369993489647167214
  ChildIds: 10500032054001541748
  ChildIds: 13188111427368108787
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13188111427368108787
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
  ParentId: 3165724189433649583
  ChildIds: 21820487845737696
  ChildIds: 8520215810924242787
  ChildIds: 8908018875705977997
  ChildIds: 16246829069792080565
  ChildIds: 9254781899839991582
  ChildIds: 908568682666864589
  ChildIds: 7203681452322986819
  ChildIds: 18115632326618380806
  ChildIds: 15554546390529545634
  ChildIds: 4445666822009518900
  ChildIds: 5078180249608449688
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5078180249608449688
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
  ParentId: 13188111427368108787
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 4445666822009518900
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
  ParentId: 13188111427368108787
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15554546390529545634
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
  ParentId: 13188111427368108787
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 18115632326618380806
  Name: "Decal Dirt Patch"
  Transform {
    Location {
      X: 789.365234
      Y: -479.757812
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
  ParentId: 13188111427368108787
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 7203681452322986819
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
  ParentId: 13188111427368108787
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 908568682666864589
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
  ParentId: 13188111427368108787
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9254781899839991582
  Name: "Decal Ivy Big"
  Transform {
    Location {
      X: 655.382812
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
  ParentId: 13188111427368108787
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 16246829069792080565
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
  ParentId: 13188111427368108787
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8908018875705977997
  Name: "Decal Moss Patch"
  Transform {
    Location {
      X: -799.757812
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
  ParentId: 13188111427368108787
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 8520215810924242787
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
  ParentId: 13188111427368108787
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 21820487845737696
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
  ParentId: 13188111427368108787
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10500032054001541748
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
  ParentId: 3165724189433649583
  ChildIds: 4623062430213153860
  ChildIds: 16827746462016224596
  ChildIds: 12897039038503411897
  ChildIds: 2240997109612932308
  ChildIds: 15623025844750213825
  ChildIds: 12463318239402124001
  ChildIds: 767473675862334967
  ChildIds: 10719817324085737652
  ChildIds: 11825654008914682062
  ChildIds: 4090495952841250944
  ChildIds: 5464038598082743147
  ChildIds: 10033375056636415080
  ChildIds: 13365420015159113979
  ChildIds: 15928505545906433337
  ChildIds: 10822496290498071187
  ChildIds: 13694577378604256998
  ChildIds: 6723008474481040540
  ChildIds: 6705477389158187209
  ChildIds: 17913551356823484804
  ChildIds: 10475766602642213949
  ChildIds: 16816502679749194112
  ChildIds: 3554321488826189324
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3554321488826189324
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
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 16816502679749194112
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
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10475766602642213949
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
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17913551356823484804
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
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6705477389158187209
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
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6723008474481040540
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
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13694577378604256998
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -979.714844
      Y: 483.482422
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3482971
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10822496290498071187
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -881.007812
      Y: 441.259766
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3483582
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15928505545906433337
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -781.744141
      Y: 391.644531
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3484497
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13365420015159113979
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -686.359375
      Y: 339.585938
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3485107
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10033375056636415080
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -585.240234
      Y: 308.34375
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3485718
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5464038598082743147
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -399.917969
      Y: 207.982422
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3486938
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 4090495952841250944
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -312.242188
      Y: 160.222656
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3487549
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11825654008914682062
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -211.792969
      Y: 116.539062
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3488159
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10719817324085737652
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
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 767473675862334967
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 284.568359
      Y: -129.814453
      Z: 212.864624
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
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12463318239402124001
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 388.494141
      Y: -168.884766
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3491821
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15623025844750213825
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 479.246094
      Y: -227.123047
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3492432
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2240997109612932308
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 572.875
      Y: -266.615234
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3493042
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12897039038503411897
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 765.15625
      Y: -355.205078
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3494263
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 16827746462016224596
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 856.267578
      Y: -408.111328
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3494873
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 4623062430213153860
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 953.433594
      Y: -445.033203
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3496094
    }
    Scale {
      X: 1.00001299
      Y: 9.25783443
      Z: 0.12895751
    }
  }
  ParentId: 10500032054001541748
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1369993489647167214
  Name: "Bridge Struts"
  Transform {
    Location {
      X: 78.2148438
      Y: -25.6132812
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3165724189433649583
  ChildIds: 2773501897078477034
  ChildIds: 2914349589936273903
  ChildIds: 10065046294801183821
  ChildIds: 15071757073522716058
  ChildIds: 2869924472783438745
  ChildIds: 14561616209830136548
  ChildIds: 4871587077400882736
  ChildIds: 12968443957368217923
  ChildIds: 7109108048879209233
  ChildIds: 1825692283273904988
  ChildIds: 327856075957981579
  ChildIds: 12652148094190223689
  ChildIds: 13136782206643302382
  ChildIds: 10017937128897285858
  ChildIds: 1279795304306533818
  ChildIds: 15442198367189900658
  ChildIds: 3951999497863131336
  ChildIds: 4231339939244057586
  ChildIds: 15490514612409792961
  ChildIds: 14360158859795371299
  ChildIds: 18349231399676773607
  ChildIds: 3310667022677903343
  ChildIds: 6069797498847571690
  ChildIds: 17894884012028670380
  ChildIds: 5333934723615863591
  ChildIds: 14246534514562745625
  ChildIds: 17878045906526878439
  ChildIds: 6113798262988482923
  ChildIds: 11517985766050165365
  ChildIds: 12372125965715325908
  ChildIds: 11191142135101396799
  ChildIds: 12294229939911537669
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12294229939911537669
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11191142135101396799
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12372125965715325908
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11517985766050165365
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6113798262988482923
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17878045906526878439
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14246534514562745625
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5333934723615863591
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -201.273438
      Y: 743.457031
      Z: 1508.28613
    }
    Rotation {
      Pitch: -89.1648865
      Yaw: -18.0062866
      Roll: 78.899025
    }
    Scale {
      X: 1.00001299
      Y: 12.7121134
      Z: 0.128957167
    }
  }
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17894884012028670380
  Name: "Cube - Polished"
  Transform {
    Location {
      X: 724.013672
      Y: 274.363281
      Z: 1505.63354
    }
    Rotation {
      Pitch: -89.0041504
      Yaw: 158.23082
      Roll: 86.3661957
    }
    Scale {
      X: 1.00001299
      Y: 9.49667454
      Z: 0.128957167
    }
  }
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6069797498847571690
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 555.291
      Y: -800.345703
      Z: 1371.88086
    }
    Rotation {
      Pitch: -58.3200378
      Yaw: -76.3462524
      Roll: 88.2616959
    }
    Scale {
      X: 0.199999884
      Y: 0.500002801
      Z: 4.93613195
    }
  }
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3310667022677903343
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 18349231399676773607
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -319.103516
      Y: -273.109375
      Z: 1296.83521
    }
    Rotation {
      Pitch: 61.6274
      Yaw: -34.8263245
      Roll: -6.51733398
    }
    Scale {
      X: 0.50000006
      Y: 0.499996364
      Z: 1.53628051
    }
  }
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14360158859795371299
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -1097.85156
      Y: -93.8007812
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15490514612409792961
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -557.164062
      Y: 880.097656
      Z: 1433.76562
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 4231339939244057586
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 3951999497863131336
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15442198367189900658
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1279795304306533818
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 673.617188
      Y: -916.041
      Z: 1400.11987
    }
    Rotation {
      Pitch: -78.6693726
      Yaw: -20.643219
      Roll: 3.03076601
    }
    Scale {
      X: 0.2
      Y: 0.500002623
      Z: 5.64670181
    }
  }
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10017937128897285858
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 1262.84961
      Y: -52.3828125
      Z: 1577.29761
    }
    Rotation {
      Pitch: -9.40264893
      Yaw: -123.705948
      Roll: 130.267853
    }
    Scale {
      X: 0.2
      Y: 0.500002623
      Z: 5.64670181
    }
  }
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13136782206643302382
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12652148094190223689
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -815.548828
      Y: 470.947266
      Z: 1296.94604
    }
    Rotation {
      Pitch: -40.1545105
      Yaw: 156.330414
      Roll: 89.3982544
    }
    Scale {
      X: 0.50001055
      Y: 0.500021
      Z: 10.831212
    }
  }
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 327856075957981579
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 1118.94141
      Y: 52.2207031
      Z: 1485.90137
    }
    Rotation {
      Pitch: -1.33648682
      Yaw: 137.277618
      Roll: -178.712
    }
    Scale {
      X: 0.500014
      Y: 0.500018418
      Z: 6.63769
    }
  }
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1825692283273904988
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 634.988281
      Y: -863.537109
      Z: 1274.87207
    }
    Rotation {
      Pitch: -45.9639587
      Yaw: 102.63784
      Roll: -107.267761
    }
    Scale {
      X: 0.500014
      Y: 0.500018418
      Z: 6.63769
    }
  }
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 7109108048879209233
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -724.988281
      Y: 1000.41797
      Z: 1485.90137
    }
    Rotation {
      Pitch: -7.08035278
      Yaw: 137.739166
      Roll: 175.009735
    }
    Scale {
      X: 0.500014
      Y: 0.500018418
      Z: 6.63769
    }
  }
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 12968443957368217923
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -1054.67188
      Y: 49.0566406
      Z: 1485.90137
    }
    Rotation {
      Pitch: -1.33648682
      Yaw: 137.27774
      Roll: -178.712
    }
    Scale {
      X: 0.500014
      Y: 0.500018418
      Z: 6.63769
    }
  }
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 4871587077400882736
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -514.019531
      Y: 969.771484
      Z: 1214.97241
    }
    Rotation {
      Pitch: -11.3200989
      Yaw: 32.0316277
      Roll: 116.266754
    }
    Scale {
      X: 0.2
      Y: 0.500002623
      Z: 5.64670181
    }
  }
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14561616209830136548
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 1035.38477
      Y: 186.171875
      Z: 1214.97241
    }
    Rotation {
      Pitch: -9.40264893
      Yaw: -108.093079
      Roll: 130.267853
    }
    Scale {
      X: 0.2
      Y: 0.500002623
      Z: 5.64670181
    }
  }
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2869924472783438745
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 616.695312
      Y: -897.421875
      Z: 1214.97241
    }
    Rotation {
      Pitch: -11.3200989
      Yaw: -157.400391
      Roll: 116.266151
    }
    Scale {
      X: 0.2
      Y: 0.500002623
      Z: 5.64670181
    }
  }
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15071757073522716058
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -829.529297
      Y: -183.638672
      Z: 1214.97241
    }
    Rotation {
      Pitch: -11.3200989
      Yaw: 89.9993362
      Roll: 116.268501
    }
    Scale {
      X: 0.2
      Y: 0.500002623
      Z: 5.64670181
    }
  }
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10065046294801183821
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2914349589936273903
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2773501897078477034
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
  ParentId: 1369993489647167214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9161652122010236704
  Name: "Ivy 05"
  Transform {
    Location {
      X: 389.013672
      Y: 452.123047
      Z: 1426.04541
    }
    Rotation {
      Pitch: -0.980865479
      Yaw: -25.4033813
      Roll: 90.0630722
    }
    Scale {
      X: 1.58420539
      Y: 2.37195921
      Z: 0.999997735
    }
  }
  ParentId: 3165724189433649583
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 16932900959359436128
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
  ParentId: 3165724189433649583
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17485371469524103552
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
  ParentId: 3165724189433649583
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Yaw: -15.0000305
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -1.89694214
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -8.81982422
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -6.94369507
      Yaw: -47.6535339
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Yaw: -10
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
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
  NetworkRelevanceDistance {
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1224280791644278348
  Name: "Decal Dirt Patch"
  Transform {
    Location {
      X: 789.365234
      Y: -479.757812
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
  NetworkRelevanceDistance {
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
  NetworkRelevanceDistance {
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14993891186819047246
  Name: "Decal Ivy Big"
  Transform {
    Location {
      X: 655.382812
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
  NetworkRelevanceDistance {
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6162705501416731611
  Name: "Decal Moss Patch"
  Transform {
    Location {
      X: -799.757812
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
  NetworkRelevanceDistance {
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
  NetworkRelevanceDistance {
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
  NetworkRelevanceDistance {
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Yaw: -25.3482971
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 5563099483176985780
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -881.007812
      Y: 441.259766
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3483582
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Yaw: -25.3484497
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Yaw: -25.3485107
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Yaw: -25.3485718
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Yaw: -25.3487549
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 17784534944501895228
  Name: "Cube - Polished"
  Transform {
    Location {
      X: -211.792969
      Y: 116.539062
      Z: 212.864624
    }
    Rotation {
      Yaw: -25.3488159
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Yaw: -25.3491821
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Yaw: -25.3492432
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Yaw: -25.3493042
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Yaw: -25.3494263
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Yaw: -25.3494873
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Yaw: -25.3496094
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1547827473875730812
  Name: "Bridge Struts"
  Transform {
    Location {
      X: 78.2148438
      Y: -25.6132812
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -89.1648865
      Yaw: -18.0062866
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -89.0041504
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -58.3200378
      Yaw: -76.3462524
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Yaw: -34.8263245
      Roll: -6.51733398
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13959330649541444014
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -1097.85156
      Y: -93.8007812
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 16652605547292614234
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: -557.164062
      Y: 880.097656
      Z: 1433.76562
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -78.6693726
      Yaw: -20.643219
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -9.40264893
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -40.1545105
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -1.33648682
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -45.9639587
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -7.08035278
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -1.33648682
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -11.3200989
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -9.40264893
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 4628371252748414216
  Name: "Prism - 8-Sided Polished"
  Transform {
    Location {
      X: 616.695312
      Y: -897.421875
      Z: 1214.97241
    }
    Rotation {
      Pitch: -11.3200989
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -11.3200989
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
      Pitch: -0.980865479
      Yaw: -25.4033813
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 464254400472224939
  Name: "StaticContext"
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
  NetworkContext {
    Type: RuntimeStatic
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 4973484096715360362
  Name: "Props"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
