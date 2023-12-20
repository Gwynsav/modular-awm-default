local awful = require('awful')

local mod    = require('binds.mod')
local modkey = mod.modkey

return function(s)
   -- Create a taglist widget
   return awful.widget.taglist({
      screen  = s,
      filter  = awful.widget.taglist.filter.all,
      buttons = {
         awful.button(nil, 1, function(t) t:view_only() end),
         awful.button({ modkey }, 1, function(t)
            if client.focus then
               client.focus:move_to_tag(t)
            end
         end),
         awful.button(nil, 3, awful.tag.viewtoggle),
         awful.button({ modkey }, 3, function(t)
            if client.focus then
               client.focus:toggle_tag(t)
            end
         end),
         awful.button(nil, 4, function(t) awful.tag.viewprev(t.screen) end),
         awful.button(nil, 5, function(t) awful.tag.viewnext(t.screen) end)
      }
   })
end
