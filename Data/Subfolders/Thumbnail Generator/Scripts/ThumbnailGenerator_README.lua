--[[
	standardcombo's Thumbnail Generator
	v1.0
	by: standardcombo
	
	This component generates small 2D icons out of 3D elements,
	using a stylized background and lighting setup. The thumbnails
	are only generated when they are needed and are not pre-loaded.
	
	
	Mini-tutorial, see it in action
	===============================
	1. Drop a copy of each of the following templates into the
	   hierarchy:
	   a) Thumbnail Generator - Rare
	   b) Thumbnail Generator - Epic
	   c) Thumbnail Usage Example
	2. Start preview mode
	3. You should see 4 icons in the top-left of the screen.
	
	
	Setup
	=====
	1. Drop a copy of a generator template into the hierarchy.
	   e.g. "Thumbnail Generator - Rare"
	2. Right-click it and choose "de-instance".
	3. Inspect its contents. Modify the contents of the "Items"
	   sub-folder to have the necessary objects for your game.
	   Follow the pattern of the example content. Delete example
	   items that you don't need.
	4. You can have multiple different generators in the hierarchy
	   for different background and lighting styles. In fact, this
	   package come with two examples (Rare and Epic color schemes)
	   that can be used in conjunction. Additional rarity or styles
	   is left up to the individual creator.
	
	
	Usage
	=====
	1. In your UI script, bind a thumbnail to a UI Image by calling:
	   ```
	   _G.ThumbnailGenerator.SetupImage(IMAGE_1, "Rifle")
	   ```
	   Where "IMAGE_1" is the name of the variable for your UIImage
	   and "Rifle" corresponds to the 3D object that is inside one
	   of the "Items" folders.
	2. You may need to add a `Task.Wait()` at the beginning of your
	   UI script, if you try to bind the thumbnails too quickly,
	   while the generators have not initialized yet.
	3. This package comes with an example template that works with
	   the two generators (Rare & Epic) that
	
	
	Create a New Generator
	======================
	1. Add a copy of the "Thumbnail generator - Epic" into the
	   hierarchy.
	2. Right-click it and "create a new template". Give it a name.
	3. Right-click it and choose "de-instance".
	4. Select the "Items" sub-folder and press [F] to focus.
	5. Make sure the editor camera is looking down the X-axis. If
	   it's not, rotate the editor camera so it does so. To rotate
	   around a focused object, hold [Alt] then click and drag the
	   left mouse button.
	6. You can zoom in closer to the truck to get a better sense of
	   the final look.
	7. In the hierarchy, select and modify the following background
	   elements to develop the new style:
	   a) Background Sphere (color, material)
	   b) Frame planes x4 (color, material)
	   c) Point Light & Spot Lights (position, intensity, color)
	   d) Other > Camera (Field of View, position)
	   e) External Pipe (provides shade from environment light)
	
--]]


