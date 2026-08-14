ipc 		 = "noctalia msg "
terminal     = "ghostty"
fileManager  = "nautilus"
menu         = ipc .. "panel-toggle launcher"
dashboard    = ipc .. "panel-toggle control-center"
powermenu    = ipc .. "panel-toggle session"
clipboard    = ipc .. "panel-toggle clipboard"
screenshot   = ipc .. "screenshot-region"
screenrecord = ""
settings_panel   = ipc .. "settings-toggle"
window_switcher = ipc .. "window-switcher"
mail         = "mailspring --password-store=\"gnome-libsecret\""
mainMonitor  = "eDP-1"
IDE          = "neovide"
browser      = "firefox"
discord      = "flatpak run dev.vencord.Vesktop"
taskManager  = "kitty -e btop"
notes        = "obsidian"
wallpapers   = "waypaper"
mainMod      = "SUPER"
bindingsinfo = ipc .. "panel-toggle kenn/keybind-cheatsheet:cheatsheet"
resizeSpd    = 50  -- pixels; percentage strings ("-10% 0") are not supported by hl.dsp.resizeactive
persistant_workspaces = false

messages_class = "wah-zqxhL8v7"
messages = "firefox --class=".. messages_class .. " --name=wah-zqxhL8v7 --profile=/home/etanheinmik/.var/app/org.pvermeer.WebAppHub/data/web-app-hub/profiles/firefox/zqxhL8v7 --no-remote https://messages.google.com/web"

main_mon = "eDP-1"

SCRATCH_WORKSPACE = "special:webapp"

local cfg = os.getenv("HOME") .. "/.config/hypr/hyprland/"
dofile(cfg .. "monitors.lua")
dofile(cfg .. "env.lua")
dofile(cfg .. "animations.lua")
dofile(cfg .. "window_rules.lua")
dofile(cfg .. "config.lua")
dofile(cfg .. "keybinds.lua")
dofile(cfg .. "startup.lua")
dofile(cfg .. "plugins.lua")

-- For Noctalia Color templates
require("noctalia").apply_theme()
