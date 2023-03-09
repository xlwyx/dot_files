local wezterm = require('wezterm')

return {

  colors = {
    -- The default text color
    foreground = '#afe7b6',
    -- The default background color
    background = '#280053',

    -- Overrides the cell background color when the current cell is occupied by the
    -- cursor and the cursor style is set to Block
    cursor_bg = '#04395e',
    -- Overrides the text color when the current cell is occupied by the cursor
    cursor_fg = 'black',
    -- Specifies the border color of the cursor when the cursor style is set to Block,
    -- or the color of the vertical or horizontal bar when the cursor style is set to
    -- Bar or Underline.
    cursor_border = '#fcf300',

    -- the foreground color of selected text
    selection_fg = '#1f7a8c',
    -- the background color of selected text
    selection_bg = '#aeb8fe',

    -- The color of the scrollbar "thumb"; the portion that represents the current viewport
    scrollbar_thumb = '#222222',

    -- The color of the split lines between panes
    split = '#444444',

    ansi = {'black', 'maroon', 'green', 'olive', 'navy', 'purple', 'teal', 'silver'},
    brights = {'grey', 'red', 'lime', 'yellow', 'blue', 'fuchsia', 'aqua', 'white'},

    -- Arbitrary colors of the palette in the range from 16 to 255
    indexed = {[136] = '#af8700'},

    -- Since: 20220319-142410-0fcdea07
    -- When the IME, a dead key or a leader key are being processed and are effectively
    -- holding input pending the result of input composition, change the cursor
    -- to this color to give a visual cue about the compose state.
    compose_cursor = 'fuchsia',
  },

  window_frame = {
    -- The font used in the tab bar.
    -- Roboto Bold is the default; this font is bundled
    -- with wezterm.
    -- Whatever font is selected here, it will have the
    -- main font setting appended to it to pick up any
    -- fallback fonts you may have used there.
    font = wezterm.font({family= 'Roboto', weight= 'Bold' }),

    -- The size of the font in the tab bar.
    -- Default to 10. on Windows but 12.0 on other systems
    font_size = 11.0,

    -- The overall background color of the tab bar when
    -- the window is focused
    active_titlebar_bg = '#b8918c',

    -- The overall background color of the tab bar when
    -- the window is not focused
    inactive_titlebar_bg = '#ff6666',
  },

  tab_bar = {
  -- The color of the inactive tab bar edge/divider
    inactive_tab_edge = '#00011e',
  },

  -- You can specify some parameters to influence the font selection;
  -- for example, this selects a Bold, Italic font variant.
  font = wezterm.font('JetBrains Mono', {weight ="Regular" }),
  harfbuzz_features = {'calt=0', 'clig=0', 'liga=0'},
  font = wezterm.font_with_fallback {
    'Hack NerdFont',
    'Droid',
  },

  font_shaper = 'Harfbuzz',
  force_reverse_video_cursor = true,
  exit_behavior = 'Hold',
  default_cursor_style = 'SteadyBlock',

  -- This increases color saturation by 50%
  foreground_text_hsb = {
    hue = 0.6,
    saturation = 0.7,
    brightness = 0.6,
  },

  hide_tab_bar_if_only_one_tab = true,

  -- This tells wezterm to look first for fonts in the directory named
  -- `fonts` that is found alongside your `wezterm.lua` file.
  -- As this option is an array, you may list multiple locations if
  -- you wish.
  font_dirs = {'Daddy Time Mono'},

  -- Launch a command on Working Directory	
  label = 'List files in /home/lwyx/ ',
  args = {'ls", "-al'},
  cwd = '/home/lwyx/ ',

  window_backbground_opacity = 0.9,
  text_background_opacity = 0.3,

  -- How many lines of scrollback you want to retain per tab
  scrollback_lines = 3500,
  -- Enable the scrollbar.
  -- It will occupy the right window padding space.
  -- If right padding is set to 0 then it will be increased
  -- to a single cell width
  enable_scroll_bar = true,
}

