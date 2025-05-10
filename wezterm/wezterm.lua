-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.font = wezterm.font 'FiraCode Nerd Font Mono'
config.initial_cols = 120
config.initial_rows = 35
config.enable_tab_bar = false
config.window_background_opacity = 0.9



-- For example, changing the color scheme:
config.color_scheme = 'GruvboxLight'

-- and finally, return the configuration to wezterm
return config
