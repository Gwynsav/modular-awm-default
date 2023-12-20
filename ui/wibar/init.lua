local awful = require('awful')
local wibox = require('wibox')

local module = require(... .. '.module')

return function(s)
   s.mypromptbox = awful.widget.prompt() -- Create a promptbox.

   -- Create the wibox
   s.mywibox = awful.wibar({
      position = 'top',
      screen   = s,
      widget   = {
         layout = wibox.layout.align.horizontal,
         -- Left widgets.
         {
            layout = wibox.layout.fixed.horizontal,
            module.launcher(),
            module.taglist(s),
            s.mypromptbox
         },
         -- Middle widgets.
         module.tasklist(s),
         -- Right widgets.
         {
            layout = wibox.layout.fixed.horizontal,
            awful.widget.keyboardlayout(), -- Keyboard map indicator and switcher.
            wibox.widget.systray(),
            wibox.widget.textclock(), -- Create a textclock widget.
            module.layoutbox(s)
         }
      }
   })
end
