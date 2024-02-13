local wezterm = require("wezterm")
local config = {}

config.defaul_prog = { "bash" }
-- Provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end
-- config.warn_anbout_missing_glyphs = false
config.webgpu_preferred_adapter = wezterm.gui.enumerate_gpus()[1]
config.enable_wayland = true
config.front_end = "WebGpu"

-- config.color_scheme = "Sandcastle (base16)"
-- config.color_scheme = "nordfox"
config.color_scheme = "nightfox"
-- config.color_scheme = "Sonokai (Gogh)"

config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.window_background_opacity = 0
config.text_background_opacity = 0.5

wezterm.on("update-right-status", function(window, pane)
	-- window:set_left_status(" ")
	window:set_right_status(" ")
end)

-- config.colors = {
-- 	-- Kaolin aurora, copy from kitty
-- 	foreground = "#e6e6e8",
-- 	background = "#14191e",
-- 	cursor_bg = "#e6e6e8",
-- 	cursor_fg = "#14191e",
-- 	cursor_border = "#e6e6e8",
-- 	selection_fg = "#14191e",
-- 	selection_bg = "#e6e6e8",
-- 	split = "#49bdb0",
-- 	ansi = { "#14191e", "#e55c7a", "#31e183", "#f5c791", "#4ca6e8", "#7cf083", "#49bfb0", "#e6e6e8" },
-- 	brights = { "#454459", "#cd5c60", "#7cf083", "#dbac66", "#91b9c7", "#6e6884", "#0d9c94", "#f2f2f2" },
-- 	indexed = {},
-- }

-- Kanagawa
config.force_reverse_video_cursor = true
-- config.colors = {
-- 	foreground = "#dcd7ba",
-- 	background = "#1f1f28",

-- 	cursor_bg = "#c8c093",
-- 	cursor_fg = "#c8c093",
-- 	cursor_border = "#c8c093",

-- 	selection_fg = "#c8c093",
-- 	selection_bg = "#2d4f67",

-- 	scrollbar_thumb = "#16161d",
-- 	split = "#16161d",

-- 	ansi = { "#090618", "#c34043", "#76946a", "#c0a36e", "#7e9cd8", "#957fb8", "#6a9589", "#c8c093" },
-- 	brights = { "#727169", "#e82424", "#98bb6c", "#e6c384", "#7fb4ca", "#938aa9", "#7aa89f", "#dcd7ba" },
-- 	indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
-- }

config.font = wezterm.font("JetBrains Mono NF", { weight = "Bold", italic = false })
return config
