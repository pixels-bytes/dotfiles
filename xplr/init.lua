version = "0.19.3"

xplr.config.modes.builtin.action.key_bindings.on_key["!"].messages = {
  { Call = { command = "fish", args = { "-i" } } },
  "ExplorePwdAsync",
  "PopMode",
}

-- Paths
local home = os.getenv("HOME")
local xpm_path = home .. "/.local/share/xplr/dtomvan/xpm.xplr"
local xpm_url = "https://github.com/dtomvan/xpm.xplr"

package.path = package.path
  .. ";"
  .. xpm_path
  .. "/?.lua;"
  .. xpm_path
  .. "/?/init.lua"

os.execute(
  string.format(
    "[ -e '%s' ] || git clone '%s' '%s'",
    xpm_path,
    xpm_url,
    xpm_path
  )
)

-- Plugins
require("xpm").setup({
  'dtomvan/xpm.xplr',
  'sayanarijit/fzf.xplr',
  'sayanarijit/find.xplr',
  'sayanarijit/map.xplr',
  'sayanarijit/registers.xplr',
  'sayanarijit/type-to-nav.xplr',
  'prncss-xyz/icons.xplr',
  'sayanarijit/command-mode.xplr',
  'sayanarijit/scp.xplr',
  'sayanarijit/preview-tabbed.xplr',
  'sayanarijit/completion.xplr',
  'Junker/nuke.xplr',
  { 'dtomvan/extra-icons.xplr',
    after = function()
      xplr.config.general.table.row.cols[2] = { format = "custom.icons_dtomvan_col_1" }
    end
  },
})

-- Key Bindings
local key = xplr.config.modes.builtin.default.key_bindings.on_key

key.v = {
  help = "nuke",
  messages = {"PopMode", {SwitchModeCustom = "nuke"}}
}
key["f3"] = xplr.config.modes.custom.nuke.key_bindings.on_key.v
key["enter"] = xplr.config.modes.custom.nuke.key_bindings.on_key.o
