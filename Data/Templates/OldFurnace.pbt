Assets {
  Id: 13849757034189899134
  Name: "OldFurnace"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17275325472854315272
      Objects {
        Id: 17275325472854315272
        Name: "OldFurnace"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 6791476077961334057
        ChildIds: 11360435321724344315
        ChildIds: 7652535940757758326
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
        Id: 6791476077961334057
        Name: "Furnace"
        Transform {
          Location {
            X: -624.667969
            Y: -856.309814
            Z: -2268.31738
          }
          Rotation {
            Yaw: 60.9865112
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17275325472854315272
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger2"
            ObjectReference {
              SubObjectId: 17781047338698420086
            }
          }
          Overrides {
            Name: "cs:Content2"
            ObjectReference {
              SubObjectId: 4248125248693207606
            }
          }
          Overrides {
            Name: "cs:SmokeVolumeVFX"
            ObjectReference {
              SubObjectId: 18363450606008843366
            }
          }
          Overrides {
            Name: "cs:FireBreathWhoosh01SFX"
            ObjectReference {
              SubObjectId: 14915712118961100295
            }
          }
          Overrides {
            Name: "cs:FireandFlameBurningLoopSet01SFX"
            ObjectReference {
              SubObjectId: 13147427148866547594
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
            Id: 9814818740487277828
          }
        }
      }
      Objects {
        Id: 11360435321724344315
        Name: "Slot2"
        Transform {
          Location {
            X: -22.5717163
            Y: -20.056469
            Z: 68.71875
          }
          Rotation {
            Yaw: 47.7863312
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17275325472854315272
        ChildIds: 17781047338698420086
        ChildIds: 4248125248693207606
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
        Id: 17781047338698420086
        Name: "Trigger2"
        Transform {
          Location {
            X: 3.97592616
            Y: 3.0318327
            Z: 0.3125
          }
          Rotation {
            Yaw: 40
          }
          Scale {
            X: 0.6
            Y: 0.3
            Z: 0.1
          }
        }
        ParentId: 11360435321724344315
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
          InteractionLabel: "Place"
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
        Id: 4248125248693207606
        Name: "Content2"
        Transform {
          Location {
            X: -0.664545774
            Y: 0.871481061
          }
          Rotation {
            Yaw: 60
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11360435321724344315
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
        Id: 7652535940757758326
        Name: "Furnace"
        Transform {
          Location {
            X: 43.0637245
            Y: -19.6792126
            Z: -76.5786133
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17275325472854315272
        ChildIds: 14237003333305605891
        ChildIds: 9879167637383737730
        ChildIds: 10975657886394016934
        ChildIds: 11777966560040273798
        ChildIds: 3841994236594112403
        ChildIds: 327663161273413278
        ChildIds: 3911615841796709980
        ChildIds: 18363450606008843366
        ChildIds: 5480457035270975158
        ChildIds: 13364851557012828922
        ChildIds: 14248028161155219058
        ChildIds: 4738271568581250481
        ChildIds: 3457396858733329082
        ChildIds: 13147427148866547594
        ChildIds: 14915712118961100295
        ChildIds: 10751512847026983297
        ChildIds: 12079861771441731463
        ChildIds: 8668241968964980384
        ChildIds: 14822802817683995972
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
        Id: 14237003333305605891
        Name: "Stone Window"
        Transform {
          Location {
            X: -20.4460449
            Y: 1.11132812
            Z: 134.809814
          }
          Rotation {
          }
          Scale {
            X: 2.00788975
            Y: 0.73701185
            Z: 0.458183646
          }
        }
        ParentId: 7652535940757758326
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3114173396228208510
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
            Id: 6534982425371244976
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 9879167637383737730
        Name: "Stone Window"
        Transform {
          Location {
            X: -20.4460449
            Y: 1.11132812
          }
          Rotation {
          }
          Scale {
            X: 2.1718235
            Y: 0.836166918
            Z: 0.52726078
          }
        }
        ParentId: 7652535940757758326
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16761465073245672938
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
            Id: 6534982425371244976
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 10975657886394016934
        Name: "Stone Block Long"
        Transform {
          Location {
            X: -25.9009399
            Y: 3.3873291
            Z: 126.193848
          }
          Rotation {
          }
          Scale {
            X: 1.25271094
            Y: 3.12000084
            Z: 0.935771644
          }
        }
        ParentId: 7652535940757758326
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14307244558911102288
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            Id: 15886718253148322991
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 11777966560040273798
        Name: "Stone Block BIg"
        Transform {
          Location {
            X: 44.7060547
            Y: -0.22869873
            Z: 95.5480957
          }
          Rotation {
            Yaw: 89.9999924
          }
          Scale {
            X: 2.35534859
            Y: 0.323988557
            Z: 2.3715148
          }
        }
        ParentId: 7652535940757758326
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16761465073245672938
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
            Id: 246300559943947841
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 3841994236594112403
        Name: "Stone Block Long"
        Transform {
          Location {
            X: -24.7976685
            Y: 1.84533691
            Z: 222.724854
          }
          Rotation {
            Roll: -0.330749512
          }
          Scale {
            X: 0.370328456
            Y: 0.561699092
            Z: 0.826705337
          }
        }
        ParentId: 7652535940757758326
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14307244558911102288
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            Id: 15886718253148322991
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 327663161273413278
        Name: "Container - Square Thick 01"
        Transform {
          Location {
            X: 30.0792236
            Y: 2.1831665
            Z: 225.158447
          }
          Rotation {
          }
          Scale {
            X: 0.438769519
            Y: 0.643079937
            Z: 0.784967721
          }
        }
        ParentId: 7652535940757758326
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16761465073245672938
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.946865499
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1.75250185
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
            Id: 15359219410981882900
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 3911615841796709980
        Name: "Stone Block Long"
        Transform {
          Location {
            X: 31.0656738
            Y: 2.55786133
            Z: 263.90625
          }
          Rotation {
            Roll: -0.330749512
          }
          Scale {
            X: 0.279423922
            Y: 0.862152338
            Z: 0.826704562
          }
        }
        ParentId: 7652535940757758326
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14307244558911102288
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            Id: 15886718253148322991
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 18363450606008843366
        Name: "Smoke Volume VFX"
        Transform {
          Location {
            X: 29.5623169
            Y: 3.66192627
            Z: 293.757324
          }
          Rotation {
          }
          Scale {
            X: 0.321591794
            Y: 0.447691679
            Z: 0.237998024
          }
        }
        ParentId: 7652535940757758326
        UnregisteredParameters {
          Overrides {
            Name: "bp:Particle Scale Multiplier"
            Float: 1.21279657
          }
          Overrides {
            Name: "bp:Density"
            Float: 0.382343531
          }
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.162
              G: 0.162
              B: 0.162
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 2.49403286
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
        Blueprint {
          BlueprintAsset {
            Id: 1335839534518380270
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 5480457035270975158
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: -15.2270508
            Y: 15.09021
            Z: 6.47729492
          }
          Rotation {
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 7652535940757758326
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            Id: 9693473639395179127
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 13364851557012828922
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: -1.80010986
            Y: -41.1376953
            Z: 6.47729492
          }
          Rotation {
            Yaw: -104.447693
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 7652535940757758326
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            Id: 9693473639395179127
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 14248028161155219058
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: -16.6932373
            Y: -0.119140625
            Z: 32.3359375
          }
          Rotation {
            Pitch: 19.5102711
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 7652535940757758326
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            Id: 9693473639395179127
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 4738271568581250481
        Name: "Rock Pile 002"
        Transform {
          Location {
            X: -10.1032104
            Y: 10.5372314
            Z: 4.5793457
          }
          Rotation {
            Yaw: -75.2630692
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 7652535940757758326
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            Id: 9693473639395179127
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 3457396858733329082
        Name: "Decal Burnt Streak 01"
        Transform {
          Location {
            X: -33.2935944
            Y: -5.31624222
            Z: 12.875
          }
          Rotation {
            Yaw: 27.7010403
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 7652535940757758326
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
        Blueprint {
          BlueprintAsset {
            Id: 7182657614414770454
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
        Id: 13147427148866547594
        Name: "Fire and Flame Burning Loop Set 01 SFX"
        Transform {
          Location {
            Z: 38.0214844
          }
          Rotation {
            Yaw: 147.80928
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7652535940757758326
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
        Blueprint {
          BlueprintAsset {
            Id: 4524004223631073795
          }
          TeamSettings {
          }
          AudioBP {
            Repeat: true
            Volume: 1
            Falloff: 3600
            Radius: 400
            EnableOcclusion: true
            IsSpatializationEnabled: true
            IsAttenuationEnabled: true
          }
        }
      }
      Objects {
        Id: 14915712118961100295
        Name: "Fire Breath Whoosh 01 SFX"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 147.809296
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7652535940757758326
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
        AudioInstance {
          AudioAsset {
            Id: 18100653053081413021
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
        Id: 10751512847026983297
        Name: "Decal Burnt Streak 01"
        Transform {
          Location {
            X: -24.394825
            Y: -48.10606
            Z: 54.90625
          }
          Rotation {
            Yaw: 27.6998615
            Roll: -176.202499
          }
          Scale {
            X: 0.21
            Y: 0.2
            Z: 0.2
          }
        }
        ParentId: 7652535940757758326
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
        Blueprint {
          BlueprintAsset {
            Id: 7182657614414770454
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
        Id: 12079861771441731463
        Name: "Decal Burnt Streak 01"
        Transform {
          Location {
            X: 10.9581041
            Y: -3.5263989
            Z: 304.835693
          }
          Rotation {
            Pitch: 82.4389725
            Yaw: -19.3404236
            Roll: -16.0088806
          }
          Scale {
            X: 0.187168196
            Y: 0.231855407
            Z: 0.523806036
          }
        }
        ParentId: 7652535940757758326
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
        Blueprint {
          BlueprintAsset {
            Id: 7182657614414770454
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
        Id: 8668241968964980384
        Name: "Decal Burnt Streak 01"
        Transform {
          Location {
            X: 35.7411118
            Y: 8.06173897
            Z: 304.835693
          }
          Rotation {
            Pitch: 82.4348755
            Yaw: 155.334213
            Roll: -16.0097046
          }
          Scale {
            X: 0.187168196
            Y: 0.231855407
            Z: 0.523806036
          }
        }
        ParentId: 7652535940757758326
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
        Blueprint {
          BlueprintAsset {
            Id: 7182657614414770454
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
        Id: 14822802817683995972
        Name: "Decal Burnt Streak 01"
        Transform {
          Location {
            X: 14.6168203
            Y: -10.494915
            Z: 147.484863
          }
          Rotation {
            Pitch: 82.3241348
            Yaw: -106.155457
            Roll: -103.330933
          }
          Scale {
            X: 0.187168196
            Y: 0.231855407
            Z: 0.523806036
          }
        }
        ParentId: 7652535940757758326
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
        Blueprint {
          BlueprintAsset {
            Id: 7182657614414770454
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
    }
    Assets {
      Id: 6534982425371244976
      Name: "Stone Window"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_stone_window_001"
      }
    }
    Assets {
      Id: 16761465073245672938
      Name: "Brick Red Old 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_brick_red_old_001_uv"
      }
    }
    Assets {
      Id: 15886718253148322991
      Name: "Stone Block Long"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_fantasy_block_03"
      }
    }
    Assets {
      Id: 14307244558911102288
      Name: "Wood Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_raw_001_uv"
      }
    }
    Assets {
      Id: 246300559943947841
      Name: "Stone Block BIg"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_fantasy_block_04"
      }
    }
    Assets {
      Id: 15359219410981882900
      Name: "Container - Square Thick 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_container_square_thick_ref"
      }
    }
    Assets {
      Id: 1335839534518380270
      Name: "Smoke Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_smoke_volume_vfx"
      }
    }
    Assets {
      Id: 9693473639395179127
      Name: "Rock Pile 002"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rocks_small_002"
      }
    }
    Assets {
      Id: 7182657614414770454
      Name: "Decal Burnt Streaks 01"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_burned_streak_002_ref"
      }
    }
    Assets {
      Id: 4524004223631073795
      Name: "Fire and Flame Burning Loop Set 01 SFX"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_nature_fireloops_ref"
      }
    }
    Assets {
      Id: 18100653053081413021
      Name: "Fire Breath Whoosh 01 SFX"
      PlatformAssetType: 7
      PrimaryAsset {
        AssetType: "AudioAssetRef"
        AssetId: "sfx_fire_breath_whoosh_01_Cue_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 101
}
