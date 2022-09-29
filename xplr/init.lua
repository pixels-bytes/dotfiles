version = "0.19.3"

xplr.config.modes.builtin.action.key_bindings.on_key["!"].messages = {
  { Call = { command = "fish", args = { "-i" } } },
  "ExplorePwdAsync",
  "PopMode",
}

local home = os.getenv("HOME")
package.path = home
.. "/.config/xplr/plugins/?/init.lua;"
.. home
.. "/.config/xplr/plugins/?.lua;"
.. package.path

require("fzf").setup()
require("find").setup()
require("map").setup()
require("completion").setup()
require"icons".setup()
require("registers").setup()
require("command-mode").setup()
require("scp").setup()
require("nuke").setup()
require("preview-tabbed").setup()

local key = xplr.config.modes.builtin.default.key_bindings.on_key

key.v = {
  help = "nuke",
  messages = {"PopMode", {SwitchModeCustom = "nuke"}}
}
key["f3"] = xplr.config.modes.custom.nuke.key_bindings.on_key.v
key["enter"] = xplr.config.modes.custom.nuke.key_bindings.on_key.o
