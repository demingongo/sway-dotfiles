local wezterm = require 'wezterm'

local dimmer = { brightness = 0.05, }
local opacity = 0.90

return {
  colors = {
    -- The default text color
    foreground = '#e8838f',
    -- The default background color
    background = '#000000',

    -- Overrides the cell background color when the current cell is occupied by the
    -- cursor and the cursor style is set to Block
    cursor_bg = '#e8838f',
    -- Overrides the text color when the current cell is occupied by the cursor
    cursor_fg = '#181712',
    -- Specifies the border color of the cursor when the cursor style is set to Block,
    -- or the color of the vertical or horizontal bar when the cursor style is set to
    -- Bar or Underline.
    --cursor_border = '#52ad70',

    -- the foreground color of selected text
    selection_fg = '#1e1e2e',
    -- the background color of selected text
    selection_bg = '#d01b2c',

    -- The color of the scrollbar "thumb"; the portion that represents the current viewport
    --scrollbar_thumb = '#222222',

    -- The color of the split lines between panes
    --split = '#444444',

    ansi = {
      '#000000',
      '#a6121e',
      '#931523',
      '#b21627',
      '#b7202e',
      '#cf162b',
      '#d01b2c',
      '#e8838f',
    },
    brights = {
      '#a25b64',
      '#a6121e',
      '#931523',
      '#b21627',
      '#b7202e',
      '#cf162b',
      '#d01b2c',
      '#e8838f',
    },

    -- Since: 20220319-142410-0fcdea07
    -- When the IME, a dead key or a leader key are being processed and are effectively
    -- holding input pending the result of input composition, change the cursor
    -- to this color to give a visual cue about the compose state.
    compose_cursor = 'orange',

    -- Colors for copy_mode and quick_select
    -- available since: 20220807-113146-c2fee766
    -- In copy_mode, the color of the active text is:
    -- 1. copy_mode_active_highlight_* if additional text was selected using the mouse
    -- 2. selection_* otherwise
    --copy_mode_active_highlight_bg = { Color = '#000000' },
    --copy_mode_active_highlight_fg = { AnsiColor = 'Black' },
    --copy_mode_inactive_highlight_bg = { Color = '#52ad70' },
    --copy_mode_inactive_highlight_fg = { AnsiColor = 'White' },

    --quick_select_label_bg = { Color = 'peru' },
    --quick_select_label_fg = { Color = '#ffffff' },
    --quick_select_match_bg = { AnsiColor = 'Navy' },
    --quick_select_match_fg = { Color = '#ffffff' },
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

  -- Some background style
  window_background_opacity = opacity,
  window_background_image_hsb = dimmer,
  window_background_image = wezterm.config_dir .. "/../assets/brsrk.gif",
}
