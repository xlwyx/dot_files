local wezterm = require("wezterm")

return {

  colors = {
      -- The default text color
      foreground = "#813f0b",
      -- The default background color
      background = "#0f52ba",

      -- Overrides the cell background color when the current cell is occupied by the
      -- cursor and the cursor style is set to Block
      cursor_bg = "#52ad70",
      -- Overrides the text color when the current cell is occupied by the cursor
      cursor_fg = "black",
      -- Specifies the border color of the cursor when the cursor style is set to Block,
      -- or the color of the vertical or horizontal bar when the cursor style is set to
      -- Bar or Underline.
      cursor_border = "#52ad70",

      -- the foreground color of selected text
      selection_fg = "black",
      -- the background color of selected text
      selection_bg = "#fffacd",

      -- The color of the scrollbar "thumb"; the portion that represents the current viewport
      scrollbar_thumb = "#222222",

      -- The color of the split lines between panes
      split = "#444444",

      ansi = {"black", "maroon", "green", "olive", "navy", "purple", "teal", "silver"},
      brights = {"grey", "red", "lime", "yellow", "blue", "fuchsia", "aqua", "white"},

      -- Arbitrary colors of the palette in the range from 16 to 255
      indexed = {[136] = "#af8700"},

      -- Since: 20220319-142410-0fcdea07
      -- When the IME, a dead key or a leader key are being processed and are effectively
      -- holding input pending the result of input composition, change the cursor
      -- to this color to give a visual cue about the compose state.
      compose_cursor = "orange",
  },
  
  window_frame = {
    -- The font used in the tab bar.
    -- Roboto Bold is the default; this font is bundled
    -- with wezterm.
    -- Whatever font is selected here, it will have the
    -- main font setting appended to it to pick up any
    -- fallback fonts you may have used there.
    font = wezterm.font({family="Roboto", weight="Bold"}),

    -- The size of the font in the tab bar.
    -- Default to 10. on Windows but 12.0 on other systems
    font_size = 12.0,

    -- The overall background color of the tab bar when
    -- the window is focused
    active_titlebar_bg = "#ffe5b4",

    -- The overall background color of the tab bar when
    -- the window is not focused
    inactive_titlebar_bg = "#fffdd0",
  },

  colors = {
    tab_bar = {
      -- The color of the inactive tab bar edge/divider
      inactive_tab_edge = "#a45a52",
    },
  },

  -- You can specify some parameters to influence the font selection;
  -- for example, this selects a Bold, Italic font variant.
  font = wezterm.font("Fantasque Sans", {weight="Bold"}),
  harfbuzz_features = {"calt=0", "clig=0", "liga=0"},
  font = wezterm.font_with_fallback({
    "Fira Code",
    "Fira Sans",
    "Roboto",
    "Droid",
  }),

  font_shaper = "Harfbuzz",
  force_reverse_video_cursor = true,
  exit_behavior = "Hold",
  default_cursor_style = "SteadyBlock",

  window_background_gradient = {
    -- Can be "Vertical" or "Horizontal".  Specifies the direction
    -- in which the color gradient varies.  The default is "Horizontal",
    -- with the gradient going from left-to-right.
    -- Radial gradients are also supported; see the other example below
    orientation = "Vertical",

    -- Specifies the set of colors that are interpolated in the gradient.
    -- Accepts CSS style color specs, from named colors, through rgb
    -- strings and more
    colors = {
      "#131e3a",
      "#003151",
      "#1c2951"
    },

    -- Instead of specifying `colors`, you can use one of a number of
    -- predefined, preset gradients.
    -- A list of presets is shown in a section below.
    -- preset = "Warm",

    -- Specifies the interpolation style to be used.
    -- "Linear", "Basis" and "CatmullRom" as supported.
    -- The default is "Linear".
    interpolation = "Linear",

    -- How the colors are blended in the gradient.
    -- "Rgb", "LinearRgb", "Hsv" and "Oklab" are supported.
    -- The default is "Rgb".
    blend = "Rgb",

    -- To avoid vertical color banding for horizontal gradients, the
    -- gradient position is randomly shifted by up to the `noise` value
    -- for each pixel.
    -- Smaller values, or 0, will make bands more prominent.
    -- The default value is 64 which gives decent looking results
    -- on a retina macbook pro display.
    -- noise = 64,

    -- By default, the gradient smoothly transitions between the colors.
    -- You can adjust the sharpness by specifying the segment_size and
    -- segment_smoothness parameters.
    -- segment_size configures how many segments are present.
    -- segment_smoothness is how hard the edge is; 0.0 is a hard edge,
    -- 1.0 is a soft edge.

    -- segment_size = 11,
    -- segment_smoothness = 0.0,
  },

  -- This increases color saturation by 50%
  foreground_text_hsb = {
    hue = 0.1,
    saturation = 1.0,
    brightness = 0.8,
  },

  hide_tab_bar_if_only_one_tab = true,

  -- This tells wezterm to look first for fonts in the directory named
  -- `fonts` that is found alongside your `wezterm.lua` file.
  -- As this option is an array, you may list multiple locations if
  -- you wish.
  font_dirs = {"Daddy Time Mono"},

  -- Launch a command on Working Directory	
  label = "List files in /home/tuxi/",
  args = {"ls", "-al"},
  cwd = "/home/tuxi/",
  
  -- This shows a animation
  animation_fps = 1,
  
  window_backbground_opacity = 0.3,
  text_background_opacity = 0.2,

  -- How many lines of scrollback you want to retain per tab
  scrollback_lines = 3500,
  -- Enable the scrollbar.
  -- It will occupy the right window padding space.
  -- If right padding is set to 0 then it will be increased
  -- to a single cell width
  enable_scroll_bar = true,
}


