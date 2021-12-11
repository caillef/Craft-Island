local Module = {}

local c1 = 1.70158
local c2 = c1 * 1.525
local c3 = c1 + 1
local c4 = (2 * math.pi) / 3
local c5 = (2 * math.pi) / 4.5

local n1 = 7.5625
local d1 = 2.75

Module.LINEAR = function(x) return x end

Module.EASE_IN_SINE = function(x)
	return 1 - math.cos((x * math.pi) / 2)
end

Module.EASE_OUT_SINE = function(x)
	return math.sin((x * math.pi) / 2)
end

Module.EASE_IN_OUT_SINE = function(x)
	return -(math.cos(math.pi * x) - 1) / 2
end

Module.EASE_IN_QUAD = function(x)
	return x * x
end

Module.EASE_OUT_QUAD = function(x)
	return 1 - (1 - x) * (1 - x)
end

Module.EASE_IN_OUT_QUAD = function(x)
	if x < 0.5 then
		return 2 * x * x
	else
		return 1 - ((-2 * x + 2)^2) / 2
	end
end

Module.EASE_IN_CUBIC = function(x)
	return x * x * x
end

Module.EASE_OUT_CUBIC = function(x)
	return 1 - (1 - x)^3
end

Module.EASE_IN_OUT_CUBIC = function(x)
	if x < 0.5 then
		return 4 * x * x * x
	end
	return 1 - ((-2 * x + 2)^3)/2
end

Module.EASE_IN_QUART = function(x)
	return x * x * x * x
end

Module.EASE_OUT_QUART = function(x)
	return 1 - ((1 - x)^4)
end

Module.EASE_IN_OUT_QUART = function(x)
	if x < 0.5 then 
		return 8 * x * x * x * x
	end
	return 1 - ((-2 * x + 2)^4 / 2)
end

Module.EASE_IN_QUINT = function(x)
	return x * x * x * x * x
end

Module.EASE_OUT_QUINT = function(x)
	return 1 - ((1 - x)^5)
end

Module.EASE_IN_OUT_QUINT = function(x)
	if x < 0.5 then 
		return 16 * x * x * x * x * x
	end
	return 1 - ((-2 * x + 2)^5 / 2)
end

Module.EASE_IN_EXPO = function(x)
	if x == 0 then return 0 end
	return 2^(10 * x - 10)
end

Module.EASE_OUT_EXPO = function(x)
	if x == 1 then return 1 end
	return 1 - 2^(-10 * x)
end

Module.EASE_IN_OUT_EXPO = function(x)
	if x == 0 then return 0 end
	if x == 1 then return 1 end
	if x < 0.5 then
		return (2^(20 * x - 10)) / 2
	else
		return (2 - (2^(-20 * x + 10))) / 2
	end
end

Module.EASE_IN_CIRC = function(x)
	return 1 - math.sqrt(1 - (x^2))
end

Module.EASE_OUT_CIRC = function(x)
	return math.sqrt(1 - (x - 1)^2)
end

Module.EASE_IN_OUT_CIRC = function(x)
	if x < 0.5 then
		return (1 - math.sqrt(1 - ((2 * x)^2))) / 2
	else
		return (math.sqrt(1 - ((-2 * x + 2)^2)) + 1) / 2
	end
end

Module.EASE_IN_BACK = function(x)
	return c3 * x * x * x - c1 * x * x
end

Module.EASE_OUT_BACK = function(x)
	return 1 + c3 * (x - 1)^3 + c1 * (x - 1)^2
end

Module.EASE_IN_OUT_BACK = function(x)
	if x < 0.5 then
		return ((2 * x)^2 * ((c2 + 1) * 2 * x - c2)) / 2
	end
	return ((2 * x - 2)^2 * ((c2 + 1) * (x * 2 - 2) + c2) + 2) / 2
end

Module.EASE_IN_ELASTIC = function(x)
	if x == 0 then return 0 end
	if x == 1 then return 1 end
	return -(2^(10 * x - 10)) * math.sin((x * 10 - 10.75) * c4)
end

Module.EASE_OUT_ELASTIC = function(x)
	if x == 0 then return 0 end
	if x == 1 then return 1 end
	return (2^(-10 * x)) * math.sin((x * 10 - 0.75) * c4) + 1
end

Module.EASE_IN_OUT_ELASTIC = function(x)
	if x == 0 then return 0 end
	if x == 1 then return 1 end
	if x < 0.5 then
		return -((2^(20 * x - 10)) * math.sin((20 * x - 11.125) * c5)) / 2
	else
		return ((2^(-20 * x + 10)) * math.sin((20 * x - 11.125) * c5)) / 2 + 1
	end
end

Module.EASE_IN_BOUNCE = function(x)
	return 1 - Module.EASE_OUT_BOUNCE(1 - x);
end

Module.EASE_OUT_BOUNCE = function(x)
	if x < (1 / d1) then
	    return n1 * x * x
	elseif x < (2 / d1) then
		local newX = x - (1.5 / d1)
	    return n1 * newX * newX + 0.75
	elseif x < (2.5 / d1) then
		local newX = x - (2.25 / d1)
	    return n1 * newX * newX + 0.9375
	else
		local newX = x - (2.625 / d1)
		return n1 * newX * newX + 0.984375;
	end
end

Module.EASE_IN_OUT_BOUNCE = function(x)
	if x < 0.5 then
		return (1 - Module.EASE_OUT_BOUNCE(1 - 2 * x)) / 2
	else
		return (1 + Module.EASE_OUT_BOUNCE(2 * x - 1)) / 2
	end
end


return Module