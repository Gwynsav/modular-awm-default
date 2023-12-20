-- This is used later as the default terminal and editor to run.
local apps = {}
apps.terminal   = 'xterm'
apps.editor     = os.getenv('EDITOR') or 'vi'
apps.editor_cmd = apps.terminal .. ' -e ' .. apps.editor

-- Menubar configuration.
require('menubar').utils.terminal = apps.terminal -- Set the terminal for applications that require it

return apps
