--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|


 Filename:   mappings.lua
 Github:     pixels and bytes here
 Maintainer: Adam Tait
 About:      A small set of mappings for vanilla vim
--]]


local utils = require('pixels-bytes/utils')
local map = utils.map

-- Hardcore Mode {{{
-- map('i', '<BS>', '<Nop>')
-- map('', '<Up>', '<Nop>')
-- map('', '<Down>', '<Nop>')
-- map('', '<Left>', '<Nop>')
-- map('', '<Right>', '<Nop>')
-- map('', 'h', '<Nop>')
-- map('', 'j', '<Nop>')
-- map('', 'k', '<Nop>')
-- map('', 'l', '<Nop>')
-- }}}

-- Esc & Map Leader
-- map('n', '<SPACE>', '<Nop>')
vim.g.mapleader = ","

--Quick save
map('n', '<leader>w', ':w<cr>')
map('n', '<leader>q', ':q<cr>')

-- Better window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Terminal
map('n', '<C-\\>', ':vsplit<cr> :terminal<cr> i')

-- Open netrw to the left
map('n', '<leader>e', ':Lex 30<cr>')

-- Resizing
map('n', '<S-Up>', ':resize -2<cr>')
map('n', '<S-Down>', ':resize +2<cr>')
map('n', '<S-Left>', ':vertical resize -2<cr>')
map('n', '<S-Right>', ':vertical resize +2<cr>')

-- Args & Buffers
map('n', '<leader>a', ':arga <c-r>=fnameescape(expand("%:p:h"))<cr>/*<c-d>')
map('n', '<leader>b', ':b <c-d>')
map('n', '<leader>bp', ':bp<cr>')
map('n', '<leader>bn', ':bn<cr>')
map('n', '<leader>bd', ':bd<cr>')
map('n', '<leader>bD', ':%bd|e#<cr>')
map('n', '<leader>[', ':bp<cr>')
map('n', '<leader>]', ':bn<cr>')

-- Bookmarks
map('n', '<leader>dv', ':e ~/.config/nvim/**/*')
map('n', '<leader>ds', ':e ~/Sites/vue-projects/**/*')
map('n', '<leader>dh', ':e ~/**')

-- Move blocks
map('n', 'J', ':m .+1<cr>==')
map('n', 'K', ':m .-2<cr>==')
map('v', 'H', '<gv')
map('v', 'L', '>gv')
map('v', 'J', ':m \'>+1<CR>gv=gv')
map('v', 'K', ':m \'>-2<CR>gv=gv')
map('x', 'H', '<gv')
map('x', 'L', '>gv')
map('x', 'J', ':m \'>+1<CR>gv-gv')
map('x', 'K', ':m \'<-2<CR>gv-gv')

-- Find & Search
map('n', '<leader>f', ':find<space>')
map('n', '<leader><space>', ':noh<cr>')
map('n', '<tab>', '%')
map('v', '<tab>', '%')

-- Open current file in default program
map('n', '<leader>x', ':!open %<cr><cr>')

-- Diagnostics
map('n', '<space>e', 'vim.diagnostic.open_float')
map('n', '[d', 'vim.diagnostic.goto_prev')
map('n', ']d', 'vim.diagnostic.goto_next')

-- Open & Source init.lua
map('n', '<leader>ev', ':vsp $MYVIMRC<cr>')
map('n', '<leader>sv', ':luafile %<cr>')
