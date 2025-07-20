function systemKey(key)
	hs.eventtap.event.newSystemKeyEvent(key, true):post()
	hs.eventtap.event.newSystemKeyEvent(key, false):post()
end

-- lock screen by starting screensaver
hs.hotkey.bind({ "shift", "cmd" }, "l", function()
	hs.caffeinate.startScreensaver()
end)

-- F1 to focus the Desktop (Finder)
hs.hotkey.bind({}, "F1", function()
	local finder = hs.application.get("Finder")
	if not finder then
		hs.application.launchOrFocus("Finder")
	else
		finder:activate()
		-- Make sure Desktop is focused
		hs.osascript.applescript([[
            tell application "Finder"
                activate
                select window of desktop
            end tell
        ]])
	end
end)

-- shortcuts for jumping to specific applications
-- important applications
hs.hotkey.bind({}, "F2", function()
	hs.application.launchOrFocus("Zen")
end)

hs.hotkey.bind({}, "F3", function()
	hs.application.launchOrFocus("Ghostty")
end)

hs.hotkey.bind({}, "F4", function()
	hs.application.launchOrFocus("Obsidian")
end)

-- more applications
hs.hotkey.bind({ "cmd" }, "F1", function()
	hs.application.launchOrFocus("Singal")
end)
hs.hotkey.bind({ "cmd" }, "F2", function()
	hs.application.launchOrFocus("WebStorm")
end)
hs.hotkey.bind({ "cmd" }, "F3", function()
	hs.application.launchOrFocus("RustRover")
end)
hs.hotkey.bind({ "cmd" }, "F4", function()
	hs.application.launchOrFocus("Visual Studio Code")
end)

-- simulate media keys
hs.hotkey.bind({}, "F7", function()
	systemKey("PREVIOUS")
end)
hs.hotkey.bind({}, "F8", function()
	systemKey("PLAY")
end)
hs.hotkey.bind({}, "F9", function()
	systemKey("NEXT")
end)
hs.hotkey.bind({}, "F12", function()
	systemKey("SOUND_UP")
end)
hs.hotkey.bind({}, "F10", function()
	systemKey("SOUND_DOWN")
end)
-- F11 does not work somehow
--hs.hotkey.bind({}, "F10", function()
-- systemKey("MUTE")
--end)

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
