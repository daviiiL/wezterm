local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font_size = 14
config.color_scheme = "Oxocarbon Dark"
config.window_close_confirmation = "NeverPrompt"
config.freetype_load_target = "Light"

-- Enable Wayland and GTK window decorations
config.enable_wayland = true
config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"

-- Oxocarbon color palette
local oxocarbon = {
	base00 = "#161616", -- background
	base01 = "#262626", -- lighter background
	base02 = "#393939", -- selection background
	base03 = "#525252", -- comments
	base04 = "#dde1e6", -- dark foreground
	base05 = "#f2f4f8", -- default foreground
	base06 = "#ffffff", -- light foreground
	base07 = "#08bdba", -- cyan
	base08 = "#3ddbd9", -- bright cyan
	base09 = "#78a9ff", -- blue
	base0A = "#ee5396", -- magenta
	base0B = "#33b1ff", -- bright blue
	base0C = "#ff7eb6", -- pink
	base0D = "#42be65", -- green
	base0E = "#be95ff", -- purple
	base0F = "#82cfff", -- light blue
}

config.window_frame = {
	font = wezterm.font({
		family = "SauceCodePro Nerd Font Mono",
	}),
	active_titlebar_bg = oxocarbon.base00,
	inactive_titlebar_bg = oxocarbon.base01,
}

config.colors = {
	tab_bar = {
		background = oxocarbon.base00,
		active_tab = {
			bg_color = oxocarbon.base02,
			fg_color = oxocarbon.base05,
			intensity = "Normal",
			underline = "None",
			italic = false,
			strikethrough = false,
		},
		inactive_tab = {
			bg_color = oxocarbon.base01,
			fg_color = oxocarbon.base03,
		},
		inactive_tab_hover = {
			bg_color = oxocarbon.base02,
			fg_color = oxocarbon.base04,
			italic = false,
		},
		new_tab = {
			bg_color = oxocarbon.base00,
			fg_color = oxocarbon.base05,
		},
		new_tab_hover = {
			bg_color = oxocarbon.base09,
			fg_color = oxocarbon.base00,
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
