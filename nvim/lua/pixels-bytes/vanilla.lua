--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename:   pixels-bytes/vanilla.lua
 Github:     pixels and bytes
 Maintainer: Adam Tait
 About:      Settings for vanilla vim

--]]


local indent = 2

local options = {
  --Statusbar
  laststatus = 3,

  -- Colours
  termguicolors = true,
  background = 'dark',

  -- Numbers
  number = true,
  relativenumber = true,

  -- Rulers & Cursors
  ruler = true,
  cursorline = true,
  colorcolumn = '80',
  signcolumn = 'yes:2',
  showcmd = true,

  -- Tabs & Spacing
  smartindent = true,
  tabstop = indent,
  softtabstop = indent,
  shiftwidth = indent,
  shiftround = true,
  backspace = { 'indent', 'eol', 'start' },
  expandtab = true,

  -- Formatting
  wrap = true,
  textwidth = 80,
  autoindent = true,
  formatoptions = 'qntcl',
  showmatch = true,

  -- Search
  ignorecase = true,
  smartcase = true,
  gdefault = true,
  incsearch = true,
  hlsearch = false,

  -- Find
  path = '+=**',
  wildmenu = true,
  wildignorecase = true,
  wildignore = '+=**/node_modules/**',
  wildmode = 'list:longest',
  complete = 'kspell',
  completeopt = { 'menuone', 'noselect' },

  -- Window Management
  foldenable = true,
  foldlevelstart = 10,
  foldnestmax =10,
  foldmethod = 'manual',
  scrolloff = 0,
  splitbelow = true,
  splitright = false,

  -- System
  swapfile = false,
  writebackup = false,
  backup = false,
  undodir = '/Users/abu/.config/nvim/undodir',
  undofile = true,
  hidden = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- To lua-ify
vim.cmd 'filetype plugin indent on'
vim.g.python_host_prog = 'Users/abu/.pyenv/shims/python'
vim.opt.shortmess:append "c"
