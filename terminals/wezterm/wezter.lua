local wezterm = require 'wezterm'
return {
  term = 'wezterm',

  colors = {
  -- The default text color
  foreground = '#bae1ff',
  -- The default background color
  background = '#28002b',

  -- Overrides the cell background color when the current cell is occupied by the
  -- cursor and the cursor style is set to Block
  cursor_bg = '#00bc10',
  -- Overrides the text color when the current cell is occupied by the cursor
  cursor_fg = 'black',
  -- Specifies the border color of the cursor when the cursor style is set to Block,
  -- or the color of the vertical or horizontal bar when the cursor style is set to
  -- Bar or Underline.
  cursor_border = '#fcf300',

  -- the foreground color of selected text
  selection_fg = '#ff0081',
  -- the background color of selected text
  selection_bg = '#004923',

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
  
  font = wezterm.font_with_fallback({
      "iosevka",
      "Fantasque San",
      "hack"
      }),
  font_size = 11.0,
  bold_brightens_ansi_colors = true,

  -- This increases color saturation by 50%
  foreground_text_hsb = {
    hue = 0.8,
    saturation = 0.6,
    brightness = 0.7,
  },

  -- This tells wezterm to look first for fonts in the directory named
  -- `fonts` that is found alongside your `wezterm.lua` file.
  -- As this option is an array, you may list multiple locations if
  -- you wish.
  font_dirs = {'Daddy Time Mono'},

  -- Launch a command on Working Directory	
  label = 'List files in /home/lwy/ ',
  args = {'ls", "-al'},
  cwd = '/home/lwy/ ',
  
  default_prog = {"/usr/bin/zsh", "-l"}, -- Spawn a zsh shell in login mode
  default_cwd = "$HOME",

  window_backbground_opacity = 0.9,
  text_background_opacity = 0.2,

  -- tab
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,  -- Smart tab bar [distraction-free mode]
  tab_bar_at_bottom = true,
  tab_max_width = 32,
  use_fancy_tab_bar = false,
  show_tab_index_in_tab_bar = false,
  switch_to_last_active_tab_when_closing_tab = true,
  show_new_tab_button_in_tab_bar = false,

  window_padding = {
    left = 10,
    right = 10,
    top = 5,
    bottom = 5,
    },

  window_decorations = "RESIZE",
  -- Initial window size on startup
  initial_rows = 21,
  initial_cols = 76,

  --Scrollback config
  enable_scroll_bar = true,
  --scrollback_lines = 5000, -- How many lines of scrollback you want to retain per tab (default is 3500)

}

