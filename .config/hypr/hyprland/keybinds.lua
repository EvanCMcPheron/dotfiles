-- App launchers
hl.bind(MAIN_MOD_KEY .. " + D", hl.dsp.exec_cmd(DISCORD_CMD), { description = "Open Discord" })
hl.bind(MAIN_MOD_KEY .. " + N", hl.dsp.exec_raw(IDE_CMD), { description = "Open IDE (Neovide)" })
hl.bind(MAIN_MOD_KEY .. " + B", hl.dsp.exec_cmd(BROWSER_CMD), { description = "Open browser" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + B", hl.dsp.exec_cmd(BROWSER_CMD .. " --private-window"), { description = "Open private browser window" })
hl.bind(MAIN_MOD_KEY .. " + P", hl.dsp.exec_cmd(TERMINAL_CMD), { description = "Open terminal" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + P", hl.dsp.exec_cmd("~/.config/hypr/scripts/battery-saver-toggle.sh"), { description = "Toggle battery saver (blur/shadow/animations)" })
hl.bind(MAIN_MOD_KEY .. " + E", hl.dsp.exec_cmd(FILE_MANAGER_CMD), { description = "Open file manager" })
hl.bind(MAIN_MOD_KEY .. " + T", hl.dsp.exec_cmd(NOTES_CMD), { description = "Open notes" })
hl.bind(MAIN_MOD_KEY .. " + Q", hl.dsp.exec_cmd(TASK_MANAGER_CMD), { description = "Open task manager" })
hl.bind(MAIN_MOD_KEY .. " + W", hl.dsp.exec_cmd(WALLPAPERS_CMD), { description = "Open wallpaper picker" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + C", hl.dsp.exec_cmd(CAFFEINE_CMD), { description = "Toggle Caffeine Mode"})
hl.bind(MAIN_MOD_KEY .. " + CTRL + T", hl.dsp.exec_cmd(THEME_MODE_CMD), { description = "Toggle Theme Mode (Light/Dark)"})

hl.bind(MAIN_MOD_KEY .. " + M", function ()
	local win = hl.get_windows({ class = MESSAGES_CLASS })[1]

	if not win then
		-- Not running yet: launch it
		hl.dispatch(hl.dsp.exec_cmd(MESSAGES_CMD))
		return
	end

	if win.workspace.special then
		-- Currently hidden in the scratchpad: bring it back and focus it
		hl.dispatch(hl.dsp.window.move({
			window = win.address,
			workspace = hl.get_active_workspace().name,
		}))
		hl.dispatch(hl.dsp.window.move({ window = win, workspace = hl.get_active_workspace(MAIN_MONITOR_OUTPUT) }))
		hl.dispatch(hl.dsp.focus({ window = win }))
		hl.dispatch(hl.dsp.window.pin({ action = "enable", window = win }))
	else
		-- Currently visible: tuck it away
		hl.dispatch(hl.dsp.window.pin({ action = "disable", window = win }))
		hl.dispatch(hl.dsp.window.move({ window = win, workspace = SCRATCH_WORKSPACE, follow = false }))
	end

end, { description = "Toggle Messaging App" })

hl.bind(MAIN_MOD_KEY .. " + SHIFT + M", hl.dsp.exec_raw(MAIL_CMD), { description = "Open mail client" })
hl.bind(MAIN_MOD_KEY .. " + SPACE", hl.dsp.exec_raw(MENU_CMD), { description = "Open app launcher" })
hl.bind("ALT + SPACE", hl.dsp.exec_cmd(DASHBOARD_CMD), { description = "Open control center" })
hl.bind(MAIN_MOD_KEY .. " + TAB", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "bar-toggle top"), { description = "Toggle top bar" })
hl.bind(MAIN_MOD_KEY .. " + TAB", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "bar-hide side"))
hl.bind(MAIN_MOD_KEY .. " + SHIFT + TAB", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "bar-toggle side"), { description = "Toggle side bar" })

-- System
hl.bind(MAIN_MOD_KEY .. " + C", hl.dsp.window.close(), { description = "Close focused window" })
-- hl.bind(MAIN_MOD_KEY .. " + CTRL + M", hl.dsp.exit(), { description = "Exit Hyprland session" })
hl.bind(MAIN_MOD_KEY .. " + ALT + L", hl.dsp.exec_cmd("loginctl lock-session"), { description = "Lock session" })
hl.bind("SUPER + CTRL + SPACE", hl.dsp.exec_cmd(POWERMENU_CMD), { description = "Open power menu" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload"), { description = "Reload Hyprland config" })
hl.bind(MAIN_MOD_KEY .. " + V", hl.dsp.exec_cmd(CLIPBOARD_CMD), { description = "Open clipboard history" })
hl.bind(MAIN_MOD_KEY .. "  + S", hl.dsp.exec_cmd(SETTINGS_PANEL_CMD), { description = "Open settings panel" })
hl.bind(MAIN_MOD_KEY .. "  + SHIFT + SLASH", hl.dsp.exec_cmd(BINDINGS_INFO_CMD), { description = "Open Keybindings" })

-- Window management
hl.bind(MAIN_MOD_KEY .. " + F", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle floating" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + F", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle floating" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + F", hl.dsp.window.pin(), { description = "Pin window" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + F", hl.dsp.window.cycle_next({ next = true }), { description = "Cycle to next window" })
hl.bind("F11", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }), { description = "Toggle fullscreen" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + v", hl.dsp.window.pseudo(), { description = "Toggle pseudo-tiling" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + v", hl.dsp.layout("togglesplit"), { description = "Toggle split direction" })

-- Screenshots
-- hl.bind("CTRL + SHIFT + PRINT",     hl.dsp.exec_cmd("hyprshot -m output"))
hl.bind("CTRL + PRINT",             hl.dsp.exec_cmd(SCREENSHOT_REGION_CMD), {description = "Screenshot Region"})
hl.bind("SHIFT + PRINT",             hl.dsp.exec_cmd(""), {description = "Toggle shadowplay"})
hl.bind("PRINT",                    hl.dsp.exec_cmd(SCREENSHOT_CMD), {description = "Full screenshot"})
hl.bind(MAIN_MOD_KEY .. " + Z",                    hl.dsp.exec_cmd("echo asdf"), {description = "Open GPU recorder"})
-- hl.bind("PRINT", hl.dsp.exec_cmd(SCREENSHOT_CMD))
-- hl.bind(MAIN_MOD_KEY .. " + PRINT", hl.dsp.exec_cmd("ambxst run tools"))

-- Focus (vim motions)
hl.bind(MAIN_MOD_KEY .. " + h", hl.dsp.focus({ direction = "left" }), { description = "Focus window left" })
hl.bind(MAIN_MOD_KEY .. " + l", hl.dsp.focus({ direction = "right" }), { description = "Focus window right" })
hl.bind(MAIN_MOD_KEY .. " + k", hl.dsp.focus({ direction = "up" }), { description = "Focus window up" })
hl.bind(MAIN_MOD_KEY .. " + j", hl.dsp.focus({ direction = "down" }), { description = "Focus window down" })

-- Move windows (vim motions)
hl.bind(MAIN_MOD_KEY .. " + SHIFT + h", hl.dsp.window.move({ direction = "l" }), { description = "Move window left" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + l", hl.dsp.window.move({ direction = "r" }), { description = "Move window right" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + k", hl.dsp.window.move({ direction = "u" }), { description = "Move window up" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + j", hl.dsp.window.move({ direction = "d" }), { description = "Move window down" })

-- Resize windows (vim motions) — use pixel step, not percentage string
hl.bind(MAIN_MOD_KEY .. " + CTRL + h", hl.dsp.window.resize({ x = -RESIZE_STEP_PX, y = 0, relative = true }), { description = "Shrink window width" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + l", hl.dsp.window.resize({ x = RESIZE_STEP_PX, y = 0, relative = true }), { description = "Grow window width" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + k", hl.dsp.window.resize({ x = 0, y = -RESIZE_STEP_PX, relative = true }), { description = "Shrink window height" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + j", hl.dsp.window.resize({ x = 0, y = RESIZE_STEP_PX, relative = true }), { description = "Grow window height" })

-- Workspace switching
hl.bind(MAIN_MOD_KEY .. " + 1", hl.dsp.focus({ workspace = 1 }), { description = "Switch to workspace 1" })
hl.bind(MAIN_MOD_KEY .. " + 2", hl.dsp.focus({ workspace = 2 }), { description = "Switch to workspace 2" })
hl.bind(MAIN_MOD_KEY .. " + 3", hl.dsp.focus({ workspace = 3 }), { description = "Switch to workspace 3" })
hl.bind(MAIN_MOD_KEY .. " + 4", hl.dsp.focus({ workspace = 4 }), { description = "Switch to workspace 4" })
hl.bind(MAIN_MOD_KEY .. " + 5", hl.dsp.focus({ workspace = 5 }), { description = "Switch to workspace 5" })
hl.bind(MAIN_MOD_KEY .. " + 6", hl.dsp.focus({ workspace = 6 }), { description = "Switch to workspace 6" })
hl.bind(MAIN_MOD_KEY .. " + 7", hl.dsp.focus({ workspace = 7 }), { description = "Switch to workspace 7" })
hl.bind(MAIN_MOD_KEY .. " + 8", hl.dsp.focus({ workspace = 8 }), { description = "Switch to workspace 8" })
hl.bind(MAIN_MOD_KEY .. " + 9", hl.dsp.focus({ workspace = 9 }), { description = "Switch to workspace 9" })
hl.bind(MAIN_MOD_KEY .. " + 0", hl.dsp.focus({ workspace = 10 }), { description = "Switch to workspace 10" })
hl.bind(MAIN_MOD_KEY .. " + o", hl.dsp.focus({ workspace = "e+1" }), { description = "Focus next workspace" })
hl.bind(MAIN_MOD_KEY .. " + i", hl.dsp.focus({ workspace = "e-1" }), { description = "Focus previous workspace" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + o", hl.dsp.focus({ workspace = "+1" }), { description = "Focus next workspace (relative)" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + i", hl.dsp.focus({ workspace = -1 }), { description = "Focus previous workspace (relative)" })

-- Move window to workspace
hl.bind(MAIN_MOD_KEY .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }), { description = "Move window to workspace 1" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }), { description = "Move window to workspace 2" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }), { description = "Move window to workspace 3" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }), { description = "Move window to workspace 4" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }), { description = "Move window to workspace 5" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }), { description = "Move window to workspace 6" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }), { description = "Move window to workspace 7" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }), { description = "Move window to workspace 8" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }), { description = "Move window to workspace 9" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }), { description = "Move window to workspace 10" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + o", hl.dsp.window.move({ workspace = "+1" }), { description = "Move window to next workspace" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + i", hl.dsp.window.move({ workspace = -1 }), { description = "Move window to previous workspace" })

-- Move workspace to monitor
hl.bind(MAIN_MOD_KEY .. " + CTRL + 1", hl.dsp.workspace.move({ workspace = MAIN_MONITOR, monitor = "1" }), { description = "Move workspace to monitor 1" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + 2", hl.dsp.workspace.move({ workspace = MAIN_MONITOR, monitor = "2" }), { description = "Move workspace to monitor 2" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + 3", hl.dsp.workspace.move({ workspace = MAIN_MONITOR, monitor = "3" }), { description = "Move workspace to monitor 3" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + 4", hl.dsp.workspace.move({ workspace = MAIN_MONITOR, monitor = "4" }), { description = "Move workspace to monitor 4" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + 5", hl.dsp.workspace.move({ workspace = MAIN_MONITOR, monitor = "5" }), { description = "Move workspace to monitor 5" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + 6", hl.dsp.workspace.move({ workspace = MAIN_MONITOR, monitor = "6" }), { description = "Move workspace to monitor 6" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + 7", hl.dsp.workspace.move({ workspace = MAIN_MONITOR, monitor = "7" }), { description = "Move workspace to monitor 7" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + 8", hl.dsp.workspace.move({ workspace = MAIN_MONITOR, monitor = "8" }), { description = "Move workspace to monitor 8" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + 9", hl.dsp.workspace.move({ workspace = MAIN_MONITOR, monitor = "9" }), { description = "Move workspace to monitor 9" })
hl.bind(MAIN_MOD_KEY .. " + CTRL + 0", hl.dsp.workspace.move({ workspace = MAIN_MONITOR, monitor = "10" }), { description = "Move workspace to monitor 10" })

-- Special workspace (scratchpad)
hl.bind(MAIN_MOD_KEY .. " + x", hl.dsp.workspace.toggle_special("magic"), { description = "Toggle scratchpad workspace" })
hl.bind(MAIN_MOD_KEY .. " + SHIFT + x", hl.dsp.window.move({ workspace = "special:magic" }), { description = "Move window to scratchpad" })

-- Mouse workspace scrolling
hl.bind(MAIN_MOD_KEY .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }), { description = "Scroll to next workspace" })
hl.bind(MAIN_MOD_KEY .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }), { description = "Scroll to previous workspace" })

-- Mouse window drag / resize
hl.bind(MAIN_MOD_KEY .. " + mouse:272", hl.dsp.window.drag(), { description = "Drag window with mouse" })
hl.bind(MAIN_MOD_KEY .. " + mouse:273", hl.dsp.window.resize(), { description = "Resize window with mouse" })

-- Media / volume
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "volume-up"), { locked = true, repeating = true, description = "Raise volume" })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "volume-down"), { locked = true, repeating = true, description = "Lower volume" })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "volume-mute"),
	{ locked = true, repeating = true, description = "Mute/unmute volume" })
