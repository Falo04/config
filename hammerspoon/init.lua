-- maximes the application
hs.hotkey.bind({ "cmd" }, "Return", function()
	local win = hs.window.focusedWindow()
	if not win then
		return
	end

	local screen = win:screen()
	local max = screen:frame()

	-- Apply 10px padding on all sides
	local padding = 10
	local f = {
		x = max.x + padding,
		y = max.y + padding,
		w = max.w - (2 * padding),
		h = max.h - (2 * padding),
	}

	win:setFrame(f)
end)

local apps = {
	F1 = "Zen",
	F2 = "Ghostty",
	F3 = "Obsidian",
}

for key, app in pairs(apps) do
	hs.hotkey.bind({}, key, function()
		hs.application.launchOrFocus(app)
	end)
end
