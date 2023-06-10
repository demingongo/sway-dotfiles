local wezterm = require 'wezterm'

local dimmer = { brightness = 0.05, }
local opacity = 0.90

return {
  colors = {
    -- The default text color
    foreground = '#d3ceb5',
    -- The default background color
    background = '#000000',

    -- Overrides the cell background color when the current cell is occupied by the
    -- cursor and the cursor style is set to Block
    cursor_bg = '#d0dfdc',
    -- Overrides the text color when the current cell is occupied by the cursor
    cursor_fg = '#181712',
    -- Specifies the border color of the cursor when the cursor style is set to Block,
    -- or the color of the vertical or horizontal bar when the cursor style is set to
    -- Bar or Underline.
    --cursor_border = '#52ad70',

    -- the foreground color of selected text
    selection_fg = '#000000',
    -- the background color of selected text
    selection_bg = '#d3ceb5',

    -- The color of the scrollbar "thumb"; the portion that represents the current viewport
    --scrollbar_thumb = '#222222',

    -- The color of the split lines between panes
    --split = '#444444',

    ansi = {
      '#000000',
      '#73716b',
      '#75898a',
      '#8d8878',
      '#896e68',
      '#a4a39a',
      '#d3ceb5',
      '#d0dfdc',
    },
    brights = {
      '#919c91',
      '#73716b',
      '#75898a',
      '#8d8878',
      '#896e68',
      '#a4a39a',
      '#d3ceb5',
      '#d0dfdc',
    },

    -- Since: 20220319-142410-0fcdea07
    -- When the IME, a dead key or a leader key are being processed and are effectively
    -- holding input pending the result of input composition, change the cursor
    -- to this color to give a visual cue about the compose state.
    compose_cursor = 'orange',
  },


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
}
