local wezterm = require 'wezterm'

local dimmer = { brightness = 0.05, }
local opacity = 0.90

local assets_dir = wezterm.config_dir .. "/../assets"

local COLORS = {
  '#192f21',
  '#409866',
  '#44a26d',
  '#bd843e',
  '#b39247',
  '#e39a49',
  '#d7a54e',
  '#eedaa5',
  '#a69873',
  '#409866',
  '#44a26d',
  '#bd843e',
  '#b39247',
  '#e39a49',
  '#d7a54e',
  '#eedaa5'
}

return {
  colors = {
    -- The default text color
    foreground = COLORS[8],
    -- The default background color
    background = COLORS[1],

    -- Overrides the cell background color when the current cell is occupied by the
    -- cursor and the cursor style is set to Block
    cursor_bg = COLORS[10],
    -- Overrides the text color when the current cell is occupied by the cursor
    cursor_fg = COLORS[1],
    -- Specifies the border color of the cursor when the cursor style is set to Block,
    -- or the color of the vertical or horizontal bar when the cursor style is set to
    -- Bar or Underline.
    cursor_border = COLORS[10],

    -- the foreground color of selected text
    selection_fg = COLORS[1],
    -- the background color of selected text
    selection_bg = COLORS[8],

    -- The color of the scrollbar "thumb"; the portion that represents the current viewport
    --scrollbar_thumb = '#222222',

    -- The color of the split lines between panes
    --split = '#444444',

    ansi = {
      COLORS[1],
      COLORS[2],
      COLORS[3],
      COLORS[4],
      COLORS[5],
      COLORS[6],
      COLORS[7],
      COLORS[8],
    },
    brights = {
      COLORS[9],
      COLORS[10],
      COLORS[11],
      COLORS[12],
      COLORS[13],
      COLORS[14],
      COLORS[15],
      COLORS[16],
    }
  },


  -- Disable crazy "SystemBeep"
  audible_bell = "Disabled",

  -- fallback fonts (for Jovial zsh theme)
  font = wezterm.font_with_fallback {
    'Source Code Pro Semibold',
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
  window_background_image = assets_dir .. "/foxhound.jpg",
}
