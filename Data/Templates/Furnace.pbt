Assets {
  Id: 13041492140229318254
  Name: "Furnace"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7099311463131511279
      Objects {
        Id: 7099311463131511279
        Name: "Furnace"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 13089817289823118048
        ChildIds: 12976008807731226673
        ChildIds: 11119494632516655744
        ChildIds: 1824948801305614268
        ChildIds: 6067027912429807667
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Furnace"
        }
      }
      Objects {
        Id: 13089817289823118048
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
        ParentId: 7099311463131511279
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger1"
            ObjectReference {
              SubObjectId: 8580852242657635
            }
          }
          Overrides {
            Name: "cs:Content1"
            ObjectReference {
              SubObjectId: 17500940522960603195
            }
          }
          Overrides {
            Name: "cs:Trigger2"
            ObjectReference {
              SubObjectId: 13265177499681513270
            }
          }
          Overrides {
            Name: "cs:Content2"
            ObjectReference {
              SubObjectId: 1786480079032370119
            }
          }
          Overrides {
            Name: "cs:Trigger3"
            ObjectReference {
              SubObjectId: 10070062638247547515
            }
          }
          Overrides {
            Name: "cs:Content3"
            ObjectReference {
              SubObjectId: 10538439750511950631
            }
          }
          Overrides {
            Name: "cs:SmokeVolumeVFX"
            ObjectReference {
              SubObjectId: 2510186149229910300
            }
          }
          Overrides {
            Name: "cs:FireBreathWhoosh01SFX"
            ObjectReference {
              SubObjectId: 2706598453832799644
            }
          }
          Overrides {
            Name: "cs:FireandFlameBurningLoopSet01SFX"
            ObjectReference {
              SubObjectId: 17769808792375495131
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
            Id: 9814818740487277828
          }
        }
      }
      Objects {
        Id: 12976008807731226673
        Name: "Slot1"
        Transform {
          Location {
            X: -24.004015
            Y: -37.1154861
            Z: 68.706543
          }
          Rotation {
            Yaw: 90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7099311463131511279
        ChildIds: 8580852242657635
        ChildIds: 17500940522960603195
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
        Id: 8580852242657635
        Name: "Trigger1"
        Transform {
          Location {
            X: -5.36125374
            Y: 11.8044653
            Z: -5.92285156
          }
          Rotation {
          }
          Scale {
            X: 0.197137609
            Y: 0.228684306
            Z: 0.3
          }
        }
        ParentId: 12976008807731226673
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
        Id: 17500940522960603195
        Name: "Content1"
        Transform {
          Location {
            X: -5.94352722
            Y: 5.5776639
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
        ParentId: 12976008807731226673
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 11119494632516655744
        Name: "Slot2"
        Transform {
          Location {
            X: -10.3688831
            Y: -25.4290199
            Z: 68.706543
          }
          Rotation {
            Yaw: 90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7099311463131511279
        ChildIds: 13265177499681513270
        ChildIds: 1786480079032370119
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
        Id: 13265177499681513270
        Name: "Trigger2"
        Transform {
          Location {
            X: 6.40889597
            Y: 11.3234844
            Z: 4.49584961
          }
          Rotation {
          }
          Scale {
            X: 0.204916909
            Y: 0.229403362
            Z: 0.3
          }
        }
        ParentId: 11119494632516655744
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
        Id: 1786480079032370119
        Name: "Content2"
        Transform {
          Location {
            X: 5.18392277
            Y: 5.3311367
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
        ParentId: 11119494632516655744
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 1824948801305614268
        Name: "Slot3"
        Transform {
          Location {
            X: -25.3740311
            Y: -10.5028572
            Z: 68.706543
          }
          Rotation {
            Yaw: 90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7099311463131511279
        ChildIds: 10070062638247547515
        ChildIds: 10538439750511950631
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
        Id: 10070062638247547515
        Name: "Trigger3"
        Transform {
          Location {
            X: 17.8245621
            Y: 10.5740032
            Z: -5.60498047
          }
          Rotation {
          }
          Scale {
            X: 0.205761403
            Y: 0.235799819
            Z: 0.3
          }
        }
        ParentId: 1824948801305614268
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
        Id: 10538439750511950631
        Name: "Content3"
        Transform {
          Location {
            X: 20.6239662
            Y: 6.57596493
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
        ParentId: 1824948801305614268
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 6067027912429807667
        Name: "Furnace"
        Transform {
          Location {
            X: 43.0637
            Y: -19.6791954
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
        ParentId: 7099311463131511279
        ChildIds: 5217021135184698282
        ChildIds: 4599648794962335121
        ChildIds: 566245857450842141
        ChildIds: 15580128555054008416
        ChildIds: 15926112632985704236
        ChildIds: 17491964588917148326
        ChildIds: 4380612126004004825
        ChildIds: 2510186149229910300
        ChildIds: 3884416847679153853
        ChildIds: 9946751096258713882
        ChildIds: 3299950889548077197
        ChildIds: 12795892508236227852
        ChildIds: 8965005139851566175
        ChildIds: 17769808792375495131
        ChildIds: 2706598453832799644
        ChildIds: 83172764427233600
        ChildIds: 13981873079551888680
        ChildIds: 15039189789416641061
        ChildIds: 7040760047991968495
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 5217021135184698282
        Name: "Stone Window"
        Transform {
          Location {
            X: -20.4460449
            Y: 1.11132813
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
        ParentId: 6067027912429807667
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3114173396228208510
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
            Id: 6534982425371244976
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
      }
      Objects {
        Id: 4599648794962335121
        Name: "Stone Window"
        Transform {
          Location {
            X: -20.4460449
            Y: 1.11132813
          }
          Rotation {
          }
          Scale {
            X: 2.1718235
            Y: 0.836166918
            Z: 0.52726078
          }
        }
        ParentId: 6067027912429807667
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
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 6534982425371244976
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
      }
      Objects {
        Id: 566245857450842141
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
        ParentId: 6067027912429807667
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
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 15886718253148322991
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
      }
      Objects {
        Id: 15580128555054008416
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
        ParentId: 6067027912429807667
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16761465073245672938
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
            Id: 246300559943947841
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
      }
      Objects {
        Id: 15926112632985704236
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
        ParentId: 6067027912429807667
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
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 15886718253148322991
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
      }
      Objects {
        Id: 17491964588917148326
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
        ParentId: 6067027912429807667
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
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 15359219410981882900
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
      }
      Objects {
        Id: 4380612126004004825
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
        ParentId: 6067027912429807667
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
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 15886718253148322991
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
      }
      Objects {
        Id: 2510186149229910300
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
        ParentId: 6067027912429807667
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
      }
      Objects {
        Id: 3884416847679153853
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
        ParentId: 6067027912429807667
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            Id: 9693473639395179127
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
      }
      Objects {
        Id: 9946751096258713882
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
        ParentId: 6067027912429807667
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            Id: 9693473639395179127
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
      }
      Objects {
        Id: 3299950889548077197
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
        ParentId: 6067027912429807667
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            Id: 9693473639395179127
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
      }
      Objects {
        Id: 12795892508236227852
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
        ParentId: 6067027912429807667
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            Id: 9693473639395179127
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
      }
      Objects {
        Id: 8965005139851566175
        Name: "Decal Burnt Streak 01"
        Transform {
          Location {
            X: 61.596756
            Y: -63.6200867
            Z: 12.8862305
          }
          Rotation {
            Yaw: 27.7010403
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6067027912429807667
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      }
      Objects {
        Id: 17769808792375495131
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
        ParentId: 6067027912429807667
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
        Id: 2706598453832799644
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
        ParentId: 6067027912429807667
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
        Id: 83172764427233600
        Name: "Decal Burnt Streak 01"
        Transform {
          Location {
            X: 36.0824394
            Y: -15.0221481
            Z: 54.918457
          }
          Rotation {
            Yaw: 27.6998615
            Roll: -176.202499
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6067027912429807667
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      }
      Objects {
        Id: 13981873079551888680
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
        ParentId: 6067027912429807667
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      }
      Objects {
        Id: 15039189789416641061
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
        ParentId: 6067027912429807667
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      }
      Objects {
        Id: 7040760047991968495
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
        ParentId: 6067027912429807667
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      Name: "Decal Burnt Streak 01"
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
  SerializationVersion: 68
}
