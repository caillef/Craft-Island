--[[

	Inventory System
	Programmed by Chipnertkj

	Table of Contents:
		1. Inventory System
			- INVENTORY SETUP
			- USAGE
			- STORAGE SETUP
			- UTILITY EVENTS
		2. Item UI Template
			- ICON CREATION
		3. Pickup Object
			- PICKUP CREATION
			- USAGE

	For any questions, suggestions, problems and bugs - ping me on discord - @chipnertkj#5685

	----------------------------------------------------------------------------------------------------------------------------------------

	I do realize that you might not want to read through this dense wall of text, but it is necessary for you to understand
	how this system works if you plan on using it in your project. I tried my best explaining it as briefly as possible.

	----------------------------------------------------------------------------------------------------------------------------------------
	
	Inventory System

	The inventory system can hold up to 30 unequipped items and 2 different equipped items at the same time.
	It was designed to work specifically with RPG games, but will work with other game genres just as well.
	The system can save its state with Player Storage, but will require a short custom script in order to do so.

	INVENTORY SETUP:
		1. Drag the Inventory System into your Project Hierarchy
		2. Adjust its custom properties to your needs:
			- PlayerStorage (Bool) enables functions/events required for saving the state of the inventory system with Player Storage.
			- LevelRequirement (Bool) makes certain items unequippable below a specified Player Level (player resource).
			- LevelResource (String) is the player resource storing Player Level.
			- Type1 (String) is the type of items the first equipment slot can hold.
			- Type2 (String) is the type of items the second equipment slot can hold.
			- FullSFX is a (Core Object) reference to the sound effect (Object) played when a player tries to pick up an object while their inventory is full.
			- PickupSFX is a (Core Object) reference to the sound effect (Object) played when a player picks up an object.
			- FullMessage (String) is the message displayed when the inventory's full.
			- StartupMessage (String) is the message displayed when you join - leave blank for no message.
			- BindingOpen (String/Ability Binding) is the key used to open/close the inventory (default [Q] - ability_extra_20)
	
	USAGE:
		1. You can open the inventory with [Q]
		2. Pressing on an Item UI Icon (if there is one) will allow you to move it to a different slot
		3. Pressing on a slot while holding an item will move it there
		4. Moving an item to the red slot will delete it from your inventory
		5. Moving an item to one of the slots on the (top) right side of the Inventory will equip it
		4. You can close the inventory by pressing [Q] again

	STORAGE SETUP (optional):
		1. Set PlayerStorage in Inventory System to TRUE
		2. Set Enable Player Storage in Game Settings to TRUE
		3. Create a server-side script named PlayerStorageServer:

			This script will recieve broadcasted events from the Inventory System in order to save its state to Player Storage.
			If you do not wish to save any other data than its state, use the code below in your script:


						function OnSave(player, d)
							Storage.SetPlayerData(player, {inventory = d})
						end

						Events.Connect("inventorySaveEvent", OnSave)


			If you wish to save both its data and Player Resources, use the code below:


						function OnSave(player, d)
							local data = {}
							data.inventory = d
							local res = player.GetResources()
							for key, value in pairs(res) do
								data["resource_" .. tostring(key)] = value
							end
							Storage.SetPlayerData(player, data)
						end

						function OnJoined(player)
							local data = Storage.GetPlayerData(player) or {}
							for key, value in pairs(data) do
								if string.match(key, "resource_") then
									player.SetResource(string.sub(key, 10))
								end
							end
						end

						Events.Connect("inventorySaveEvent", OnSave)
						Game.playerJoinedEvent:Connect(OnJoined)


			If you need to save more data, you will need to write your own script similar to the ones above.
		
		4. Create a Server Context and put the script inside of it

	UTILITY EVENTS:
		
		The Inventory System has a few Utility Events you can take advantage of in order to exchange data between your game and the system itself.

		- "requestInventoryFullEvent" | (Player player, String id) | Server Event

			This server-side event request allows you to check if a players inventory is full or not - useful in shops and such.
			It takes in the player who's inventory it's supposed to check and a unique id for the request.
			After checking each slot it will broadcast either true if its full or false through "returnInventoryFullEvent".
			You can connect that event to a function that will - for example in a shop - actually make you buy an item if you do have free slots.

		- "requestInventorySaveEvent" | (Player player) | Server Event

			Pretty self-explanatory. Requests the system to save its current state to Player Storage. This function is usually automatically called whenever you equip
			or recieve new items.

		- "inventoryAddEvent" | (Player player, String icon MUID) | Server Event

			This event adds an item to a players inventory. It will not add it if the player doesn't have any free slots, so make sure they do have them
			before broadcasting this event. The second parameter is the Item UI Template (see below in Item UI Template) of the item you want to add.

		- "inventoryDeleteEvent" | (Player player, Number slot [1-32]) | Server Event

			Deletes an item from a player at a specified slot. Probably not too reliable at the moment, since its hard to tell where an item is without
			a special Utility Event for that. Will write that one sometime soon.

		- "inventoryEquipEvent" | (Player player, Number slot [1-2]) | Server Event

			Forces the player to unequip the item from Equipment Slots 1 or 2. Does NOT move the items out of their slots.
	
	----------------------------------------------------------------------------------------------------------------------------------------

	Item UI Template

	The Item UI Template is an object that will appear as an icon in the Inventory System. You will need to create a separate icon
	for each item a player will be able to equip.

	ICON CREATION:
		1. Drag the Item UI Template into your Project Hierarchy
		2. Deinstance the template
		3. Replace the UI Image object's icon with the UI Icon of your choice (you can add more objects to the template)
		4. Adjust its custom properties to your needs:
			- Equipment (Asset Reference) is a reference to the Equipment Template that will be equipped by the player
			- Name (String) is the equipment's name that will be shown when hovering over the Item UI Icon
			- Level (Number)
			- Type (String) is the Equipment Type. You can only equip objects that match either Type1 or Type2 Property (from Inventory System)
			- You can add more Custom Properties to your Item Icons - every property excluding Equipment will show up in its description when it is hovered over.
		5. Rename the object to "Item UI <Equipment Name>"
		6. Right click on it in your Project Hierarchy and press Create New Template From This

	Item UI Templates are used by the Inventory System and Pickup Objects (explained below).

	----------------------------------------------------------------------------------------------------------------------------------------
	
	Pickup Object Template

	The Pickup Object is an object with an interactable trigger attached to it. This object allows players to recieve the Equipment Item associated with it. The item will appear in the system as an Item UI Object.
	This is meant to replace the standard way of making pickups (Equipment Objects placed in Project Hierarchy) and is not interchangeable with it.
	Picking up a *standard* Equipment Object directly WILL CORRUPT YOUR PROJECT'S USER DATA IRREVERSIBLY (when using Player Storage). Refrain from using them in your project.

	If you corrupt your User Data while previewing your game, you will still be able to delete it. Be aware that this is not the case with published projects.
	User Data in local projects is stored in "...Documents\MyGames\CORE\Saved\Maps\<Project>\Storage".

	PICKUP CREATION:
		1. Drag the Pickup Object Template into your Project Hierarchy
		2. Deinstance the template
		3. Set its ItemUITemplate Custom Property (Asset Reference) to its associated Item UI Template
		4. Replace Geo (inside Client Model) with your own model for the pickup (you can reuse your Equipment's model)
		5. Rename the object to "Pickup Object <Equipment Name>"
		6. Right click on it in your Project Hierarchy and press Create New Template From This

	USAGE:
		1. Drag the template into your Project Hierarchy
		2. Approach the object and press [F] when in its range
	
	----------------------------------------------------------------------------------------------------------------------------------------

]]--