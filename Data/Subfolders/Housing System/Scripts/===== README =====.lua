if true then return true end
--[[
Creator : Nightmane 
Discord : https://discord.gg/sGP4tw39X8    

Thank you for downloading my Housing System. If you have any questions or suggestions for improvement, please feel free to post a comment or come to my discord ;)
The module is currently still under development.

If you want test quickly the Module, just put the template "Housing Package" into your hierarchy, and it's done, you can test the 4 test houses

=========== TABLE OF CONTENTS ==========
1) What does this module contain? - Quick explanation of what the module contains and the different folders.
2) Using the Housing System - I will explain how the system works, activate / deactivate it and the different options.
3) Saving/loading data - A simple example to show you how to save a player's house.
4) Object creation - If you want to create your own objects.
5) House creation : If you want to create your own houses.
6) Recurring problems : If you have a problem with the module, read this first.

                    ===============================================================
                    =========== PART 1 : What does this module contain ? ==========
                    ===============================================================

The Housing System allows players to place all kinds of objects in houses previously built by you (the creator). It is possible to save their creations to be reused later.

Architecture of the pack:

Housing Package
 | - Houses Test :  4 test houses available for you to test the module.
 | - Test : 4 test folders to activate the editing mode when approaching the houses and a script to automatically fill the 4th house.
 | - Housing System : The system itself, it contains properties that can be modified to change the module.
     | - BindingSet : The shortcuts of the Module, you can modify them if you wish.
     | - Data : The module data, this is where the Objects and Houses you can create are stored.
     | - Module : All scripts related to the modules.
     | - Client : All objects related to clients, such as CameraCaptures to create thumbnails of objects, or the UI.

You can find in the "Test" folder the script "Fill House 4", this script allows to fill automatically the house 4 (the L-shaped one)
This allows you to see what can be done with my Housing System
You can remove this script if you want to have an empty house


                    =========================================================
                    ===========  PART 2 : Using the Housing System ==========
                    =========================================================

The first thing to know is how to activate or deactivate the system. For this, you will have to use the Events system.
By default, the event to use is "activateHousing" to activate it, and "closeHousing" to close it.
These events work on both client and server side and expect 3 parameters:
1) The player. (if called on the client side, then this parameter should not be set, the local player being taken directly)
2) The id of the house.
3) The floor number. (currently this version supports only 1 floor per house: the ground floor, so this number should be set to 1 only for the moment)

ATTENTION: Only one player can edit a house, as long as he is in edit mode, the other players cannot edit this same house.

Here is an example of how it is used on both the server and the client side:
--]]

-- SERVER side
Events.Broadcast('activateHousing', player, 3, 1) -- The player corresponds to the player who has to access the housing, and he wants to access the house with the id 3 on the 1st floor

-- Or CLIENT side
Events.BroadcastToServer('activateHousing', 3, 1) --  No need to specify the player, the local player will be selected, and we activate the housing for the house with id 3 on the 1st floor

--[[
The name of these events can be modified with the properties of the "Housing System" object. (which is in the "Housing Package" folder)

Concerning the event to close the housing, by default it is called "closeHousing" and takes only one parameter: the player (if called on the client side, there is no parameter).
It is also possible to know when a player leaves the housing system. (either because he leaves the game, because he left himself, or because he was forced to) 
For that, you just have to listen to the "playerCloseHousing" event. (also modifiable in the properties of the Housing System object)
This allows you to retrieve the player who left, and the ID of the house he was editing.
This event can only be listened on server side.

Small example :
]]--
function playerCloseHousing(player, idHouse)
    print('Player ' .. player.name .. ' has left the edition of the house ' .. idHouse)
end

Events.Connect('playerCloseHousing', playerCloseHousing)
-- This code will display a message in the log every time a player leaves the house edit mode
--[[
Finally, the "Housing System" object has a last option called "AllowDisableGrid".
By default it is enabled and allows to indicate if the player can disable the grid for the placement of objects.

Let's see the API for programmers, the system allows you to have access to some functions, either client or server side, thanks to 2 global variables accessible from any script: 
* _G.Housing_Manager : On the CLIENT side, this API allows you to have access to some function on the current use of the player on the housing.
* _G.Housing_Manager : On the SERVER side, this API allows you to retrieve the data of a house (to save it for example) or on the contrary to load directly a house via a backup. This API also allows you to know if a house is being edited.
* _G.Housing_Data : On the SERVER and CLIENT side, it allows to have some information about the housing data. (houses and objects)

I will now detail each function of the API.

*** _G.Housing_Manager : CLIENT SIDE ***

_G.Housing_Manager.toggleGrid() : Enables / Disables the grid. (activate it if it's deactivated, deactivate it if it's activated)
_G.Housing_Manager.activateGrid() : Enables the grid.
_G.Housing_Manager.isGridActivated() : Allows you to know if the grid is currently activated or not. (true = enabled, false = disabled)
_G.Housing_Manager.askForClose() : Forces the housing to close.


*** _G.Housing_Manager : SERVER SIDE ***

_G.Housing_Manager.isHouseEditing(idHouse) : Allows you to know if the house with the id "idHouse" is currently being edited by a player. (returns true or false)
_G.Housing_Manager.getHouseEncode(idHouse) : Returns a table that corresponds to the encoded house with the id "idHouse".
_G.Housing_Manager.getHouseFloorEncode(idHouse, floorNumber) : Returns a string that corresponds to the encoded floor for the house "idHouse".
_G.Housing_Manager.setHouseEncode(idHouse, code) : Fills the house with the id "idHouse" with the code previously retrieved. (with the getHouseEncode function)
_G.Housing_Manager.setHouseFloorEncode(idHouse, floorNumber, code) : Fills a specific floor of the house with the id "idHouse" with the code previously retrieved. (with the getHouseFloorEncode function)


                    ====================================================
                    ===========  PART 3 : Saving/Loading data ==========
                    ====================================================

Let's start with saving, the easiest way is to save the house once the player finishes editing, for this we use the event "playerCloseHousing".
This event sends 2 parameters : the player and the id of the edited house

Here is how to proceed to save in the player data:
(Script to run on the server side only)
]]--

