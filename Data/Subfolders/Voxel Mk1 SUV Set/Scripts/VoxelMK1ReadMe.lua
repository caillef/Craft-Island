--[[

	CREATOR: estlogic
	VERSION: 1.0
	
	Voxel Mk1 SUV Pack

	HOW TO USE:
	
		Controls:
		W - Move Forward
		A - Turn Left (when moving forward/backward)
		S - Move Backward
		D - Turn Right (when moving forward/backward)
		
		F - Enter/Exit
		
		Q - Left Turn Signal (turn left or press again to turn off)
		E - Right Turn Signal (turn right or press again to turn off)
		H - Horn
		X - Hazard Lights (press again to turn off)
		
		
		When using the pack, make sure to set the default camera and player settings in the Custom Properties of the VehicleAnchorDock
	group. Leave the empty VehicleAnchorDock group in the hierarchy and to not move this group (this group is important for the vehicles 
	to work). To respawn a vehicle, create a new template from either the VoxelMk1 or VoxelMk1Plus equipment and use a spawner to spawn 
	only the equipment. Only one VehicleAnchorDock is needed to support multiple vehicles. Additional vehicle settings are found in the 
	Custom Properties of the VoxelMk1(Plus) equipment group.
	
		To edit the apperance of the vehicle, search for the Body group. Editing the suspension will require
	scripting knowledge and understanding of how the suspension works. DO NOT rescale the vehicle; the suspemsion will not work 
	correctly if the vehicle is changed in scale. The Tilt group can be deleted and replaced when creating a new vehicle with a new 
	suspension system from scratch.
	
		Note that the vehicles are set to destroy themselves when the player leaves while inside a vehicle. If the player exits first then
	leaves, the vehicle is not deleted.
	
		The vehicles work best on large hills and terrain that does not change drastically.
	
	
	ABOUT:
		
	- THE PACK:
	
		The Voxel Mk1 SUV Pack is a set of two Jeep inspired off-road vehicles: the Voxel Mk1 and the Voxel Mk1 Plus.
	These vehicles are demonstrations for the Dock Vehicle Control System and Layered Suspension System. 
	
	- DOCK VEHICLE CONTROL SYSTEM:
	
		Involved groups:
		- VehicleAnchorDock
		- VoxelMk1
		- VehicleClient
		- VehicleClientAnchor
		- ClientAnchor
		- TheVehicle
		
		Involved scripts:
		- VehicleControllerServer
		- VehicleControllerClient
		- VehicleCleanup
	
		The Anchor Vehicle Control System works by detaching the vehicle from the player on the server and having it follow the 
	player from client-side. This allows the system to take advantage of smoother movement when moving things in client-side while
	retaining the accuracy of the player position server-side. When the player equips the vehicle, the VehicleControllerServer script
	detaches the VehicleClientAnchor from the equipment and re-parents it to the VehicleAnchorDock group. On client-side, the
	VehicleControllerClient script sets the TheVehicle group (inside the ClientAnchor client context group) to follow the player.
	
		The VehicleControllerServer applies a new player setting that restricts player movement to only forward and backward. Binding 
	listeners listen for "A" and "D" keys being pressed and released to set a variable. Every tick the server sets the rotation of the
	player based on this variable (only while the player is moving forward or backward). On client-side, every tick the TheVehicle group
	is set to rotate to the current rotation of the player.
	
		The rotation of the player on server-side is set using SetWorldRotation(). This way of setting player rotation combined with
	the slow tick function of the server results in very choppy rotation for the player. To achieve smooth rotation, the client manually
	rotates the vehicle to match the rotation of the player. The rotation of the vehicle is slightly slower than the rotation of the 
	player to make the rotation smoother (the choppy rotation of the player is not copied by the vehicle because the vehicle is still
	trying to catch up to the rotation of the player).
	
	- LAYERED SUSPENSION SYSTEM:
	
		Involved groups:
		- TheVehicle
		- Tilt
		- Height
		- SuspensionSection
		- MovingSuspension
		- LimitMarkers
		
		Involved scripts:
		- BodyAdjustmentManager
		- ClientHelper
		- SuspensionManager
		- SuspensionSectionManager
		
		The Layered Suspension System partitions the vehicle into a layers of groups to control how the vehicle adapts to the terrain.
	The main layers are TheVehicle, Tilt, and Height (layered in that order and found under the ClientAnchor group). TheVehicle
	simply follows the player and copies the player's rotation. Tilt does not move within the TheVehicle group and instead only rotates
	based on the average height of each suspension section marker. The Height group does not rotate and changes in z position based on
	the average height of each suspension marker. The vehicle also has a self-right system that slowly rotates the vehicle to zero
	rotation when it has been detected that all four wheels are off the ground. The calculations for the rotation and height of the
	vehicle are made in the BodyAdjustementManager script.
		
		Wheel rotation speed, driveshaft rotation speed, steering animation, and SFX/VFX are handled by the ClientHelper script. 
		
		The height of each set of shockaborber and spring pair (and consequently, each wheel) is controlled by the 
	SuspensionSectionManager. The height is calculated by creating two raycast lines from the upper limit markers to the lower limit 
	markers (found in LimitMarkers) for each suspension section. The raycast lines are set slightly in front and slightly behind each
	wheel. When collision is detected, the higher point is chosen out of the two raycast lines and the spring/shock abosorber section
	is moved to that z position. When the section moves, a marker inside this seciton also moves, and the position of this marker is
	used to calculate the average rotation and height used by the BodyAdjustementManager script discussed earlier.
	
		The SuspensionManager scripts (called RearSuspensionManager and FrontSuspensionManager) get the markers from the suspension
	sections to raise and rotate the front/rear axle. This alligns the axle to where the springs and shock abosorbers connect.
	
		Each script also helps in keeping the suspension look connected. Some suspension components, such the driveshafts, have a target
	and a specially placed pivot point such that when the script sets the object to look at a target, the object maintains connection.
	
	- DETAILING:
	
		While not purely accurate, the Voxel Mk1 does feature a relatively realistic animated suspension system. For easy viewing
	of the suspension, navigate to VoxelMk1 -> VehicleClientAnchor -> ClientAnchor -> TheVehicle -> Tilt -> Height -> Body and move
	the Body group up. This will bring the engine, transmission , and transfer case with the body of the vehicle.
	
		The suspension details are based on the solid axle (live axle) type of suspension. The front and rear axles have differentials
	that are connected to driveshafts that rotate and accelerate with speed. Springs and shock abosorbers are also replicated and can
	extend/contract when moving over terrain. four control arms support each axle, and the entire axle lifts and tilts to align with
	bases of the springs and shock abosorbers. 
	
		The front axle also has steering joints connected by a tie rod. The right steering joint is connected to a drag link which is
	connected to the pitman arm of the steering gear. Two dampers connect the tie rod to the axle. The steering joints house a sphere
	that also rotates and accelerates when the player moves to show power being sent to the front wheels. When the player steers the 
	vehicle, all of these components move together.
	
		Due to limitations and how the suspension works in the scripts, the control arms do not actually control the positioning of the
	axle when moving up and down. Also, the springs do not actually contract and just slide into the coverings when the spring is supposed
	to be compressed.

]]--
