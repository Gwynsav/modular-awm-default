local awful = require('awful')

return function(s)
   -- Create an imagebox widget which will contain an icon indicating which layout we're using.
   -- We need one layoutbox per screen.
   return awful.widget.layoutbox({
      screen  = s,
      buttons = {
         awful.button(nil, 1, function() awful.layout.inc( 1) end),
         awful.button(nil, 3, function() awful.layout.inc(-1) end),
         awful.button(nil, 4, function() awful.layout.inc(-1) end),
         awful.button(nil, 5, function() awful.layout.inc( 1) end)
      }
   })
end
