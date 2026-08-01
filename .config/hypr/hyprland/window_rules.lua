-- Battery warning (yad)
hl.window_rule({ match = { class = "^(yad)$" }, float = true, pin = true, stay_focused = true })

-- Zoom rules
hl.window_rule({ match = { class = "org-eclipse-core-internal-jobs-Worker" }, stay_focused = true })

hl.window_rule({ match = { title = "^(menu window)$",    class = "^(zoom)$" }, stay_focused = true })
hl.window_rule({ match = { title = "^(confirm window)$", class = "^(zoom)$" }, stay_focused = true })
hl.window_rule({ match = { title = "^(Send chat to…)$",  class = "^(zoom)$" }, stay_focused = true })

hl.window_rule({ match = { title = "^(move window)$",    class = "^(zoom)$" }, stay_focused = true, move = "onscreen cursor" })
hl.window_rule({ match = { title = "^(Send chat to…)$",  class = "^(zoom)$" }, move = "onscreen cursor" })
hl.window_rule({ match = { title = "^(menu window)$",    class = "^(zoom)$" }, move = "onscreen cursor" })
hl.window_rule({ match = { title = "^(confirm window)$", class = "^(zoom)$" }, move = "onscreen cursor" })

-- Floating opacity
hl.window_rule({ match = { float = true }, opacity = "1.0 override 1.0 override" })

-- Float rules
hl.window_rule({ match = { class = "waypaper" },                   float = true })
hl.window_rule({ match = { title = "^(Picture-in-Picture)$" },     float = true })

-- XWayland nofocus fix
hl.window_rule({
    match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false },
    no_focus = true,
})

hl.window_rule({
    match = { class = "dev.noctalia.Noctalia" },
    float = true,
    pin = true,
    size = { 1080, 920 },
})
hl.layer_rule({
	name = "noctalia",
	match = {
		namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
	},
	no_anim = true,
	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})
