-- Theme handling library
local beautiful = require('beautiful')
-- Standard awesome library
local gears     = require('gears')

-- Themes define colours, icons, font and wallpapers.
beautiful.init(gears.filesystem.get_themes_dir() .. 'default/theme.lua')
