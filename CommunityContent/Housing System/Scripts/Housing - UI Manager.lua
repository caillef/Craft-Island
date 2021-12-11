local CAMERA_CAPTURE_CREATOR = require(script:GetCustomProperty("CameraCaptureCreator"))
local UIA = require(script:GetCustomProperty("UIAnimator"))

local OBJECT_LIST = script:GetCustomProperty("ObjectList"):WaitForObject()
local CATEGORY_LIST = script:GetCustomProperty("CategoryList"):WaitForObject()
local OBJECT_BUTTON = script:GetCustomProperty("ObjectButton")
local CATEGORY_BUTTON = script:GetCustomProperty("CategoryButton")
local GRID_BUTTON = script:GetCustomProperty("GridButton"):WaitForObject()
local CLOSE_BUTTON = script:GetCustomProperty("CloseButton"):WaitForObject()
local UI_CONTAINER = script:GetCustomProperty("UIContainer"):WaitForObject()
local UI_PANEL = script:GetCustomProperty("UIPanel"):WaitForObject()
local CAPTURES_FOLDER = script:GetCustomProperty("CapturesFolder"):WaitForObject()

local GRID_BUTTON_BG_1 = GRID_BUTTON:GetCustomProperty("Background1"):WaitForObject()
local GRID_BUTTON_BG_2 = GRID_BUTTON:GetCustomProperty("Background2"):WaitForObject()
local GRID_BUTTON_TEXT = GRID_BUTTON:GetCustomProperty("Text"):WaitForObject()
local GRID_BUTTON_CROSS = GRID_BUTTON:GetCustomProperty("Cross"):WaitForObject()

local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local ALLOW_DISABLE_GRID = ROOT:GetCustomProperty("AllowDisableGrid")

-- Bindings 
local BINDINGS_PANEL = script:GetCustomProperty("BindingsPanel"):WaitForObject()
local ADD_OBJECT_PANEL = script:GetCustomProperty("AddObject"):WaitForObject()
local MOVE_OBJECT_PANEL = script:GetCustomProperty("MoveObject"):WaitForObject()
local NO_OBJECT_PANEL = script:GetCustomProperty("NoObject"):WaitForObject()

ADD_OBJECT_PANEL.visibility = Visibility.FORCE_OFF
MOVE_OBJECT_PANEL.visibility = Visibility.FORCE_OFF
NO_OBJECT_PANEL.visibility = Visibility.FORCE_OFF
BINDINGS_PANEL.opacity = 0

local animationShowBinding = UIA.CreateAnimation(BINDINGS_PANEL):ChangeOpacity(1, 0.5, UIA.eq.EASE_IN_OUT_SINE)
local animationHideBinding = UIA.CreateAnimation(BINDINGS_PANEL):ChangeOpacity(0, 0.5, UIA.eq.EASE_IN_OUT_SINE)
animationShowBinding:SetInitialState()

CAMERA_CAPTURE_CREATOR.setFolder(CAPTURES_FOLDER)

if not ALLOW_DISABLE_GRID then
    GRID_BUTTON:Destroy()
end

local currentCategoryButton = nil

UI_PANEL.y = 250
local animationShow = UIA.CreateAnimation(UI_PANEL):ChangeY(-10, 0.5, UIA.eq.EASE_IN_OUT_SINE)
local animationHide = UIA.CreateAnimation(UI_PANEL):ChangeY(250, 0.5, UIA.eq.EASE_IN_OUT_SINE)

animationShow:SyncWith(animationShowBinding)
animationHide:SyncWith(animationHideBinding)

animationShow.onPlay = function() UI_CONTAINER.visibility = Visibility.INHERIT end
animationHide.onFinish = function() UI_CONTAINER.visibility = Visibility.FORCE_OFF end

function emptyList()
    for _,child in pairs(OBJECT_LIST:GetChildren()) do
        child:Destroy()
    end
end

function createObjectIcon(objectData)
    local transform = {position = -Vector3.UP * (50 - (objectData.size.size * 20)) + Vector3.RIGHT * objectData.size.x * 200 - Vector3.FORWARD * objectData.size.y * 15, rotation = Rotation.New(11, -17, -125) }
    if objectData.isCarpet then
        transform.position = transform.position + Vector3.UP * 50
    end
    transform.scale = Vector3.ONE * objectData.scaleMultiplier
    transform.position = transform.position + objectData.positionOffset
    transform.rotation = transform.rotation + objectData.rotationOffset
    return CAMERA_CAPTURE_CREATOR.createIcon(objectData.asset, transform)
