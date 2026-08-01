-- App launchers
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(discord), { description = "Open Discord" })
hl.bind(mainMod .. " + N", hl.dsp.exec_raw(IDE), { description = "Open IDE (Neovide)" })
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser), { description = "Open browser" })
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd(browser .. " --private-window"), { description = "Open private browser window" })
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd(terminal), { description = "Open terminal" })
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager), { description = "Open file manager" })
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(notes), { description = "Open notes" })
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(taskManager), { description = "Open task manager" })
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(wallpapers), { description = "Open wallpaper picker" })
hl.bind(mainMod .. " + M", hl.dsp.exec_raw(mail), { description = "Open mail client" })
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_raw(menu), { description = "Open app launcher" })
hl.bind("CTRL + SPACE", hl.dsp.exec_cmd(dashboard), { description = "Open control center" })
hl.bind(mainMod .. " + SHIFT + TAB", hl.dsp.exec_cmd(ipc .. "bar-toggle"), { description = "Toggle bar" })
hl.bind(mainMod .. " + TAB", hl.dsp.exec_cmd(ipc .. "bar-toggle side"), { description = "Toggle side bar" })
hl.bind("ALT + SPACE", hl.dsp.exec_raw(menu), { description = "Open app launcher" })

-- System
hl.bind(mainMod .. " + C", hl.dsp.window.close(), { description = "Close focused window" })
hl.bind(mainMod .. " + CTRL + M", hl.dsp.exit(), { description = "Exit Hyprland session" })
hl.bind(mainMod .. " + ALT + L", hl.dsp.exec_cmd("loginctl lock-session"), { description = "Lock session" })
hl.bind("SUPER + CTRL + SPACE", hl.dsp.exec_cmd(powermenu), { description = "Open power menu" })
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload"), { description = "Reload Hyprland config" })
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(clipboard), { description = "Open clipboard history" })
hl.bind(mainMod .. "  + S", hl.dsp.exec_cmd(settings_panel), { description = "Open settings panel" })

-- Window management
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle floating" })
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle floating" })
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.pin(), { description = "Pin window" })
hl.bind(mainMod .. " + CTRL + F", hl.dsp.window.cycle_next({ next = true }), { description = "Cycle to next window" })
hl.bind("F11", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }), { description = "Toggle fullscreen" })
hl.bind(mainMod .. " + CTRL + v", hl.dsp.window.pseudo(), { description = "Toggle pseudo-tiling" })
hl.bind(mainMod .. " + SHIFT + v", hl.dsp.layout("togglesplit"), { description = "Toggle split direction" })

-- Screenshots
-- hl.bind("CTRL + SHIFT + PRINT",     hl.dsp.exec_cmd("hyprshot -m output"))
-- hl.bind("CTRL + PRINT",             hl.dsp.exec_cmd("hyprshot -m window"))
-- hl.bind("PRINT",                    hl.dsp.exec_cmd("hyprshot -m region"))
-- hl.bind("PRINT", hl.dsp.exec_cmd(screenshot))
-- hl.bind(mainMod .. " + PRINT", hl.dsp.exec_cmd("ambxst run tools"))

-- Focus (vim motions)
hl.bind(mainMod .. " + h", hl.dsp.focus({ direction = "left" }), { description = "Focus window left" })
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "right" }), { description = "Focus window right" })
hl.bind(mainMod .. " + k", hl.dsp.focus({ direction = "up" }), { description = "Focus window up" })
hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "down" }), { description = "Focus window down" })

-- Move windows (vim motions)
hl.bind(mainMod .. " + SHIFT + h", hl.dsp.window.move({ direction = "l" }), { description = "Move window left" })
hl.bind(mainMod .. " + SHIFT + l", hl.dsp.window.move({ direction = "r" }), { description = "Move window right" })
hl.bind(mainMod .. " + SHIFT + k", hl.dsp.window.move({ direction = "u" }), { description = "Move window up" })
hl.bind(mainMod .. " + SHIFT + j", hl.dsp.window.move({ direction = "d" }), { description = "Move window down" })

-- Resize windows (vim motions) — use pixel step, not percentage string
hl.bind(mainMod .. " + CTRL + h", hl.dsp.window.resize({ x = -resizeSpd, y = 0, relative = true }), { description = "Shrink window width" })
hl.bind(mainMod .. " + CTRL + l", hl.dsp.window.resize({ x = resizeSpd, y = 0, relative = true }), { description = "Grow window width" })
hl.bind(mainMod .. " + CTRL + k", hl.dsp.window.resize({ x = 0, y = -resizeSpd, relative = true }), { description = "Shrink window height" })
hl.bind(mainMod .. " + CTRL + j", hl.dsp.window.resize({ x = 0, y = resizeSpd, relative = true }), { description = "Grow window height" })

-- Workspace switching
hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }), { description = "Switch to workspace 1" })
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }), { description = "Switch to workspace 2" })
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }), { description = "Switch to workspace 3" })
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }), { description = "Switch to workspace 4" })
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }), { description = "Switch to workspace 5" })
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }), { description = "Switch to workspace 6" })
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }), { description = "Switch to workspace 7" })
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }), { description = "Switch to workspace 8" })
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }), { description = "Switch to workspace 9" })
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 10 }), { description = "Switch to workspace 10" })
hl.bind(mainMod .. " + o", hl.dsp.focus({ workspace = "e+1" }), { description = "Focus next workspace" })
hl.bind(mainMod .. " + i", hl.dsp.focus({ workspace = "e-1" }), { description = "Focus previous workspace" })
hl.bind(mainMod .. " + CTRL + o", hl.dsp.focus({ workspace = "+1" }), { description = "Focus next workspace (relative)" })
hl.bind(mainMod .. " + CTRL + i", hl.dsp.focus({ workspace = -1 }), { description = "Focus previous workspace (relative)" })

