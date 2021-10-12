--[[
====================
Overview
====================

The Lifetime Leaderboard is a component that you can drop
into your game to display a leaderboard in the corner.

The score it lists is tied to a resource on each player,
set via Player:SetResource()

The component can be configured to save the resource when
players leave, and load it when they rejoin though, so if you
don't want to deal with saving and loading, select "AutosaveAndLoad"
on the top level Lifetime Leaderboard object!

====================
How to use
====================

Drop it into the game, set the property "ResourceToTrack" to
something that makes sense for your game, and it should "just work!"

The game is responsible for actually modifying the resource -
all this component does is display a list of character names
and portraits, ranked by the resource's value.

So if you want it to track "Gold", for example, you'd need to set
the custom property to "Gold", and then your game would need to
actually use the "Gold" resource on players.

Once that is done, the leaderboard should update based on
the gold value!

The leaderboard also has an option to automatically save and
load player resources.  If the "AutoSaveAndLoad" checkbox
is checked on the top level object, then the leaderboard
will automatically save the resource with any player that
leaves, and load the last saved count, when a player connects.

This is useful if you don't want to handle storage yourself,
or only care about the one resource!


====================
IMPORTANT NOTE:
====================

To use the autosave feature, you will need to have checked
"Enable Player Storage" on the "Game Settings" object in the hierarchy.
(It is disabled by default.)

]]