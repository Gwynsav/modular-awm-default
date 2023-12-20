local awful = require('awful')

-- Add a titlebar if titlebars_enabled is set to true in the rules.
client.connect_signal('request::titlebars', function(c)
   awful.titlebar(c).widget = require('ui.titlebar').normal(c)
end)

-- Enable sloppy focus, so that focus follows mouse.
client.connect_signal('mouse::enter', function(c)
   c:activate({ context = 'mouse_enter', raise = false })
end)
