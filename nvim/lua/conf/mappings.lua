--  ________  ________  ___  ___  ___       __   ________  ________  ___  ___
-- |\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
-- \ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
--  \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
--   \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
--    \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
--     \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|
--
--  Filename:   mappings.lua
--  Github:     pixels and bytes here
--  Maintainer: Adam Tait
--  About:      A small set of mappings for vanilla vim


local utils = require('conf/utils')
local map = utils.map

-- Hardcore Mode {{{
-- map('i', '<BS>', '<Nop>')
map('', '<Up>', '<Nop>')
map('', '<Down>', '<Nop>')
map('', '<Left>', '<Nop>')
map('', '<Right>', '<Nop>')
-- map('', 'h', '<Nop>')
-- map('', 'j', '<Nop>')
-- map('', 'k', '<Nop>')
-- map('', 'l', '<Nop>')
-- }}}

-- Esc & Map Leader
map('n', '<SPACE>', '<Nop>')
map('i', 'kj', '<esc>')
vim.g.mapleader = " "

--Quick save
map('n', '<leader>w', ':w<cr>')
map('n', '<leader>q', ':q<cr>')
-- map('n', '<leader>\\', ':w<cr>')
-- map('i', '<leader>\\', '<esc>:w<cr>')

-- Args & Buffers
map('n', '<leader>a', ':arga <c-r>=fnameescape(expand("%:p:h"))<cr>/*<c-d>')
map('n', '<leader>b', ':b <c-d>')
map('n', '<leader>[', ':bp<cr>')
map('n', '<leader>]', ':bn<cr>')
map('n', '<leader>bd', ':%bd|e#<cr>')

-- Bookmarks
map('n', '<leader>dv', ':e ~/.config/nvim/**/*')
map('n', '<leader>ds', ':e ~/Sites/vue-projects/**/*')
map('n', '<leader>dh', ':e ~/**')

-- Move blocks
-- map('n', 'J', ':m .+1<cr>==')
-- map('n', 'K', ':m .-2<cr>==')
map('v', 'J', ':m \'>+1<CR>gv=gv')
map('v', 'K', ':m \'>-2<CR>gv=gv')

-- Find & Search
map('n', '<leader>f', ':find<space>')
map('n', '<leader><space>', ':noh<cr>')
map('n', '<tab>', '%')
map('v', '<tab>', '%')

-- Completion
map('i', '<tab>', 'pumvisible() ? "\\<C-n>" : "\\<tab>"', {expr = true})
map('i', '<s-tab>', 'pumvisible() ? "\\<C-p>" : "\\<tab>"', {expr = true})

-- Open & Source init.lua
map('n', '<leader>ev', ':vsp $MYVIMRC<cr>')
map('n', '<leader>sv', ':luafile %<cr>')

-- vim:foldmethod=marker:foldlevel=0
