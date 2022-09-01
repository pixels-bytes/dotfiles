--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
  	\|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename: alpha.lua
 Docs:     https://github.com/goolord/alpha-nvim/blob/main/doc/alpha.txt
--]]


local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')
local fortune = require("alpha.fortune")

local logo = {
  [[  ________  ________  ___  ___  ___       __   ________  ________  ___  ___      ]],
  [[ |\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \     ]],
  [[ \ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \    ]],
  [[  \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \   ]],
  [[   \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \  ]],
  [[    \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\ ]],
  [[     \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______| ]],
}

local plugins = ""
if vim.fn.has("linux") == 1 or vim.fn.has("mac") == 1 then
  local handle = io.popen('fd -d 2 . $HOME"/.local/share/nvim/site/pack/packer" | grep pack | wc -l | tr -d "\n" ')
  if handle == nil then
    return nil
  end
  plugins = handle:read("*a")
  handle:close()

  plugins = plugins:gsub("^%s*(.-)%s*$", "%1")
else
  plugins = "N/A"
end

local pluginCount = {
	type = "text",
	val = " " .. plugins .. " plugins",
	opts = {
		position = 'center',
		hl = 'String',
	},
}

local nvim_version = vim.version()
local version = {
  type = 'text',
  val = " v" .. nvim_version.major .. "." .. nvim_version.minor .. "." .. nvim_version.patch,
  opts = {
    position = 'center',
    hl = 'String',
  }
}

local datetime = {
  type = 'text',
  val = os.date(" %d-%m-%Y  %H:%M:%S"),
	opts = {
		position = 'center',
		hl = 'String',
	},
}

-- HACK: refactor options output
-- HACK: combine datetime, pluginCount, and version into an 'info' section
-- NOTE: https://github.com/emuel-vassallo/dotfiles/blob/main/.config/nvim/lua/plugins/configs/alpha.lua
dashboard.section.header.val = logo
dashboard.section.pluginCount = pluginCount
dashboard.section.datetime = datetime
dashboard.section.version = version
dashboard.section.buttons.val = {
  dashboard.button('r', ' Restore', '<cmd>lua require("persistence").load({ last = true })<cr>'),
  dashboard.button('e', ' New file', ':ene <bar> startinsert <cr>'),
  dashboard.button('p', ' Projects', ':Telescope project<cr>'),
  dashboard.button('m', ' MRU', ':Telescope oldfiles<cr>'),
  -- TODO: Install and configure ThePrimeagen/harpoon
  dashboard.button('b', ' Bookmarks', ':Telescope harpoon marks<cr>'),
  dashboard.button('w', ' Workspace', ':e ~/dev/workspace<cr>'),
  dashboard.button('a', ' Archive', ':e ~/dev/archive<cr>'),
  -- dashboard.button('g', ' Grep', ':cd ~/dev/workspace | Telescope live_grep<cr>'),
  -- dashboard.button('c', ' Config', ':e ~/.config/nvim/<cr>'),
  dashboard.button('c', ' Config', ':lua require("telescope.builtin").find_files({ cwd = "~/dotfiles/nvim/"})<cr>'),
  dashboard.button('u', ' Update', ':PackerSync<cr>'),
  dashboard.button('q', ' Quit', ':qa<cr>'),
}
dashboard.section.buttons.opts = {
  spacing = 0,
}

dashboard.section.footer.val = fortune()

alpha.setup({
  layout = {
    { type = 'padding', val = 1 },
    dashboard.section.header,
    { type = 'padding', val = 3 },
    dashboard.section.buttons,
    { type = 'padding', val = 2 },
    dashboard.section.version,
    dashboard.section.pluginCount,
    dashboard.section.datetime,
    { type = 'padding', val = 1 },
    dashboard.section.footer,
  },
  opts = {
    margin = 5,
    setup = function()
      vim.api.nvim_create_autocmd('User', {
        pattern = 'AlphaReady',
        desc = 'disable status and tabline for alpha',
        callback = function()
          vim.opt.showtabline = 0
          vim.opt.showmode = false
          vim.opt.laststatus = 0
          vim.opt.showcmd = false
          vim.opt.ruler = false
        end,
      })
      vim.api.nvim_create_autocmd('BufUnload', {
        buffer = 0,
        desc = 'enable status and tabline after alpha',
        callback = function()
          vim.opt.showmode = true
          vim.opt.showtabline = 2
          vim.opt.laststatus = 3
          vim.opt.showcmd = true
          vim.opt.ruler = true
        end,
      })
    end,
  },
})
