-- Function to handle brightness changes
local function changeBrightness(direction)
	local current = hs.brightness.get()
	if direction == "up" then
		hs.brightness.set(math.min(current + 5, 100)) -- Increase by 5%
	else
		hs.brightness.set(math.max(current - 5, 0)) -- Decrease by 5%
	end
end

-- Bindings
hs.hotkey.bind({ "cmd" }, "F1", function()
	changeBrightness("down")
end)

hs.hotkey.bind({ "cmd" }, "F2", function()
	changeBrightness("up")
end)
