Assets {
  Id: 5909661513307778626
  Name: "Day Night Sky"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7661713677878589027
      Objects {
        Id: 7661713677878589027
        Name: "TemplateBundleDummy"
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
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceon"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          BundleDummy {
            ReferencedAssets {
              Id: 3978139205484011160
            }
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Id: "7bc0127c9aa34fa1abab677eb686ca37"
    OwnerAccountId: "4876cf00119b418085afbacf987fa3c2"
    OwnerName: "Rasm"
    Version: "1.1.0"
    Description: "A sky that cycles day and night at an user defined time and speed. Place in scene and delete any other skies. Select SkyLogic script in the hierarchy to configure.\r\n\r\nStartingDegrees:\r\nWhat angle to start the day at.\r\n0 is sunrise, 90 is midday, 180 is sunset, 270 is midnight\r\n\r\nDegreesPerSecond:\r\nHow fast the sun moves through the day\r\n2 minute day/night cycle = 120 seconds = 360 degrees/120 seconds = 3 degrees per second"
  }
  SerializationVersion: 103
}
