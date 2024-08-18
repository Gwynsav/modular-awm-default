local awful = require('awful')

--- Global mouse bindings
awful.mouse.append_global_mousebindings({
   awful.button(nil, 3, function() require('ui.menu').main:toggle() end),
   awful.button(nil, 4, awful.tag.viewprev),
   awful.button(nil, 5, awful.tag.viewnext)
})
