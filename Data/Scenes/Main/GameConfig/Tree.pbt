Name: "GameConfig"
RootId: 6236082347439009122
Objects {
  Id: 14166833486397694787
  Name: "Shift to Sprint"
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
  ParentId: 6236082347439009122
  UnregisteredParameters {
    Overrides {
      Name: "cs:WalkSpeed"
      Float: 600
    }
    Overrides {
      Name: "cs:RunSpeed"
      Float: 1000
    }
    Overrides {
      Name: "cs:CrouchWalkSpeed"
      Float: 175
    }
    Overrides {
      Name: "cs:CrouchRunSpeed"
      Float: 250
    }
    Overrides {
      Name: "cs:SlowWalkModifier"
      Float: 0.5
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
    IsFilePartition: true
    FilePartitionName: "ShiftToSprint"
  }
  InstanceHistory {
    SelfId: 14166833486397694787
    SubobjectId: 9282214366166580901
    InstanceId: 4950896240189226806
    TemplateId: 1222384962725173322
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2751873984390401409
  Name: "Third/First Person Camera Settings (caillef version)"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6236082347439009122
  TemplateInstance {
    ParameterOverrideMap {
      key: 5143080259878556731
      value {
        Overrides {
          Name: "Name"
          String: "Third/First Person Camera Settings (caillef version)"
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
      Id: 9269861221690284210
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 16813558807825262224
  Name: "Spawn Point"
  Transform {
    Location {
      Z: 115
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6236082347439009122
  UnregisteredParameters {
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
  PlayerSpawnPoint {
    TeamInt: 1
    PlayerScaleMultiplier: 1
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 7367735074338159388
  Name: "Game Settings"
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
  ParentId: 6236082347439009122
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Settings {
    IsDefault: true
    GameSettings {
      RagdollOnDeath: true
      EnablePlayerStorage: true
      ChatMode {
        Value: "mc:echatmode:teamandall"
      }
      EnablePlayModeProfiler: true
      ChatSettings {
        ChatMode {
        }
        ChatPosition {
          X: 20
          Y: -100
        }
        ChatSize {
          X: 450
          Y: 400
        }
        ChatHorizontalAlignment {
          Value: "mc:ecorehorizontalalign:left"
        }
        ChatVerticalAlignment {
          Value: "mc:ecoreverticalalign:bottom"
        }
      }
      PhysicsSettings {
        MinContactOffset: 2
        MaxContactOffset: 8
      }
      VfxSettings {
        LowDistance: 4500
        MediumDistance: 7000
        HighDistance: 9000
      }
      RelevanceSettings {
        key: "decal"
        value {
          LowDistance: 4500
          MediumDistance: 7000
          HighDistance: 9000
        }
      }
      RelevanceSettings {
        key: "vfx"
        value {
          LowDistance: 4500
          MediumDistance: 7000
          HighDistance: 9000
        }
      }
      EnableInGameSocialUI: true
      VoiceChatSettings {
        VoiceChatMode {
          Value: "mc:evoicechatmode:all"
        }
        VoiceChannelType {
          Value: "mc:evoicechanneltype:normal"
        }
        AudibleDistance: 6000
        ConversationalDistance: 1500
        AudioFadeModel {
          Value: "mc:evoiceaudiofademodel:inverse"
        }
        AudioFadeIntensityByDistance: 1
        VoiceChatPosition {
          X: -40
          Y: 40
        }
        VoiceChatHorizontalAlignment {
          Value: "mc:ecorehorizontalalign:right"
        }
        VoiceChatVerticalAlignment {
          Value: "mc:ecoreverticalalign:top"
        }
        VoiceChatEntryHorizontalFlow {
          Value: "mc:ecorehorizontalflow:righttoleft"
        }
        VoiceChatEntryVerticalFlow {
          Value: "mc:ecoreverticalflow:toptobottom"
        }
      }
      PlayerInteractDistance: 500
      PlayerInteractAngleDeg: 50
      PlayerStorageMode {
        Value: "mc:eplayerstoragemode:none"
      }
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6844298216390059011
  Name: "Outlined Nameplates"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6236082347439009122
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 7985682287532708471
      value {
        Overrides {
          Name: "Name"
          String: "Outlined Nameplates"
        }
        Overrides {
          Name: "cs:ShowHealthbars"
          Bool: false
        }
        Overrides {
          Name: "cs:ShowOnTeammates"
          Bool: true
        }
        Overrides {
          Name: "cs:ShowOnSelf"
          Bool: false
        }
        Overrides {
          Name: "cs:ShowOnEnemies"
          Bool: true
        }
        Overrides {
          Name: "cs:MaxDistanceOnEnemies"
          Float: 0
        }
        Overrides {
          Name: "cs:ShowOnDeadPlayers"
          Bool: true
        }
        Overrides {
          Name: "cs:ShowNumbers"
          Bool: false
        }
        Overrides {
          Name: "cs:AnimateChanges"
          Bool: false
        }
        Overrides {
          Name: "cs:FriendlyNameColor"
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
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
      Id: 5233805097785708431
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 6359451876925841842
  Name: "Day Night Sky"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6236082347439009122
  TemplateInstance {
    ParameterOverrideMap {
      key: 15353451395209644350
      value {
        Overrides {
          Name: "Name"
          String: "Day Night Sky"
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
      Id: 2458915593037816757
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9740202837855139040
  Name: "Default Keys"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6236082347439009122
  TemplateInstance {
    ParameterOverrideMap {
      key: 15889732551133568655
      value {
        Overrides {
          Name: "Name"
          String: "Default Keys"
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
      Id: 16687078566427417755
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
}
