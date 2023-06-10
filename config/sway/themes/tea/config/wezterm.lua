local wezterm = require 'wezterm'

local opacity = 0.95

return {
  colors = {
    -- The default text color
    foreground = '#DFC7B1',
    -- The default background color
    background = '#0C0A08',

    -- Overrides the cell background color when the current cell is occupied by the
    -- cursor and the cursor style is set to Block
    cursor_bg = '#DFC7B1',
    -- Overrides the text color when the current cell is occupied by the cursor
    cursor_fg = '#0C0A08',
    -- Specifies the border color of the cursor when the cursor style is set to Block,
    -- or the color of the vertical or horizontal bar when the cursor style is set to
    -- Bar or Underline.
    cursor_border = '#DFC7B1',

    ansi = {
      '#0C0A08',
      '#DD9D6E',
      '#CBA179',
      '#CBA179',
      '#B39C8B',
      '#E2AB97',
      '#DFC7B1',
      '#E7DCD1',
    },
    brights = {
      '#a19a92',
      '#DD9D6E',
      '#CBA179',
      '#CBA179',
      '#B39C8B',
      '#E2AB97',
      '#DFC7B1',
      '#E7DCD1',
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
  window_background_opacity = opacity
}
