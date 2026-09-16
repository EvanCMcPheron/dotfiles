NOCTALIA_IPC_CMD 	 = "noctalia msg "
TERMINAL_CMD     = "ghostty"
FILE_MANAGER_CMD  = "nautilus"
MENU_CMD         = NOCTALIA_IPC_CMD .. "panel-toggle launcher"
DASHBOARD_CMD    = NOCTALIA_IPC_CMD .. "panel-toggle control-center"
POWERMENU_CMD    = NOCTALIA_IPC_CMD .. "panel-toggle session"
CLIPBOARD_CMD    = NOCTALIA_IPC_CMD .. "panel-toggle clipboard"
SCREENSHOT_CMD   = NOCTALIA_IPC_CMD .. "screenshot-fullscreen"
SCREENSHOT_REGION_CMD   = NOCTALIA_IPC_CMD .. "screenshot-region"
CAFFEINE_CMD     = NOCTALIA_IPC_CMD .. "caffeine-toggle"
THEME_MODE_CMD   = NOCTALIA_IPC_CMD .. "theme-mode-toggle"
SETTINGS_PANEL_CMD   = NOCTALIA_IPC_CMD .. "settings-toggle"
WINDOW_SWITCHER_CMD = NOCTALIA_IPC_CMD .. "window-switcher"
MAIL_CMD         = "mailspring --password-store=\"gnome-libsecret\""
MAIN_MONITOR  = "eDP-1"
IDE_CMD           = "neovide"
BROWSER_CMD      = "firefox"
DISCORD_CMD      = "flatpak run dev.vencord.Vesktop"
TASK_MANAGER_CMD  = "kitty -e btop"
NOTES_CMD        = "obsidian"
WALLPAPERS_CMD   = "waypaper"
MAIN_MOD_KEY      = "SUPER"
BINDINGS_INFO_CMD = NOCTALIA_IPC_CMD .. "panel-toggle kenn/keybind-cheatsheet:cheatsheet"
RESIZE_STEP_PX    = 50  -- pixels; percentage strings ("-10% 0") are not supported by hl.dsp.resizeactive
PERSISTENT_WORKSPACES = false

MESSAGES_CLASS = "wah-zqxhL8v7"
MESSAGES_CMD = "firefox --class=".. MESSAGES_CLASS .. " --name=wah-zqxhL8v7 --profile=/home/etanheinmik/.var/app/org.pvermeer.WebAppHub/data/web-app-hub/profiles/firefox/zqxhL8v7 --no-remote https://messages.google.com/web"

MAIN_MONITOR_OUTPUT = "eDP-1"

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
dofile(cfg .. "battery_saver.lua")

-- For Noctalia Color templates
require("noctalia").apply_theme()