function OnPlayerCloseHousing(player, houseId)
    local encodedHouse = _G.Housing_Manager.getHouseEncode(houseId) -- Get the encoded house
    local data = Storage.GetPlayerData(player)
    data.housing = {
        id = houseId,
        encode = encodedHouse
    }
    Storage.SetPlayerData(player, data) -- Save in the player storage
end

Events.Connect('playerCloseHousing', OnPlayerCloseHousing) -- Listen the event

--[[
This script will automatically save the id and code of the house the user has just edited

And now we load the previously saved house when the player joins: 
]]--

function OnPlayerJoined(player)
    local data = Storage.GetPlayerData(player)
    if data.housing ~= nil then
        _G.Housing_Manager.setHouseEncode(data.housing.id, data.housing.encode)
    end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

--[[

This script will automatically load the house when the player logs in, but be careful!
If 2 players have the same house with the same id, then this can cause a conflict, my housing system does not take this into account, it is up to you to do your own checks.

                    ================================================
                    ===========  PART 4 : Object creation ==========
                    ================================================

Here I will explain how to create and add your own objects.

First, you have to create the asset of your object.
But, you need to know that : the module works with a "Tile" system. A "Tile" has the size of 100/100, in other words, a "Cube" of scale 1/1. (the scale in Z is free)
To help you in the creation of object, you can use the templates of type "placeholder" which allows you to create quickly an object of the indicated size.
for example, the template "Housing System - Placeholder - 2x1" allows you to create an object of size 200 in X and 100 in Y. (you can obviously make it smaller, but try not to leave too much space)
There are also objects of type "Housing System - Placeholder Wall - ..." for the creation of objects to be placed on the wall.
The most important thing to remember when creating objects is that the origin of the object, i.e. the "triangular cross" that appears when you click on the root of the object, MUST be in the lower left corner
Try with a "Placeholder" template, click on it, and you will see where the origin is. If the origin is not in the bottom left corner, it could have an undesirable effect in game.

Once you have created your object, you need to integrate it into the system. To do this, start by creating a template of your object.
Then, go to the folder :

Housing Package -> Housing System -> Data -> Objects

This folder contains all the existing categories of objects. You can either create your own category or use an existing one.
To create your own category, nothing could be easier. Simply create a group/folder with the name of your category, and that's it.
Please note that categories can't support more than 64 objects, otherwise the icons of the objects won't work. (this is a limitation of Core)

To add your object, there is a template you can use called "Housing System - Data - Empty Object". Put it in the category you want and rename it
The name of the object is important because it is what will be displayed to the player when he has to select the objects to place.
Once renamed, you have to fill in the properties. I will explain in detail each property: 

** GENERAL **
- id : The most important. It is the id of your object. It must be UNIQUE and must not be modified once your game is online, to be sure not to use an id already used by the system, I advise you to start with the number 900, because the objects already in place use ids ranging from 1 to 800.
- asset : The template of your object that you created earlier.
- size : The size in "Tile" of your object. For example, if you have used the placeholder "2x1" so the size of the object is 2 in X, and 1 in Y. Only integer values are allowed, so no decimal numbers.

** POSITION **
- onFloor : Can the object be placed on the floor?
- onWall : Can the object be placed on the wall?
- onOtherObject : Can the object be placed on other objects?
- canSupportObject : Can the object support other objects? Not compatible with "onOtherObject".
- isCarpet :  Is the object a carpet? Carpet are objects that can be placed anywhere on the floor, even on forbidden tiles, and also under other objects.
- wallOffsetPositionZ : For wall objects, this allows them to be moved up or down. By default, wall objects have a Z position equal to 200.

** ASSET CAPTURE **
- scaleMultiplier : Allows you to change the size of the object on the icon.
- positionOffset :Allows you to change the position of the object on the icon.
- rotationOffset : Allows you to change the rotation of the object on the icon.

Once filled, your object is automatically added to the system. You can now test it :)

                    ===============================================
                    ===========  PART 5 : House creation ==========
                    ===============================================

The house creation is a more complex part, but the best way to explain it is that you look at what is in the "Housing System - House - Placeholder" template

Here is a detail of the hierarchy that ALL houses must have:
You can check with the template "Housing System - House - Placeholder" which contains a test house with only the essentials.

House - The group/folder containing your home.
| - Floors : The different floors of your house. (the system only works with 1 floor for the moment)
  | - 1 : Your floor number.
    | - Walls : The walls of your house. (interior and exterior)
    | - Floor : The floor (visible or invisible) of your house that allows you to delimit where it is possible to place objects.
    | - Forbidden Floor : The tiles where the user will not be allowed to place objects. (very useful to put in front of doors for example)
    | - Geo : Everything else that your floor may contain. (pillars, doors, etc ..)
| - Roof : The roof of your house.
  | - Static Geo : It is advisable to put all the mesh of your roof here, to avoid to overload the networked objects.

I will now explain each folder in detail.

Walls:
As mentioned, this folder should contain all the walls of your house, whether they are interior or exterior walls. It is on them that you can put wall objects.
It is VERY important not to create any group or folder in the Walls folder, all the meshes you will put in it must be direct children.
It is also VERY important to activate the "Can Overlap Triggers" checkbox if you don't want your objects to cross the walls.
Finally, walls cannot have Z rotations other than 0, 90, 180 and -90, so be careful to place them correctly.

Floor:
This folder is very important. It allows you to indicate the places where the player will be allowed to put objects. I advise you to use mesh type "Plane 1m - One Sided" to cover your house.
The mesh must have interger scales. (so no decimal numbers)
It is important to note that your grid will be aligned to the position and rotation of the "Floor" folder as such and the 1st child of this folder.
So, I suggest the following to have a perfectly aligned grid: 
1) The 1st child of this folder must be in position X:0, Y:0
2) All the children of this folder must not have any rotation (X:0, Y:0, Z:0)
3) The position of the other children must be mutliple of 50 only. (so 0, 50, 100, -50, etc ...)
Thanks to this, you will get a perfectly aligned grid.

