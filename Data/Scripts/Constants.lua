local CONSTANTS = {}

CONSTANTS.MAX_HEIGHT_BUILD = 2100
CONSTANTS.ISLAND_SIZES = {
	{ Vector3.New(-3000, -1800, 0), Vector3.New(600, 1800, CONSTANTS.MAX_HEIGHT_BUILD) },  -- 1x1 limit x,y min and max
	{ Vector3.New(-4500, -2700, 0), Vector3.New(900, 2700, CONSTANTS.MAX_HEIGHT_BUILD) },  -- 2x2 limit x,y min and max
	{ Vector3.New(-6000, -3600, 0), Vector3.New(1200, 3600, CONSTANTS.MAX_HEIGHT_BUILD) }, -- 3x3 limit x,y min and max
	{ Vector3.New(-7500, -4500, 0), Vector3.New(1500, 4500, CONSTANTS.MAX_HEIGHT_BUILD) }, -- 4x4 limit x,y min and max
}

return CONSTANTS