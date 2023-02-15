local wezterm = require 'wezterm'

local dimmer = { brightness = 0.05, }
local opacity = 0.90 

return {
    color_scheme = "Catppuccin Frappe",

    -- Disable crazy "SystemBeep"
    audible_bell = "Disabled",

    -- fallback fonts (for Jovial zsh theme)
    font = wezterm.font_with_fallback {
	'JetBrains Mono',
	'DejaVu Sans',
--	'Liberation Mono',
--	'Monaco',
	'Noto Looped Thai',
--	'Hack',
	'KanjiStrokeOrders',
    },

    hide_tab_bar_if_only_one_tab = true,

    -- Some background style
    window_background_opacity = opacity,
    window_background_image_hsb = dimmer,
    window_background_image = wezterm.home_dir .. "/.config/wezterm/original.gif",
}
