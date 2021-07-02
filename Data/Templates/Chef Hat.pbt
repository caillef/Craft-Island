Assets {
  Id: 13631205432516497022
  Name: "Chef Hat"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9758350699383850171
      Objects {
        Id: 9758350699383850171
        Name: "Chef Hat"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 6612924736495871238
        ChildIds: 3610803804270542138
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
        Equipment {
          SocketName: "head"
          PickupTrigger {
            SubObjectId: 6612924736495871238
          }
        }
      }
      Objects {
        Id: 6612924736495871238
        Name: "PickupTrigger"
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
        ParentId: 9758350699383850171
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
      }
      Objects {
        Id: 3610803804270542138
        Name: "chefs hat"
        Transform {
          Location {
          }
          Rotation {
            Yaw: 136.676498
          }
          Scale {
            X: 0.4
            Y: 0.4
            Z: 0.4
          }
        }
        ParentId: 9758350699383850171
        ChildIds: 6810603091139982345
        ChildIds: 3291757124683144154
        ChildIds: 9789325478170862121
        ChildIds: 13873474944316704144
        ChildIds: 1884285258502484020
        ChildIds: 4743783429729125211
        ChildIds: 7138784981573581739
        ChildIds: 15109523062396634201
        ChildIds: 11284217465624206771
        ChildIds: 5097535312401889527
        ChildIds: 13319151575891979774
        ChildIds: 15780694175591379383
        ChildIds: 12674049185364389943
        ChildIds: 9397836784043228224
        ChildIds: 2387375112054152198
        ChildIds: 10984784984333990916
        ChildIds: 10867200792775084030
        ChildIds: 8993458065614747622
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 6810603091139982345
        Name: "Pipe"
        Transform {
          Location {
            X: 1.44256592
            Y: 6.52941895
          }
          Rotation {
          }
          Scale {
            X: 0.94003588
            Y: 0.94003588
            Z: 0.331045568
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 5127246498295557853
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 3291757124683144154
        Name: "Rock 01"
        Transform {
          Location {
            X: 11.2268372
            Y: -34.6829834
            Z: 60.6727753
          }
          Rotation {
            Pitch: 4.37048054
            Yaw: 180
            Roll: 180
          }
          Scale {
            X: 0.127242818
            Y: 0.0443938076
            Z: 0.231573984
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 8170573550764267561
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 9789325478170862121
        Name: "Rock 03"
        Transform {
          Location {
            X: -24.1595764
            Y: -10.0125732
            Z: 57.02882
          }
          Rotation {
            Pitch: -2.11898422
            Yaw: 135.824417
            Roll: -174.654068
          }
          Scale {
            X: 0.138323665
            Y: 0.156138986
            Z: 0.4624722
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 8280071662505394976
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 13873474944316704144
        Name: "Rock 02"
        Transform {
          Location {
            X: 36.8669128
            Y: 10.956665
            Z: 61.4988251
          }
          Rotation {
            Pitch: 79.7890549
            Yaw: -35.6868401
            Roll: -42.0399094
          }
          Scale {
            X: 0.151200935
            Y: 0.13058272
            Z: 0.101394303
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 11980049898334225258
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 1884285258502484020
        Name: "Rock 02"
        Transform {
          Location {
            X: -34.9014587
            Y: 8.11547852
            Z: 62.1167374
          }
          Rotation {
            Pitch: 74.1440506
            Yaw: 59.8370628
            Roll: -13.5856962
          }
          Scale {
            X: 0.137930125
            Y: 0.0539753586
            Z: 0.284512818
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 11980049898334225258
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 4743783429729125211
        Name: "Rock 03"
        Transform {
          Location {
            X: -18.9821167
            Y: 33.9104
            Z: 65.3063812
          }
          Rotation {
            Pitch: 0.608228326
            Yaw: 150.710571
            Roll: 179.667297
          }
          Scale {
            X: 0.138323605
            Y: 0.253299564
            Z: 0.384949625
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 8280071662505394976
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 7138784981573581739
        Name: "Rock 03"
        Transform {
          Location {
            X: -39.4089661
            Y: -6.02417
            Z: 37.1031609
          }
          Rotation {
            Pitch: -2.11898422
            Yaw: 98.3512115
            Roll: -174.654068
          }
          Scale {
            X: 0.0968620703
            Y: -0.00690017361
            Z: 0.156570911
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 8280071662505394976
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 15109523062396634201
        Name: "Hill 05"
        Transform {
          Location {
            X: -15.4806519
            Y: 2.87854
            Z: 107.004883
          }
          Rotation {
          }
          Scale {
            X: 0.0712272227
            Y: 0.108407423
            Z: 0.0653932095
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 17045322517111806105
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 11284217465624206771
        Name: "Hill 05"
        Transform {
          Location {
            X: 11.1601563
            Y: 0.56640625
            Z: 109.771851
          }
          Rotation {
            Pitch: 1.61775076
            Yaw: 140.924561
            Roll: 1.99133897
          }
          Scale {
            X: 0.0783049166
            Y: 0.108480647
            Z: 0.0786230788
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 17045322517111806105
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 5097535312401889527
        Name: "Rock 03"
        Transform {
          Location {
            X: 8.37268066
            Y: 41.8603516
            Z: 65.3063812
          }
          Rotation {
            Pitch: 0.608228326
            Yaw: 94.0991516
            Roll: 179.667236
          }
          Scale {
            X: 0.139241725
            Y: 0.254980922
            Z: 0.387504935
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 8280071662505394976
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 13319151575891979774
        Name: "Hill 04"
        Transform {
          Location {
            X: -18.204071
            Y: -31.5556641
            Z: 59.0412445
          }
          Rotation {
            Pitch: -4.74880505
            Yaw: -23.0959606
            Roll: -92.9415894
          }
          Scale {
            X: 0.168961167
            Y: 0.206198514
            Z: 0.0708020851
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
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
            Id: 10121494326122577521
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 15780694175591379383
        Name: "Hill 04"
        Transform {
          Location {
            X: 39.3905945
            Y: -7.78735352
            Z: 59.0412445
          }
          Rotation {
            Pitch: 6.31726217
            Yaw: 74.5931244
            Roll: -95.9814758
          }
          Scale {
            X: 0.24895367
            Y: 0.206198812
            Z: 0.0708037466
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
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
            Id: 10121494326122577521
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 12674049185364389943
        Name: "Hill 04"
        Transform {
          Location {
            X: 27.9318237
            Y: -25.9614258
            Z: 59.0412369
          }
          Rotation {
            Pitch: -10.2203054
            Yaw: 37.891037
            Roll: -94.9950562
          }
          Scale {
            X: 0.139763027
            Y: 0.206198871
            Z: 0.0708038062
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
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
            Id: 10121494326122577521
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 9397836784043228224
        Name: "Hill 04"
        Transform {
          Location {
            X: 36.0977173
            Y: 32.529541
            Z: 59.0412369
          }
          Rotation {
            Pitch: -9.09542751
            Yaw: 126.885498
            Roll: -94.1101532
          }
          Scale {
            X: 0.214896441
            Y: 0.206198588
            Z: 0.0708035678
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
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
            Id: 10121494326122577521
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 2387375112054152198
        Name: "Hill 05"
        Transform {
          Location {
            X: 3.40289307
            Y: 4.10205078
            Z: 109.110275
          }
          Rotation {
            Yaw: 25.1077938
          }
          Scale {
            X: 0.0645949766
            Y: 0.128946453
            Z: 0.078693144
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 17045322517111806105
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 10984784984333990916
        Name: "Hill 04"
        Transform {
          Location {
            X: -30.571106
            Y: -23.5913086
            Z: 59.0412445
          }
          Rotation {
            Pitch: -4.74880505
            Yaw: -44.6368484
            Roll: -92.9415512
          }
          Scale {
            X: 0.168961167
            Y: 0.206198514
            Z: 0.0708020851
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
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
            Id: 10121494326122577521
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 10867200792775084030
        Name: "Hill 05"
        Transform {
          Location {
            X: -19.9928589
            Y: -1.04724121
            Z: 107.004883
          }
          Rotation {
          }
          Scale {
            X: 0.060315311
            Y: 0.0917995572
            Z: 0.0553750619
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 17045322517111806105
          }
          Teams {
            IsTeamCollisionEnabled: true
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
        Id: 8993458065614747622
        Name: "Hill 05"
        Transform {
          Location {
            X: 25.8082581
            Y: -0.789428711
            Z: 103.50425
          }
          Rotation {
            Pitch: 7.3451848
            Yaw: 140.55748
            Roll: -2.69946313
          }
          Scale {
            X: 0.0783048645
            Y: 0.0729883611
            Z: 0.0786232
          }
        }
        ParentId: 3610803804270542138
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11095127319249487533
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
            Id: 17045322517111806105
          }
          Teams {
            IsTeamCollisionEnabled: true
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
    }
    Assets {
      Id: 5127246498295557853
      Name: "Pipe"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_001"
      }
    }
    Assets {
      Id: 8170573550764267561
      Name: "Rock 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rock_generic_001"
      }
    }
    Assets {
      Id: 8280071662505394976
      Name: "Rock 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rock_generic_003"
      }
    }
    Assets {
      Id: 11980049898334225258
      Name: "Rock 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_rock_generic_002_sm_rock_generic_002_LOD0"
      }
    }
    Assets {
      Id: 17045322517111806105
      Name: "Hill 05"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hill_005"
      }
    }
    Assets {
      Id: 10121494326122577521
      Name: "Hill 04"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hill_004"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 91
}
