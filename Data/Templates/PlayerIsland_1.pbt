Assets {
  Id: 3526051123066352755
  Name: "PlayerIsland"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10521384055258147901
      Objects {
        Id: 10521384055258147901
        Name: "PlayerIsland"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 14249821473658384158
        ChildIds: 5255360405524450925
        ChildIds: 10226459261057948952
        ChildIds: 16416874873876112814
        ChildIds: 2639798720120084045
        ChildIds: 7057006111918251491
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "PlayerIsland"
        }
      }
      Objects {
        Id: 14249821473658384158
        Name: "PlayerIsland"
        Transform {
          Location {
            X: -3047.03125
            Y: 2114.8125
            Z: -312.5
          }
          Rotation {
          }
          Scale {
            X: 10
            Y: 10
            Z: 12.5
          }
        }
        ParentId: 10521384055258147901
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Ceiling:id"
            AssetReference {
              Id: 15489264590935870572
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 15489264590935870572
            }
          }
          Overrides {
            Name: "ma:Building_Floor:id"
            AssetReference {
              Id: 15489264590935870572
            }
          }
          Overrides {
            Name: "ma:Building_Ceiling:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Building_Floor:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10888788159873929006
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
        Id: 5255360405524450925
        Name: "Portal"
        Transform {
          Location {
            X: -2250
            Z: 0.000152587891
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
        ParentId: 10521384055258147901
        ChildIds: 14306283290168237528
        ChildIds: 6994347822000298511
        ChildIds: 5821074503981983362
        UnregisteredParameters {
          Overrides {
            Name: "cs:Destination"
            String: "main_island"
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
        WantsNetworking: true
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
        Id: 14306283290168237528
        Name: "Trigger"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 3.00000024
            Y: 0.5
            Z: 3
          }
        }
        ParentId: 5255360405524450925
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Trigger {
          InteractionLabel: "Take Portal to your island"
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
        Id: 6994347822000298511
        Name: "GamePortal"
        Transform {
          Location {
            Z: -200
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 5255360405524450925
        UnregisteredParameters {
          Overrides {
            Name: "cs:ComponentRoot"
            ObjectReference {
              SubObjectId: 5255360405524450925
            }
          }
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 14306283290168237528
            }
          }
          Overrides {
            Name: "cs:TeleportManager"
            ObjectReference {
              SelfId: 11215959900169722424
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
        Script {
          ScriptAsset {
            Id: 9097637882889565073
          }
        }
      }
      Objects {
        Id: 5821074503981983362
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
        ParentId: 5255360405524450925
        ChildIds: 65512213471841164
        ChildIds: 6487158258902564995
        WantsNetworking: true
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
        Id: 65512213471841164
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
        ParentId: 5821074503981983362
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
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 16353917461806733124
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
        Id: 6487158258902564995
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
        ParentId: 5821074503981983362
        ChildIds: 4642714945114862229
        WantsNetworking: true
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
        Id: 4642714945114862229
        Name: "Portal VFX"
        Transform {
          Location {
          }
          Rotation {
            Yaw: -89.9999619
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6487158258902564995
        UnregisteredParameters {
          Overrides {
            Name: "bp:Portal Shape"
            Int: 1
          }
          Overrides {
            Name: "bp:Portal Spread"
            Float: 0.4
          }
          Overrides {
            Name: "bp:Intensity Color Blend"
            Float: 1
          }
          Overrides {
            Name: "bp:Background Texture"
            Enum {
              Value: "mc:eportalbackground:15"
            }
          }
          Overrides {
            Name: "bp:Scene View Distortion Type"
            Enum {
              Value: "mc:eportalscenedistortiontype:newenumerator0"
            }
          }
          Overrides {
            Name: "bp:Edge Distortion"
            Float: 0
          }
          Overrides {
            Name: "bp:Speed"
            Float: 0.247848794
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 6677237403455816226
          }
        }
      }
      Objects {
        Id: 10226459261057948952
        Name: "Props"
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
        ParentId: 10521384055258147901
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
          FilePartitionName: "Props_3"
        }
      }
      Objects {
        Id: 16416874873876112814
        Name: "Structures"
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
        ParentId: 10521384055258147901
        WantsNetworking: true
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
        Id: 2639798720120084045
        Name: "Furnace"
        Transform {
          Location {
            X: -2240.78125
            Y: -471.90625
            Z: 95.96875
          }
          Rotation {
            Yaw: -175.113586
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10521384055258147901
        ChildIds: 17550527346487479618
        ChildIds: 17452481653160986515
        ChildIds: 15886379163901408546
        ChildIds: 6878163893074442270
        ChildIds: 1303169113564383121
        WantsNetworking: true
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
        Id: 17550527346487479618
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
        ParentId: 2639798720120084045
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger1"
            ObjectReference {
              SubObjectId: 5060318541883711169
            }
          }
          Overrides {
            Name: "cs:Content1"
            ObjectReference {
              SubObjectId: 13040300766521747353
            }
          }
          Overrides {
            Name: "cs:Trigger2"
            ObjectReference {
              SubObjectId: 18316351327711752340
            }
          }
          Overrides {
            Name: "cs:Content2"
            ObjectReference {
              SubObjectId: 6840258583604456549
            }
          }
          Overrides {
            Name: "cs:Trigger3"
            ObjectReference {
              SubObjectId: 14837016921964789209
            }
          }
          Overrides {
            Name: "cs:Content3"
            ObjectReference {
              SubObjectId: 15305395116376118405
            }
          }
          Overrides {
            Name: "cs:SmokeVolumeVFX"
            ObjectReference {
              SubObjectId: 7273975144122578622
            }
          }
          Overrides {
            Name: "cs:FireBreathWhoosh01SFX"
            ObjectReference {
              SubObjectId: 7181099756533676606
            }
          }
          Overrides {
            Name: "cs:FireandFlameBurningLoopSet01SFX"
            ObjectReference {
              SubObjectId: 12735240938673251961
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
        Script {
          ScriptAsset {
            Id: 9814818740487277828
          }
        }
      }
      Objects {
        Id: 17452481653160986515
        Name: "Slot1"
        Transform {
          Location {
            X: -13.6194191
            Y: -37.5074539
            Z: 68.71875
          }
          Rotation {
            Yaw: 97.7864227
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2639798720120084045
        ChildIds: 5060318541883711169
        ChildIds: 13040300766521747353
        WantsNetworking: true
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
        Id: 5060318541883711169
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
        ParentId: 17452481653160986515
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
        Id: 13040300766521747353
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
        ParentId: 17452481653160986515
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
        Id: 15886379163901408546
        Name: "Slot2"
        Transform {
          Location {
            X: -1.7516098
            Y: -24.1573448
            Z: 68.71875
          }
          Rotation {
            Yaw: 97.7864227
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2639798720120084045
        ChildIds: 18316351327711752340
        ChildIds: 6840258583604456549
        WantsNetworking: true
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
        Id: 18316351327711752340
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
        ParentId: 15886379163901408546
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
        Id: 6840258583604456549
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
        ParentId: 15886379163901408546
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
        Id: 6878163893074442270
        Name: "Slot3"
        Transform {
          Location {
            X: -13.3671169
            Y: -11.8105536
            Z: 68.71875
          }
          Rotation {
            Yaw: 97.7864227
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2639798720120084045
        ChildIds: 14837016921964789209
        ChildIds: 15305395116376118405
        WantsNetworking: true
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
        Id: 14837016921964789209
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
        ParentId: 6878163893074442270
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
        Id: 15305395116376118405
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
        ParentId: 6878163893074442270
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
        Id: 1303169113564383121
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
        ParentId: 2639798720120084045
        ChildIds: 1027161351965225992
        ChildIds: 8787258377187015219
        ChildIds: 4754698676023261119
        ChildIds: 11389634818471634882
        ChildIds: 11178862079731792014
        ChildIds: 13013241027297305860
        ChildIds: 8857647387804100731
        ChildIds: 7273975144122578622
        ChildIds: 8345056106991798559
        ChildIds: 14712791274637522616
        ChildIds: 7776703922520553263
        ChildIds: 17848755617016482478
        ChildIds: 4201216850675201021
        ChildIds: 12735240938673251961
        ChildIds: 7181099756533676606
        ChildIds: 5116333174525920994
        ChildIds: 9524611452129747594
        ChildIds: 10849822090448240007
        ChildIds: 2851461565458480461
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
        Id: 1027161351965225992
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
        ParentId: 1303169113564383121
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
        Id: 8787258377187015219
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
        ParentId: 1303169113564383121
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
        Id: 4754698676023261119
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
        ParentId: 1303169113564383121
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
        Id: 11389634818471634882
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
        ParentId: 1303169113564383121
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
        Id: 11178862079731792014
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
        ParentId: 1303169113564383121
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
        Id: 13013241027297305860
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
        ParentId: 1303169113564383121
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
        Id: 8857647387804100731
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
        ParentId: 1303169113564383121
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
        Id: 7273975144122578622
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
        ParentId: 1303169113564383121
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
        Id: 8345056106991798559
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
        ParentId: 1303169113564383121
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
        Id: 14712791274637522616
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
        ParentId: 1303169113564383121
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
        Id: 7776703922520553263
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
        ParentId: 1303169113564383121
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
        Id: 17848755617016482478
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
        ParentId: 1303169113564383121
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
        Id: 4201216850675201021
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
        ParentId: 1303169113564383121
        WantsNetworking: true
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
        Id: 12735240938673251961
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
        ParentId: 1303169113564383121
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
        Id: 7181099756533676606
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
        ParentId: 1303169113564383121
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
        Id: 5116333174525920994
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
        ParentId: 1303169113564383121
        WantsNetworking: true
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
        Id: 9524611452129747594
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
        ParentId: 1303169113564383121
        WantsNetworking: true
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
        Id: 10849822090448240007
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
        ParentId: 1303169113564383121
        WantsNetworking: true
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
        Id: 2851461565458480461
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
        ParentId: 1303169113564383121
        WantsNetworking: true
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
        Id: 7057006111918251491
        Name: "BuildingZone"
        Transform {
          Location {
            X: -974.871826
            Y: 107.062012
            Z: 3.17333984
          }
          Rotation {
          }
          Scale {
            X: 58.2821045
            Y: 66.6936722
            Z: 34.614727
          }
        }
        ParentId: 10521384055258147901
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
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
      }
    }
    Assets {
      Id: 10888788159873929006
      Name: "Craftsman Floor 01 4m x 4m"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_sub_craftsman_floor_001_4x4"
      }
    }
    Assets {
      Id: 15489264590935870572
      Name: "Grass Basic"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_001_uv"
      }
    }
    Assets {
      Id: 16353917461806733124
      Name: "Ring - Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_003"
      }
    }
    Assets {
      Id: 10184847056121543272
      Name: "Basic Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_pbr_material_001"
      }
    }
    Assets {
      Id: 6677237403455816226
      Name: "Portal VFX"
      PlatformAssetType: 6
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_portal"
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
  SerializationVersion: 70
}
