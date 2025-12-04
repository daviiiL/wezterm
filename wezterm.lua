local wezterm = require("wezterm")
local config = wezterm.config_builder()

local color_scheme, window_frame = require("colors").color_scheme, require("colors").window_frame

config.font_size = 12
config.colors = color_scheme

config.window_frame = {
	font = wezterm.font({
		family = "DepartureMono Nerd Font",
	}),
}

for k, v in pairs(window_frame) do
	config.window_frame[k] = v
end

return config
