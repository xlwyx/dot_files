local wezterm = require 'wezterm'

return {
  color_scheme = 'Batman',
    tab_bar = {
      -- The color of the strip that goes along the top of the window
      -- (does not apply when fancy tab bar is in use)
      background = '#402717',

      -- The active tab is the one that has focus in the window
      active_tab = {
        -- The color of the background area for the tab
        bg_color = '#2b2042',
        -- The color of the text for the tab
        fg_color = '#c0c0c0',

        -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
        -- label shown for this tab.
        -- The default is "Normal"
        intensity = 'Normal',

        -- Specify whether you want the text to be italic (true) or not (false)
        -- for this tab.  The default is false.
        italic = false,

        -- Specify whether you want the text to be rendered with strikethrough (true)
        -- or not for this tab.  The default is false.
        strikethrough = false,
      },

      -- Inactive tabs are the tabs that do not have focus
      inactive_tab = {
        bg_color = '#1b1032',
        fg_color = '#808080',

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `inactive_tab`.
      },

      -- You can configure some alternate styling when the mouse pointer
      -- moves over inactive tabs
      inactive_tab_hover = {
        bg_color = '#3b3052',
        fg_color = '#909090',
        italic = true,

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `inactive_tab_hover`.
      },

      -- The new tab button that let you create new tabs
      new_tab = {
        bg_color = '#1b1032',
        fg_color = '#808080',

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `new_tab`.
      },

      -- You can configure some alternate styling when the mouse pointer
      -- moves over the new tab button
      new_tab_hover = {
        bg_color = '#3b3055',
        fg_color = '#909092',
        italic = true,

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `new_tab_hover`.
      },
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

  -- You can specify some parameters to influence the font selection;
  -- for example, this selects a Bold, Italic font variant.
  font = wezterm.font('JetBrains Mono', {weight ="Bold", italic = true }),
  font = wezterm.font_with_fallback {
    'Hack NerdFont', weight = 'medium',
    'Droid',
  },

  font_shaper = 'Harfbuzz',
  force_reverse_video_cursor = true,
  exit_behavior = 'Hold',
  default_cursor_style = 'SteadyBlock',

  -- This increases color saturation by 50%
  foreground_text_hsb = {
    hue = 1.0,
    saturation = 1.0,
    brightneslss = 0.4,
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

  
  window_backbground_opacity = 1.2,
  text_foreground_opacity = 0.6,
  window_background_image = 'Pictures/piccas_img/Cool-Anime-Background.jpg',

  window_background_image_hsb = {
    -- Darken the background image by reducing it to 1/3rd
    brightness = 0.3,

    -- You can adjust the hue by scaling its value.
    -- a multiplier of 1.0 leaves the value unchanged.
    hue = 1.0,

    -- You can adjust the saturation also.
    saturation = 0.9,
  },

  -- How many lines of scrollback you want to retain per tab
  scrollback_lines = 3500,
  -- Enable the scrollbar.
  -- It will occupy the right window padding space.
  -- If right padding is set to 0 then it will be increased
  -- to a single cell width
  enable_scroll_bar = true,
}