-- Move window to workspace
hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }), { description = "Move window to workspace 1" })
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }), { description = "Move window to workspace 2" })
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }), { description = "Move window to workspace 3" })
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }), { description = "Move window to workspace 4" })
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }), { description = "Move window to workspace 5" })
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }), { description = "Move window to workspace 6" })
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }), { description = "Move window to workspace 7" })
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }), { description = "Move window to workspace 8" })
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }), { description = "Move window to workspace 9" })
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }), { description = "Move window to workspace 10" })
hl.bind(mainMod .. " + SHIFT + o", hl.dsp.window.move({ workspace = "+1" }), { description = "Move window to next workspace" })
hl.bind(mainMod .. " + SHIFT + i", hl.dsp.window.move({ workspace = -1 }), { description = "Move window to previous workspace" })

-- Move workspace to monitor
hl.bind(mainMod .. " + CTRL + 1", hl.dsp.workspace.move({ workspace = mainMonitor, monitor = "1" }), { description = "Move workspace to monitor 1" })
hl.bind(mainMod .. " + CTRL + 2", hl.dsp.workspace.move({ workspace = mainMonitor, monitor = "2" }), { description = "Move workspace to monitor 2" })
hl.bind(mainMod .. " + CTRL + 3", hl.dsp.workspace.move({ workspace = mainMonitor, monitor = "3" }), { description = "Move workspace to monitor 3" })
hl.bind(mainMod .. " + CTRL + 4", hl.dsp.workspace.move({ workspace = mainMonitor, monitor = "4" }), { description = "Move workspace to monitor 4" })
hl.bind(mainMod .. " + CTRL + 5", hl.dsp.workspace.move({ workspace = mainMonitor, monitor = "5" }), { description = "Move workspace to monitor 5" })
hl.bind(mainMod .. " + CTRL + 6", hl.dsp.workspace.move({ workspace = mainMonitor, monitor = "6" }), { description = "Move workspace to monitor 6" })
hl.bind(mainMod .. " + CTRL + 7", hl.dsp.workspace.move({ workspace = mainMonitor, monitor = "7" }), { description = "Move workspace to monitor 7" })
hl.bind(mainMod .. " + CTRL + 8", hl.dsp.workspace.move({ workspace = mainMonitor, monitor = "8" }), { description = "Move workspace to monitor 8" })
hl.bind(mainMod .. " + CTRL + 9", hl.dsp.workspace.move({ workspace = mainMonitor, monitor = "9" }), { description = "Move workspace to monitor 9" })
hl.bind(mainMod .. " + CTRL + 0", hl.dsp.workspace.move({ workspace = mainMonitor, monitor = "10" }), { description = "Move workspace to monitor 10" })

-- Special workspace (scratchpad)
hl.bind(mainMod .. " + x", hl.dsp.workspace.toggle_special("magic"), { description = "Toggle scratchpad workspace" })
hl.bind(mainMod .. " + SHIFT + x", hl.dsp.window.move({ workspace = "special:magic" }), { description = "Move window to scratchpad" })

-- Mouse workspace scrolling
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }), { description = "Scroll to next workspace" })
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }), { description = "Scroll to previous workspace" })

-- Mouse window drag / resize
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { description = "Drag window with mouse" })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { description = "Resize window with mouse" })

-- Media / volume
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up"), { locked = true, repeating = true, description = "Raise volume" })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down"), { locked = true, repeating = true, description = "Lower volume" })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"),
	{ locked = true, repeating = true, description = "Mute/unmute volume" })
hl.bind("CTRL + XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "mic-volume-up"), { locked = true, repeating = true, description = "Raise mic volume" })
hl.bind("CTRL + XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "mic-volume-down"), { locked = true, repeating = true, description = "Lower mic volume" })
hl.bind("CTRL + XF86AudioMute", hl.dsp.exec_cmd(ipc .. "mic-mute"),
	{ locked = true, repeating = true, description = "Mute/unmute microphone" })

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(ipc .. "mic-mute"),
	{ locked = true, repeating = true, description = "Mute/unmute microphone" })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up"), { locked = true, repeating = true, description = "Increase brightness" })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down"), { locked = true, repeating = true, description = "Decrease brightness" })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true, description = "Skip to next track" })

hl.bind("XF86AudioPause", hl.dsp.exec_cmd(ipc .. "media toggle"), { locked = true, description = "Play/pause media" })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd(ipc .. "media next"), { locked = true, description = "Next track" })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(ipc .. "media prev"), { locked = true, description = "Previous track" })
hl.bind("CTRL + XF86AudioNext", hl.dsp.exec_cmd(ipc .. "media next-player"), { locked = true, description = "Switch to next media player" })
hl.bind("CTRL + XF86AudioPrev", hl.dsp.exec_cmd(ipc .. "media prev-player"), { locked = true, description = "Switch to previous media player" })

hl.bind("ALT + TAB", hl.dsp.exec_cmd(window_switcher), { description = "Open window switcher" })
