local CONSTANTS = {}

CONSTANTS.MAX_HEIGHT_BUILD = 2100
CONSTANTS.ISLAND_SIZES = {
	{ Vector3.New(-3000, -1800, 0), Vector3.New(600, 1800, CONSTANTS.MAX_HEIGHT_BUILD) },  -- 1x1 limit x,y min and max
	{ Vector3.New(-3000, -2900, 0), Vector3.New(2700, 2900, CONSTANTS.MAX_HEIGHT_BUILD) },  -- 2x2 limit x,y min and max
	{ Vector3.New(-3000, -3800, 0), Vector3.New(4600, 3800, CONSTANTS.MAX_HEIGHT_BUILD) }, -- 3x3 limit x,y min and max
	{ Vector3.New(-3000, -4800, 0), Vector3.New(6600, 4800, CONSTANTS.MAX_HEIGHT_BUILD) }, -- 4x4 limit x,y min and max
}

return CONSTANTS