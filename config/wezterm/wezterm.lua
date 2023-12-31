-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}
local act = wezterm.action

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- Example: config.color_scheme = 'AdventureTime'
config.color_scheme = 'Bamboo'

-- Setting up tab base
config.enable_tab_bar = false

-- Setting up the font size
config.font = wezterm.font('SF Mono Powerline', { weight = 'Regular'})
config.font_size = 15.0

---
-- Setting up window padding
--
config.window_padding = {
    top = 1, -- '0.5cell',
    left = 0, -- '0.5cell',
    right = 0, -- '0.5cell',
    bottom = 0, -- s'0.5cell',
}

--
-- Setting up keyboard shortcuts
-- 
config.disable_default_key_bindings = true
config.keys = {
    {
        key = 'w',
        mods = 'CMD',
        action = act.CloseCurrentTab{confirm=true},
    },
    {   
        key = 'm',
        mods = 'CMD',
        action = act.Hide,
    },  
    {   
        key = 'n',
        mods = 'CMD',
        action = act.SpawnWindow,
    },
    {
        key = 'c',
        mods = 'CMD',
        action = act.CopyTo 'Clipboard',
    },
    {
        key = 'v',
        mods = 'CMD',
        action = act.PasteFrom 'Clipboard',
    },
    {
        key = 'l',
        mods = 'CTRL',
        action = act.ClearScrollback 'ScrollbackAndViewport'
    },
}


-- Hide window title

-- and finally, return the configuration to wezterm
return config
