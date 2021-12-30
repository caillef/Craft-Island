Assets {
  Id: 12839992526979622873
  Name: "Housing Bindings"
  PlatformAssetType: 29
  SerializationVersion: 103
  BindingSetAsset {
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:leftclick"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:a"
          }
        }
      }
      Action: "Put object"
      Description: "Put or select object"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:rightclick"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "Cancel action"
      Description: "Cancel action and unselect object"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:r"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:x"
          }
        }
      }
      Action: "Rotate object"
      Description: "Rotate selected object"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:delete"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "Delete object"
      Description: "Delete selected object"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:directional"
      }
      DirectionalBindingData {
        UpInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:w"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:leftstickup"
          }
        }
        LeftInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:a"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:leftstickleft"
          }
        }
        DownInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:s"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:leftstickdown"
          }
        }
        RightInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:d"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:leftstickright"
          }
        }
      }
      Action: "Move Camera"
      Description: "Move the camera when player edit a house"
      CoreBehavior {
        Value: "mc:ecorebehavior:move"
      }
    }
  }
}
