local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_close_confirmation = "NeverPrompt"
config.font = wezterm.font({
	family = "JetBrainsMono Nerd Font Mono",
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
})
config.colors = {}
config.force_reverse_video_cursor = true

return config
