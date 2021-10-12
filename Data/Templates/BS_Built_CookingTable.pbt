Assets {
  Id: 6464806954630146086
  Name: "BS_Built_CookingTable"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4340000938574330803
      Objects {
        Id: 4340000938574330803
        Name: "BS_Built_CookingTable"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 14309973534957375582
        ChildIds: 8647392713150939892
        ChildIds: 11300734801808916334
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
        Id: 14309973534957375582
        Name: "DestroyableProp"
        Transform {
          Location {
            X: 90.4710693
            Y: -89.6642151
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
        ParentId: 4340000938574330803
        UnregisteredParameters {
          Overrides {
            Name: "cs:HP"
            Int: 3
          }
          Overrides {
            Name: "cs:Material"
            Int: 1
          }
          Overrides {
            Name: "cs:ItemId"
            String: "COOKING_TABLE"
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
        Id: 8647392713150939892
        Name: "Geo"
        Transform {
          Location {
            X: 110
            Y: -80
            Z: 15
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4340000938574330803
        ChildIds: 1720783396566299304
        ChildIds: 15280901883350827668
        ChildIds: 2341164868397978966
        ChildIds: 1996821876260226170
        ChildIds: 17599499819178287113
        ChildIds: 10739609767362699375
        ChildIds: 3428718426220858640
        ChildIds: 12771439176400972651
        ChildIds: 10836881001908088576
        ChildIds: 17836299195249133341
        ChildIds: 3331105062302862053
        ChildIds: 13177847086208324815
        ChildIds: 12049072806599765822
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
        Id: 1720783396566299304
        Name: "Frying Pan"
        Transform {
          Location {
            X: 0.000122070312
            Y: -14.9999523
            Z: 30
          }
          Rotation {
            Yaw: 72.8946075
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8647392713150939892
        ChildIds: 14247227033470477055
        ChildIds: 15301756114875669079
        ChildIds: 3585823720470709689
        ChildIds: 6754930271896182175
        ChildIds: 9949295764750369238
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
        Id: 14247227033470477055
        Name: "Cylinder"
        Transform {
          Location {
            X: -21.9904633
            Y: 0.195037842
            Z: 0.359367371
          }
          Rotation {
            Pitch: -90
            Yaw: 0.949418664
            Roll: -0.94934082
          }
          Scale {
            X: 0.0629560649
            Y: 0.0577152148
            Z: 0.571693122
          }
        }
        ParentId: 1720783396566299304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2765733986204491062
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
            Id: 11055204346800432027
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 15301756114875669079
        Name: "Ellipsoid - Truncated Hollow Wedge"
        Transform {
          Location {
            X: 1.76190948
            Y: 0.448699951
            Z: 0.475204468
          }
          Rotation {
            Pitch: -52.8548393
            Yaw: -104.694763
            Roll: 112.29702
          }
          Scale {
            X: 0.0852720141
            Y: 0.105763219
            Z: 0.130185261
          }
        }
        ParentId: 1720783396566299304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12713127200076124263
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
            Id: 15581074609819818867
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 3585823720470709689
        Name: "Ellipsoid - Truncated Hollow Wedge"
        Transform {
          Location {
            X: 1.85525513
            Y: -0.591583252
            Z: 3.43680573
          }
          Rotation {
            Pitch: 50.036026
            Yaw: 82.9594421
            Roll: -101.540871
          }
          Scale {
            X: 0.0852720141
            Y: 0.105763219
            Z: 0.130185261
          }
        }
        ParentId: 1720783396566299304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12713127200076124263
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
            Id: 15581074609819818867
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 6754930271896182175
        Name: "Pyramid - 8-Sided Truncated Hollow Thin"
        Transform {
          Location {
            X: 33.3485565
            Y: -0.25491333
            Z: 9.69155884
          }
          Rotation {
            Roll: -179.999985
          }
          Scale {
            X: 0.75
            Y: 0.75
            Z: 0.25
          }
        }
        ParentId: 1720783396566299304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12713127200076124263
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
            Id: 9685830702051930148
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 9949295764750369238
        Name: "Prism - 8-Sided"
        Transform {
          Location {
            X: 33.2037811
            Y: -0.0668029785
            Z: -3.18439484
          }
          Rotation {
          }
          Scale {
            X: 0.322537869
            Y: 0.322537869
            Z: 0.0185730401
          }
        }
        ParentId: 1720783396566299304
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12713127200076124263
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
            Id: 4036740214078884152
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 15280901883350827668
        Name: "Cooking Pot Large"
        Transform {
          Location {
            X: 49.9998856
            Y: 9.99992
            Z: 97.4955597
          }
          Rotation {
            Yaw: 128.327499
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8647392713150939892
        ChildIds: 7906887771558292912
        ChildIds: 9339580117335724906
        ChildIds: 4332880586590142844
        ChildIds: 7965357561421723931
        ChildIds: 15026298270236156469
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
        Id: 7906887771558292912
        Name: "Cylinder"
        Transform {
          Location {
            X: -13.3864594
            Y: 0.195037842
            Z: 6.17596436
          }
          Rotation {
            Pitch: -90
            Yaw: 0.949418664
            Roll: -0.94934082
          }
          Scale {
            X: 0.0629560649
            Y: 0.0577152111
            Z: 0.530109882
          }
        }
        ParentId: 15280901883350827668
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2765733986204491062
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
            Id: 11055204346800432027
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 9339580117335724906
        Name: "Ellipsoid - Truncated Hollow Wedge"
        Transform {
          Location {
            X: 13.0915985
            Y: -0.423370361
            Z: 7.20167542
          }
          Rotation {
            Pitch: -50.3413696
            Yaw: 87.243721
            Roll: 91.1915207
          }
          Scale {
            X: 0.0852720141
            Y: 0.105763219
            Z: 0.130185261
          }
        }
        ParentId: 15280901883350827668
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12713127200076124263
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
            Id: 15581074609819818867
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 4332880586590142844
        Name: "Ellipsoid - Truncated Hollow Wedge"
        Transform {
          Location {
            X: 13.0915985
            Y: -0.423370361
            Z: 8.55941772
          }
          Rotation {
            Pitch: 37.8541832
            Yaw: -87.7717
            Roll: -89.5635681
          }
          Scale {
            X: 0.0852720141
            Y: 0.105763219
            Z: 0.130185261
          }
        }
        ParentId: 15280901883350827668
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12713127200076124263
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
            Id: 15581074609819818867
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 7965357561421723931
        Name: "Prism - 8-Sided"
        Transform {
          Location {
            X: 32.7026024
            Y: 0.572104454
            Z: -2.49559021
          }
          Rotation {
          }
          Scale {
            X: 0.397648036
            Y: 0.397648036
            Z: 0.0228981953
          }
        }
        ParentId: 15280901883350827668
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12713127200076124263
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
            Id: 4036740214078884152
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 15026298270236156469
        Name: "Pipe - 8-Sided"
        Transform {
          Location {
            X: 32.7684326
            Y: -0.433227539
            Z: -2.49559021
          }
          Rotation {
          }
          Scale {
            X: 0.477743298
            Y: 0.477743298
            Z: 0.227549717
          }
        }
        ParentId: 15280901883350827668
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12713127200076124263
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
            Id: 14245446224956606683
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 2341164868397978966
        Name: "WoodSpatula"
        Transform {
          Location {
            X: 39.9998932
            Y: 29.9999352
            Z: 115
          }
          Rotation {
            Pitch: 0.201674983
            Yaw: 44.830925
            Roll: 49.9999924
          }
          Scale {
            X: 0.578766286
            Y: 0.578766286
            Z: 0.578766286
          }
        }
        ParentId: 8647392713150939892
        ChildIds: 5210029737729822875
        ChildIds: 3192600257465041704
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
        Id: 5210029737729822875
        Name: "Cylinder"
        Transform {
          Location {
            X: -0.216964722
            Y: -19.8939819
            Z: 0.0758667
          }
          Rotation {
            Pitch: -90
            Yaw: -26.565033
            Roll: -65.5229187
          }
          Scale {
            X: -0.0227514412
            Y: 0.0577153638
            Z: 0.530109942
          }
        }
        ParentId: 2341164868397978966
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2824292998141138569
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
            Id: 11055204346800432027
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 3192600257465041704
        Name: "Capsule"
        Transform {
          Location {
            X: 0.216949463
            Y: 19.8939819
          }
          Rotation {
            Pitch: -3.80993652
            Yaw: -1.82849121
            Roll: 89.0965652
          }
          Scale {
            X: 0.34606874
            Y: 0.0819103941
            Z: 0.215569094
          }
        }
        ParentId: 2341164868397978966
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2824292998141138569
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
            Id: 14135009369991970743
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 1996821876260226170
        Name: "WoodenSpoon"
        Transform {
          Location {
            X: -24.9999161
            Y: -44.9999352
            Z: 100
          }
          Rotation {
            Pitch: 7.80909157
            Yaw: 18.3033047
            Roll: -7.9142518
          }
          Scale {
            X: 0.499999583
            Y: 0.499999583
            Z: 0.499999583
          }
        }
        ParentId: 8647392713150939892
        ChildIds: 12220845678812983597
        ChildIds: 9630645497105708183
        ChildIds: 5390252787095506342
        ChildIds: 1905038396887628684
        ChildIds: 8392995729241701719
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
        Id: 12220845678812983597
        Name: "Sphere - Half Quarter Thin"
        Transform {
          Location {
            X: 9.45527649
            Y: 2.25473022
            Z: 2.50807953
          }
          Rotation {
            Pitch: -5.46415104e-05
            Yaw: 89.9998703
            Roll: -89.9999924
          }
          Scale {
            X: 0.282468706
            Y: 0.231162563
            Z: 0.462325156
          }
        }
        ParentId: 1996821876260226170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2824292998141138569
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
            Id: 8698620266660703825
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 9630645497105708183
        Name: "Cylinder"
        Transform {
          Location {
            X: -39.1526642
            Y: -0.449005127
          }
          Rotation {
            Pitch: -90
            Yaw: -177.763016
            Roll: -1.3848877
          }
          Scale {
            X: -0.0243513566
            Y: 0.0617740154
            Z: 0.567388237
          }
        }
        ParentId: 1996821876260226170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2824292998141138569
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
            Id: 11055204346800432027
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 5390252787095506342
        Name: "Sphere - Half Quarter Thin"
        Transform {
          Location {
            X: 9.45527649
            Y: 0.311950684
            Z: 2.50807953
          }
          Rotation {
            Pitch: -6.14717e-05
            Yaw: 179.999893
            Roll: -89.9999924
          }
          Scale {
            X: 0.462325126
            Y: 0.231162593
            Z: 0.231162578
          }
        }
        ParentId: 1996821876260226170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2824292998141138569
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
            Id: 8698620266660703825
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 1905038396887628684
        Name: "Sphere - Half Quarter Thin"
        Transform {
          Location {
            X: 10.1210785
            Y: -2.0302124
            Z: 2.50807953
          }
          Rotation {
            Pitch: -6.14717e-05
            Yaw: -89.9999847
            Roll: -89.9999847
          }
          Scale {
            X: 0.282468706
            Y: 0.231162563
            Z: 0.462325156
          }
        }
        ParentId: 1996821876260226170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2824292998141138569
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
            Id: 8698620266660703825
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 8392995729241701719
        Name: "Sphere - Half Quarter Thin"
        Transform {
          Location {
            X: 10.1210785
            Y: -0.0874328613
            Z: 2.50807953
          }
          Rotation {
            Pitch: -6.14717e-05
            Yaw: -9.15527198e-05
            Roll: -89.9999924
          }
          Scale {
            X: 0.462325126
            Y: 0.231162593
            Z: 0.231162578
          }
        }
        ParentId: 1996821876260226170
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2824292998141138569
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
            Id: 8698620266660703825
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 17599499819178287113
        Name: "WoodenFork"
        Transform {
          Location {
            X: -19.999876
            Y: 20.0000629
            Z: 102
          }
          Rotation {
            Yaw: -74.9999771
          }
          Scale {
            X: 0.499999583
            Y: 0.499999583
            Z: 0.499999583
          }
        }
        ParentId: 8647392713150939892
        ChildIds: 10320762846965250676
        ChildIds: 16937484731073478274
        ChildIds: 1876481176062461788
        ChildIds: 7657431862200187315
        ChildIds: 6762591587681205000
        ChildIds: 1799861061651144364
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
        Id: 10320762846965250676
        Name: "Cylinder"
        Transform {
          Location {
            X: -39.1526642
            Y: -0.449005127
          }
          Rotation {
            Pitch: -90
            Yaw: -177.763016
            Roll: -1.3848877
          }
          Scale {
            X: -0.0243513566
            Y: 0.0617740154
            Z: 0.567388237
          }
        }
        ParentId: 17599499819178287113
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2824292998141138569
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
            Id: 11055204346800432027
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 16937484731073478274
        Name: "Sphere - Half Quarter Thin"
        Transform {
          Location {
            X: 9.49322128
            Y: 6.85251665
            Z: 1.62269723
          }
          Rotation {
            Pitch: -2.44284058
            Yaw: 179.899734
            Roll: -85.3063354
          }
          Scale {
            X: 0.462325424
            Y: 0.064295955
            Z: 0.0863992348
          }
        }
        ParentId: 17599499819178287113
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2824292998141138569
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
            Id: 8698620266660703825
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 1876481176062461788
        Name: "Sphere - Half Quarter Thin"
        Transform {
          Location {
            X: 10.1210985
            Y: -2.03021121
            Z: 2.50807405
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: -90
            Roll: -90
          }
          Scale {
            X: 0.282468826
            Y: 0.118127592
            Z: 0.462325096
          }
        }
        ParentId: 17599499819178287113
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2824292998141138569
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
            Id: 8698620266660703825
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 7657431862200187315
        Name: "Sphere - Half Quarter Thin"
        Transform {
          Location {
            X: 10.1210928
            Y: -0.0874291211
            Z: 2.50807405
          }
          Rotation {
            Pitch: -6.10351562e-05
            Yaw: -9.15527344e-05
            Roll: -90
          }
          Scale {
            X: 0.462325364
            Y: 0.115862608
            Z: 0.231162548
          }
        }
        ParentId: 17599499819178287113
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2824292998141138569
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
            Id: 8698620266660703825
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 6762591587681205000
        Name: "Sphere - Half Quarter Thin"
        Transform {
          Location {
            X: 9.78898144
            Y: -8.1248951
            Z: 2.72203302
          }
          Rotation {
            Pitch: 1.06117225
            Yaw: -178.971375
            Roll: 174.257782
          }
          Scale {
            X: 0.462325424
            Y: 0.064295955
            Z: 0.0863992348
          }
        }
        ParentId: 17599499819178287113
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2824292998141138569
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
            Id: 8698620266660703825
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 1799861061651144364
        Name: "Sphere - Half Quarter Thin"
        Transform {
          Location {
            X: 9.25814056
            Y: -0.284692049
            Z: 0.180465847
          }
          Rotation {
            Pitch: 0.753888905
            Yaw: 177.132263
            Roll: -130.867722
          }
          Scale {
            X: 0.462325424
            Y: 0.064295955
            Z: 0.0863992348
          }
        }
        ParentId: 17599499819178287113
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2824292998141138569
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
            Id: 8698620266660703825
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 10739609767362699375
        Name: "Fantasy Book Open 01"
        Transform {
          Location {
            X: 29.9999962
            Y: -29.9999962
            Z: 90
          }
          Rotation {
            Yaw: 74.9999771
          }
          Scale {
            X: 0.6
            Y: 0.7
            Z: 1
          }
        }
        ParentId: 8647392713150939892
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.929999948
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail3:color"
            Color {
              R: 0.669999957
              A: 1
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
            Id: 16720022255288317573
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
        Id: 3428718426220858640
        Name: "Foot"
        Transform {
          Location {
            X: -65
            Y: -65
            Z: 35
          }
          Rotation {
            Roll: -179.999985
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 1
          }
        }
        ParentId: 8647392713150939892
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5732792612957289737
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
            Id: 12095835209017042614
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
        Id: 12771439176400972651
        Name: "Foot"
        Transform {
          Location {
            X: 65
            Y: -65
            Z: 35
          }
          Rotation {
            Roll: -179.999954
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 1
          }
        }
        ParentId: 8647392713150939892
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5732792612957289737
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
            Id: 12095835209017042614
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
        Id: 10836881001908088576
        Name: "Foot"
        Transform {
          Location {
            X: 65
            Y: 65
            Z: 35
          }
          Rotation {
            Roll: -179.999954
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 1
          }
        }
        ParentId: 8647392713150939892
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5732792612957289737
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
            Id: 12095835209017042614
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
        Id: 17836299195249133341
        Name: "Foot"
        Transform {
          Location {
            X: -65
            Y: 65
            Z: 35
          }
          Rotation {
            Roll: -179.999954
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 1
          }
        }
        ParentId: 8647392713150939892
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5732792612957289737
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
            Id: 12095835209017042614
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
        Id: 3331105062302862053
        Name: "Table"
        Transform {
          Location {
            Z: 85
          }
          Rotation {
            Roll: -179.999954
          }
          Scale {
            X: 1.6
            Y: 1.6
            Z: 0.2
          }
        }
        ParentId: 8647392713150939892
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5732792612957289737
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
            Id: 12095835209017042614
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
        Id: 13177847086208324815
        Name: "Table"
        Transform {
          Location {
            Z: 15
          }
          Rotation {
            Roll: -179.999954
          }
          Scale {
            X: 1.4
            Y: 1.4
            Z: 0.2
          }
        }
        ParentId: 8647392713150939892
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5732792612957289737
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
            Id: 12095835209017042614
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
        Id: 12049072806599765822
        Name: "Table"
        Transform {
          Location {
            X: -29.9999657
            Y: 15.0001068
            Z: 95
          }
          Rotation {
            Yaw: 2.04905627e-05
            Roll: -179.999954
          }
          Scale {
            X: 0.5
            Y: 0.8
            Z: -0.1
          }
        }
        ParentId: 8647392713150939892
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 132672053610873933
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 0.903509915
              B: 0.53
              A: 1
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
            Id: 12095835209017042614
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
        Id: 11300734801808916334
        Name: "ClientContext"
        Transform {
          Location {
            X: 100
            Y: -70
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4340000938574330803
        ChildIds: 12174378869110509450
        WantsNetworking: true
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
      }
      Objects {
        Id: 12174378869110509450
        Name: "Trigger"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1.2
            Z: 0.8
          }
        }
        ParentId: 11300734801808916334
        ChildIds: 8396086275653909245
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
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
        Trigger {
          Interactable: true
          InteractionLabel: "Open Cooking Table"
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
        Id: 8396086275653909245
        Name: "UITriggerScript"
        Transform {
          Location {
            X: -10100
            Y: -9935
            Z: -10045
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12174378869110509450
        UnregisteredParameters {
          Overrides {
            Name: "cs:UIName"
            String: "Cooking"
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
      }
    }
    Assets {
      Id: 11055204346800432027
      Name: "Cylinder"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_002"
      }
    }
    Assets {
      Id: 2765733986204491062
      Name: "Wood Floor Herringbone Light"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_floor_herringbone_light_001_uv"
      }
    }
    Assets {
      Id: 15581074609819818867
      Name: "Ellipsoid - Truncated Hollow Wedge"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ellipsoid_hollow_wedge_001"
      }
    }
    Assets {
      Id: 12713127200076124263
      Name: "Metal Iron 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_001"
      }
    }
    Assets {
      Id: 9685830702051930148
      Name: "Pyramid - 8-Sided Truncated Hollow Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_8_sided_truncated_hollow_thin_001"
      }
    }
    Assets {
      Id: 4036740214078884152
      Name: "Prism - 8-Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_octagon_001"
      }
    }
    Assets {
      Id: 14245446224956606683
      Name: "Pipe - 8-Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_eightsided_002"
      }
    }
    Assets {
      Id: 2824292998141138569
      Name: "Wood Planks"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_planks_001_uv"
      }
    }
    Assets {
      Id: 14135009369991970743
      Name: "Capsule"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_capsule_001"
      }
    }
    Assets {
      Id: 8698620266660703825
      Name: "Sphere - Half Quarter Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter_hemisphere_002"
      }
    }
    Assets {
      Id: 16720022255288317573
      Name: "Fantasy Book Open 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_fan_book_open_001_ref"
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    Assets {
      Id: 5732792612957289737
      Name: " Wood 9 Slice Crate 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mat_advanced_9slice_wooden_crates_001_ref"
      }
    }
    Assets {
      Id: 132672053610873933
      Name: "Plastic Matte"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_matte_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 100
  VirtualFolderPath: "StructureTemplates"
}
