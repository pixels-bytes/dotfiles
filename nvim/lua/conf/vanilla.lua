--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename:   vanilla.lua
 Github:     pixels and bytes here
 Maintainer: Adam Tait
 About:      Settings for vanilla vim

--]]


local utils = require('conf/utils')
local opt = utils.opt

--[[ 
Maybe easier to write options like this:

local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- global options
o.swapfile = true
o.dir = '/tmp'
o.smartcase = true
--]]

-- System {{{
vim.cmd 'filetype plugin indent on'
vim.g.python_host_prog = 'Users/abu/.pyenv/shims/python'

opt('o', 'swapfile', false)
opt('o', 'writebackup', false)
opt('o', 'backup', false)
opt('o', 'undodir', '/Users/abu/.config/nvim/undodir')
opt('b', 'undofile', true)
opt('o', 'hidden', true)
-- opt('b', 'omnifunc', 'syntaxcomplete#Complete')
--- }}}

-- UI {{{

-- Colours
opt('o', 'termguicolors', true)
opt('o', 'background', 'dark')
vim.cmd 'let ayucolor="mirage"'
vim.cmd 'colorscheme gruvbox'
-- 'hi! Normal ctermbg=none guibg=none'

-- Numbers
opt('w', 'number', true)
opt('w', 'relativenumber', true)

-- Rulers & Cursors
opt('o', 'ruler', true)
opt('w', 'cursorline', true)
opt('w', 'colorcolumn', '80')
opt('o', 'signcolumn', 'yes:2')
opt('o', 'showcmd', true)

--- }}}

-- UX {{{

-- Formatting
opt('w', 'wrap', false)
opt('b', 'textwidth', 80)
opt('b', 'autoindent', true)
opt('o', 'formatoptions', 'qntcl')
opt('o', 'showmatch', true)

-- Tabs & Spacing
local indent = 2
opt('b', 'smartindent', true)
opt('b', 'tabstop', indent)
opt('b', 'softtabstop', indent)
opt('b', 'shiftwidth', indent)
opt('o', 'shiftround', true)
opt('o', 'backspace', 'indent,eol,start')
opt('b', 'expandtab', true)

-- Window Management
opt('w', 'foldenable', true)
opt('o', 'foldlevelstart', 10)
opt('w', 'foldnestmax', 10)
opt('w', 'foldmethod', 'syntax')
opt('o', 'scrolloff', 0)
opt('o', 'splitbelow', true)
opt('o', 'splitright', false)

-- Search
opt('o', 'ignorecase', true)
opt('o', 'smartcase', true)
opt('o', 'gdefault', true)
opt('o', 'incsearch', true)
opt('o', 'hlsearch', false)

-- Find
opt('o', 'path', '+=**')
opt('o', 'wildmenu', true)
opt('o', 'wildignorecase', true)
opt('o', 'wildignore', '+=**/node_modules/**')
opt('o', 'wildmode', 'list:longest')
opt('o', 'complete', 'kspell')
opt('o', 'completeopt', 'menuone,noselect')
opt('o', 'shortmess', 'c')
---}}}

-- vim:foldmethod=marker:foldlevel=0
