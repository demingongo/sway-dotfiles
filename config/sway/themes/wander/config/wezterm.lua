local wezterm = require 'wezterm'

local base = require 'wezterm-wander-base'

local bg_image = 'colorful-cat.jpg'

base.window_background_image = wezterm.config_dir .. "/../assets/" .. bg_image

return base
