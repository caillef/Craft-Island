local BUTTON = script.parent
local OVERLAY1 = script:GetCustomProperty("Overlay1"):WaitForObject()
local OVERLAY2 = script:GetCustomProperty("Overlay2"):WaitForObject()

function onHover()
    OVERLAY1.visibility = Visibility.INHERIT
    OVERLAY2.visibility = Visibility.INHERIT
end

function onUnhover()
    OVERLAY1.visibility = Visibility.FORCE_OFF
    OVERLAY2.visibility = Visibility.FORCE_OFF
end

BUTTON.hoveredEvent:Connect(onHover)
BUTTON.unhoveredEvent:Connect(onUnhover)