hl.bind("CTRL + XF86AudioRaiseVolume", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "mic-volume-up"), { locked = true, repeating = true, description = "Raise mic volume" })
hl.bind("CTRL + XF86AudioLowerVolume", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "mic-volume-down"), { locked = true, repeating = true, description = "Lower mic volume" })
hl.bind("CTRL + XF86AudioMute", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "mic-mute"),
	{ locked = true, repeating = true, description = "Mute/unmute microphone" })

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "mic-mute"),
	{ locked = true, repeating = true, description = "Mute/unmute microphone" })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "brightness-up"), { locked = true, repeating = true, description = "Increase brightness" })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "brightness-down"), { locked = true, repeating = true, description = "Decrease brightness" })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true, description = "Skip to next track" })

hl.bind("XF86AudioPause", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "media toggle"), { locked = true, description = "Play/pause media" })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "media next"), { locked = true, description = "Next track" })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "media prev"), { locked = true, description = "Previous track" })
hl.bind("CTRL + XF86AudioNext", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "media next-player"), { locked = true, description = "Switch to next media player" })
hl.bind("CTRL + XF86AudioPrev", hl.dsp.exec_cmd(NOCTALIA_IPC_CMD .. "media prev-player"), { locked = true, description = "Switch to previous media player" })

hl.bind("ALT + TAB", hl.dsp.exec_cmd(WINDOW_SWITCHER_CMD), { description = "Open window switcher" })
