-- This is used later as the default terminal and editor to run.
local apps = {}
apps.terminal   = 'xterm'
apps.editor     = os.getenv('EDITOR') or 'vi'
apps.editor_cmd = apps.terminal .. ' -e ' .. apps.editor

-- Set the terminal for the menubar.
require('menubar').utils.terminal = apps.terminal

return apps
