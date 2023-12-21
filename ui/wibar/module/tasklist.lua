local awful = require('awful')

return function(s)
   -- Create a tasklist widget
   return awful.widget.tasklist({
      screen  = s,
      filter  = awful.widget.tasklist.filter.currenttags,
      buttons = {
         -- Left-clicking a client indicator minimizes it if it's unminimized, or unminimizes
         -- it if it's minimized.
         awful.button(nil, 1, function(c)
            c:activate({ context = 'tasklist', action = 'toggle_minimization' })
         end),
         -- Right-clicking a client indicator shows the list of all open clients in all visible 
         -- tags.
         awful.button(nil, 3, function() awful.menu.client_list({ theme = { width = 250 } }) end),
         -- Mousewheel scrolling cycles through clients.
         awful.button(nil, 4, function() awful.client.focus.byidx(-1) end),
         awful.button(nil, 5, function() awful.client.focus.byidx( 1) end)
      }
   })
end
