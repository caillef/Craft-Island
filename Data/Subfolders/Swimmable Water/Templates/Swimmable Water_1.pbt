Assets {
  Id: 4261274265841320274
  Name: "Swimmable Water"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8200622968832945574
      Objects {
        Id: 8200622968832945574
        Name: "Swimmable Water"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 2792552580591177996
        ChildIds: 12548678751960415758
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
        Id: 2792552580591177996
        Name: "Templates"
        Transform {
          Location {
            X: -169.128708
            Y: 795.613159
            Z: 2.28881836e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8200622968832945574
        ChildIds: 15988035479359850066
        ChildIds: 17045512723834392469
        ChildIds: 14050715241803153542
        ChildIds: 2007050421436839046
        ChildIds: 3155502496189206225
        ChildIds: 3666203280532270571
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
        Id: 15988035479359850066
        Name: "Swimmable Water Default"
        Transform {
          Location {
            X: 1608.95264
            Y: -3025.05957
          }
          Rotation {
          }
          Scale {
            X: 9.79295635
            Y: 13.8992624
            Z: 10.8511248
          }
        }
        ParentId: 2792552580591177996
        ChildIds: 1977209392096875766
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3946267100271060889
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 1977209392096875766
        Name: "Underwater Post Process (for swimming)"
        Transform {
          Location {
            Y: -2.54830029e-05
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 1.00000012
            Y: 1.00000012
            Z: 1
          }
        }
        ParentId: 15988035479359850066
        UnregisteredParameters {
          Overrides {
            Name: "bp:Control Fog"
            Bool: true
          }
          Overrides {
            Name: "bp:Create Water Physics Volume"
            Bool: true
          }
          Overrides {
            Name: "bp:Caustics"
            Bool: true
          }
          Overrides {
            Name: "bp:Water"
            Bool: true
          }
          Overrides {
            Name: "bp:Distortion Amount"
            Float: 1.08831894
          }
          Overrides {
            Name: "bp:Fog Density"
            Float: 0.370026618
          }
          Overrides {
            Name: "bp:Caustics Fade Distance"
            Float: 1.95782602
          }
          Overrides {
            Name: "bp:Use Sun Direction for Directional Caustics"
            Bool: true
          }
          Overrides {
            Name: "bp:Fog Color"
            Color {
              G: 0.139999986
              B: 0.123311289
              A: 1
            }
          }
          Overrides {
            Name: "bp:Fog Extinction Scale"
            Float: 6.91150284
          }
          Overrides {
            Name: "bp:Fog Scattering Distribution"
            Float: 0.277838647
          }
          Overrides {
            Name: "bp:Caustics Brightness"
            Float: 19.5769691
          }
          Overrides {
            Name: "bp:Distortion Speed"
            Float: 0.426363707
          }
          Overrides {
            Name: "bp:Distortion Scale"
            Float: 2.90132618
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
        Blueprint {
          BlueprintAsset {
            Id: 16244414786145463704
          }
          TeamSettings {
          }
        }
      }
      Objects {
        Id: 17045512723834392469
        Name: "Swimmable Water Toon"
        Transform {
          Location {
            X: 1608.95251
            Y: -389.276855
          }
          Rotation {
          }
          Scale {
            X: 9.79295635
            Y: 13.8992624
            Z: 10.8511248
          }
        }
        ParentId: 2792552580591177996
        ChildIds: 3034669113274981681
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14132623281747678489
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 3034669113274981681
        Name: "Underwater Post Process (for swimming)"
        Transform {
          Location {
            Y: -2.54830029e-05
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 1.00000012
            Y: 1.00000012
            Z: 1
          }
        }
        ParentId: 17045512723834392469
        UnregisteredParameters {
          Overrides {
            Name: "bp:Control Fog"
            Bool: true
          }
          Overrides {
            Name: "bp:Create Water Physics Volume"
            Bool: true
          }
          Overrides {
            Name: "bp:Caustics"
            Bool: true
          }
          Overrides {
            Name: "bp:Water"
            Bool: true
          }
          Overrides {
            Name: "bp:Distortion Amount"
            Float: 1
          }
          Overrides {
            Name: "bp:Fog Density"
            Float: 0.677319825
          }
          Overrides {
            Name: "bp:Caustics Fade Distance"
            Float: 1.95782602
          }
          Overrides {
            Name: "bp:Use Sun Direction for Directional Caustics"
            Bool: true
          }
          Overrides {
            Name: "bp:Distortion Speed"
            Float: 0.318811089
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
        Blueprint {
          BlueprintAsset {
            Id: 16244414786145463704
          }
          TeamSettings {
          }
        }
      }
      Objects {
        Id: 14050715241803153542
        Name: "Swimmable Water Blue"
        Transform {
          Location {
            X: 1597.58533
            Y: 3414.33594
          }
          Rotation {
          }
          Scale {
            X: 9.79295635
            Y: 13.8992624
            Z: 10.8511248
          }
        }
        ParentId: 2792552580591177996
        ChildIds: 319394837206798882
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 236997020205566010
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 319394837206798882
        Name: "Underwater Post Process (for swimming)"
        Transform {
          Location {
            Y: -2.54830029e-05
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 1.00000012
            Y: 1.00000012
            Z: 1
          }
        }
        ParentId: 14050715241803153542
        UnregisteredParameters {
          Overrides {
            Name: "bp:Control Fog"
            Bool: true
          }
          Overrides {
            Name: "bp:Create Water Physics Volume"
            Bool: true
          }
          Overrides {
            Name: "bp:Caustics"
            Bool: true
          }
          Overrides {
            Name: "bp:Water"
            Bool: true
          }
          Overrides {
            Name: "bp:Distortion Amount"
            Float: 0.924429178
          }
          Overrides {
            Name: "bp:Fog Density"
            Float: 0.677319825
          }
          Overrides {
            Name: "bp:Caustics Fade Distance"
            Float: 1.95782602
          }
          Overrides {
            Name: "bp:Use Sun Direction for Directional Caustics"
            Bool: true
          }
          Overrides {
            Name: "bp:Fog Color"
            Color {
              G: 0.155761421
              B: 0.480000019
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 16244414786145463704
          }
          TeamSettings {
          }
        }
      }
      Objects {
        Id: 2007050421436839046
        Name: "Swimmable Water Radioactive"
        Transform {
          Location {
            X: -1605.16357
            Y: -3025.05908
          }
          Rotation {
          }
          Scale {
            X: 9.79295635
            Y: 13.8992624
            Z: 10.8511248
          }
        }
        ParentId: 2792552580591177996
        ChildIds: 8971647309107707959
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8674034715159579027
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.840000033
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 8971647309107707959
        Name: "Underwater Post Process (for swimming)"
        Transform {
          Location {
            Y: -2.54830029e-05
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 1.00000012
            Y: 1.00000012
            Z: 1
          }
        }
        ParentId: 2007050421436839046
        UnregisteredParameters {
          Overrides {
            Name: "bp:Control Fog"
            Bool: true
          }
          Overrides {
            Name: "bp:Create Water Physics Volume"
            Bool: true
          }
          Overrides {
            Name: "bp:Caustics"
            Bool: false
          }
          Overrides {
            Name: "bp:Water"
            Bool: true
          }
          Overrides {
            Name: "bp:Distortion Amount"
            Float: 1.36488283
          }
          Overrides {
            Name: "bp:Fog Density"
            Float: 0.789994
          }
          Overrides {
            Name: "bp:Caustics Fade Distance"
            Float: 1.95782602
          }
          Overrides {
            Name: "bp:Use Sun Direction for Directional Caustics"
            Bool: true
          }
          Overrides {
            Name: "bp:Distortion Speed"
            Float: 0.318811089
          }
          Overrides {
            Name: "bp:Fog Color"
            Color {
              R: 0.840000033
              A: 1
            }
          }
          Overrides {
            Name: "bp:Fog Extinction Scale"
            Float: 5.4364953
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
        Blueprint {
          BlueprintAsset {
            Id: 16244414786145463704
          }
          TeamSettings {
          }
        }
      }
      Objects {
        Id: 3155502496189206225
        Name: "Swimmable Water Radioactive"
        Transform {
          Location {
            X: -1605.16357
            Y: -389.277222
          }
          Rotation {
          }
          Scale {
            X: 9.79295635
            Y: 13.8992624
            Z: 10.8511248
          }
        }
        ParentId: 2792552580591177996
        ChildIds: 17134612206134749303
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6106875022361030492
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.118807785
              G: 0.690000057
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 17134612206134749303
        Name: "Underwater Post Process (for swimming)"
        Transform {
          Location {
            Y: -2.54830029e-05
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 1.00000012
            Y: 1.00000012
            Z: 1
          }
        }
        ParentId: 3155502496189206225
        UnregisteredParameters {
          Overrides {
            Name: "bp:Control Fog"
            Bool: true
          }
          Overrides {
            Name: "bp:Create Water Physics Volume"
            Bool: true
          }
          Overrides {
            Name: "bp:Caustics"
            Bool: true
          }
          Overrides {
            Name: "bp:Water"
            Bool: true
          }
          Overrides {
            Name: "bp:Distortion Amount"
            Float: 1.36488283
          }
          Overrides {
            Name: "bp:Fog Density"
            Float: 0.789994
          }
          Overrides {
            Name: "bp:Caustics Fade Distance"
            Float: 1.95782602
          }
          Overrides {
            Name: "bp:Use Sun Direction for Directional Caustics"
            Bool: true
          }
          Overrides {
            Name: "bp:Distortion Speed"
            Float: 0.318811089
          }
          Overrides {
            Name: "bp:Fog Color"
            Color {
              R: 0.118807785
              G: 0.690000057
              A: 1
            }
          }
          Overrides {
            Name: "bp:Fog Extinction Scale"
            Float: 5.4364953
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
        Blueprint {
          BlueprintAsset {
            Id: 16244414786145463704
          }
          TeamSettings {
          }
        }
      }
      Objects {
        Id: 3666203280532270571
        Name: "Swimmable Water Alien"
        Transform {
          Location {
            X: -1605.16357
            Y: 3414.33594
          }
          Rotation {
          }
          Scale {
            X: 9.79295635
            Y: 13.8992624
            Z: 10.8511248
          }
        }
        ParentId: 2792552580591177996
        ChildIds: 14278692252624239374
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16404467662485706269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.659999967
              B: 0.485164881
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 14278692252624239374
        Name: "Underwater Post Process (for swimming)"
        Transform {
          Location {
            Y: -2.54830029e-05
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 1.00000012
            Y: 1.00000012
            Z: 1
          }
        }
        ParentId: 3666203280532270571
        UnregisteredParameters {
          Overrides {
            Name: "bp:Control Fog"
            Bool: true
          }
          Overrides {
            Name: "bp:Create Water Physics Volume"
            Bool: true
          }
          Overrides {
            Name: "bp:Caustics"
            Bool: false
          }
          Overrides {
            Name: "bp:Water"
            Bool: true
          }
          Overrides {
            Name: "bp:Distortion Amount"
            Float: 1.36488283
          }
          Overrides {
            Name: "bp:Fog Density"
            Float: 0.789994
          }
          Overrides {
            Name: "bp:Caustics Fade Distance"
            Float: 1.95782602
          }
          Overrides {
            Name: "bp:Use Sun Direction for Directional Caustics"
            Bool: true
          }
          Overrides {
            Name: "bp:Distortion Speed"
            Float: 0.318811089
          }
          Overrides {
            Name: "bp:Fog Color"
            Color {
              R: 0.659999967
              B: 0.485164881
              A: 1
            }
          }
          Overrides {
            Name: "bp:Fog Extinction Scale"
            Float: 5.4364953
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
        Blueprint {
          BlueprintAsset {
            Id: 16244414786145463704
          }
          TeamSettings {
          }
        }
      }
      Objects {
        Id: 12548678751960415758
        Name: "Example Hiding Edges"
        Transform {
          Location {
            X: -4431.86914
            Y: 287.930725
            Z: -61.6320572
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8200622968832945574
        ChildIds: 6821046120216665847
        ChildIds: 8329053977645716804
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
        Id: 6821046120216665847
        Name: "Pipe - 4-Sided Thin"
        Transform {
          Location {
            X: 4.27880859
            Y: 27.8901367
            Z: 11.5845718
          }
          Rotation {
          }
          Scale {
            X: 10.4137869
            Y: 14.4527321
            Z: 5.17846251
          }
        }
        ParentId: 12548678751960415758
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 198836688615649456
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 14685302782234980325
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 8329053977645716804
        Name: "Swimmable Water Alien"
        Transform {
          Location {
            X: -4.27832031
            Y: 18.0646973
            Z: 322.982788
          }
          Rotation {
          }
          Scale {
            X: 9.79295635
            Y: 13.8992624
            Z: 3.80668688
          }
        }
        ParentId: 12548678751960415758
        ChildIds: 16978889129639061561
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16404467662485706269
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.659999967
              B: 0.485164881
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 16978889129639061561
        Name: "Underwater Post Process (for swimming)"
        Transform {
          Location {
            Y: -2.54830029e-05
            Z: 50
          }
          Rotation {
          }
          Scale {
            X: 1.00000012
            Y: 1.00000012
            Z: 1
          }
        }
        ParentId: 8329053977645716804
        UnregisteredParameters {
          Overrides {
            Name: "bp:Control Fog"
            Bool: true
          }
          Overrides {
            Name: "bp:Create Water Physics Volume"
            Bool: true
          }
          Overrides {
            Name: "bp:Caustics"
            Bool: false
          }
          Overrides {
            Name: "bp:Water"
            Bool: true
          }
          Overrides {
            Name: "bp:Distortion Amount"
            Float: 1.36488283
          }
          Overrides {
            Name: "bp:Fog Density"
            Float: 0.789994
          }
          Overrides {
            Name: "bp:Caustics Fade Distance"
            Float: 1.95782602
          }
          Overrides {
            Name: "bp:Use Sun Direction for Directional Caustics"
            Bool: true
          }
          Overrides {
            Name: "bp:Distortion Speed"
            Float: 0.318811089
          }
          Overrides {
            Name: "bp:Fog Color"
            Color {
              R: 0.659999967
              B: 0.485164881
              A: 1
            }
          }
          Overrides {
            Name: "bp:Fog Extinction Scale"
            Float: 5.4364953
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
        Blueprint {
          BlueprintAsset {
            Id: 16244414786145463704
          }
          TeamSettings {
          }
        }
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
      Id: 16244414786145463704
      Name: "Underwater Post Process"
      PlatformAssetType: 20
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_post_process_water"
      }
    }
    Assets {
      Id: 14685302782234980325
      Name: "Pipe - 4-Sided Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pipe_4_sided_thin_001"
      }
    }
    Assets {
      Id: 198836688615649456
      Name: "Bricks Stone Block 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_bricks_stone_block_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "Just drag in the swimmable water cube and you\'ll have water that you can swim in! Now just scale the water to the dimensions you want and you\'re done.\r\n\r\n@LuckofBuck on Twitter"
  }
  SerializationVersion: 97
  DirectlyPublished: true
}
