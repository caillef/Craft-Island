Assets {
  Id: 12562187500160957966
  Name: "BS_Built_Carrot_Seeds_3"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4758128176862215100
      Objects {
        Id: 4758128176862215100
        Name: "BS_Built_Carrot_Seeds_3"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 17580026275179731733
        ChildIds: 14293468445477592518
        ChildIds: 15246074019553645281
        ChildIds: 10135342614018923172
        UnregisteredParameters {
          Overrides {
            Name: "cs:CanGrow"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsFilePartition: true
        }
      }
      Objects {
        Id: 17580026275179731733
        Name: "Carrots"
        Transform {
          Location {
            X: 98.2785645
            Y: -97.966
            Z: 10.9958496
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4758128176862215100
        ChildIds: 845147228783519844
        ChildIds: 1470241366849551876
        ChildIds: 1248856731240457787
        ChildIds: 10848371703912763273
        ChildIds: 10784154315206504435
        ChildIds: 4708611633948422106
        ChildIds: 16748380888199075516
        ChildIds: 2197693847700588562
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
        Id: 845147228783519844
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
        ParentId: 17580026275179731733
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
          Value: "mc:ecollisionsetting:forceon"
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
        Id: 1470241366849551876
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
        ParentId: 17580026275179731733
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
          Value: "mc:ecollisionsetting:forceon"
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
        Id: 1248856731240457787
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
        ParentId: 17580026275179731733
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
          Value: "mc:ecollisionsetting:forceon"
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
        Id: 10848371703912763273
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
        ParentId: 17580026275179731733
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
          Value: "mc:ecollisionsetting:forceon"
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
        Id: 10784154315206504435
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
        ParentId: 17580026275179731733
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
          Value: "mc:ecollisionsetting:forceon"
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
        Id: 4708611633948422106
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
        ParentId: 17580026275179731733
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
          Value: "mc:ecollisionsetting:forceon"
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
        Id: 16748380888199075516
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
        ParentId: 17580026275179731733
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
          Value: "mc:ecollisionsetting:forceon"
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
        Id: 2197693847700588562
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
        ParentId: 17580026275179731733
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
          Value: "mc:ecollisionsetting:forceon"
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
        Id: 14293468445477592518
        Name: "GrowingAsset"
        Transform {
          Location {
            X: -108.682129
            Y: -305.106262
            Z: -1744.31226
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4758128176862215100
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
        Script {
          ScriptAsset {
            Id: 3863084310947232921
          }
        }
      }
      Objects {
        Id: 15246074019553645281
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
        ParentId: 4758128176862215100
        UnregisteredParameters {
          Overrides {
            Name: "cs:HP"
            Int: 1
          }
          Overrides {
            Name: "cs:ItemId"
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
        Id: 10135342614018923172
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
        ParentId: 4758128176862215100
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
      Id: 10888788159873929006
      Name: "Craftsman Floor 01 4m x 4m"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_sub_craftsman_floor_001_4x4"
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
