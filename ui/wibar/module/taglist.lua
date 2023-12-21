local awful = require('awful')

local mod    = require('binds.mod')
local modkey = mod.modkey

return function(s)
   -- Create a taglist widget
   return awful.widget.taglist({
      screen  = s,
      filter  = awful.widget.taglist.filter.all,
      buttons = {
         -- Left-clicking a tag changes to it.
         awful.button(nil, 1, function(t) t:view_only() end),
         -- Mod + Left-clicking a tag sends the currently focused client to it.
         awful.button({ modkey }, 1, function(t)
            if client.focus then
               client.focus:move_to_tag(t)
            end
         end),
         -- Right-clicking a tag makes its contents visible in the current one.
         awful.button(nil, 3, awful.tag.viewtoggle),
         -- Mod + Right-clicking a tag makes the currently focused client visible 
         -- in it.
         awful.button({ modkey }, 3, function(t)
            if client.focus then
               client.focus:toggle_tag(t)
            end
         end),
         -- Mousewheel scrolling cycles through tags.
         awful.button(nil, 4, function(t) awful.tag.viewprev(t.screen) end),
         awful.button(nil, 5, function(t) awful.tag.viewnext(t.screen) end)
      }
   })
end