Forbidden Floor : 
This folder has the same rules as the "Floor", except that it allows to forbid to put objects on the chosen square (other than carpets)
The most common use is to put Forbidden Floor in front of the doors
You must therefore place "Plane 1m - One Sided" where you want to forbid the placement of objects.
As for the Floor folder, use only integer scales (no decimal numbers) with positions that are multiples of 50.

Geo :
All the decoration of your house, like the pillars for example. 
Be careful, the objects you put in this folder are not taken into account by the housing objects, 
so if you put a pillar in the middle of your house, you will have to put a "Forbidden Tile" in the same place to avoid that your object goes through

Roof and Static Geo: 
The roof of your house. Integrate all the meshes in the "Static Geo" folder in order not to overload the networked objects.
This folder allows to indicate what will become invisible when the player will open the house edition.


Don't hesitate to look at how the test houses are built to better understand how it works. 
You can also send me a message on Discord if you have any questions. :)

Once your house is finished, it's time to add it to the system.
For that it is very simple, go to the folder :

Housing Package -> Housing System -> Data -> Houses

There, simply add a group (or duplicate a group already present) and put the following 2 properties:

id : The unique identifier of the house, be careful not to have the same id twice for two different houses.
houseObject : The group that contains all your house. (so the group that contains the folder "Floor" and "Roof")

And now your home has been added!

To test it, there is a quick test template, so take the template: "Housing System - House - Test".
Put it in your hierarchy, click on it, and modify the property "houseId" by the id of your house
Put also this one to be accessible by your character.
You just have to launch the preview, go to the blue aura, and you can start editing


                    ===================================================
                    ===========  PART 6 : Recurring problems ==========
                    ===================================================

Why isn't my house saved when I leave the game?
    Saving houses is not automatic, it is up to the creator to create his own saving system.


I just created an object, but I can't find it when I edit a house, why?
    You have to add the object to the system to see it, go to part 4 which explains how it works.


When I want to place an object in a house, its appearance is offset from the position of my cursor.
    This is probably due to the fact that the origin of your object is not in the lower left corner. Make sure you use the templates "Housing System - Object - Placeholder XXX" to create your objects
    Place the mesh inside and make sure that it does not exceed the transparent blue boxes. (they can be higher than the blue boxes though)

    
My grid is misaligned !
    Your grid is aligned with the folder named "Floor", so I advised you to : 
    1) the 1st child of this folder must be in position X:0 Y:0 
    2) all the children must not have any rotation.
    3) Concerning their position, they must have a multiple of 50. (so -50, 0, 50, 100, etc ...)
    If your grid is still not aligned according to these rules, try to move your floor of 50pixel until you have a perfect alignment.


Why can my objects go through walls?
    This is probably due to the fact that you have not activated the "Can Overlap Triggers" checkbox on the wall mesh. Also make sure that all your walls are in the Walls folder.
--]]