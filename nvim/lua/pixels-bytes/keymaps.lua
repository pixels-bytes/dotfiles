--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

 Filename:   keymaps.lua
 Github:     pixels and bytes here
 Maintainer: Adam Tait
 About:      A small set of mappings for vanilla vim
--]]


local keymap = vim.keymap.set

-- map('i', '<BS>', '<Nop>')
keymap('', '<Up>', '<Nop>')
keymap('', '<Down>', '<Nop>')
keymap('', '<Left>', '<Nop>')
keymap('', '<Right>', '<Nop>')
--map('', 'h', '<Nop>')
--map('', 'j', '<Nop>')
--map('', 'k', '<Nop>')
--map('', 'l', '<Nop>')

-- Map Leader, Local Leader, and Spacebar
keymap('n', '<SPACE>', '<Nop>')
keymap('n', '<SPACE>', ':')
vim.g.mapleader = ','
vim.g.maplocalleader = ';'
keymap('i', 'jj', '<esc>')

-- Better window navigation
-- keymap('n', '<tab>', '<C-w>w')
keymap('n', '<up>', '<C-w><up>')
keymap('n', '<down>', '<C-w><down>')
keymap('n', '<left>', '<C-w><left>')
keymap('n', '<right>', '<C-w><right>')

-- Open netrw to the left
keymap('n', '<leader>m', ':Lex 35<cr>')

-- Terminal
keymap('n', '<C-\\>', ':vsplit<cr> :terminal<cr> i')

-- Resizing
keymap('n', '<S-Up>', ':resize -2<cr>')
keymap('n', '<S-Down>', ':resize +2<cr>')
keymap('n', '<S-Left>', ':vertical resize -2<cr>')
keymap('n', '<S-Right>', ':vertical resize +2<cr>')

-- Args & Buffers
keymap('n', '<leader>a', ':arga <c-r>=fnameescape(expand("%:p:h"))<cr>/*<c-d>')
keymap('n', '<bs>', '<c-^>\'"zz')
keymap('n', '<leader>bD', ':%bd|e#<cr>')

-- Bookmarks
keymap('n', '<leader>dv', ':e ~/.config/nvim/**/*')
keymap('n', '<leader>dh', ':e ~/**')

-- Move blocks
keymap('n', 'J', ':m .+1<cr>==')
keymap('n', 'K', ':m .-2<cr>==')
keymap('v', 'H', '<gv')
keymap('v', 'L', '>gv')
keymap('v', 'J', ':m \'>+1<CR>gv=gv')
keymap('v', 'K', ':m \'>-2<CR>gv=gv')
keymap('x', 'H', '<gv')
keymap('x', 'L', '>gv')
keymap('x', 'J', ':m \'>+1<CR>gv-gv')
keymap('x', 'K', ':m \'<-2<CR>gv-gv')

-- Find & Search
keymap('n', '<leader>f', ':find<space>')
keymap('n', '<leader><space>', ':noh<cr>')
keymap('n', '<tab>', '%')
keymap('v', '<tab>', '%')

-- Open current file in default program
keymap('n', '<leader>x', ':!open %<cr><cr>')

-- Diagnostics
keymap('n', '\\e', vim.diagnostic.open_float)
keymap('n', '[d', vim.diagnostic.goto_prev)
keymap('n', ']d', vim.diagnostic.goto_next)

-- Open & Source init.lua
keymap('n', '<leader>ev', ':vsp $MYVIMRC<cr>')
keymap('n', '<leader>pl', ':vsp ~/.config/nvim/lua/pixels-bytes/plugins.lua<cr>')
