Assets {
  Id: 6683731155545627578
  Name: "Drivable Jeep"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7826636824751212454
      Objects {
        Id: 7826636824751212454
        Name: "Jeep"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 3302058446359771196
        ChildIds: 16143662571461325873
        ChildIds: 14599252170712653999
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
          SocketName: "chest"
          PickupTrigger {
            SubObjectId: 16143662571461325873
          }
        }
      }
      Objects {
        Id: 3302058446359771196
        Name: "root"
        Transform {
          Location {
            X: -32.9580078
            Y: 88.8300781
            Z: 74.1504822
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7826636824751212454
        ChildIds: 12362893300412412450
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
        NetworkContext {
        }
      }
      Objects {
        Id: 12362893300412412450
        Name: "JEEPERS!"
        Transform {
          Location {
            X: 101.085205
            Y: -112.149841
            Z: -22.8323364
          }
          Rotation {
            Pitch: 0.0652829409
            Yaw: -92.2149353
            Roll: 1.68229699
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3302058446359771196
        ChildIds: 6407004323328202784
        ChildIds: 9411345760525972416
        ChildIds: 6002347831616486996
        ChildIds: 8505018669950580951
        ChildIds: 6340633284040619194
        ChildIds: 655568188196944852
        ChildIds: 8261434728616317631
        ChildIds: 9828746054094513862
        ChildIds: 7322396535552853283
        ChildIds: 10946996350328241680
        UnregisteredParameters {
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
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
        Id: 6407004323328202784
        Name: "Front_R_Tire"
        Transform {
          Location {
            X: -159.504669
            Y: 118.547028
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12362893300412412450
        ChildIds: 5849926071323147962
        ChildIds: 4945871721272732142
        ChildIds: 11575289910578422329
        ChildIds: 8620068383051959649
        ChildIds: 12937687679356366149
        ChildIds: 6282257676990641513
        ChildIds: 9492319752542317824
        ChildIds: 9015424279929455284
        ChildIds: 4441124297178818361
        ChildIds: 5841316665424182288
        ChildIds: 4157962242451022200
        ChildIds: 3913058756157733125
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 5849926071323147962
        Name: "Tread_A"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Pitch: -17.9999924
            Yaw: -90.0000076
          }
          Scale {
            X: 2.5
            Y: 4.25
            Z: 2.5
          }
        }
        ParentId: 6407004323328202784
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 7324235194893113792
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
        Id: 4945871721272732142
        Name: "Tread_B"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 2.5
            Y: 4.25
            Z: 2.5
          }
        }
        ParentId: 6407004323328202784
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 7324235194893113792
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
        Id: 11575289910578422329
        Name: "Tire_Frame_Cneter"
        Transform {
          Location {
            X: -30.000061
          }
          Rotation {
            Yaw: -89.9999695
            Roll: 89.9999542
          }
          Scale {
            X: 1.04166675
            Y: 1.01190448
            Z: 1.875
          }
        }
        ParentId: 6407004323328202784
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:color"
            Color {
              R: 0.63
              G: 3.00407407e-07
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
            Id: 2045656181030396645
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
        Id: 8620068383051959649
        Name: "Lug_Nut_A"
        Transform {
          Location {
            X: -0.000244140625
            Y: 3
            Z: -15
          }
          Rotation {
            Yaw: -2.04905427e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 6407004323328202784
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 12937687679356366149
        Name: "Lug_Nut_B"
        Transform {
          Location {
            X: -0.000244140625
            Y: -13
            Z: -7
          }
          Rotation {
            Yaw: -4.78112743e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 6407004323328202784
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 6282257676990641513
        Name: "Lug_Nut_C"
        Transform {
          Location {
            X: -0.000244140625
            Y: -12
            Z: 11
          }
          Rotation {
            Yaw: -5.1226365e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 6407004323328202784
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 9492319752542317824
        Name: "Lug_Nut_D"
        Transform {
          Location {
            X: -0.000244140625
            Y: 7
            Z: 13
          }
          Rotation {
            Yaw: -5.12263687e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 6407004323328202784
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 9015424279929455284
        Name: "Lug_Nut_E"
        Transform {
          Location {
            X: -0.000183105469
            Y: 15
            Z: -2
          }
          Rotation {
            Yaw: -4.78112743e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 6407004323328202784
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 4441124297178818361
        Name: "Inner_Frame"
        Transform {
          Location {
            X: 20
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 1.66666675
            Y: 0.809523642
            Z: 1.66666675
          }
        }
        ParentId: 6407004323328202784
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2976538755313112465
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
            Id: 7324235194893113792
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
        Id: 5841316665424182288
        Name: "Outer_Frame"
        Transform {
          Location {
            X: -20
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 1.66666675
            Y: 0.809523642
            Z: 1.66666675
          }
        }
        ParentId: 6407004323328202784
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14294604188141807124
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
            Id: 7324235194893113792
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
        Id: 4157962242451022200
        Name: "Main_Tire"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Yaw: -89.9999695
            Roll: 89.9999542
          }
          Scale {
            X: 0.833333373
            Y: 0.787036896
            Z: 1.16666663
          }
        }
        ParentId: 6407004323328202784
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 3859650733230292738
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
        Id: 3913058756157733125
        Name: "Inner_Frame_Main"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 0.99999994
            Y: 3.64285588
            Z: 0.99999994
          }
        }
        ParentId: 6407004323328202784
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 12695619787122085888
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
        Id: 9411345760525972416
        Name: "Front_L_Tire"
        Transform {
          Location {
            X: 138.853058
            Y: 118.547028
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: -1
          }
        }
        ParentId: 12362893300412412450
        ChildIds: 9665411205124058274
        ChildIds: 14653980600288775223
        ChildIds: 2001289303189489705
        ChildIds: 9612404851768843891
        ChildIds: 1291573268032025603
        ChildIds: 9637523989020867278
        ChildIds: 4436448325730307473
        ChildIds: 13959533081725404041
        ChildIds: 17604215063789347506
        ChildIds: 5522524657004051811
        ChildIds: 8415987019523679957
        ChildIds: 9642785791511398742
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 9665411205124058274
        Name: "Tread_A"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Pitch: -17.9999924
            Yaw: -90.0000076
          }
          Scale {
            X: 2.5
            Y: 4.25
            Z: 2.5
          }
        }
        ParentId: 9411345760525972416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 7324235194893113792
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
        Id: 14653980600288775223
        Name: "Tread_B"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 2.5
            Y: 4.25
            Z: 2.5
          }
        }
        ParentId: 9411345760525972416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 7324235194893113792
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
        Id: 2001289303189489705
        Name: "Tire_Frame_Cneter"
        Transform {
          Location {
            X: -30.000061
          }
          Rotation {
            Yaw: -89.9999695
            Roll: 89.9999542
          }
          Scale {
            X: 1.04166675
            Y: 1.01190448
            Z: 1.875
          }
        }
        ParentId: 9411345760525972416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:color"
            Color {
              R: 0.63
              G: 3.00407407e-07
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
            Id: 2045656181030396645
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
        Id: 9612404851768843891
        Name: "Lug_Nut_A"
        Transform {
          Location {
            X: -0.000244140625
            Y: 3
            Z: -15
          }
          Rotation {
            Yaw: -2.04905427e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 9411345760525972416
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 1291573268032025603
        Name: "Lug_Nut_B"
        Transform {
          Location {
            X: -0.000244140625
            Y: -13
            Z: -7
          }
          Rotation {
            Yaw: -4.78112743e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 9411345760525972416
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 9637523989020867278
        Name: "Lug_Nut_C"
        Transform {
          Location {
            X: -0.000244140625
            Y: -12
            Z: 11
          }
          Rotation {
            Yaw: -5.1226365e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 9411345760525972416
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 4436448325730307473
        Name: "Lug_Nut_D"
        Transform {
          Location {
            X: -0.000244140625
            Y: 7
            Z: 13
          }
          Rotation {
            Yaw: -5.12263687e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 9411345760525972416
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 13959533081725404041
        Name: "Lug_Nut_E"
        Transform {
          Location {
            X: -0.000183105469
            Y: 15
            Z: -2
          }
          Rotation {
            Yaw: -4.78112743e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 9411345760525972416
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 17604215063789347506
        Name: "Inner_Frame"
        Transform {
          Location {
            X: 20
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 1.66666675
            Y: 0.809523642
            Z: 1.66666675
          }
        }
        ParentId: 9411345760525972416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2976538755313112465
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
            Id: 7324235194893113792
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
        Id: 5522524657004051811
        Name: "Outer_Frame"
        Transform {
          Location {
            X: -20
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 1.66666675
            Y: 0.809523642
            Z: 1.66666675
          }
        }
        ParentId: 9411345760525972416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14294604188141807124
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
            Id: 7324235194893113792
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
        Id: 8415987019523679957
        Name: "Main_Tire"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Yaw: -89.9999695
            Roll: 89.9999542
          }
          Scale {
            X: 0.833333373
            Y: 0.787036896
            Z: 1.16666663
          }
        }
        ParentId: 9411345760525972416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 3859650733230292738
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
        Id: 9642785791511398742
        Name: "Inner_Frame_Main"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 0.99999994
            Y: 3.64285588
            Z: 0.99999994
          }
        }
        ParentId: 9411345760525972416
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 12695619787122085888
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
        Id: 6002347831616486996
        Name: "Back_R_Tire"
        Transform {
          Location {
            X: -159.504669
            Y: -261.080963
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12362893300412412450
        ChildIds: 12149992790235425459
        ChildIds: 4568533378382839784
        ChildIds: 12117498587631436367
        ChildIds: 13097527914185799820
        ChildIds: 14316924530639577202
        ChildIds: 12399095822628984588
        ChildIds: 3649938156556234826
        ChildIds: 12866669128282793368
        ChildIds: 18430751005600390800
        ChildIds: 9386463174284371393
        ChildIds: 3825706016414889318
        ChildIds: 2877459644007946113
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 12149992790235425459
        Name: "Tread_A"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Pitch: -17.9999924
            Yaw: -90.0000076
          }
          Scale {
            X: 2.5
            Y: 4.25
            Z: 2.5
          }
        }
        ParentId: 6002347831616486996
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 7324235194893113792
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
        Id: 4568533378382839784
        Name: "Tread_B"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 2.5
            Y: 4.25
            Z: 2.5
          }
        }
        ParentId: 6002347831616486996
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 7324235194893113792
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
        Id: 12117498587631436367
        Name: "Tire_Frame_Cneter"
        Transform {
          Location {
            X: -30.000061
          }
          Rotation {
            Yaw: -89.9999695
            Roll: 89.9999542
          }
          Scale {
            X: 1.04166675
            Y: 1.01190448
            Z: 1.875
          }
        }
        ParentId: 6002347831616486996
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:color"
            Color {
              R: 0.63
              G: 3.00407407e-07
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
            Id: 2045656181030396645
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
        Id: 13097527914185799820
        Name: "Lug_Nut_A"
        Transform {
          Location {
            X: -0.000244140625
            Y: 3
            Z: -15
          }
          Rotation {
            Yaw: -2.04905427e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 6002347831616486996
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 14316924530639577202
        Name: "Lug_Nut_B"
        Transform {
          Location {
            X: -0.000244140625
            Y: -13
            Z: -7
          }
          Rotation {
            Yaw: -4.78112743e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 6002347831616486996
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 12399095822628984588
        Name: "Lug_Nut_C"
        Transform {
          Location {
            X: -0.000244140625
            Y: -12
            Z: 11
          }
          Rotation {
            Yaw: -5.1226365e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 6002347831616486996
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 3649938156556234826
        Name: "Lug_Nut_D"
        Transform {
          Location {
            X: -0.000244140625
            Y: 7
            Z: 13
          }
          Rotation {
            Yaw: -5.12263687e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 6002347831616486996
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 12866669128282793368
        Name: "Lug_Nut_E"
        Transform {
          Location {
            X: -0.000183105469
            Y: 15
            Z: -2
          }
          Rotation {
            Yaw: -4.78112743e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 6002347831616486996
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 18430751005600390800
        Name: "Inner_Frame"
        Transform {
          Location {
            X: 20
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 1.66666675
            Y: 0.809523642
            Z: 1.66666675
          }
        }
        ParentId: 6002347831616486996
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2976538755313112465
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
            Id: 7324235194893113792
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
        Id: 9386463174284371393
        Name: "Outer_Frame"
        Transform {
          Location {
            X: -20
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 1.66666675
            Y: 0.809523642
            Z: 1.66666675
          }
        }
        ParentId: 6002347831616486996
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14294604188141807124
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
            Id: 7324235194893113792
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
        Id: 3825706016414889318
        Name: "Main_Tire"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Yaw: -89.9999695
            Roll: 89.9999542
          }
          Scale {
            X: 0.833333373
            Y: 0.787036896
            Z: 1.16666663
          }
        }
        ParentId: 6002347831616486996
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 3859650733230292738
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
        Id: 2877459644007946113
        Name: "Inner_Frame_Main"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 0.99999994
            Y: 3.64285588
            Z: 0.99999994
          }
        }
        ParentId: 6002347831616486996
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 12695619787122085888
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
        Id: 8505018669950580951
        Name: "Back_L_Tire"
        Transform {
          Location {
            X: 138.853058
            Y: -262.054657
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: -1
          }
        }
        ParentId: 12362893300412412450
        ChildIds: 16691605231026908496
        ChildIds: 17987833578918204836
        ChildIds: 183175819509400182
        ChildIds: 5416099207286047491
        ChildIds: 7299611266540063399
        ChildIds: 6007362334800083619
        ChildIds: 10071868075122011749
        ChildIds: 979629543709992658
        ChildIds: 10794300275595018220
        ChildIds: 17016932493269826603
        ChildIds: 2924903959005958055
        ChildIds: 3908353555455375253
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 16691605231026908496
        Name: "Tread_A"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Pitch: -17.9999924
            Yaw: -90.0000076
          }
          Scale {
            X: 2.5
            Y: 4.25
            Z: 2.5
          }
        }
        ParentId: 8505018669950580951
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 7324235194893113792
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
        Id: 17987833578918204836
        Name: "Tread_B"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 2.5
            Y: 4.25
            Z: 2.5
          }
        }
        ParentId: 8505018669950580951
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 7324235194893113792
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
        Id: 183175819509400182
        Name: "Tire_Frame_Cneter"
        Transform {
          Location {
            X: -30.000061
          }
          Rotation {
            Yaw: -89.9999695
            Roll: 89.9999542
          }
          Scale {
            X: 1.04166675
            Y: 1.01190448
            Z: 1.875
          }
        }
        ParentId: 8505018669950580951
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:color"
            Color {
              R: 0.63
              G: 3.00407407e-07
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
            Id: 2045656181030396645
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
        Id: 5416099207286047491
        Name: "Lug_Nut_A"
        Transform {
          Location {
            X: -0.000244140625
            Y: 3
            Z: -15
          }
          Rotation {
            Yaw: -2.04905427e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 8505018669950580951
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 7299611266540063399
        Name: "Lug_Nut_B"
        Transform {
          Location {
            X: -0.000244140625
            Y: -13
            Z: -7
          }
          Rotation {
            Yaw: -4.78112743e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 8505018669950580951
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 6007362334800083619
        Name: "Lug_Nut_C"
        Transform {
          Location {
            X: -0.000244140625
            Y: -12
            Z: 11
          }
          Rotation {
            Yaw: -5.1226365e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 8505018669950580951
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 10071868075122011749
        Name: "Lug_Nut_D"
        Transform {
          Location {
            X: -0.000244140625
            Y: 7
            Z: 13
          }
          Rotation {
            Yaw: -5.12263687e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 8505018669950580951
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 979629543709992658
        Name: "Lug_Nut_E"
        Transform {
          Location {
            X: -0.000183105469
            Y: 15
            Z: -2
          }
          Rotation {
            Yaw: -4.78112743e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 8505018669950580951
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 10794300275595018220
        Name: "Inner_Frame"
        Transform {
          Location {
            X: 20
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 1.66666675
            Y: 0.809523642
            Z: 1.66666675
          }
        }
        ParentId: 8505018669950580951
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2976538755313112465
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
            Id: 7324235194893113792
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
        Id: 17016932493269826603
        Name: "Outer_Frame"
        Transform {
          Location {
            X: -20
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 1.66666675
            Y: 0.809523642
            Z: 1.66666675
          }
        }
        ParentId: 8505018669950580951
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14294604188141807124
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
            Id: 7324235194893113792
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
        Id: 2924903959005958055
        Name: "Main_Tire"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Yaw: -89.9999695
            Roll: 89.9999542
          }
          Scale {
            X: 0.833333373
            Y: 0.787036896
            Z: 1.16666663
          }
        }
        ParentId: 8505018669950580951
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 3859650733230292738
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
        Id: 3908353555455375253
        Name: "Inner_Frame_Main"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 0.99999994
            Y: 3.64285588
            Z: 0.99999994
          }
        }
        ParentId: 8505018669950580951
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 12695619787122085888
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
        Id: 6340633284040619194
        Name: "ANIMATED: Hood_grp"
        Transform {
          Location {
            X: -6.6937561
            Y: 101.100861
            Z: 120.332108
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12362893300412412450
        ChildIds: 15409112136489993319
        ChildIds: 8261890635068690514
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 15409112136489993319
        Name: "Hood"
        Transform {
          Location {
            Y: 27.5538635
          }
          Rotation {
            Yaw: -179.999954
            Roll: -179.999954
          }
          Scale {
            X: 4.50000238
            Y: 21.22118
            Z: 2.32035685
          }
        }
        ParentId: 6340633284040619194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10845669953295752542
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
            Id: 10950223659781735576
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
        Id: 8261890635068690514
        Name: "Window_Latch"
        Transform {
          Location {
            Y: -27.553833
            Z: 24.9999847
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.25
          }
        }
        ParentId: 6340633284040619194
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 2500740463401777128
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
        Id: 655568188196944852
        Name: "ANIMATED: L_Door"
        Transform {
          Location {
            X: 89.9992371
            Y: -88.0545959
            Z: 92.0378723
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12362893300412412450
        ChildIds: 4943203533860950256
        ChildIds: 11453072579110693295
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 4943203533860950256
        Name: "ANIMATED: L_Door"
        Transform {
          Location {
            X: -6.91534424
            Y: 26.6016235
          }
          Rotation {
            Yaw: -89.9999924
          }
          Scale {
            X: 6.5
            Y: 3.25
            Z: 6.39159727
          }
        }
        ParentId: 655568188196944852
        UnregisteredParameters {
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
      }
      Objects {
        Id: 11453072579110693295
        Name: "L_Door_Handle"
        Transform {
          Location {
            X: 6.9153595
            Y: -26.6016235
            Z: 2.22123718
          }
          Rotation {
            Pitch: 2.04905664e-05
            Yaw: -89.9999619
            Roll: -89.9999619
          }
          Scale {
            X: 0.80299443
            Y: 1.00000012
            Z: -1
          }
        }
        ParentId: 655568188196944852
        UnregisteredParameters {
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
            Id: 300811177604658404
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
        Id: 8261434728616317631
        Name: "ANIMATED: R_Door"
        Transform {
          Location {
            X: -110.466583
            Y: -88.054657
            Z: 90
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12362893300412412450
        ChildIds: 10831630452315258039
        ChildIds: 9304515476045044118
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 10831630452315258039
        Name: "R_Door"
        Transform {
          Location {
            X: 7.9901123
            Y: 26.6016846
            Z: 2.89880371
          }
          Rotation {
            Yaw: -89.9999695
          }
          Scale {
            X: 6.5
            Y: -3.25
            Z: 6.18160915
          }
        }
        ParentId: 8261434728616317631
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 6143321775896378818
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 243275085052259205
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
      }
      Objects {
        Id: 9304515476045044118
        Name: "R_DoorHandle"
        Transform {
          Location {
            X: -7.9901123
            Y: -26.6016235
            Z: 4.25918579
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -89.9999619
            Roll: -89.9999619
          }
          Scale {
            X: 0.80299443
            Y: 1.00000012
            Z: 1
          }
        }
        ParentId: 8261434728616317631
        UnregisteredParameters {
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
            Id: 300811177604658404
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
        Id: 9828746054094513862
        Name: "Jeep_Body_Stationary"
        Transform {
          Location {
            X: -6.6937561
            Y: -4.83294678
            Z: 170.812424
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12362893300412412450
        ChildIds: 16959191198102510515
        ChildIds: 3856710181083227615
        ChildIds: 2599879981433555502
        ChildIds: 4225225517387231350
        ChildIds: 8473286617796445610
        ChildIds: 3474114569481511481
        ChildIds: 7573262618762693702
        ChildIds: 15542985282276644908
        ChildIds: 3506312637048021871
        ChildIds: 14342889801568856094
        ChildIds: 11858745385344489614
        ChildIds: 11285390929304001884
        ChildIds: 1538120644262299567
        ChildIds: 340286400915808621
        ChildIds: 1577170378226684909
        ChildIds: 2362069308312428085
        ChildIds: 5874094732439329665
        ChildIds: 3916621285095927728
        ChildIds: 5760196723536934237
        ChildIds: 12878277052338255521
        ChildIds: 737903309539753039
        ChildIds: 18415655772516008722
        ChildIds: 7023192433952582352
        ChildIds: 15235143607668195987
        ChildIds: 16187053621773095379
        ChildIds: 13532466180889347294
        ChildIds: 3756953593981778369
        ChildIds: 14742863519513935602
        ChildIds: 11248258162579214645
        ChildIds: 12572589739177461825
        ChildIds: 13284566899931239352
        ChildIds: 13596169361415887445
        ChildIds: 5326253373200558861
        ChildIds: 6469526646559943940
        ChildIds: 7585508585975153235
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 16959191198102510515
        Name: "Back_Ant"
        Transform {
          Location {
            X: 97.4376068
            Y: -357.893402
            Z: 11.9132538
          }
          Rotation {
          }
          Scale {
            X: 0.0224508923
            Y: 0.0224508923
            Z: 1.97770607
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 10477759332134786499
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
        Id: 3856710181083227615
        Name: "BackAnt_Tip"
        Transform {
          Location {
            X: 97.8093262
            Y: -357.893402
            Z: 103.443832
          }
          Rotation {
          }
          Scale {
            X: 0.0251162946
            Y: 0.0251162946
            Z: 0.169838101
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2976538755313112465
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
            Id: 10477759332134786499
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
        Id: 2599879981433555502
        Name: "Windshield_Group"
        Transform {
          Location {
            X: 9.61221313
            Y: -3.24766541
            Z: -16.9098206
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9828746054094513862
        ChildIds: 7966895075769558636
        ChildIds: 1862566027331102040
        ChildIds: 17500799514046153789
        ChildIds: 4842039798935839520
        ChildIds: 1999309505287514243
        ChildIds: 6183239749344520992
        ChildIds: 5550220361577800126
        ChildIds: 9762568052414012072
        ChildIds: 3665055865333528880
        ChildIds: 15693967500975866113
        ChildIds: 12884357707767123621
        ChildIds: 12742436369464345209
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 7966895075769558636
        Name: "Windsheild_Glass"
        Transform {
          Location {
            X: -15.1610413
            Y: -5.88357544
            Z: 16.4186401
          }
          Rotation {
            Roll: 73.3438263
          }
          Scale {
            X: 1.76372075
            Y: 0.767677188
            Z: 1.00000656
          }
        }
        ParentId: 2599879981433555502
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4479732708038918606
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
            Id: 16060214784296519809
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
        Id: 1862566027331102040
        Name: "Windsheild_Frame"
        Transform {
          Location {
            X: -13.4241028
            Y: -10.4876709
            Z: 25.8742981
          }
          Rotation {
            Roll: 73.3436813
          }
          Scale {
            X: 1.90418029
            Y: 0.559696913
            Z: 0.0500005037
          }
        }
        ParentId: 2599879981433555502
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10845669953295752542
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
            Id: 3744114610714728064
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
        Id: 17500799514046153789
        Name: "Wiper_Connect_L"
        Transform {
          Location {
            X: 42.9487915
            Y: 2.46572876
          }
          Rotation {
            Roll: 72.9998703
          }
          Scale {
            X: 0.0347347558
            Y: 0.0347348191
            Z: 0.047508087
          }
        }
        ParentId: 2599879981433555502
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 10477759332134786499
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
        Id: 4842039798935839520
        Name: "Wiper_Arm_L"
        Transform {
          Location {
            X: 43.8495789
            Y: 5.71984863
            Z: 0.794464111
          }
          Rotation {
            Pitch: 75.1565323
            Yaw: -81.6473083
            Roll: -81.9218216
          }
          Scale {
            X: 0.395860523
            Y: 0.551513433
            Z: 8.67320728
          }
        }
        ParentId: 2599879981433555502
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 6045540826292531006
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
        Id: 1999309505287514243
        Name: "Wiper_Connect_R"
        Transform {
          Location {
            X: -29.6267395
            Y: 2.46572876
          }
          Rotation {
            Roll: 72.9997559
          }
          Scale {
            X: 0.0347347558
            Y: 0.0347348191
            Z: 0.047508087
          }
        }
        ParentId: 2599879981433555502
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 10477759332134786499
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
        Id: 6183239749344520992
        Name: "Wiper_Arm_R"
        Transform {
          Location {
            X: -28.5864868
            Y: 5.71984863
            Z: 0.794464111
          }
          Rotation {
            Pitch: 75.1565
            Yaw: -81.6472626
            Roll: -81.9218
          }
          Scale {
            X: 0.395860523
            Y: 0.551513433
            Z: 8.67320728
          }
        }
        ParentId: 2599879981433555502
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 6045540826292531006
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
        Id: 5550220361577800126
        Name: "Windshield_Frame_Top_Seal"
        Transform {
          Location {
            X: -12.065094
            Y: -14.4551392
            Z: 50.3375092
          }
          Rotation {
            Pitch: 73.8841934
            Yaw: -89.9995804
            Roll: 179.999359
          }
          Scale {
            X: 0.0487391092
            Y: 0.464033693
            Z: 0.0604715981
          }
        }
        ParentId: 2599879981433555502
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 15001748559136319091
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
        Id: 9762568052414012072
        Name: "Windshield_Frame_R_Seal"
        Transform {
          Location {
            X: -101.542725
            Y: -7.92669678
            Z: 27.7365265
          }
          Rotation {
            Pitch: 73.8841705
            Yaw: -89.9996
            Roll: 179.999374
          }
          Scale {
            X: 0.492073
            Y: 0.0225616042
            Z: 0.06047111
          }
        }
        ParentId: 2599879981433555502
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 15001748559136319091
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
        Id: 3665055865333528880
        Name: "Windshield_Frame_L_Seal"
        Transform {
          Location {
            X: 74.602478
            Y: -7.92346191
            Z: 27.7370605
          }
          Rotation {
            Pitch: 73.8841171
            Yaw: -89.9995422
            Roll: 179.999359
          }
          Scale {
            X: 0.492073
            Y: 0.0225616042
            Z: 0.06047111
          }
        }
        ParentId: 2599879981433555502
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 15001748559136319091
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
        Id: 15693967500975866113
        Name: "Windshield_Bottom_Seal"
        Transform {
          Location {
            X: -12.0651855
            Y: -0.665588379
            Z: 2.61196899
          }
          Rotation {
            Pitch: 73.8842163
            Yaw: -89.9996262
            Roll: 179.999359
          }
          Scale {
            X: 0.0957931876
            Y: 0.464033782
            Z: 0.0604712069
          }
        }
        ParentId: 2599879981433555502
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 15001748559136319091
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
        Id: 12884357707767123621
        Name: "L_visor"
        Transform {
          Location {
            X: 33.40979
            Y: -25.2686768
            Z: 52.8453522
          }
          Rotation {
            Yaw: -89.9999847
          }
          Scale {
            X: 0.202241793
            Y: 0.138595238
            Z: 0.202241838
          }
        }
        ParentId: 2599879981433555502
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 15001748559136319091
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
        Id: 12742436369464345209
        Name: "R_visor"
        Transform {
          Location {
            X: -54.8455811
            Y: -25.2686768
            Z: 52.8453522
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: 0.202241793
            Y: 0.138595238
            Z: 0.202241838
          }
        }
        ParentId: 2599879981433555502
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 15001748559136319091
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
        Id: 4225225517387231350
        Name: "Front_Floor"
        Transform {
          Location {
            X: 85
            Y: -106.620026
            Z: -145.812424
          }
          Rotation {
            Pitch: 90
            Yaw: 2.14652073e-06
            Roll: 2.146523e-06
          }
          Scale {
            X: 1
            Y: 13.500001
            Z: 1.8
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1157444486122330678
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
        Id: 8473286617796445610
        Name: "Hood_Vent"
        Transform {
          Location {
            X: -0.147064209
            Y: 4.99575806
            Z: -22.21315
          }
          Rotation {
            Roll: 89.3377457
          }
          Scale {
            X: 0.260274261
            Y: 0.0916162804
            Z: 0.280035704
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 11638225697129107731
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
        Id: 3474114569481511481
        Name: "Hood_Small"
        Transform {
          Location {
            X: 6.10351562e-05
            Y: 33.3394775
            Z: -45.8124695
          }
          Rotation {
            Yaw: -179.999969
            Roll: -179.999969
          }
          Scale {
            X: 4.50000525
            Y: 8.55643272
            Z: 1.99999762
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10845669953295752542
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
            Id: 10950223659781735576
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
        Id: 7573262618762693702
        Name: "Front_Light_Block"
        Transform {
          Location {
            Y: 183.379974
            Z: -121.812424
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 0.25
            Z: 0.75
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 4715610968541719994
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
        Id: 15542985282276644908
        Name: "RollBar_All"
        Transform {
          Location {
            X: 2.43960571
            Y: -158.972992
            Z: -111.687042
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9828746054094513862
        ChildIds: 7120536161646283477
        ChildIds: 6363318629656025709
        ChildIds: 5523102976184564854
        ChildIds: 9500848817318522030
        ChildIds: 7055085477867827994
        ChildIds: 677953798146273770
        ChildIds: 17051988509640842726
        ChildIds: 1537097720689100304
        ChildIds: 15320110233922082846
        ChildIds: 10076487756473956412
        ChildIds: 11403801123038248941
        ChildIds: 10507219284324385338
        ChildIds: 10213670612505415861
        ChildIds: 5844933500980067889
        ChildIds: 5501774959454986142
        ChildIds: 1676515707018243026
        ChildIds: 17995660909752832328
        ChildIds: 1004445447149703035
        ChildIds: 14484367152371904201
        ChildIds: 3192269976187151164
        ChildIds: 13356528621076379704
        ChildIds: 7925717332230333162
        ChildIds: 14973729311102498892
        ChildIds: 2174797828111901596
        ChildIds: 16833210286039313264
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 7120536161646283477
        Name: "Pipe"
        Transform {
          Location {
            X: -92.0348511
            Y: -8.02764893
          }
          Rotation {
          }
          Scale {
            X: 0.15
            Y: 0.15
            Z: 1.56463766
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 6363318629656025709
        Name: "Pipe"
        Transform {
          Location {
            X: 52.7297363
            Y: -0.0918579102
            Z: 156.177902
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 0.149999976
            Y: 0.15
            Z: 1.20645225
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 5523102976184564854
        Name: "Pipe"
        Transform {
          Location {
            X: -92.2858276
            Y: 120.238434
            Z: 156.264023
          }
          Rotation {
            Pitch: 90
            Yaw: -165.96373
            Roll: 104.036194
          }
          Scale {
            X: 0.149999902
            Y: 0.150000498
            Z: 1.20950365
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 9500848817318522030
        Name: "Pipe - T-Intersection Thin"
        Transform {
          Location {
            X: -91.1384888
            Y: 1.39025879
            Z: 154.588333
          }
          Rotation {
            Pitch: -90
            Yaw: -9.46233559
            Roll: -80.5383911
          }
          Scale {
            X: 0.180667773
            Y: 0.180667773
            Z: 0.180667773
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 83502813398508792
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
        Id: 7055085477867827994
        Name: "Ring - Quarter Thick"
        Transform {
          Location {
            X: -63.6046448
            Y: 117.019806
            Z: 156.256363
          }
          Rotation {
            Yaw: 89.9999847
            Roll: -179.999954
          }
          Scale {
            X: 0.719817162
            Y: 0.719817162
            Z: 0.719817162
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 11440150784773051825
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
        Id: 677953798146273770
        Name: "Ring - Quarter Thick"
        Transform {
          Location {
            X: -63.4144592
            Y: -28.1092529
            Z: 156.256363
          }
          Rotation {
            Yaw: 89.9999619
            Roll: -179.999954
          }
          Scale {
            X: 0.719817162
            Y: 0.719817162
            Z: 0.719817162
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 11440150784773051825
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
        Id: 17051988509640842726
        Name: "Pipe"
        Transform {
          Location {
            X: 54.6479187
            Y: 145.523987
            Z: 156.177902
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 0.149999961
            Y: 0.15
            Z: 1.19142616
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 1537097720689100304
        Name: "Ring - Quarter Thick"
        Transform {
          Location {
            X: -91.866272
            Y: -147.478882
            Z: 104.123871
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: -0.719817162
            Y: 0.719817162
            Z: 0.719817162
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 11440150784773051825
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
        Id: 15320110233922082846
        Name: "Pipe"
        Transform {
          Location {
            X: -91.6789551
            Y: -176.278442
          }
          Rotation {
          }
          Scale {
            X: -0.15
            Y: 0.15
            Z: 1.04479778
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 10076487756473956412
        Name: "Pipe"
        Transform {
          Location {
            X: -90.6273804
            Y: 126.529327
            Z: 200.722794
          }
          Rotation {
            Pitch: 90
            Roll: -90.0000916
          }
          Scale {
            X: 0.0540681593
            Y: 0.054068841
            Z: 2.62094903
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 11403801123038248941
        Name: "Pipe"
        Transform {
          Location {
            X: 79.4832153
            Y: 126.529358
            Z: 200.722794
          }
          Rotation {
            Pitch: 90
            Roll: -90.0000916
          }
          Scale {
            X: 0.0540681593
            Y: 0.054068841
            Z: 2.62094903
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 10507219284324385338
        Name: "Ring - Quarter Thick"
        Transform {
          Location {
            X: -53.1834412
            Y: -166.691772
            Z: -45.2859039
          }
          Rotation {
            Yaw: -90
          }
          Scale {
            X: -1.29870605
            Y: 1.09484363
            Z: 1.29870594
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 11440150784773051825
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
        Id: 10213670612505415861
        Name: "Pipe"
        Transform {
          Location {
            X: 81.4241638
            Y: -8.02764893
          }
          Rotation {
          }
          Scale {
            X: -0.15
            Y: 0.15
            Z: 1.56463766
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 5844933500980067889
        Name: "Pipe"
        Transform {
          Location {
            X: -63.3404236
            Y: -0.0918579102
            Z: 156.177902
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: -0.149999976
            Y: 0.15
            Z: 1.20645225
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 5501774959454986142
        Name: "Pipe"
        Transform {
          Location {
            X: 81.6751404
            Y: 118.035339
            Z: 156.264023
          }
          Rotation {
            Pitch: -90
            Yaw: -153.434952
            Roll: 63.436203
          }
          Scale {
            X: -0.150000036
            Y: 0.150000125
            Z: 1.18770671
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 1676515707018243026
        Name: "Pipe"
        Transform {
          Location {
            X: 81.4241638
            Y: -176.278442
          }
          Rotation {
          }
          Scale {
            X: -0.15
            Y: 0.15
            Z: 1.04479778
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 17995660909752832328
        Name: "Pipe"
        Transform {
          Location {
            X: 81.3402405
            Y: -23.7543335
            Z: 155.966843
          }
          Rotation {
            Pitch: -79.5618668
            Yaw: 89.9975891
            Roll: 179.997986
          }
          Scale {
            X: -0.150000349
            Y: 0.149999857
            Z: 1.27506101
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 1004445447149703035
        Name: "Pipe - T-Intersection Thin"
        Transform {
          Location {
            X: 80.5278
            Y: 1.39025879
            Z: 154.588333
          }
          Rotation {
            Pitch: 90
            Yaw: -36.8698845
            Roll: -126.870605
          }
          Scale {
            X: -0.180667773
            Y: 0.180667773
            Z: 0.180667773
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 83502813398508792
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
        Id: 14484367152371904201
        Name: "Ring - Quarter Thick"
        Transform {
          Location {
            X: 53.038147
            Y: 117.057739
            Z: 156.256363
          }
          Rotation {
            Yaw: -89.9999771
            Roll: -179.999954
          }
          Scale {
            X: -0.719817162
            Y: 0.719817162
            Z: 0.719817162
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 11440150784773051825
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
        Id: 3192269976187151164
        Name: "Ring - Quarter Thick"
        Transform {
          Location {
            X: 81.2368469
            Y: -147.478882
            Z: 104.123871
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: -0.719817162
            Y: 0.719817162
            Z: 0.719817162
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 11440150784773051825
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
        Id: 13356528621076379704
        Name: "Ring - Quarter Thick"
        Transform {
          Location {
            X: 52.803772
            Y: -28.1092529
            Z: 156.256363
          }
          Rotation {
            Yaw: -89.9999542
            Roll: -179.999954
          }
          Scale {
            X: -0.719817162
            Y: 0.719817162
            Z: 0.719817162
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 11440150784773051825
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
        Id: 7925717332230333162
        Name: "Pipe"
        Transform {
          Location {
            X: -91.7272644
            Y: -23.7543335
            Z: 155.966843
          }
          Rotation {
            Pitch: -79.5617523
            Yaw: 89.9975128
            Roll: 179.99794
          }
          Scale {
            X: -0.150000349
            Y: 0.149999857
            Z: 1.27506101
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 14973729311102498892
        Name: "Pipe"
        Transform {
          Location {
            X: 81.3310242
            Y: -123.923279
            Z: 137.562576
          }
          Rotation {
            Pitch: -79.5608902
            Yaw: 89.9972839
            Roll: 179.997055
          }
          Scale {
            X: -0.186697945
            Y: 0.186697632
            Z: 0.114837609
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 2174797828111901596
        Name: "R_soundBar"
        Transform {
          Location {
            X: -56.3235168
            Y: -32.6047363
            Z: 153.694565
          }
          Rotation {
            Pitch: 8.71069717
            Yaw: 86.3567505
            Roll: 1.72747264e-06
          }
          Scale {
            X: 0.322529137
            Y: 0.322529137
            Z: 0.184285119
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 4563967851793804383
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
        Id: 16833210286039313264
        Name: "L_SoundBar"
        Transform {
          Location {
            X: 51.1706543
            Y: -32.6047363
            Z: 152.174667
          }
          Rotation {
            Yaw: -6.66831684
            Roll: -5.73798466
          }
          Scale {
            X: 0.322529137
            Y: 0.322529137
            Z: 0.184285119
          }
        }
        ParentId: 15542985282276644908
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 4563967851793804383
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
        Id: 3506312637048021871
        Name: "PLATE"
        Transform {
          Location {
            X: 75.834259
            Y: -388.076324
            Z: -143.4552
          }
          Rotation {
            Yaw: 3.35756469
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9828746054094513862
        ChildIds: 14131468592026051299
        ChildIds: 13998229559425578460
        ChildIds: 9536209669001420723
        ChildIds: 12935872377973721165
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 14131468592026051299
        Name: "Cube - Chamfered Large"
        Transform {
          Location {
            X: -1.64083862
            Y: 0.629211426
            Z: 5.1776886
          }
          Rotation {
            Yaw: 89.9999619
          }
          Scale {
            X: 0.0117840655
            Y: 0.543830156
            Z: 0.209554553
          }
        }
        ParentId: 3506312637048021871
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15254797557853360748
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
            Id: 13933319734176476288
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
        Id: 13998229559425578460
        Name: "W"
        Transform {
          Location {
            X: -12.6645966
            Y: -1.36120605
            Z: 0.940113068
          }
          Rotation {
          }
          Scale {
            X: 0.136517733
            Y: 0.136517733
            Z: 0.136517733
          }
        }
        ParentId: 3506312637048021871
        ChildIds: 12441849147859743334
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 2976538755313112465
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 2976538755313112465
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 2976538755313112465
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
            Id: 11588290385508407355
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
        Id: 12441849147859743334
        Name: "R"
        Transform {
          Location {
            X: 231.260666
            Y: 10.9223089
            Z: -3.55902743
          }
          Rotation {
            Yaw: -179.999969
          }
          Scale {
            X: 1.10458314
            Y: 0.587188661
            Z: 1.1045835
          }
        }
        ParentId: 13998229559425578460
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 2976538755313112465
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 2976538755313112465
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 2976538755313112465
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
            Id: 14335950073606978576
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
        Id: 9536209669001420723
        Name: "4"
        Transform {
          Location {
            X: 9.91690063
            Y: 0.472229
          }
          Rotation {
            Yaw: -179.999985
          }
          Scale {
            X: 0.226978615
            Y: 0.100277662
            Z: 0.226978615
          }
        }
        ParentId: 3506312637048021871
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 2976538755313112465
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 2976538755313112465
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 2976538755313112465
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
            Id: 13240777799557061907
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
        Id: 12935872377973721165
        Name: "R"
        Transform {
          Location {
            X: -14.5180359
            Y: 0.129821777
            Z: 0.0685920715
          }
          Rotation {
            Yaw: -179.999969
          }
          Scale {
            X: 0.150795192
            Y: 0.0801616684
            Z: 0.150795236
          }
        }
        ParentId: 3506312637048021871
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 2976538755313112465
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 2976538755313112465
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 2976538755313112465
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
            Id: 14335950073606978576
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
        Id: 14342889801568856094
        Name: "Jeep_Front"
        Transform {
          Location {
            X: 3
            Y: 181.773041
            Z: -125.812424
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9828746054094513862
        ChildIds: 13552847382842020550
        ChildIds: 843070930539645932
        ChildIds: 7718589898036849787
        ChildIds: 5672093367190268221
        ChildIds: 17234072494996825516
        ChildIds: 18237574517738250063
        ChildIds: 16684556875713918407
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 13552847382842020550
        Name: "front grill"
        Transform {
          Location {
            X: 2
            Y: 6.60693359
            Z: 8.33302307
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14342889801568856094
        ChildIds: 4918252871764394182
        ChildIds: 4939187027140989970
        ChildIds: 14310764845834431398
        ChildIds: 7521149331213200064
        ChildIds: 2297732191562870960
        ChildIds: 6132169135786918219
        ChildIds: 17764902107207382573
        ChildIds: 6116085937681784375
        ChildIds: 16802802554666976208
        ChildIds: 11179330980702342961
        ChildIds: 2341806481071536263
        ChildIds: 7104302025400503759
        ChildIds: 10677803464445460622
        ChildIds: 4833537894787685247
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 4918252871764394182
        Name: "U"
        Transform {
          Location {
            X: -38.75
            Z: 76.25
          }
          Rotation {
            Yaw: -179.999954
            Roll: -169.999908
          }
          Scale {
            X: 0.25
            Y: 1.25
            Z: 0.625
          }
        }
        ParentId: 13552847382842020550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1882399476102658604
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
        Id: 4939187027140989970
        Name: "U"
        Transform {
          Location {
            X: -53.125
            Y: 3.3125
          }
          Rotation {
            Roll: 5.00003815
          }
          Scale {
            X: 0.25
            Y: 1.25
            Z: 0.625
          }
        }
        ParentId: 13552847382842020550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1882399476102658604
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
        Id: 14310764845834431398
        Name: "U"
        Transform {
          Location {
            X: -39.375
            Y: 3.3125
          }
          Rotation {
            Roll: 5.00004101
          }
          Scale {
            X: 0.25
            Y: 1.25
            Z: 0.625
          }
        }
        ParentId: 13552847382842020550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1882399476102658604
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
        Id: 7521149331213200064
        Name: "U"
        Transform {
          Location {
            X: -25
            Z: 76.25
          }
          Rotation {
            Yaw: -179.999954
            Roll: -169.999908
          }
          Scale {
            X: 0.25
            Y: 1.25
            Z: 0.625
          }
        }
        ParentId: 13552847382842020550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1882399476102658604
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
        Id: 2297732191562870960
        Name: "U"
        Transform {
          Location {
            X: -24.375
            Y: 3.3125
          }
          Rotation {
            Roll: 5.00004339
          }
          Scale {
            X: 0.25
            Y: 1.25
            Z: 0.625
          }
        }
        ParentId: 13552847382842020550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1882399476102658604
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
        Id: 6132169135786918219
        Name: "U"
        Transform {
          Location {
            X: -10
            Z: 76.25
          }
          Rotation {
            Yaw: -179.999954
            Roll: -169.999908
          }
          Scale {
            X: 0.25
            Y: 1.25
            Z: 0.625
          }
        }
        ParentId: 13552847382842020550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1882399476102658604
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
        Id: 17764902107207382573
        Name: "U"
        Transform {
          Location {
            X: -9.375
            Y: 3.3125
          }
          Rotation {
            Roll: 5.00004625
          }
          Scale {
            X: 0.25
            Y: 1.25
            Z: 0.625
          }
        }
        ParentId: 13552847382842020550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1882399476102658604
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
        Id: 6116085937681784375
        Name: "U"
        Transform {
          Location {
            X: 5
            Z: 76.25
          }
          Rotation {
            Yaw: -179.999954
            Roll: -169.999908
          }
          Scale {
            X: 0.25
            Y: 1.25
            Z: 0.625
          }
        }
        ParentId: 13552847382842020550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1882399476102658604
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
        Id: 16802802554666976208
        Name: "U"
        Transform {
          Location {
            X: 5.625
            Y: 3.3125
          }
          Rotation {
            Roll: 5.00004911
          }
          Scale {
            X: 0.25
            Y: 1.25
            Z: 0.625
          }
        }
        ParentId: 13552847382842020550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1882399476102658604
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
        Id: 11179330980702342961
        Name: "U"
        Transform {
          Location {
            X: 20
            Z: 76.25
          }
          Rotation {
            Yaw: -179.999954
            Roll: -169.999908
          }
          Scale {
            X: 0.25
            Y: 1.25
            Z: 0.625
          }
        }
        ParentId: 13552847382842020550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1882399476102658604
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
        Id: 2341806481071536263
        Name: "U"
        Transform {
          Location {
            X: 20.625
            Y: 3.3125
          }
          Rotation {
            Roll: 5.00005102
          }
          Scale {
            X: 0.25
            Y: 1.25
            Z: 0.625
          }
        }
        ParentId: 13552847382842020550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1882399476102658604
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
        Id: 7104302025400503759
        Name: "U"
        Transform {
          Location {
            X: 35
            Z: 76.25
          }
          Rotation {
            Yaw: -179.999954
            Roll: -169.999908
          }
          Scale {
            X: 0.25
            Y: 1.25
            Z: 0.625
          }
        }
        ParentId: 13552847382842020550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1882399476102658604
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
        Id: 10677803464445460622
        Name: "U"
        Transform {
          Location {
            X: 35.625
            Y: 3.3125
          }
          Rotation {
            Roll: 5.00005341
          }
          Scale {
            X: 0.25
            Y: 1.25
            Z: 0.625
          }
        }
        ParentId: 13552847382842020550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1882399476102658604
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
        Id: 4833537894787685247
        Name: "U"
        Transform {
          Location {
            X: 50
            Z: 76.25
          }
          Rotation {
            Yaw: -179.999954
            Roll: -169.999908
          }
          Scale {
            X: 0.25
            Y: 1.25
            Z: 0.625
          }
        }
        ParentId: 13552847382842020550
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1882399476102658604
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
        Id: 843070930539645932
        Name: "Front_Light_Geo"
        Transform {
          Location {
            X: -0.592951477
            Y: 10.3171492
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14342889801568856094
        ChildIds: 6850231953351317142
        ChildIds: 2951437885827798128
        ChildIds: 8380660765585332078
        ChildIds: 16921026433864835616
        ChildIds: 15360855365797717819
        ChildIds: 11125203055153369948
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
        Folder {
          IsFilePartition: true
          FilePartitionName: "Front_Light_Geo_1"
        }
      }
      Objects {
        Id: 6850231953351317142
        Name: "Oracle_HeadLight_R"
        Transform {
          Location {
            X: -72.8163452
            Y: 22.4917297
            Z: 60.1971893
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 0.889186561
            Y: 0.889186561
            Z: 0.889186561
          }
        }
        ParentId: 843070930539645932
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5954891987210939812
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
            Id: 7236836948546839749
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
        Id: 2951437885827798128
        Name: "Oracle_HeadLight_L"
        Transform {
          Location {
            X: 72.4445496
            Y: 22.4916687
            Z: 60.1971893
          }
          Rotation {
            Yaw: 89.9999771
          }
          Scale {
            X: 0.889186561
            Y: 0.889186561
            Z: 0.889186561
          }
        }
        ParentId: 843070930539645932
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5954891987210939812
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
            Id: 7236836948546839749
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
        Id: 8380660765585332078
        Name: "R_Fog_Light"
        Transform {
          Location {
            X: -82.4070435
            Y: -7.26409912
          }
          Rotation {
            Yaw: 89.9999313
          }
          Scale {
            X: 1.25
            Y: 2.5
            Z: 2.5
          }
        }
        ParentId: 843070930539645932
        UnregisteredParameters {
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
            Id: 13225962213392017647
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
        Id: 16921026433864835616
        Name: "L_Fog_Light"
        Transform {
          Location {
            X: 82.5929565
            Y: -7.26409912
          }
          Rotation {
            Yaw: 89.9999313
          }
          Scale {
            X: 1.25
            Y: 2.5
            Z: 2.5
          }
        }
        ParentId: 843070930539645932
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 1900554724504964113
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
            Id: 13225962213392017647
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
        Id: 15360855365797717819
        Name: "L_HeadLight"
        Transform {
          Location {
            X: 72.5929565
            Y: -15.2275696
            Z: 25
          }
          Rotation {
            Yaw: 89.9999313
          }
          Scale {
            X: 2
            Y: 3.75000024
            Z: 3.75000024
          }
        }
        ParentId: 843070930539645932
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.00999999
              G: 0.508278
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:color"
            Color {
              R: 0.100000024
              G: 0.642383873
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 12369073476388286592
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
            Id: 13225962213392017647
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
        Id: 11125203055153369948
        Name: "R_Headlight"
        Transform {
          Location {
            X: -72.4070435
            Y: -15.2275696
            Z: 25
          }
          Rotation {
            Yaw: 89.9999313
          }
          Scale {
            X: 2
            Y: 3.75000024
            Z: 3.75000024
          }
        }
        ParentId: 843070930539645932
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:color"
            Color {
              R: 0.00999999
              G: 0.508278
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:color"
            Color {
              R: 0.100000024
              G: 0.642383873
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:id"
            AssetReference {
              Id: 12369073476388286592
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
            Id: 13225962213392017647
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
        Id: 7718589898036849787
        Name: "Winch_Group"
        Transform {
          Location {
            X: 27
            Y: 46.6069336
            Z: 35
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
        ParentId: 14342889801568856094
        ChildIds: 12089863864002304030
        ChildIds: 13862916795759282615
        ChildIds: 10634292070590552703
        ChildIds: 11207848364042367931
        ChildIds: 18334169074509076543
        ChildIds: 10235239470306269260
        ChildIds: 10751682310399401296
        ChildIds: 6111359571776979838
        ChildIds: 17242509355948460431
        ChildIds: 8327090727300704824
        ChildIds: 17121585038436886819
        ChildIds: 17729821702546560602
        ChildIds: 14489650188255477852
        ChildIds: 11530018814780370435
        ChildIds: 16830502872374961962
        ChildIds: 5806819676897369476
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 12089863864002304030
        Name: "Helix - 1.0"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 7718589898036849787
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13060516013822931986
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
            Id: 12739313073535643776
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
        Id: 13862916795759282615
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 10
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 7718589898036849787
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13060516013822931986
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
            Id: 12739313073535643776
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
        Id: 10634292070590552703
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 20
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 7718589898036849787
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13060516013822931986
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
            Id: 12739313073535643776
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
        Id: 11207848364042367931
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 30
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 7718589898036849787
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13060516013822931986
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
            Id: 12739313073535643776
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
        Id: 18334169074509076543
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 40
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 7718589898036849787
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13060516013822931986
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
            Id: 12739313073535643776
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
        Id: 10235239470306269260
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: -4.99999952
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 7718589898036849787
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13060516013822931986
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
            Id: 12739313073535643776
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
        Id: 10751682310399401296
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 4.99999952
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 7718589898036849787
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13060516013822931986
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
            Id: 12739313073535643776
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
        Id: 6111359571776979838
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 14.9999981
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 7718589898036849787
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13060516013822931986
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
            Id: 12739313073535643776
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
        Id: 17242509355948460431
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 24.9999981
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 7718589898036849787
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13060516013822931986
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
            Id: 12739313073535643776
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
        Id: 8327090727300704824
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 34.9999962
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 7718589898036849787
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13060516013822931986
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
            Id: 12739313073535643776
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
        Id: 17121585038436886819
        Name: "winchholder"
        Transform {
          Location {
            X: -9.99999905
            Z: -14.9999981
          }
          Rotation {
          }
          Scale {
            X: 1.25
            Y: 1
            Z: 3.50000024
          }
        }
        ParentId: 7718589898036849787
        UnregisteredParameters {
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
            Id: 11021707493166331499
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
        Id: 17729821702546560602
        Name: "Winch_Mount"
        Transform {
          Location {
            X: -25
            Z: 74.9999924
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: 6.5
            Y: 5.75000143
            Z: 3
          }
        }
        ParentId: 7718589898036849787
        UnregisteredParameters {
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
            Id: 2574888979903300167
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
        Id: 14489650188255477852
        Name: "Winch_Switch"
        Transform {
          Location {
            X: 2.38418579e-07
            Z: -2.99999952
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: -180
            Roll: -89.9999771
          }
          Scale {
            X: 0.5
            Y: 1
            Z: 1
          }
        }
        ParentId: 7718589898036849787
        UnregisteredParameters {
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
            Id: 10633885543455162832
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
        Id: 11530018814780370435
        Name: "front_tow"
        Transform {
          Location {
            X: -22.829483
            Y: 0.287277222
            Z: 92.698
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7718589898036849787
        ChildIds: 14811841121500419341
        ChildIds: 10446391171088291999
        ChildIds: 4479170627485881500
        ChildIds: 17278465645043518962
        ChildIds: 11759099690497339472
        ChildIds: 455865749258964984
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 14811841121500419341
        Name: "Pipe"
        Transform {
          Location {
            X: -7.26818848
          }
          Rotation {
            Pitch: 34.2947884
            Yaw: -0.492004395
            Roll: 29.7202816
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.5
          }
        }
        ParentId: 11530018814780370435
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 10446391171088291999
        Name: "Pipe"
        Transform {
          Location {
            X: -84.069519
            Y: 29.7127228
            Z: 42.8294754
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: -0.100000031
            Y: 0.1
            Z: 0.373948395
          }
        }
        ParentId: 11530018814780370435
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 4479170627485881500
        Name: "Pipe"
        Transform {
          Location {
            X: -123.763443
          }
          Rotation {
            Pitch: -34.2948
            Yaw: 0.492006898
            Roll: 29.7202816
          }
          Scale {
            X: -0.1
            Y: 0.1
            Z: 0.5
          }
        }
        ParentId: 11530018814780370435
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 17278465645043518962
        Name: "Ring - Quarter Thick"
        Transform {
          Location {
            X: -47.8358459
            Y: 18.7127228
            Z: 26.3294754
          }
          Rotation {
            Pitch: 12.2402992
            Yaw: 8.73740768
            Roll: 125.938652
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11530018814780370435
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 11440150784773051825
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
        Id: 11759099690497339472
        Name: "Ring - Quarter Thick"
        Transform {
          Location {
            X: -83.2904053
            Y: 18.7127228
            Z: 26.3294754
          }
          Rotation {
            Pitch: -12.2402954
            Yaw: -8.73742676
            Roll: 125.938629
          }
          Scale {
            X: -0.5
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11530018814780370435
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 11440150784773051825
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
        Id: 455865749258964984
        Name: "Ring - Quarter Thick"
        Transform {
          Location {
            X: -47.8358459
            Y: 18.7127228
            Z: 26.3294754
          }
          Rotation {
            Pitch: 12.2402725
            Yaw: 8.73745346
            Roll: 125.938652
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.5
          }
        }
        ParentId: 11530018814780370435
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 11440150784773051825
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
        Id: 16830502872374961962
        Name: "winch_cleats"
        Transform {
          Location {
            X: -46.4429054
            Y: 20.3813629
            Z: -23.1724854
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7718589898036849787
        ChildIds: 8277609560005531600
        ChildIds: 7897241586193369053
        ChildIds: 17539505790997179959
        ChildIds: 11108926955400684731
        ChildIds: 12428783161088799773
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 8277609560005531600
        Name: "Modern Weapon - Body 04"
        Transform {
          Location {
            X: -0.657699585
            Y: -0.0286560059
          }
          Rotation {
          }
          Scale {
            X: 0.388508558
            Y: 0.765815794
            Z: 0.765815794
          }
        }
        ParentId: 16830502872374961962
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 14294604188141807124
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9782316430648728131
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
            Id: 10950223659781735576
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
        Id: 7897241586193369053
        Name: "Pipe"
        Transform {
          Location {
            X: 1.82751465
            Y: -0.381362915
            Z: 6.44290924
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.056
          }
        }
        ParentId: 16830502872374961962
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 17539505790997179959
        Name: "Modern Weapon - Bullet 01 Casing"
        Transform {
          Location {
            X: -0.652267456
            Y: 0.286346436
            Z: 5.30238342
          }
          Rotation {
          }
          Scale {
            X: 1.5541755
            Y: 0.969164073
            Z: 0.969164073
          }
        }
        ParentId: 16830502872374961962
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 11108926955400684731
        Name: "Modern Weapon - Disc 01"
        Transform {
          Location {
            X: -7.8467865
            Y: 0.0618286133
            Z: 5.40480804
          }
          Rotation {
          }
          Scale {
            X: 0.839161217
            Y: 0.240986109
            Z: 0.240986109
          }
        }
        ParentId: 16830502872374961962
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9782316430648728131
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
            Id: 7236836948546839749
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
        Id: 12428783161088799773
        Name: "Modern Weapon - Disc 01"
        Transform {
          Location {
            X: 7.32931519
            Y: 0.0618286133
            Z: 5.40480804
          }
          Rotation {
          }
          Scale {
            X: 0.839161217
            Y: 0.240986109
            Z: 0.240986109
          }
        }
        ParentId: 16830502872374961962
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9782316430648728131
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
            Id: 7236836948546839749
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
        Id: 5806819676897369476
        Name: "winch_cleats"
        Transform {
          Location {
            X: -46.4429
            Y: 20.3813629
            Z: 82.8659286
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7718589898036849787
        ChildIds: 18316483565066211146
        ChildIds: 10931760732143075561
        ChildIds: 777971098370717816
        ChildIds: 17859905301605399405
        ChildIds: 5260193877782483543
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 18316483565066211146
        Name: "Modern Weapon - Body 04"
        Transform {
          Location {
            X: -0.657699585
            Y: -0.0286560059
          }
          Rotation {
          }
          Scale {
            X: 0.388508558
            Y: 0.765815794
            Z: 0.765815794
          }
        }
        ParentId: 5806819676897369476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 14294604188141807124
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9782316430648728131
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
            Id: 10950223659781735576
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
        Id: 10931760732143075561
        Name: "Pipe"
        Transform {
          Location {
            X: 1.82751465
            Y: -0.381362915
            Z: 6.44290924
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.056
          }
        }
        ParentId: 5806819676897369476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 777971098370717816
        Name: "Modern Weapon - Bullet 01 Casing"
        Transform {
          Location {
            X: -0.652267456
            Y: 0.286346436
            Z: 5.30238342
          }
          Rotation {
          }
          Scale {
            X: 1.5541755
            Y: 0.969164073
            Z: 0.969164073
          }
        }
        ParentId: 5806819676897369476
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 17859905301605399405
        Name: "Modern Weapon - Disc 01"
        Transform {
          Location {
            X: -7.8467865
            Y: 0.0618286133
            Z: 5.40480804
          }
          Rotation {
          }
          Scale {
            X: 0.839161217
            Y: 0.240986109
            Z: 0.240986109
          }
        }
        ParentId: 5806819676897369476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9782316430648728131
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
            Id: 7236836948546839749
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
        Id: 5260193877782483543
        Name: "Modern Weapon - Disc 01"
        Transform {
          Location {
            X: 7.32931519
            Y: 0.0618286133
            Z: 5.40480804
          }
          Rotation {
          }
          Scale {
            X: 0.839161217
            Y: 0.240986109
            Z: 0.240986109
          }
        }
        ParentId: 5806819676897369476
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9782316430648728131
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
            Id: 7236836948546839749
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
        Id: 5672093367190268221
        Name: "Front_Bumper"
        Transform {
          Location {
            X: 53.7738953
            Y: 43.1698761
            Z: 16.5930252
          }
          Rotation {
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14342889801568856094
        ChildIds: 2339238315476209520
        ChildIds: 9406132169669849572
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 2339238315476209520
        Name: "Modern Weapon Accessory - Rail 02"
        Transform {
          Location {
            Z: 3.29360199
          }
          Rotation {
            Roll: -179.999939
          }
          Scale {
            X: 6.08474398
            Y: 7.18817711
            Z: 5.92738771
          }
        }
        ParentId: 5672093367190268221
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 12637801335342129827
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
        Id: 9406132169669849572
        Name: "Modern Weapon Accessory - Rail 02"
        Transform {
          Location {
            X: 116.924225
            Y: -1.38656616
            Z: 3.29360199
          }
          Rotation {
            Roll: -179.999954
          }
          Scale {
            X: -6.63456154
            Y: 7.18817711
            Z: 5.92738771
          }
        }
        ParentId: 5672093367190268221
        UnregisteredParameters {
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
            Id: 12637801335342129827
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
        Id: 17234072494996825516
        Name: "Jeep_Nose"
        Transform {
          Location {
            X: -3
            Y: 25.2875061
            Z: 66.7295685
          }
          Rotation {
            Yaw: -179.999954
            Roll: -179.999954
          }
          Scale {
            X: 4.50000572
            Y: 0.788203716
            Z: 3.11058497
          }
        }
        ParentId: 14342889801568856094
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 10950223659781735576
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
        Id: 18237574517738250063
        Name: "Driver_Side_Mirror"
        Transform {
          Location {
            X: 112.194656
            Y: -169.19693
            Z: 77.4511261
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14342889801568856094
        ChildIds: 17767558386952081420
        ChildIds: 518123326413200988
        ChildIds: 11424822362503345384
        ChildIds: 304304879986987846
        ChildIds: 6873199967961460286
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 17767558386952081420
        Name: "SideMirror_L"
        Transform {
          Location {
            X: -6.89872742
            Y: -0.787017822
            Z: 29.957
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: -89.9999847
            Roll: 89.9999847
          }
          Scale {
            X: 1.39828372
            Y: 3.51751637
            Z: 3.51751637
          }
        }
        ParentId: 18237574517738250063
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14191729499148880165
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 8530349593571866885
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
        Id: 518123326413200988
        Name: "Gem - Radiant Polished"
        Transform {
          Location {
            X: 11.2085114
            Y: 2.95120239
            Z: 29.7789764
          }
          Rotation {
            Yaw: -9.76493549
            Roll: 89.9999695
          }
          Scale {
            X: 0.25677079
            Y: 0.25112462
            Z: 0.279515713
          }
        }
        ParentId: 18237574517738250063
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 4233572198356242960
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
        Id: 11424822362503345384
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 4.3657074
            Y: -0.744354248
            Z: 11.4055786
          }
          Rotation {
          }
          Scale {
            X: 0.0420368277
            Y: 0.0420368277
            Z: 0.207368046
          }
        }
        ParentId: 18237574517738250063
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 10477759332134786499
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
        Id: 304304879986987846
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 4.3657074
            Y: -0.744354248
            Z: 14.368927
          }
          Rotation {
          }
          Scale {
            X: 0.0697243735
            Y: 0.0697243735
            Z: 0.0387322903
          }
        }
        ParentId: 18237574517738250063
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 10477759332134786499
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
        Id: 6873199967961460286
        Name: "Modern Weapon - Sight Forward 02"
        Transform {
          Location {
            X: -13.0412292
            Y: -0.675537109
          }
          Rotation {
            Pitch: 90
            Yaw: 13.2626963
            Roll: -166.737289
          }
          Scale {
            X: 1.29433346
            Y: 2.67298698
            Z: 3.24567223
          }
        }
        ParentId: 18237574517738250063
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 6045540826292531006
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
        Id: 16684556875713918407
        Name: "Passenger_Side_Mirror"
        Transform {
          Location {
            X: -117.846283
            Y: -169.19693
            Z: 77.4511261
          }
          Rotation {
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14342889801568856094
        ChildIds: 1034492637934217455
        ChildIds: 18223761990783804448
        ChildIds: 5046148191603542285
        ChildIds: 4561690980543838027
        ChildIds: 13600509743466547424
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 1034492637934217455
        Name: "SideMirror_L"
        Transform {
          Location {
            X: -6.89872742
            Y: -0.787017822
            Z: 29.957
          }
          Rotation {
            Pitch: 1.36603776e-05
            Yaw: -89.9999847
            Roll: 89.9999847
          }
          Scale {
            X: 1.39828372
            Y: 3.51751637
            Z: 3.51751637
          }
        }
        ParentId: 16684556875713918407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 14191729499148880165
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 8530349593571866885
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
        Id: 18223761990783804448
        Name: "Gem - Radiant Polished"
        Transform {
          Location {
            X: 11.2085114
            Y: 2.95120239
            Z: 29.7789764
          }
          Rotation {
            Yaw: -9.76493549
            Roll: 89.9999695
          }
          Scale {
            X: 0.25677079
            Y: 0.25112462
            Z: 0.279515713
          }
        }
        ParentId: 16684556875713918407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 4233572198356242960
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
        Id: 5046148191603542285
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 4.3657074
            Y: -0.744354248
            Z: 11.4055786
          }
          Rotation {
          }
          Scale {
            X: 0.0420368277
            Y: 0.0420368277
            Z: 0.207368046
          }
        }
        ParentId: 16684556875713918407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 10477759332134786499
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
        Id: 4561690980543838027
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 4.3657074
            Y: -0.744354248
            Z: 14.368927
          }
          Rotation {
          }
          Scale {
            X: 0.0697243735
            Y: 0.0697243735
            Z: 0.0387322903
          }
        }
        ParentId: 16684556875713918407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 10477759332134786499
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
        Id: 13600509743466547424
        Name: "Modern Weapon - Sight Forward 02"
        Transform {
          Location {
            X: -13.0412292
            Y: -0.675537109
          }
          Rotation {
            Pitch: 90
            Yaw: 13.2626963
            Roll: -166.737289
          }
          Scale {
            X: 1.29433346
            Y: 2.67298698
            Z: 3.24567223
          }
        }
        ParentId: 16684556875713918407
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 6045540826292531006
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
        Id: 11858745385344489614
        Name: "engineblock"
        Transform {
          Location {
            X: -1.71655273
            Y: 63.4347229
            Z: -65.3752899
          }
          Rotation {
          }
          Scale {
            X: 1.75
            Y: 1.66806626
            Z: 0.400455296
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 13933319734176476288
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
        Id: 11285390929304001884
        Name: "Front_R_Fender"
        Transform {
          Location {
            X: -125
            Y: 213.379974
            Z: -100.812424
          }
          Rotation {
            Yaw: -89.9999924
          }
          Scale {
            X: 6.75
            Y: 9.5
            Z: 6.5
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 12637801335342129827
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
        Id: 1538120644262299567
        Name: "Front_L_Fender"
        Transform {
          Location {
            X: 120
            Y: 213.379974
            Z: -100.812424
          }
          Rotation {
            Yaw: -89.9999924
          }
          Scale {
            X: 6.75
            Y: 9.5
            Z: 6.5
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 12637801335342129827
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
        Id: 340286400915808621
        Name: "Back_L_Fender"
        Transform {
          Location {
            X: 120
            Y: -321.620026
            Z: -100.812424
          }
          Rotation {
            Yaw: 89.9999924
          }
          Scale {
            X: 5.25
            Y: 9.5
            Z: 6.5
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 12637801335342129827
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
        Id: 1577170378226684909
        Name: "Back_R_Fender"
        Transform {
          Location {
            X: -125
            Y: -321.620026
            Z: -100.812424
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 5.25
            Y: 9.5
            Z: 6.5
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 12637801335342129827
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
        Id: 2362069308312428085
        Name: "Jeep Back"
        Transform {
          Location {
            X: -1.68753052
            Y: -350.103241
            Z: -87.1626
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9828746054094513862
        ChildIds: 12284428252599707992
        ChildIds: 1188547294008067316
        ChildIds: 497048384181458912
        ChildIds: 6438617501075065686
        ChildIds: 7169960012892963328
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 12284428252599707992
        Name: "Back_L_Taillight"
        Transform {
          Location {
            X: 82.5451813
            Y: 6.10351562e-05
            Z: -8.02626
          }
          Rotation {
            Pitch: 31.0462074
            Yaw: 89.9995728
          }
          Scale {
            X: 3.82164264
            Y: 3.82164264
            Z: 3.82164264
          }
        }
        ParentId: 2362069308312428085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 4658297901084177103
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
            Id: 8530349593571866885
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
        Id: 1188547294008067316
        Name: "Back_R_Taillight"
        Transform {
          Location {
            X: -82.545166
            Z: -8.02626
          }
          Rotation {
            Pitch: 31.0462074
            Yaw: 89.9995728
          }
          Scale {
            X: 3.82164264
            Y: 3.82164264
            Z: 3.82164264
          }
        }
        ParentId: 2362069308312428085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 4658297901084177103
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
            Id: 8530349593571866885
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
        Id: 497048384181458912
        Name: "Back_Floor"
        Transform {
          Location {
            X: 95.8244781
            Y: -12.0996094
            Z: -58.649826
          }
          Rotation {
            Pitch: 90
            Yaw: 6.83018879e-06
            Roll: 1.04524415e-05
          }
          Scale {
            X: 1
            Y: 12.75
            Z: 1.92520082
          }
        }
        ParentId: 2362069308312428085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 1157444486122330678
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
        Id: 6438617501075065686
        Name: "ANIMATED: Tailgate"
        Transform {
          Location {
            X: 0.0282592773
            Y: -29.5572205
            Z: 2.67939758
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 2362069308312428085
        ChildIds: 18193423680043314234
        ChildIds: 3263161893971418756
        ChildIds: 15584758531591367904
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 18193423680043314234
        Name: "spare Tire"
        Transform {
          Location {
            X: -1.65927124
            Y: -22.4575806
            Z: 14.3982697
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6438617501075065686
        ChildIds: 13456854581872872436
        ChildIds: 12922070317505310355
        ChildIds: 1328659996141107541
        ChildIds: 12393491991547275594
        ChildIds: 15595872747417025127
        ChildIds: 7064129194991125794
        ChildIds: 5756651102627174836
        ChildIds: 9669952546935254755
        ChildIds: 11316574299781781075
        ChildIds: 4093976301478686187
        ChildIds: 13659573159799297502
        ChildIds: 17521528198906804127
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 13456854581872872436
        Name: "Gear - generic small hollow"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Pitch: -17.9999924
            Yaw: -90.0000076
          }
          Scale {
            X: 2.5
            Y: 4.25
            Z: 2.5
          }
        }
        ParentId: 18193423680043314234
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 7324235194893113792
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
        Id: 12922070317505310355
        Name: "Modern Weapon - Grenade Canister 02"
        Transform {
          Location {
            X: -30.000061
          }
          Rotation {
            Yaw: -89.9999695
            Roll: 89.9999542
          }
          Scale {
            X: 1.04166675
            Y: 1.01190448
            Z: 1.875
          }
        }
        ParentId: 18193423680043314234
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Shared_Detail2:color"
            Color {
              R: 0.63
              G: 3.00407407e-07
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
            Id: 2045656181030396645
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
        Id: 1328659996141107541
        Name: "Modern Weapon - Bullet 01 Casing"
        Transform {
          Location {
            X: -0.000244140625
            Y: 3
            Z: -15
          }
          Rotation {
            Yaw: -2.04905427e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 18193423680043314234
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 12393491991547275594
        Name: "Modern Weapon - Bullet 01 Casing"
        Transform {
          Location {
            X: -0.000244140625
            Y: 7
            Z: 13
          }
          Rotation {
            Yaw: -5.12263687e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 18193423680043314234
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 15595872747417025127
        Name: "Modern Weapon - Bullet 01 Casing"
        Transform {
          Location {
            X: -0.000244140625
            Y: -12
            Z: 11
          }
          Rotation {
            Yaw: -5.1226365e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 18193423680043314234
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 7064129194991125794
        Name: "Modern Weapon - Bullet 01 Casing"
        Transform {
          Location {
            X: -0.000244140625
            Y: -13
            Z: -7
          }
          Rotation {
            Yaw: -4.78112743e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 18193423680043314234
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 5756651102627174836
        Name: "Modern Weapon - Bullet 01 Casing"
        Transform {
          Location {
            X: -0.000183105469
            Y: 15
            Z: -2
          }
          Rotation {
            Yaw: -4.78112743e-05
            Roll: -179.999954
          }
          Scale {
            X: 3.06666684
            Y: 0.809523642
            Z: 0.833333373
          }
        }
        ParentId: 18193423680043314234
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 9669952546935254755
        Name: "Gear - generic small hollow"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 2.5
            Y: 4.25
            Z: 2.5
          }
        }
        ParentId: 18193423680043314234
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 7324235194893113792
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
        Id: 11316574299781781075
        Name: "Gear - generic small hollow"
        Transform {
          Location {
            X: 20
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 1.66666675
            Y: 0.809523642
            Z: 1.66666675
          }
        }
        ParentId: 18193423680043314234
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 7324235194893113792
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
        Id: 4093976301478686187
        Name: "Gear - generic small hollow"
        Transform {
          Location {
            X: -20
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 1.66666675
            Y: 0.809523642
            Z: 1.66666675
          }
        }
        ParentId: 18193423680043314234
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 2976538755313112465
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
            Id: 7324235194893113792
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
        Id: 13659573159799297502
        Name: "Donut"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Yaw: -89.9999695
            Roll: 89.9999542
          }
          Scale {
            X: 0.833333373
            Y: 0.787036896
            Z: 1.16666663
          }
        }
        ParentId: 18193423680043314234
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 3859650733230292738
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
        Id: 17521528198906804127
        Name: "Gear - generic large five-spoked"
        Transform {
          Location {
            X: -0.000244140625
          }
          Rotation {
            Yaw: -89.9999542
          }
          Scale {
            X: 0.99999994
            Y: 3.64285588
            Z: 0.99999994
          }
        }
        ParentId: 18193423680043314234
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 12695619787122085888
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
        Id: 3263161893971418756
        Name: "Cylinder - Chamfered Polished"
        Transform {
          Location {
            X: 45.1688843
            Y: 373.770599
            Z: 48.1758728
          }
          Rotation {
            Yaw: 1.22616457e-05
            Roll: -64.825592
          }
          Scale {
            X: 0.114815876
            Y: 0.114815876
            Z: 0.566387415
          }
        }
        ParentId: 6438617501075065686
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8866898709121265691
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
            Id: 10477759332134786499
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
        Id: 15584758531591367904
        Name: "Tailgate"
        Transform {
          Location {
            X: -1.20425415
            Y: 22.4576416
          }
          Rotation {
            Pitch: 90
            Yaw: -90
            Roll: -0.00274658203
          }
          Scale {
            X: 0.721681
            Y: 0.265478224
            Z: -0.750001371
          }
        }
        ParentId: 6438617501075065686
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 243275085052259205
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
            Id: 15001748559136319091
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
        Id: 7169960012892963328
        Name: "backBumper"
        Transform {
          Location {
            X: 96.6875305
            Y: -37.8400879
            Z: -34.7008667
          }
          Rotation {
            Yaw: 89.9999695
            Roll: 89.9999542
          }
          Scale {
            X: 2.5
            Y: 2.49999976
            Z: 4.4635272
          }
        }
        ParentId: 2362069308312428085
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 11522390231817830490
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 11522390231817830490
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 11522390231817830490
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
            Id: 2986790912371252552
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
        Id: 5874094732439329665
        Name: "Front_Light_Block"
        Transform {
          Location {
            X: -76.7809753
            Y: 179.946075
            Z: -96.4542694
          }
          Rotation {
          }
          Scale {
            X: 0.63912046
            Y: 0.378381729
            Z: 1.49488533
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 4715610968541719994
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
        Id: 3916621285095927728
        Name: "Front_Light_Block"
        Transform {
          Location {
            X: 70.2931671
            Y: 179.946075
            Z: -96.4542694
          }
          Rotation {
          }
          Scale {
            X: 0.63912046
            Y: 0.378381729
            Z: 1.49488533
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 4715610968541719994
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
        Id: 5760196723536934237
        Name: "Front_Ant"
        Transform {
          Location {
            X: -87.4798279
            Y: 19.1188965
            Z: 22.7509918
          }
          Rotation {
          }
          Scale {
            X: 0.01
            Y: 0.01
            Z: 1.86767328
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 10477759332134786499
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
        Id: 12878277052338255521
        Name: "engineblock"
        Transform {
          Location {
            X: -1.71655273
            Y: 92.1463623
            Z: -100.708267
          }
          Rotation {
          }
          Scale {
            X: 1.75
            Y: 1.31200075
            Z: 0.84287703
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 13933319734176476288
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
        Id: 737903309539753039
        Name: "Back_R_Wheel_Well"
        Transform {
          Location {
            X: 72.9741821
            Y: -250.941315
            Z: -130.195343
          }
          Rotation {
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9828746054094513862
        ChildIds: 9261739208764015645
        ChildIds: 2969922965381219814
        ChildIds: 15145375696894898595
        ChildIds: 17037699532678964966
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 9261739208764015645
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 16.7450562
            Y: 1.11480713
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 89.9997787
            Roll: 10.2922297
          }
          Scale {
            X: 1.39663041
            Y: 0.496777207
            Z: 0.73279047
          }
        }
        ParentId: 737903309539753039
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14007356304016191279
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
            Id: 13788396403019154669
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
        Id: 2969922965381219814
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.58639526
            Y: 81.2751465
            Z: 34.6697
          }
          Rotation {
          }
          Scale {
            X: 0.564806521
            Y: 0.380833626
            Z: 0.983935237
          }
        }
        ParentId: 737903309539753039
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10845669953295752542
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
            Id: 11572157823613737469
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
        Id: 15145375696894898595
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.58639526
            Y: -86.7785
            Z: 34.6697
          }
          Rotation {
          }
          Scale {
            X: 0.564806521
            Y: 0.55688709
            Z: 0.983935237
          }
        }
        ParentId: 737903309539753039
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10845669953295752542
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
            Id: 11572157823613737469
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
        Id: 17037699532678964966
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -13.5721741
            Y: 4.38879395
            Z: 71.7638779
          }
          Rotation {
          }
          Scale {
            X: 0.305173337
            Y: 1.39623904
            Z: 0.241619602
          }
        }
        ParentId: 737903309539753039
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10845669953295752542
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
            Id: 11572157823613737469
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
        Id: 18415655772516008722
        Name: "Back_R_Wheel_Well"
        Transform {
          Location {
            X: -81.6555176
            Y: -250.941315
            Z: -130.195343
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9828746054094513862
        ChildIds: 4967900927695792628
        ChildIds: 5773401670251542765
        ChildIds: 14748046891805248364
        ChildIds: 562575014617313984
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 4967900927695792628
        Name: "Wedge - Curved"
        Transform {
          Location {
            X: 16.7450562
            Y: 1.11480713
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 89.9997787
            Roll: 10.2922297
          }
          Scale {
            X: 1.39663041
            Y: 0.496777207
            Z: 0.73279047
          }
        }
        ParentId: 18415655772516008722
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14007356304016191279
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
            Id: 13788396403019154669
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
        Id: 5773401670251542765
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.58639526
            Y: 81.2751465
            Z: 34.6697
          }
          Rotation {
          }
          Scale {
            X: 0.564806521
            Y: 0.380833626
            Z: 0.983935237
          }
        }
        ParentId: 18415655772516008722
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10845669953295752542
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
            Id: 11572157823613737469
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
        Id: 14748046891805248364
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -1.58639526
            Y: -86.7785
            Z: 34.6697
          }
          Rotation {
          }
          Scale {
            X: 0.564806521
            Y: 0.55688709
            Z: 0.983935237
          }
        }
        ParentId: 18415655772516008722
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10845669953295752542
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
            Id: 11572157823613737469
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
        Id: 562575014617313984
        Name: "Cube - Chamfered Small Polished"
        Transform {
          Location {
            X: -13.5721741
            Y: 4.38879395
            Z: 71.7638779
          }
          Rotation {
          }
          Scale {
            X: 0.305173337
            Y: 1.39623904
            Z: 0.241619602
          }
        }
        ParentId: 18415655772516008722
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10845669953295752542
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
            Id: 11572157823613737469
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
        Id: 7023192433952582352
        Name: "gas_cap"
        Transform {
          Location {
            X: 105.965881
            Y: -340.067841
            Z: -69.0794525
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
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
            Id: 7236836948546839749
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
        Id: 15235143607668195987
        Name: "Cube - Polished"
        Transform {
          Location {
            X: -4.4128418
            Y: 1.33731079
            Z: -30.8396301
          }
          Rotation {
            Roll: -16.2985115
          }
          Scale {
            X: 1.89397287
            Y: 0.0349042527
            Z: 0.376898915
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10845669953295752542
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
            Id: 4506676792560583798
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
        Id: 16187053621773095379
        Name: "Front_Seats"
        Transform {
          Location {
            X: -2.85229492
            Y: -93.037323
            Z: -77.5985565
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9828746054094513862
        ChildIds: 16164069320674857859
        ChildIds: 1263689039597591922
        ChildIds: 1188472483904275405
        ChildIds: 14788383432185614976
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
        Folder {
          IsFilePartition: true
          FilePartitionName: "Front_Seats_1"
        }
      }
      Objects {
        Id: 16164069320674857859
        Name: "Gem - Radiant Polished"
        Transform {
          Location {
            X: 44.6595459
            Y: 19.1144409
          }
          Rotation {
            Roll: -15.5755196
          }
          Scale {
            X: 0.635639071
            Y: 0.598539472
            Z: 1.20654821
          }
        }
        ParentId: 16187053621773095379
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14179029137965777758
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
            Id: 4233572198356242960
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
        Id: 1263689039597591922
        Name: "Modern Weapon - Grip 02"
        Transform {
          Location {
            X: 44.6763
            Y: -19.1144409
            Z: 12.0215759
          }
          Rotation {
            Pitch: 12.6296616
            Yaw: 89.9999466
            Roll: -179.999893
          }
          Scale {
            X: 3.96962428
            Y: 11.1870022
            Z: 5.15286875
          }
        }
        ParentId: 16187053621773095379
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.0199999809
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 14179029137965777758
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
            Id: 8582601378646188800
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
        Id: 1188472483904275405
        Name: "Modern Weapon - Grip 02"
        Transform {
          Location {
            X: -44.6595764
            Y: -19.1144409
            Z: 12.0215759
          }
          Rotation {
            Pitch: 12.6296616
            Yaw: 89.9999466
            Roll: -179.999893
          }
          Scale {
            X: 3.96962428
            Y: 11.1870022
            Z: 5.15286875
          }
        }
        ParentId: 16187053621773095379
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:color"
            Color {
              R: 0.0199999809
              A: 1
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 14179029137965777758
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
            Id: 8582601378646188800
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
        Id: 14788383432185614976
        Name: "Gem - Radiant Polished"
        Transform {
          Location {
            X: -44.6763306
            Y: 19.1144409
          }
          Rotation {
            Roll: -15.5755453
          }
          Scale {
            X: 0.635639071
            Y: 0.598539472
            Z: 1.20654821
          }
        }
        ParentId: 16187053621773095379
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14179029137965777758
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
            Id: 4233572198356242960
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
        Id: 13532466180889347294
        Name: "Shifter"
        Transform {
          Location {
            X: -2.98828125
            Y: -44.2241516
            Z: -124.077682
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9828746054094513862
        ChildIds: 18406076687520342368
        ChildIds: 15488028825511112688
        ChildIds: 1581083507388292415
        ChildIds: 13564394027865216924
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 18406076687520342368
        Name: "Modern Weapon - Sight 01"
        Transform {
          Location {
            X: 0.22076416
            Y: 1.3508606
          }
          Rotation {
            Yaw: 89.9999924
          }
          Scale {
            X: 3.98169732
            Y: 3.98169732
            Z: 3.62004304
          }
        }
        ParentId: 13532466180889347294
        UnregisteredParameters {
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
            Id: 9497337568714563558
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
        Id: 15488028825511112688
        Name: "Modern Weapon - Grenade Canister 04"
        Transform {
          Location {
            X: -0.227294922
            Y: -10.7823486
            Z: 59.7640381
          }
          Rotation {
            Roll: -21.9743042
          }
          Scale {
            X: 0.778354287
            Y: 0.778354287
            Z: 0.778354287
          }
        }
        ParentId: 13532466180889347294
        UnregisteredParameters {
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
            Id: 1236564848595271332
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
        Id: 1581083507388292415
        Name: "Modern Weapon - Bullet 02 Casing"
        Transform {
          Location {
            X: 0.140014648
            Y: -5.11035156
            Z: 44.0324097
          }
          Rotation {
            Pitch: 74.2585602
            Yaw: -89.999939
            Roll: -89.9998779
          }
          Scale {
            X: 4.82221699
            Y: 1.18892443
            Z: 1.18892479
          }
        }
        ParentId: 13532466180889347294
        UnregisteredParameters {
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
            Id: 962099196015237473
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
        Id: 13564394027865216924
        Name: "Pyramid - 6-Sided Truncated Hollow"
        Transform {
          Location {
            X: 0.0523681641
            Y: 3.58148193
            Z: 16.2811432
          }
          Rotation {
            Roll: -22.6815033
          }
          Scale {
            X: 0.217996806
            Y: 0.217996806
            Z: 0.290980726
          }
        }
        ParentId: 13532466180889347294
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 5419623139495260362
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
        Id: 3756953593981778369
        Name: "Tree_Mirror"
        Transform {
          Location {
            X: 0.476501465
            Y: -22.5523376
            Z: -0.942611694
          }
          Rotation {
          }
          Scale {
            X: 0.0730206
            Y: 0.0730206
            Z: 0.0730206
          }
        }
        ParentId: 9828746054094513862
        ChildIds: 9252844175915875661
        ChildIds: 13706159135319826165
        ChildIds: 12668413442334293604
        ChildIds: 3372093608517644437
        ChildIds: 13601962460163750808
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 9252844175915875661
        Name: ">"
        Transform {
          Location {
            X: 23.6619873
            Y: -0.0723266602
            Z: 76.049118
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 1.52699566
            Y: 1
            Z: 2.04548311
          }
        }
        ParentId: 3756953593981778369
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10657680607618848076
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10657680607618848076
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10657680607618848076
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
            Id: 9677665090513604967
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
        Id: 13706159135319826165
        Name: ">"
        Transform {
          Location {
            X: 39.3650208
            Y: -0.0723266602
            Z: 26.0466461
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 1.52699566
            Y: 1
            Z: 2.35445
          }
        }
        ParentId: 3756953593981778369
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10657680607618848076
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10657680607618848076
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10657680607618848076
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
            Id: 9677665090513604967
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
        Id: 12668413442334293604
        Name: ">"
        Transform {
          Location {
            X: 3.45278931
            Y: -0.0723266602
            Z: 120.44342
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 1.52699566
            Y: 1
            Z: 1.6136719
          }
        }
        ParentId: 3756953593981778369
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10657680607618848076
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10657680607618848076
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10657680607618848076
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
            Id: 9677665090513604967
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
        Id: 3372093608517644437
        Name: "|"
        Transform {
          Location {
            X: -66.4798
            Y: 0.217041016
          }
          Rotation {
            Yaw: 89.9999771
          }
          Scale {
            X: 3.15392733
            Y: 1.00000072
            Z: 1.94683862
          }
        }
        ParentId: 3756953593981778369
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 10657680607618848076
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 10657680607618848076
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 10657680607618848076
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
            Id: 1578995116259125766
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
        Id: 13601962460163750808
        Name: "tree_string"
        Transform {
          Location {
            X: -76.657341
            Y: 11.2862291
            Z: 287.764374
          }
          Rotation {
          }
          Scale {
            X: 0.0484652594
            Y: 0.0484652594
            Z: 1.76948094
          }
        }
        ParentId: 3756953593981778369
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15254797557853360748
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
            Id: 10477759332134786499
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
        Id: 14742863519513935602
        Name: "steering__Wheel"
        Transform {
          Location {
            X: 43.3397217
            Y: -29.1967163
            Z: -26.4547424
          }
          Rotation {
            Roll: 17.0858765
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9828746054094513862
        ChildIds: 4750841417981175160
        ChildIds: 11150207926763055271
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 4750841417981175160
        Name: "Gear - generic large two-spoked"
        Transform {
          Location {
            X: 0.0016784668
            Y: 0.0750427246
            Z: 0.717544556
          }
          Rotation {
            Pitch: 54.4176254
          }
          Scale {
            X: 0.43544215
            Y: 0.43544215
            Z: 0.43544215
          }
        }
        ParentId: 14742863519513935602
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 1456813209646203172
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
        Id: 11150207926763055271
        Name: "Ring - Thick"
        Transform {
          Location {
            X: -0.0016784668
            Y: -0.0750427246
          }
          Rotation {
            Roll: -89.9999924
          }
          Scale {
            X: 0.499909818
            Y: 0.499909967
            Z: 0.280717909
          }
        }
        ParentId: 14742863519513935602
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17089898232364552968
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
            Id: 11292371150602349456
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
        Id: 11248258162579214645
        Name: "rack"
        Transform {
          Location {
            X: 55.551239
            Y: -161.280792
            Z: -36.5758057
          }
          Rotation {
            Yaw: 89.9999847
            Roll: 89.9999847
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9828746054094513862
        ChildIds: 8324506534341030547
        ChildIds: 6884318351893824461
        ChildIds: 10327341065001551605
        ChildIds: 4884877859971746749
        ChildIds: 9551497801827943518
        ChildIds: 11722609821180508581
        ChildIds: 3555489462352854621
        ChildIds: 3355244250682528799
        ChildIds: 1912152137293935997
        ChildIds: 3821214986838455224
        ChildIds: 9466698334715290172
        ChildIds: 5767559386582784207
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 8324506534341030547
        Name: "Street Barrier - Pedestrian"
        Transform {
          Location {
            X: -0.000610351562
            Y: -107.012497
            Z: -31.3569183
          }
          Rotation {
            Pitch: -3.05175781e-05
            Roll: 1.36603776e-05
          }
          Scale {
            X: 1.00000083
            Y: 0.45472452
            Z: 1.22229838
          }
        }
        ParentId: 11248258162579214645
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 11638225697129107731
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
        Id: 6884318351893824461
        Name: "Street Barrier - Pedestrian"
        Transform {
          Location {
            X: -0.0102844238
            Y: -107.017517
            Z: 147.179565
          }
          Rotation {
            Pitch: -3.05175781e-05
            Roll: -179.999939
          }
          Scale {
            X: 1.00000083
            Y: 0.45472452
            Z: 1.22229838
          }
        }
        ParentId: 11248258162579214645
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 11638225697129107731
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
        Id: 10327341065001551605
        Name: "gas"
        Transform {
          Location {
            X: 103.182808
            Y: -118.327965
            Z: 111.364227
          }
          Rotation {
            Pitch: -90
            Yaw: 13.2626963
            Roll: 166.737289
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11248258162579214645
        ChildIds: 2011134416364175289
        ChildIds: 5443257363368983245
        ChildIds: 17298577568021733026
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 2011134416364175289
        Name: "SciFi Trim 01 End"
        Transform {
          Location {
            X: -6.60427856
            Y: 5.34326172
          }
          Rotation {
            Roll: -89.9999924
          }
          Scale {
            X: 0.475164354
            Y: 0.833309293
            Z: 0.312227577
          }
        }
        ParentId: 10327341065001551605
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6852768612143769580
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
            Id: 14071410504723121352
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
        Id: 5443257363368983245
        Name: "Modern Weapon Barrel 01"
        Transform {
          Location {
            X: 12.4549255
            Y: 4.92504883
            Z: 78.9393
          }
          Rotation {
            Pitch: -80.6390686
            Yaw: -6.10351854e-05
            Roll: 9.0608446e-05
          }
          Scale {
            X: 1.36246252
            Y: 0.726857781
            Z: 0.726857781
          }
        }
        ParentId: 10327341065001551605
        UnregisteredParameters {
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
            Id: 2817890560817570586
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
        Id: 17298577568021733026
        Name: "Decal Hazard Symbols 01"
        Transform {
          Location {
            X: -5.85061646
            Y: -10.2680664
            Z: 47.3125
          }
          Rotation {
            Yaw: -179.999985
            Roll: 89.9999924
          }
          Scale {
            X: 0.4
            Y: 0.4
            Z: 0.4
          }
        }
        ParentId: 10327341065001551605
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
        Blueprint {
          BlueprintAsset {
            Id: 2017483418934463446
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 4884877859971746749
        Name: "gas"
        Transform {
          Location {
            X: 89.3519592
            Y: -118.327972
            Z: 58.4143677
          }
          Rotation {
            Pitch: -90
            Yaw: 13.2626963
            Roll: 166.737289
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11248258162579214645
        ChildIds: 488785939074246005
        ChildIds: 12771012730151976056
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 488785939074246005
        Name: "SciFi Trim 01 End"
        Transform {
          Location {
            X: -6.60427856
            Y: 5.34326172
          }
          Rotation {
            Roll: -89.9999924
          }
          Scale {
            X: 0.475164354
            Y: 0.833309293
            Z: 0.312227577
          }
        }
        ParentId: 4884877859971746749
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6852768612143769580
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
            Id: 14071410504723121352
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
        Id: 12771012730151976056
        Name: "Modern Weapon Barrel 01"
        Transform {
          Location {
            X: 12.4549255
            Y: 4.92504883
            Z: 78.9393
          }
          Rotation {
            Pitch: -80.6390686
            Yaw: -6.10351854e-05
            Roll: 9.0608446e-05
          }
          Scale {
            X: 1.36246252
            Y: 0.726857781
            Z: 0.726857781
          }
        }
        ParentId: 4884877859971746749
        UnregisteredParameters {
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
            Id: 2817890560817570586
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
        Id: 9551497801827943518
        Name: "Decal Hazard Symbols 01"
        Transform {
          Location {
            X: 42.0394554
            Y: -108.059914
            Z: 64.265
          }
          Rotation {
            Pitch: 90
            Yaw: 56.3099136
            Roll: 146.309937
          }
          Scale {
            X: 0.4
            Y: 0.4
            Z: 0.4
          }
        }
        ParentId: 11248258162579214645
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
        Blueprint {
          BlueprintAsset {
            Id: 2017483418934463446
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11722609821180508581
        Name: "Modern Weapon - Bullet 01 Casing"
        Transform {
          Location {
            X: 132.06633
            Y: -87.9183655
            Z: -27.6891479
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -89.9999847
            Roll: 2.41483599e-06
          }
          Scale {
            X: 0.83543092
            Y: 1
            Z: 1
          }
        }
        ParentId: 11248258162579214645
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 3555489462352854621
        Name: "Modern Weapon - Foregrip 03"
        Transform {
          Location {
            X: -131.388458
            Y: -107.248093
            Z: -29.8473778
          }
          Rotation {
            Pitch: -6.83018879e-06
            Yaw: -89.9999847
            Roll: 77.9263153
          }
          Scale {
            X: 2.25874829
            Y: 1.67671657
            Z: 1.67671645
          }
        }
        ParentId: 11248258162579214645
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 14988005733009136957
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
        Id: 3355244250682528799
        Name: "Modern Weapon - Foregrip 03"
        Transform {
          Location {
            X: -131.388489
            Y: -107.248108
            Z: 144.206696
          }
          Rotation {
            Pitch: -6.83018879e-06
            Yaw: -89.9999695
            Roll: 102.497879
          }
          Scale {
            X: 2.25874829
            Y: 1.67671657
            Z: 1.67671645
          }
        }
        ParentId: 11248258162579214645
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
            }
          }
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 14988005733009136957
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
        Id: 1912152137293935997
        Name: "Modern Weapon Barrel 01"
        Transform {
          Location {
            X: -127.181
            Y: -63.659996
            Z: -28.0883064
          }
          Rotation {
            Pitch: -1.36603776e-05
            Yaw: -101.572647
            Roll: -8.54477889e-07
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11248258162579214645
        UnregisteredParameters {
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
            Id: 2817890560817570586
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
        Id: 3821214986838455224
        Name: "Pipe"
        Transform {
          Location {
            X: -121.615479
            Y: -62.4513397
            Z: 144.323303
          }
          Rotation {
            Pitch: -0.000498603797
            Yaw: 79.5609131
            Roll: 89.9944458
          }
          Scale {
            X: -0.186697945
            Y: 0.186697632
            Z: 0.114837609
          }
        }
        ParentId: 11248258162579214645
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 982945270013962956
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
            Id: 3065043153909758577
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
        Id: 9466698334715290172
        Name: "Modern Weapon Barrel 01"
        Transform {
          Location {
            X: -127.18103
            Y: -63.6600037
            Z: 144.45433
          }
          Rotation {
            Pitch: -1.36603776e-05
            Yaw: -101.572678
            Roll: 3.95058942e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11248258162579214645
        UnregisteredParameters {
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
            Id: 2817890560817570586
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
        Id: 5767559386582784207
        Name: "Modern Weapon - Bullet 01 Casing"
        Transform {
          Location {
            X: 132.066284
            Y: -87.9183655
            Z: 143.358643
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -89.9999847
            Roll: 2.41483599e-06
          }
          Scale {
            X: 0.83543092
            Y: 1
            Z: 1
          }
        }
        ParentId: 11248258162579214645
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 12572589739177461825
        Name: "LightBar"
        Transform {
          Location {
            X: -0.145599365
            Y: -13.724823
            Z: 48.6292267
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9828746054094513862
        ChildIds: 14352355833807997453
        ChildIds: 9708946798582075339
        ChildIds: 15981259275960369091
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 14352355833807997453
        Name: "OverHeadLights"
        Transform {
          Location {
            X: -0.51449585
            Y: 1.08953857
            Z: 6.67434692
          }
          Rotation {
            Roll: 89.9999924
          }
          Scale {
            X: 4.34308386
            Y: 4.34308386
            Z: 1.23908329
          }
        }
        ParentId: 12572589739177461825
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_Trim:id"
            AssetReference {
              Id: 5802238831203306296
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 4658297901084177103
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
            Id: 6157711858907400962
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
        Id: 9708946798582075339
        Name: "overheadLight_Mount_R"
        Transform {
          Location {
            X: -36.3010864
            Y: -0.544769287
          }
          Rotation {
          }
          Scale {
            X: 1.45373595
            Y: 1.45373595
            Z: 1.45373595
          }
        }
        ParentId: 12572589739177461825
        UnregisteredParameters {
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
            Id: 6045540826292531006
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
        Id: 15981259275960369091
        Name: "overheadLight_Mount_L"
        Transform {
          Location {
            X: 36.8156433
            Y: -0.544769287
          }
          Rotation {
            Yaw: -179.999985
          }
          Scale {
            X: 1.45373595
            Y: 1.45373595
            Z: 1.45373595
          }
        }
        ParentId: 12572589739177461825
        UnregisteredParameters {
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
            Id: 6045540826292531006
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
        Id: 13284566899931239352
        Name: "Mirror_Stem"
        Transform {
          Location {
            X: -4.80755615
            Y: -22.3196411
            Z: 27.8115387
          }
          Rotation {
            Roll: 16.6341553
          }
          Scale {
            X: 0.0420368277
            Y: 0.0420366377
            Z: 0.173805922
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 10477759332134786499
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
        Id: 13596169361415887445
        Name: "Modern Weapon - Body 02"
        Transform {
          Location {
            X: 67.4693604
            Y: -101.775726
            Z: 75.7992096
          }
          Rotation {
            Yaw: 89.9999847
            Roll: -89.9999847
          }
          Scale {
            X: 2.80491614
            Y: 1.00000119
            Z: 1.00000083
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
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
            Id: 12188130527814960821
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
        Id: 5326253373200558861
        Name: "Modern Weapon - Barrel Tip 03"
        Transform {
          Location {
            X: -91.5715637
            Y: -306.399323
            Z: -165.215057
          }
          Rotation {
            Yaw: -89.6368713
          }
          Scale {
            X: 4.0193224
            Y: 5.12335825
            Z: 5.12335777
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
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
            Id: 8933866162651425485
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
        Id: 6469526646559943940
        Name: "Modern Weapon - Gas Cylinder 01"
        Transform {
          Location {
            X: -48.1829529
            Y: -275.358307
            Z: -154.303543
          }
          Rotation {
          }
          Scale {
            X: 4.22861052
            Y: 4.22861052
            Z: 4.22861052
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
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
            Id: 12036265987143389800
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
        Id: 7585508585975153235
        Name: "Gem - Baguette Polished"
        Transform {
          Location {
            X: -3.53845215
            Y: -24.9659729
            Z: 23.0538483
          }
          Rotation {
            Roll: 89.9999924
          }
          Scale {
            X: 0.341974407
            Y: 0.201250434
            Z: 0.201250434
          }
        }
        ParentId: 9828746054094513862
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 1734010293662634999
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
            Id: 16377470832245035683
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
        Id: 7322396535552853283
        Name: "ANIMATED: Mechanics"
        Transform {
          Location {
            X: 0.806243896
            Y: 118.547028
            Z: 45
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12362893300412412450
        ChildIds: 18142260231739288038
        ChildIds: 10017179357798701915
        ChildIds: 6322680824022736356
        ChildIds: 7042934499381626955
        ChildIds: 13435896166788717234
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 18142260231739288038
        Name: "Front_L_Suspension"
        Transform {
          Location {
            X: 102.5
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7322396535552853283
        ChildIds: 6322269495993681911
        ChildIds: 7487785952209178013
        ChildIds: 16829645474042711
        ChildIds: 8851140125133712467
        ChildIds: 1993131755237723914
        ChildIds: 6463571602496315989
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 6322269495993681911
        Name: "Helix - 1.0"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 18142260231739288038
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 7487785952209178013
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 10
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 18142260231739288038
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 16829645474042711
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 20
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 18142260231739288038
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 8851140125133712467
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 30
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 18142260231739288038
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 1993131755237723914
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 40
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 18142260231739288038
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 6463571602496315989
        Name: "Modern Weapon - Bullet 01 Casing"
        Transform {
          Location {
            X: -10.1719513
            Y: -1.44052124
            Z: 21.3752441
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 4.97398376
            Y: 3.86252117
            Z: 3.86252093
          }
        }
        ParentId: 18142260231739288038
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 10017179357798701915
        Name: "Front_R_Suspension"
        Transform {
          Location {
            X: -102.5
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7322396535552853283
        ChildIds: 10691138075633957190
        ChildIds: 6639197450894715534
        ChildIds: 16552309582719717281
        ChildIds: 15493633259209299299
        ChildIds: 17147809070997279063
        ChildIds: 1173150944257478463
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 10691138075633957190
        Name: "Helix - 1.0"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 10017179357798701915
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 6639197450894715534
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 10
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 10017179357798701915
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 16552309582719717281
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 20
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 10017179357798701915
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 15493633259209299299
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 30
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 10017179357798701915
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 17147809070997279063
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 40
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 10017179357798701915
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 1173150944257478463
        Name: "Modern Weapon - Bullet 01 Casing"
        Transform {
          Location {
            X: -11.065155
            Y: -1.44052124
            Z: 21.3752289
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 4.97398376
            Y: 3.86252117
            Z: 3.86252093
          }
        }
        ParentId: 10017179357798701915
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 6322680824022736356
        Name: "Undercarriage"
        Transform {
          Location {
            X: -2.5
            Y: -270
            Z: -45
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7322396535552853283
        ChildIds: 2380188240449088373
        ChildIds: 13120863457868435183
        ChildIds: 16871026450897079156
        ChildIds: 8588385215451895729
        ChildIds: 15079855231801086432
        ChildIds: 8254954990783244564
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 2380188240449088373
        Name: "Pipe"
        Transform {
          Location {
            X: 15
            Y: -85
          }
          Rotation {
            Pitch: 90
            Yaw: 14.0362635
            Roll: 104.03627
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 1.7
          }
        }
        ParentId: 6322680824022736356
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14007356304016191279
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
            Id: 3065043153909758577
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
        Id: 13120863457868435183
        Name: "Pipe"
        Transform {
          Location {
            X: -10
            Y: 85
          }
          Rotation {
            Pitch: 90
            Yaw: 90
            Roll: 180
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 1.7
          }
        }
        ParentId: 6322680824022736356
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14007356304016191279
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
            Id: 3065043153909758577
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
        Id: 16871026450897079156
        Name: "Pipe"
        Transform {
          Location {
            X: 130
            Y: 270
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 2.75000024
          }
        }
        ParentId: 6322680824022736356
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14007356304016191279
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
            Id: 3065043153909758577
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
        Id: 8588385215451895729
        Name: "Pipe"
        Transform {
          Location {
            X: 130
            Y: -110
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 2.75000024
          }
        }
        ParentId: 6322680824022736356
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14007356304016191279
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
            Id: 3065043153909758577
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
        Id: 15079855231801086432
        Name: "Pipe"
        Transform {
          Location {
            X: 95
            Y: 270
            Z: 25
          }
          Rotation {
            Pitch: 86.9999
            Yaw: -179.999893
            Roll: -179.999893
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 2.2
          }
        }
        ParentId: 6322680824022736356
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14007356304016191279
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
            Id: 3065043153909758577
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
        Id: 8254954990783244564
        Name: "Modern Weapon Barrel 01"
        Transform {
          Location {
            X: -46.2759705
            Y: 270.268097
            Z: -0.307327271
          }
          Rotation {
          }
          Scale {
            X: 1.91584074
            Y: 1.91584074
            Z: 1.91584074
          }
        }
        ParentId: 6322680824022736356
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9051022970414101756
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
            Id: 2817890560817570586
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
        Id: 7042934499381626955
        Name: "Back_L_Suspension"
        Transform {
          Location {
            X: 110.247513
            Y: -382.433044
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7322396535552853283
        ChildIds: 6247083682992141988
        ChildIds: 12678100678287198584
        ChildIds: 16249514154949342700
        ChildIds: 6218829126405863113
        ChildIds: 12484832831773973911
        ChildIds: 12821134233788637408
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 6247083682992141988
        Name: "Helix - 1.0"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 7042934499381626955
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 12678100678287198584
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 10
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 7042934499381626955
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 16249514154949342700
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 20
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 7042934499381626955
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 6218829126405863113
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 30
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 7042934499381626955
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 12484832831773973911
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 40
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 7042934499381626955
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 12821134233788637408
        Name: "Modern Weapon - Bullet 01 Casing"
        Transform {
          Location {
            X: -10.1719513
            Y: -1.44052124
            Z: 21.3752441
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 4.97398376
            Y: 3.86252117
            Z: 3.86252093
          }
        }
        ParentId: 7042934499381626955
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 13435896166788717234
        Name: "Back_R_Suspension"
        Transform {
          Location {
            X: -102.5
            Y: -384.070312
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7322396535552853283
        ChildIds: 5782846982928312742
        ChildIds: 15012817374079693442
        ChildIds: 11275867658885934105
        ChildIds: 12265721670654019594
        ChildIds: 6653208307910814404
        ChildIds: 3817403656129217735
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 5782846982928312742
        Name: "Helix - 1.0"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 13435896166788717234
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 15012817374079693442
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 10
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 13435896166788717234
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 11275867658885934105
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 20
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 13435896166788717234
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 12265721670654019594
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 30
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 13435896166788717234
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 6653208307910814404
        Name: "Helix - 1.0"
        Transform {
          Location {
            Z: 40
          }
          Rotation {
          }
          Scale {
            X: 0.25
            Y: 0.25
            Z: 0.1
          }
        }
        ParentId: 13435896166788717234
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15681531739125240093
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
            Id: 12739313073535643776
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
        Id: 3817403656129217735
        Name: "Modern Weapon - Bullet 01 Casing"
        Transform {
          Location {
            X: -11.065155
            Y: -1.44052124
            Z: 21.3752289
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 4.97398376
            Y: 3.86252117
            Z: 3.86252093
          }
        }
        ParentId: 13435896166788717234
        UnregisteredParameters {
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
            Id: 8455476848519957619
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
        Id: 10946996350328241680
        Name: "JEEP_Lighting_VFX"
        Transform {
          Location {
            X: 74.3517303
            Y: 247.335602
            Z: 105
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12362893300412412450
        ChildIds: 3713443046927214270
        ChildIds: 2163316865014745779
        ChildIds: 165135755591067326
        ChildIds: 17205808297883400384
        ChildIds: 1162482421481009814
        ChildIds: 6244304364649102135
        ChildIds: 13238396037716302924
        ChildIds: 8402710969023931754
        ChildIds: 13629741837171554906
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 3713443046927214270
        Name: "Spotlight"
        Transform {
          Location {
            X: 70
            Y: 45.9755859
          }
          Rotation {
            Pitch: -0.362945557
            Yaw: 89.9998627
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10946996350328241680
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
        Light {
          Intensity: 37.4471207
          Color {
            R: 1
            G: 0.980132461
            B: 0.7
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 6000
              SpotLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
                UseFallOffExponent: true
                InnerConeAngle: 30
                OuterConeAngle: 80
                Profile {
                  Value: "mc:espotlightprofile:basicspotlight"
                }
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
      Objects {
        Id: 2163316865014745779
        Name: "Spotlight"
        Transform {
          Location {
            X: -75
            Y: 45.9755859
          }
          Rotation {
            Pitch: -0.362945557
            Yaw: 89.9998627
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10946996350328241680
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
        Light {
          Intensity: 15.3905287
          Color {
            R: 1
            G: 0.980132461
            B: 0.7
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 6000
              SpotLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
                UseFallOffExponent: true
                InnerConeAngle: 30
                OuterConeAngle: 80
                Profile {
                  Value: "mc:espotlightprofile:basicspotlight"
                }
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
      Objects {
        Id: 165135755591067326
        Name: "Point Light"
        Transform {
          Location {
            X: 221.575867
            Y: -258.802246
            Z: -224.515656
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10946996350328241680
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
        Light {
          Intensity: 11.7900629
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 1000
              PointLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
                UseFallOffExponent: true
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
      Objects {
        Id: 17205808297883400384
        Name: "Point Light"
        Transform {
          Location {
            X: -365.547913
            Y: -258.802246
            Z: -224.515656
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10946996350328241680
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
        Light {
          Intensity: 11.7900629
          Color {
            R: 1
            G: 1
            B: 1
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 1000
              PointLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
                UseFallOffExponent: true
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
      Objects {
        Id: 1162482421481009814
        Name: "Area Light"
        Transform {
          Location {
            X: 1.89796448
            Y: -629.325317
            Z: -16.6396942
          }
          Rotation {
            Yaw: -89.9999924
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10946996350328241680
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
        Light {
          Intensity: 36.69944
          Color {
            R: 0.99
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 1000
              AreaLight {
                BarnDoorAngle: 50
                BarnDoorLength: 20
                SourceWidth: 0.01
                SourceHeight: 3.16336036
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
      Objects {
        Id: 6244304364649102135
        Name: "Area Light"
        Transform {
          Location {
            X: -168.051163
            Y: -629.325317
            Z: -16.6396942
          }
          Rotation {
            Yaw: -89.9999924
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10946996350328241680
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
        Light {
          Intensity: 36.69944
          Color {
            R: 0.99
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 1000
              AreaLight {
                BarnDoorAngle: 50
                BarnDoorLength: 20
                SourceWidth: 0.01
                SourceHeight: 3.16336036
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
      Objects {
        Id: 13238396037716302924
        Name: "Interior_Light_a"
        Transform {
          Location {
            X: -82.0649567
            Y: -347.082642
            Z: 12.2650909
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10946996350328241680
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
        Light {
          Intensity: 27.7272663
          Color {
            R: 1
            G: 0.816887438
            B: 0.65
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 1000
              PointLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
                UseFallOffExponent: true
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
      Objects {
        Id: 8402710969023931754
        Name: "Front_l_Headlight_CLOSE"
        Transform {
          Location {
            X: -7.26924133
            Y: -44.1651917
            Z: -2.42881775
          }
          Rotation {
            Yaw: 89.9999847
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10946996350328241680
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
        Light {
          Intensity: 44.550087
          Color {
            R: 1
            G: 0.977417231
            B: 0.89
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 1000
              AreaLight {
                BarnDoorAngle: 50
                BarnDoorLength: 20
                SourceWidth: 21.8553505
                SourceHeight: 21.8553505
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
      Objects {
        Id: 13629741837171554906
        Name: "Front_R_Headlight_CLOSE"
        Transform {
          Location {
            X: -152.552322
            Y: -44.1651306
            Z: -2.42881775
          }
          Rotation {
            Yaw: 89.9999771
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10946996350328241680
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
        Light {
          Intensity: 44.550087
          Color {
            R: 1
            G: 0.977417231
            B: 0.89
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 1000
              AreaLight {
                BarnDoorAngle: 50
                BarnDoorLength: 20
                SourceWidth: 21.8553505
                SourceHeight: 21.8553505
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
      Objects {
        Id: 16143662571461325873
        Name: "PickupTrigger"
        Transform {
          Location {
            X: -7.22407722
            Y: -0.391343534
            Z: 102.714767
          }
          Rotation {
          }
          Scale {
            X: 10.1893435
            Y: 7.80325508
            Z: 7.1265769
          }
        }
        ParentId: 7826636824751212454
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
          InteractionLabel: "Equip BunnyPod"
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
        Id: 14599252170712653999
        Name: "Playerequipedproperties"
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
        ParentId: 7826636824751212454
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
            Id: 8929987104416111000
          }
        }
      }
    }
    Assets {
      Id: 7324235194893113792
      Name: "Gear - generic small hollow"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gen_gear_small_001_wide-hole"
      }
    }
    Assets {
      Id: 2045656181030396645
      Name: "Modern Weapon - Grenade Canister 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weapons_grenade_indented_001"
      }
    }
    Assets {
      Id: 8455476848519957619
      Name: "Modern Weapon Ammo - Bullet 01 Casing"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_ammo_bullet_case_001"
      }
    }
    Assets {
      Id: 3859650733230292738
      Name: "Donut"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_001"
      }
    }
    Assets {
      Id: 12695619787122085888
      Name: "Gear - generic large five-spoked"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gen_gear_001_spoke5x"
      }
    }
    Assets {
      Id: 10950223659781735576
      Name: "Modern Weapon - Body 04"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_body_004"
      }
    }
    Assets {
      Id: 2500740463401777128
      Name: "Text 01: )"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F1_Text_046"
      }
    }
    Assets {
      Id: 10135613355360866567
      Name: "Modern Weapon - Body 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_body_003"
      }
    }
    Assets {
      Id: 300811177604658404
      Name: "Modern Weapon - Grip 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_grip_003"
      }
    }
    Assets {
      Id: 10477759332134786499
      Name: "Cylinder - Chamfered Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_hq_002"
      }
    }
    Assets {
      Id: 16060214784296519809
      Name: "Plane 1m - One Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_plane_1m_001"
      }
    }
    Assets {
      Id: 4479732708038918606
      Name: "Glass 01 (no distortion)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_glass_001"
      }
    }
    Assets {
      Id: 3744114610714728064
      Name: "Pipe - 4-Sided Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_4_sided_thin_001"
      }
    }
    Assets {
      Id: 6045540826292531006
      Name: "Modern Weapon - Sight Forward 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_sight_forw_002"
      }
    }
    Assets {
      Id: 15001748559136319091
      Name: "Sci-fi Panel 1x4m"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_panel_1x4m_001"
      }
    }
    Assets {
      Id: 1157444486122330678
      Name: "Text 02: ["
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "Text_053"
      }
    }
    Assets {
      Id: 11638225697129107731
      Name: "Urban Pedestrian Barrier 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_barrier_pedestrian_001"
      }
    }
    Assets {
      Id: 4715610968541719994
      Name: "Parallelepiped - Horizontal "
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_parallelepiped_003"
      }
    }
    Assets {
      Id: 3065043153909758577
      Name: "Pipe"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_001"
      }
    }
    Assets {
      Id: 83502813398508792
      Name: "Pipe - T-Intersection Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_T_intersection_002"
      }
    }
    Assets {
      Id: 11440150784773051825
      Name: "Ring - Quarter Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter_torus_003"
      }
    }
    Assets {
      Id: 4563967851793804383
      Name: "Sci-fi Trim 01 bend 90"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_scifi_trim_001_bend90"
      }
    }
    Assets {
      Id: 13933319734176476288
      Name: "Cube - Chamfered Large"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_chamfer"
      }
    }
    Assets {
      Id: 11588290385508407355
      Name: "Text 01: W"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F1_Text_022"
      }
    }
    Assets {
      Id: 14335950073606978576
      Name: "Text 01: R"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F1_Text_017"
      }
    }
    Assets {
      Id: 13240777799557061907
      Name: "Text 01: 4"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F1_Text_030"
      }
    }
    Assets {
      Id: 1882399476102658604
      Name: "Text 01: U"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F1_Text_020"
      }
    }
    Assets {
      Id: 7236836948546839749
      Name: "Modern Weapon - Disc 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_disc_001"
      }
    }
    Assets {
      Id: 13225962213392017647
      Name: "Modern Weapon - Scope 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_scope_001"
      }
    }
    Assets {
      Id: 12739313073535643776
      Name: "Helix - 1.0"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_helix_005"
      }
    }
    Assets {
      Id: 13060516013822931986
      Name: "Metal Steel Brushed"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_stainless-steel_001_uv"
      }
    }
    Assets {
      Id: 11021707493166331499
      Name: "Modern Weapon - Grenade Canister 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weapons_grenade_teeth_001"
      }
    }
    Assets {
      Id: 2574888979903300167
      Name: "Modern Weapon Accessory - Laser 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_acc_laser_001"
      }
    }
    Assets {
      Id: 10633885543455162832
      Name: "Modern Weapon Ammo - Cannister 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_ammo_cann_001"
      }
    }
    Assets {
      Id: 12637801335342129827
      Name: "Modern Weapon Accessory - Rail 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_acc_rail_002"
      }
    }
    Assets {
      Id: 8530349593571866885
      Name: "Modern Weapon - Sight 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_sight_002"
      }
    }
    Assets {
      Id: 4233572198356242960
      Name: "Gem - Radiant Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_radiant_polished_001"
      }
    }
    Assets {
      Id: 8866898709121265691
      Name: "Grass Basic"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_001_uv"
      }
    }
    Assets {
      Id: 2986790912371252552
      Name: "Text 01: ("
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F1_Text_045"
      }
    }
    Assets {
      Id: 13788396403019154669
      Name: "Wedge - Curved"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_wedge_curved_001"
      }
    }
    Assets {
      Id: 11572157823613737469
      Name: "Cube - Chamfered Small Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_hq_003"
      }
    }
    Assets {
      Id: 4506676792560583798
      Name: "Cube - Chamfered Large Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_hq_002"
      }
    }
    Assets {
      Id: 8582601378646188800
      Name: "Modern Weapon - Grip 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_grip_002"
      }
    }
    Assets {
      Id: 9497337568714563558
      Name: "Modern Weapon - Sight 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_sight_001"
      }
    }
    Assets {
      Id: 1236564848595271332
      Name: "Modern Weapon - Grenade Canister 04"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weapons_grenade_sphere_001"
      }
    }
    Assets {
      Id: 962099196015237473
      Name: "Modern Weapon Ammo - Bullet 02 Casing"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_ammo_bullet_case_002"
      }
    }
    Assets {
      Id: 5419623139495260362
      Name: "Pyramid - 6-Sided Truncated Hollow"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_6_sided_truncated_hollow_001"
      }
    }
    Assets {
      Id: 9677665090513604967
      Name: "Text 02: >"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "Text_061"
      }
    }
    Assets {
      Id: 1578995116259125766
      Name: "Text 03: |"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F5_Text_055"
      }
    }
    Assets {
      Id: 1456813209646203172
      Name: "Gear - generic large two-spoked"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gen_gear_001_spoke2x"
      }
    }
    Assets {
      Id: 11292371150602349456
      Name: "Ring - Thick"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_005"
      }
    }
    Assets {
      Id: 14071410504723121352
      Name: "Sci-fi Trim 01 End"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_scifi_trim_001_end"
      }
    }
    Assets {
      Id: 2817890560817570586
      Name: "Modern Weapon Barrel 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_barrel_001"
      }
    }
    Assets {
      Id: 2017483418934463446
      Name: "Decal Hazard Symbols 01"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_hazard_symbols_001"
      }
    }
    Assets {
      Id: 14988005733009136957
      Name: "Modern Weapon - Foregrip 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_foregrip_003"
      }
    }
    Assets {
      Id: 6157711858907400962
      Name: "Modern Weapon Accessory - Shell Clip"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_acc_shellclip_001"
      }
    }
    Assets {
      Id: 12188130527814960821
      Name: "Modern Weapon - Body 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_body_002"
      }
    }
    Assets {
      Id: 8933866162651425485
      Name: "Modern Weapon - Barrel Tip 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_barreltip_003"
      }
    }
    Assets {
      Id: 12036265987143389800
      Name: "Modern Weapon - Gas Cylinder 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_gas_cylinder_001"
      }
    }
    Assets {
      Id: 16377470832245035683
      Name: "Gem - Baguette Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_baguette_polished_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "It moves. thanks to knar and zurishimi for code and to twixler for model."
  }
  SerializationVersion: 97
  DirectlyPublished: true
}
