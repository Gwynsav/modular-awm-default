local naughty = require('naughty')

return function(n)
   return naughty.layout.box({ notification = n })
end
