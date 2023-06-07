local wezterm = require 'wezterm'

local assets_dir = wezterm.config_dir .. "/../assets"

return {
  colors = {
    -- The default text color
    foreground = '#EEEE77',
    -- The default background color
    background = '#0088FF',

    -- Overrides the cell background color when the current cell is occupied by the
    -- cursor and the cursor style is set to Block
    cursor_bg = '#EEEE77',
    -- Overrides the text color when the current cell is occupied by the cursor
    cursor_fg = '#777777',
    -- Specifies the border color of the cursor when the cursor style is set to Block,
    -- or the color of the vertical or horizontal bar when the cursor style is set to
    -- Bar or Underline.
    --cursor_border = '#52ad70',

    -- the foreground color of selected text
    selection_fg = '#0000AA',
    -- the background color of selected text
    selection_bg = '#DD8855',

    -- The color of the scrollbar "thumb"; the portion that represents the current viewport
    scrollbar_thumb = '#AAFFEE',

    -- The color of the split lines between panes
    --split = '#444444',

    ansi = {
      '#000000',
      '#FFFFFF',
      '#880000',
      '#AAFFEE',
      '#CC44CC',
      '#00CC55',
      '#0000AA',
      '#EEEE77',
    },
    brights = {
      '#DD8855',
      '#664400',
      '#FF7777',
      '#333333',
      '#777777',
      '#AAFF66',
      '#0088FF',
      '#BBBBBB',
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

  enable_scroll_bar = false,
  min_scroll_bar_height = '2cell',


  background = {
    {
      source = {
        File = assets_dir .. '/uni_blue.png',
      },
      -- The texture tiles vertically but not horizontally.
      -- When we repeat it, mirror it so that it appears "more seamless".
      -- An alternative to this is to set `width = "100%"` and have
      -- it stretch across the display
      repeat_x = 'Mirror',
      --hsb = dimmer,
      -- When the viewport scrolls, move this layer 10% of the number of
      -- pixels moved by the main viewport. This makes it appear to be
      -- further behind the text.
      attachment = { Parallax = 0.1 },
    },
    -- Subsequent layers are rendered over the top of each other
    {
      source = {
        File = assets_dir .. '/2527397-robofly.png',
      },

      -- Size + repeat_x
      width = 50,
      height = 50,
      repeat_x = 'NoRepeat',

      vertical_offset = '0%',
      horizontal_align = 'Right',
      -- repeating every two screens.
      repeat_y_size = '300%',

      -- The parallax factor is higher than the background layer, so this
      -- one will appear to be closer when we scroll
      attachment = { Parallax = 0.2 },
    },
    {
      source = {
        File = assets_dir .. '/2527398-doramary.png',
      },

      -- Size + repeat_x
      width = 50,
      height = 50,
      repeat_x = 'NoRepeat',

      vertical_offset = '100%',
      horizontal_align = 'Right',
      -- repeating every two screens.
      repeat_y_size = '300%',

      -- The parallax factor is higher than the background layer, so this
      -- one will appear to be closer when we scroll
      attachment = { Parallax = 0.2 },
    },
    {
      source = {
        File = assets_dir .. '/2527396-madtumbler.png',
      },

      -- Size + repeat_x
      width = 50,
      height = 50,
      repeat_x = 'NoRepeat',

      vertical_offset = '200%',
      horizontal_align = 'Right',
      -- repeating every two screens.
      repeat_y_size = '300%',

      -- The parallax factor is higher than the background layer, so this
      -- one will appear to be closer when we scroll
      attachment = { Parallax = 0.2 },
    }
  },


  -- Disable crazy "SystemBeep"
  audible_bell = "Disabled",

  -- fallback fonts (for Jovial zsh theme)
  font = wezterm.font_with_fallback {
    'Commodore 64 Rounded',
    'JetBrains Mono',
    'DejaVu Sans',
    --	'Liberation Mono',
    --	'Monaco',
    'Noto Looped Thai',
    --	'Hack',
    'KanjiStrokeOrders',
  },

  hide_tab_bar_if_only_one_tab = true
}
