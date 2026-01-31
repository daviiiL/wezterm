local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font_size = 14
config.color_scheme = "Catppuccin Mocha"
config.window_close_confirmation = "NeverPrompt"
config.freetype_load_target = "Light"

local mocha = {
	rosewater = "#f5e0dc",
	flamingo = "#f2cdcd",
	pink = "#f5c2e7",
	mauve = "#cba6f7",
	red = "#f38ba8",
	maroon = "#eba0ac",
	peach = "#fab387",
	yellow = "#f9e2af",
	green = "#a6e3a1",
	teal = "#94e2d5",
	sky = "#89dceb",
	sapphire = "#74c7ec",
	blue = "#89b4fa",
	lavender = "#b4befe",
	text = "#cdd6f4",
	subtext1 = "#bac2de",
	subtext0 = "#a6adc8",
	overlay2 = "#9399b2",
	overlay1 = "#7f849c",
	overlay0 = "#6c7086",
	surface2 = "#585b70",
	surface1 = "#45475a",
	surface0 = "#313244",
	base = "#1e1e2e",
	mantle = "#181825",
	crust = "#11111b",
}

config.window_frame = {
	font = wezterm.font({
		family = "SauceCodePro Nerd Font Mono",
	}),
	active_titlebar_bg = mocha.base,
	inactive_titlebar_bg = mocha.mantle,
}

config.colors = {
	tab_bar = {
		background = mocha.crust,
		active_tab = {
			bg_color = mocha.surface2,
			fg_color = mocha.text,
			intensity = "Normal",
			underline = "None",
			italic = false,
			strikethrough = false,
		},
		inactive_tab = {
			bg_color = mocha.surface0,
			fg_color = mocha.subtext1,
		},
		inactive_tab_hover = {
			bg_color = mocha.surface1,
			fg_color = mocha.text,
			italic = false,
		},
		new_tab = {
			bg_color = mocha.crust,
			fg_color = mocha.text,
		},
		new_tab_hover = {
			bg_color = mocha.mauve,
			fg_color = mocha.crust,
			italic = false,
		},
	},
}

wezterm.on("update-right-status", function(window, pane)
	local pname = pane:get_foreground_process_name()

	if pname and pname:find("n?vim") then
		window:set_config_overrides({
			window_padding = {
				left = 0,
				right = 0,
				top = 0,
				bottom = 0,
			},
		})
	else
		window:set_config_overrides({
			window_padding = {
				left = 30,
				right = 30,
				top = 20,
				bottom = 20,
			},
		})
	end
end)

return config
