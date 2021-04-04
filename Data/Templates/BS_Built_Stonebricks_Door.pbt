Assets {
  Id: 7222697325601562508
  Name: "BS_Built_Stonebricks_Door"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3592139336295586736
      Objects {
        Id: 3592139336295586736
        Name: "BS_Built_Stonebricks_Door"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 2284067968660856587
        ChildIds: 18051067341678177728
        ChildIds: 10635343289658922323
        ChildIds: 13393211861048444740
        ChildIds: 10215272691844556202
        ChildIds: 11105157724529907693
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
        }
      }
      Objects {
        Id: 2284067968660856587
        Name: "Craftsman Wall 02 Corner"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.0964473411
            Y: 0.972766638
            Z: 0.5
          }
        }
        ParentId: 3592139336295586736
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_WallInner:utile"
            Float: 0.169014171
          }
          Overrides {
            Name: "ma:Building_WallOuter:utile"
            Float: 0.282603621
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
            Id: 2452465297983906772
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
          }
        }
      }
      Objects {
        Id: 18051067341678177728
        Name: "Craftsman Exterior Door"
        Transform {
          Location {
            X: 27.4014206
            Z: 16.5967712
          }
          Rotation {
          }
          Scale {
            X: 0.8
            Y: 0.8
            Z: 0.8
          }
        }
        ParentId: 3592139336295586736
        ChildIds: 7743786859976012989
        ChildIds: 2887628328224173930
        UnregisteredParameters {
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
        Id: 7743786859976012989
        Name: "Door"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -179.999969
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 18051067341678177728
        ChildIds: 10346711182722843132
        UnregisteredParameters {
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
          IsFilePartition: true
          FilePartitionName: "Door_9"
        }
      }
      Objects {
        Id: 10346711182722843132
        Name: "Geo"
        Transform {
          Location {
            X: -100
            Z: 175
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7743786859976012989
        ChildIds: 9696885184240535975
        UnregisteredParameters {
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
        Id: 9696885184240535975
        Name: "Craftsman Front Door 01"
        Transform {
          Location {
            X: 90.0000076
            Y: -3.33786193e-06
            Z: -170.000015
          }
          Rotation {
            Yaw: 179.999954
          }
          Scale {
            X: 0.895031
            Y: 1
            Z: 0.8
          }
        }
        ParentId: 10346711182722843132
        UnregisteredParameters {
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
            Id: 10185087255731819650
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2887628328224173930
        Name: "Trigger"
        Transform {
          Location {
            X: 100
            Z: 175
          }
          Rotation {
            Yaw: 89.9999619
          }
          Scale {
            X: 2.42237067
            Y: 2.52452612
            Z: 2.75
          }
        }
        ParentId: 18051067341678177728
        ChildIds: 6155322631512998182
        UnregisteredParameters {
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
        Trigger {
          Interactable: true
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
        Id: 6155322631512998182
        Name: "DoorScript"
        Transform {
          Location {
            X: -5.51172479e-06
            Y: -9.90292168
            Z: -13.613637
          }
          Rotation {
          }
          Scale {
            X: 0.350293666
            Y: 0.594170868
            Z: 1
          }
        }
        ParentId: 2887628328224173930
        UnregisteredParameters {
          Overrides {
            Name: "cs:Door"
            ObjectReference {
              SubObjectId: 7743786859976012989
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 1300488817410129582
          }
        }
      }
      Objects {
        Id: 10635343289658922323
        Name: "DestroyableProp"
        Transform {
          Location {
            X: 107.543755
            Z: 134.782623
          }
          Rotation {
            Yaw: 87.2511749
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.5
          }
        }
        ParentId: 3592139336295586736
        UnregisteredParameters {
          Overrides {
            Name: "cs:HP"
            Int: 1
          }
          Overrides {
            Name: "cs:ItemId"
            String: "STONEBRICKS_DOOR"
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
            Id: 15497607201579666542
          }
        }
      }
      Objects {
        Id: 13393211861048444740
        Name: "Craftsman Wall 02 Corner"
        Transform {
          Location {
            X: 162.620651
          }
          Rotation {
          }
          Scale {
            X: 0.0964473411
            Y: 0.972766638
            Z: 0.5
          }
        }
        ParentId: 3592139336295586736
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_WallInner:utile"
            Float: 0.169014171
          }
          Overrides {
            Name: "ma:Building_WallOuter:utile"
            Float: 0.282603621
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
            Id: 2452465297983906772
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
          }
        }
      }
      Objects {
        Id: 10215272691844556202
        Name: "Craftsman Wall 02 Corner"
        Transform {
          Location {
            X: 28.6842804
            Z: 194.000107
          }
          Rotation {
          }
          Scale {
            X: 0.175097167
            Y: 0.763048
            Z: 0.17219
          }
        }
        ParentId: 3592139336295586736
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_WallInner:utile"
            Float: 0.321359724
          }
          Overrides {
            Name: "ma:Building_WallInner:vtile"
            Float: 0.377362251
          }
          Overrides {
            Name: "ma:Building_WallOuter:utile"
            Float: 0.314549595
          }
          Overrides {
            Name: "ma:Building_WallOuter:vtile"
            Float: 0.377362251
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
            Id: 11432809364951486537
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
          }
        }
      }
      Objects {
        Id: 11105157724529907693
        Name: "Craftsman Wall 02 Corner"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.458596796
            Y: 0.850171745
            Z: 0.0359382778
          }
        }
        ParentId: 3592139336295586736
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_WallInner:utile"
            Float: 2.09382629
          }
          Overrides {
            Name: "ma:Building_WallInner:vtile"
            Float: 0.1
          }
          Overrides {
            Name: "ma:Building_WallOuter:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Building_WallOuter:utile"
            Float: 2.1621902
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
            Id: 2452465297983906772
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
          }
        }
      }
    }
    Assets {
      Id: 2452465297983906772
      Name: "Fantasy Castle Wall 03 Half"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_fan_cas_wall_half_003"
      }
    }
    Assets {
      Id: 10185087255731819650
      Name: "Fantasy Castle Door 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_fan_cas_door_001"
      }
    }
    Assets {
      Id: 11432809364951486537
      Name: "Fantasy Castle Wall 03 - Arch 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ts_fan_cas_wall_003_arch_01"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 78
}
