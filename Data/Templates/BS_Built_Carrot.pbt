Assets {
  Id: 7208274064771872140
  Name: "BS_Built_Carrot"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7281647283810700788
      Objects {
        Id: 7281647283810700788
        Name: "BS_Built_Carrot"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 16026887448932006982
        ChildIds: 16742758897722618897
        ChildIds: 8839694892851892256
        ChildIds: 12723158562434890903
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
          FilePartitionName: "BS_Built_Carrot"
        }
      }
      Objects {
        Id: 16026887448932006982
        Name: "DestroyableProp"
        Transform {
          Location {
            X: 100
            Y: -100
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
        ParentId: 7281647283810700788
        UnregisteredParameters {
          Overrides {
            Name: "cs:HP"
            Int: 1
          }
          Overrides {
            Name: "cs:ItemId"
            String: "CARROT"
          }
          Overrides {
            Name: "cs:ItemId2"
            String: "CARROT_SEEDS"
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
        Id: 16742758897722618897
        Name: "BuiltFloor"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 7281647283810700788
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Ceiling:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Building_Floor:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Building_Floor:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Building_Ceiling:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 18265638366922665013
            }
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
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 10888788159873929006
          }
          Teams {
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
        Id: 8839694892851892256
        Name: "Carrots"
        Transform {
          Location {
            X: 98.2785645
            Y: -97.966011
            Z: 20.2714844
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7281647283810700788
        ChildIds: 395362974712079253
        ChildIds: 14941226195025872830
        ChildIds: 1277368313803581300
        ChildIds: 9331513079571722763
        ChildIds: 9955233404737171424
        ChildIds: 775871392325648321
        ChildIds: 900537056008596166
        ChildIds: 8081978235870738780
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
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
      }
      Objects {
        Id: 395362974712079253
        Name: "Carrot"
        Transform {
          Location {
            X: 53.5598145
            Y: -31.1479797
            Z: 3.03222656
          }
          Rotation {
            Roll: -179.999985
          }
          Scale {
            X: 0.2
            Y: 0.199999914
            Z: 0.29014644
          }
        }
        ParentId: 8839694892851892256
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 693266714481763774
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.919999957
              G: 0.383841068
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 8224606198145075673
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
      }
      Objects {
        Id: 14941226195025872830
        Name: "BuiltFloor"
        Transform {
          Location {
            X: 53.1140137
            Y: -30.3800964
            Z: 1.37890625
          }
          Rotation {
            Yaw: -175.295288
          }
          Scale {
            X: 0.05
            Y: 0.05
            Z: 0.3
          }
        }
        ParentId: 8839694892851892256
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Ceiling:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Building_Floor:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Building_Floor:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Building_Ceiling:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Nature_Grass:color"
            Color {
              R: 0.0565562397
              G: 0.61
              A: 1
            }
          }
          Overrides {
            Name: "ma:Nature_Grass:id"
            AssetReference {
              Id: 2221240351439648399
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 966563861414155672
          }
          Teams {
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
        Id: 1277368313803581300
        Name: "BuiltFloor"
        Transform {
          Location {
            X: 20.0299072
            Y: 33.6233673
          }
          Rotation {
            Yaw: -175.295288
          }
          Scale {
            X: 0.05
            Y: 0.05
            Z: 0.3
          }
        }
        ParentId: 8839694892851892256
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Ceiling:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Building_Floor:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Building_Floor:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Building_Ceiling:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Nature_Grass:color"
            Color {
              R: 0.0565562397
              G: 0.61
              A: 1
            }
          }
          Overrides {
            Name: "ma:Nature_Grass:id"
            AssetReference {
              Id: 2221240351439648399
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 966563861414155672
          }
          Teams {
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
        Id: 9331513079571722763
        Name: "BuiltFloor"
        Transform {
          Location {
            X: -18.9500732
            Y: -37.6487885
          }
          Rotation {
            Yaw: -175.295288
          }
          Scale {
            X: 0.05
            Y: 0.05
            Z: 0.3
          }
        }
        ParentId: 8839694892851892256
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Ceiling:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Building_Floor:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Building_Floor:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Building_Ceiling:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Nature_Grass:color"
            Color {
              R: 0.0565562397
              G: 0.61
              A: 1
            }
          }
          Overrides {
            Name: "ma:Nature_Grass:id"
            AssetReference {
              Id: 2221240351439648399
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 966563861414155672
          }
          Teams {
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
        Id: 9955233404737171424
        Name: "BuiltFloor"
        Transform {
          Location {
            X: -55.144043
            Y: 34.0056458
          }
          Rotation {
            Yaw: -175.295288
          }
          Scale {
            X: 0.05
            Y: 0.05
            Z: 0.3
          }
        }
        ParentId: 8839694892851892256
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Ceiling:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Building_Floor:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Building_Floor:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Building_Ceiling:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 18265638366922665013
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Nature_Grass:color"
            Color {
              R: 0.0565562397
              G: 0.61
              A: 1
            }
          }
          Overrides {
            Name: "ma:Nature_Grass:id"
            AssetReference {
              Id: 2221240351439648399
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 966563861414155672
          }
          Teams {
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
        Id: 775871392325648321
        Name: "Carrot"
        Transform {
          Location {
            X: 20.6588135
            Y: 34.196106
            Z: 3.03222656
          }
          Rotation {
            Roll: -179.999954
          }
          Scale {
            X: 0.2
            Y: 0.199999914
            Z: 0.29014644
          }
        }
        ParentId: 8839694892851892256
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 693266714481763774
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.919999957
              G: 0.383841068
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 8224606198145075673
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
      }
      Objects {
        Id: 900537056008596166
        Name: "Carrot"
        Transform {
          Location {
            X: -18.7468262
            Y: -37.258255
            Z: 3.03222656
          }
          Rotation {
            Roll: -179.999954
          }
          Scale {
            X: 0.2
            Y: 0.199999914
            Z: 0.29014644
          }
        }
        ParentId: 8839694892851892256
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 693266714481763774
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.919999957
              G: 0.383841068
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 8224606198145075673
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
      }
      Objects {
        Id: 8081978235870738780
        Name: "Carrot"
        Transform {
          Location {
            X: -54.5216064
            Y: 34.6099854
            Z: 3.03222656
          }
          Rotation {
            Roll: -179.999954
          }
          Scale {
            X: 0.2
            Y: 0.199999914
            Z: 0.29014644
          }
        }
        ParentId: 8839694892851892256
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 693266714481763774
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.919999957
              G: 0.383841068
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 8224606198145075673
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
      }
      Objects {
        Id: 12723158562434890903
        Name: "Trigger"
        Transform {
          Location {
            X: 100
            Y: -100
            Z: 66.5343
          }
          Rotation {
          }
          Scale {
            X: 1.6
            Y: 1.6
            Z: 1.6
          }
        }
        ParentId: 7281647283810700788
        ChildIds: 16706911355231216344
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
          InteractionLabel: "Harvest"
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
        Id: 16706911355231216344
        Name: "HarvestResource"
        Transform {
          Location {
            X: -62.5
            Y: 62.5
            Z: -41.5839386
          }
          Rotation {
          }
          Scale {
            X: 0.625
            Y: 0.625
            Z: 0.625
          }
        }
        ParentId: 12723158562434890903
        UnregisteredParameters {
          Overrides {
            Name: "cs:Trigger"
            ObjectReference {
              SubObjectId: 12723158562434890903
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
            Id: 429492259122887083
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
      Id: 18265638366922665013
      Name: "Dirt 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "dirt_001"
      }
    }
    Assets {
      Id: 8224606198145075673
      Name: "Pyramid - 6-Sided Truncated"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_sixsided_truncated_001"
      }
    }
    Assets {
      Id: 966563861414155672
      Name: "Grass Tall"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_grass_generic_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 91
}
