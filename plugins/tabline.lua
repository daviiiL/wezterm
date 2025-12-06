local wezterm = require("wezterm")
local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

local colors = require("colors")
local color_scheme = colors.color_scheme

tabline.set_theme("catppuccin-mocha")

tabline.setup({
	options = {
		icons_enabled = true,
		-- dynamic theming
		-- theme_overrides = {
		-- 	normal_mode = {
		-- 		a = { bg = color_scheme.background, fg = color_scheme.foreground },
		-- 		b = { bg = color_scheme.background, fg = color_scheme.foreground },
		-- 		c = { bg = color_scheme.background, fg = color_scheme.foreground },
		-- 	},
		-- 	copy_mode = {
		-- 		a = { bg = color_scheme.background, fg = color_scheme.foreground },
		-- 		b = { bg = color_scheme.background, fg = color_scheme.foreground },
		-- 		c = { bg = color_scheme.background, fg = color_scheme.foreground },
		-- 	},
		-- 	search_mode = {
		-- 		a = { bg = color_scheme.background, fg = color_scheme.foreground },
		-- 		b = { bg = color_scheme.background, fg = color_scheme.foreground },
		-- 		c = { bg = color_scheme.background, fg = color_scheme.foreground },
		-- 	},
		-- 	tab = {
		-- 		active = {
		-- 			fg = color_scheme.tab_bar.active_tab.fg_color,
		-- 			bg = color_scheme.tab_bar.active_tab.bg_color,
		-- 		},
		-- 		inactive = {
		-- 			fg = color_scheme.tab_bar.inactive_tab.fg_color,
		-- 			bg = color_scheme.tab_bar.inactive_tab.bg_color,
		-- 		},
		-- 		inactive_hover = {
		-- 			fg = color_scheme.tab_bar.inactive_tab_hover.fg_color,
		-- 			bg = color_scheme.tab_bar.inactive_tab_hover.bg_color,
		-- 		},
		-- 	},
		-- },
	},
})

return tabline
