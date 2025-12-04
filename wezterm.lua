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

config.window_close_confirmation = "NeverPrompt"

for k, v in pairs(window_frame) do
	config.window_frame[k] = v
end

wezterm.on("update-right-status", function(window, pane)
	local pname = pane:get_foreground_process_name()

	if pname and pname:find("n?vim") then
		window:set_config_overrides({
			font = wezterm.font("SauceCodePro Nerd Font"),
			font_size = 12,
		})
	else
		window:set_config_overrides({
			font = wezterm.font("DepartureMono Nerd Font"),
			font_size = 12,
		})
	end
end)

return config
