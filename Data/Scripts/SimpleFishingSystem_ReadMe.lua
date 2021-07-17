-- This is a simple implementation of an RPG fishing system. It consists of a fishing node that may be placed into your map.
-- You can copy the node in order to create additional fishing spots.

-- When a player joins, they are given a Fishing Ability. This ability does not have any logic and serves only to animate the player
-- when they begin fishing.

-- You may choose to disable granting the ability when a player joins and instead have it on a fishing rod equipment.
-- You can find more information about how to do this within the FishingSystemManager script.

-- You may toggle the fishing rod requirement on and off using the RequiresTool custom property found on each fishing node.

-- Each node requires a Loot Table asset in the form of a script. An example has been provided.
-- In order to create additional loot tables, simply copy the code in the example into a new script and
-- alter the content of the tables provided (common, uncommon, rare, and very rare).

-- When the player catches a fish, the fish is added to the player's resources with the resource name being
-- a string set in the fishing node's associated loot table.

-- Final note: Make sure you create templates of the Fishing Ability and Fishing Rod.