end

function createObjectButton(objectData)
    local button = World.SpawnAsset(OBJECT_BUTTON, {parent = OBJECT_LIST})
    button:GetCustomProperty('Name'):WaitForObject().text = objectData.name
    button.clickedEvent:Connect(function()
        _G.Housing_Manager.clickItemInList(objectData.id)
    end)

    local overlay = button:GetCustomProperty('Overlay'):WaitForObject()
    button.hoveredEvent:Connect(function() overlay.visibility = Visibility.FORCE_ON end)
    button.unhoveredEvent:Connect(function() overlay.visibility = Visibility.FORCE_OFF end)

    local iconContainer = button:GetCustomProperty('IconContainer'):WaitForObject()
    local icon = createObjectIcon(objectData)
    icon.parent = iconContainer
    return button
end

function fillObjectList(objects)
    emptyList()
    local maxWidth = OBJECT_LIST.width
    for index,objectId in ipairs(objects) do
        local objectData = _G.Housing_Data.getObject(objectId)
        local button = createObjectButton(objectData)
        button.x = (button.width + 10) * (index - 1)
    end
end

function changeCategory(button, categoryObjects)
    if currentCategoryButton ~= nil then
        currentCategoryButton:SetButtonColor(Color.New(1, 1, 1, 0))
    end
    fillObjectList(categoryObjects)
    button:SetButtonColor(Color.New(1, 1, 1, 0.25))
    currentCategoryButton = button
end

function createCategoryButton(categoryData)
    local button = World.SpawnAsset(CATEGORY_BUTTON, {parent = CATEGORY_LIST})
    button:GetCustomProperty('Name'):WaitForObject().text = categoryData.name
    button.clickedEvent:Connect(changeCategory, categoryData.objects)

    return button
end

function fillCategoriesList()
    local categories = _G.Housing_Data.getAllCategories()
    for index,categoryData in ipairs(categories) do
        local button = createCategoryButton(categoryData)
        button.y = (index - 1) * button.height
        if index == 1 then
            changeCategory(button, categoryData.objects)
        end
    end
end

function activate()
    animationShow:SetInitialState()
    animationHide:Stop()
    animationShow:Play()
    changeGridButton()
end

function deactivate()
    animationHide:SetInitialState()
    animationShow:Stop()
    animationHide:Play()
end

local colorGridActivate = Color.New(0, 0.15, 0.4)
local colorGridDectivate = Color.New(0.5, 0.2, 0)

function changeGridButton()
    if not Object.IsValid(GRID_BUTTON) then return end
    if _G.Housing_Manager.isGridActivated() then
        GRID_BUTTON_BG_1:SetColor(colorGridActivate)
        GRID_BUTTON_BG_2:SetColor(colorGridActivate)
        GRID_BUTTON_TEXT.text = 'Grid ON'
        GRID_BUTTON_CROSS.visibility = Visibility.FORCE_OFF
    else
        GRID_BUTTON_BG_1:SetColor(colorGridDectivate)
        GRID_BUTTON_BG_2:SetColor(colorGridDectivate)
        GRID_BUTTON_TEXT.text = 'Grid OFF'
        GRID_BUTTON_CROSS.visibility = Visibility.INHERIT
    end
end

function hideBinding()
    ADD_OBJECT_PANEL.visibility = Visibility.FORCE_OFF
    MOVE_OBJECT_PANEL.visibility = Visibility.FORCE_OFF
    NO_OBJECT_PANEL.visibility = Visibility.INHERIT
end

function showAddBinding()
    hideBinding()
    ADD_OBJECT_PANEL.visibility = Visibility.INHERIT
    NO_OBJECT_PANEL.visibility = Visibility.FORCE_OFF
end

function showMoveBinding()
    hideBinding()
    MOVE_OBJECT_PANEL.visibility = Visibility.INHERIT
    NO_OBJECT_PANEL.visibility = Visibility.FORCE_OFF
end

fillCategoriesList()

if Object.IsValid(GRID_BUTTON) then
    GRID_BUTTON.clickedEvent:Connect(function()
        _G.Housing_Manager.toggleGrid()
        changeGridButton()
    end)
end

CLOSE_BUTTON.clickedEvent:Connect(function()
    _G.Housing_Manager.askForClose()
end)

local Module = {}

Module.activate = activate
Module.deactivate = deactivate
Module.hideBinding = hideBinding
Module.showAddBinding = showAddBinding
Module.showMoveBinding = showMoveBinding

_G.Housing_UI = Module