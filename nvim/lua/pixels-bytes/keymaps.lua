--[[
 ________  ________  ___  ___  ___       __   ________  ________  ___  ___
|\   __  \|\   __  \|\  \|\  \|\  \     |\  \|\   __  \|\   __  \|\  \|\  \
\ \  \|\  \ \  \|\ /\ \  \\\  \ \  \    \ \  \ \  \|\  \ \  \|\ /\ \  \\\  \
 \ \   __  \ \   __  \ \  \\\  \ \  \  __\ \  \ \   __  \ \   __  \ \  \\\  \
  \ \  \ \  \ \  \|\  \ \  \\\  \ \  \|\__\_\  \ \  \ \  \ \  \|\  \ \  \\\  \
   \ \__\ \__\ \_______\ \_______\ \____________\ \__\ \__\ \_______\ \_______\
    \|__|\|__|\|_______|\|_______|\|____________|\|__|\|__|\|_______|\|_______|

    Filename: keymaps.lua
]]


local keymap = vim.keymap.set

-- Disble arrow keys
keymap('', '<Up>', '<Nop>')
keymap('', '<Down>', '<Nop>')
keymap('', '<Left>', '<Nop>')
keymap('', '<Right>', '<Nop>')

-- Map Leader, Local Leader, and Spacebar
keymap('n', '<SPACE>', ':')
vim.g.mapleader = ','
vim.g.maplocalleader = '\\'
keymap('i', 'jj', '<esc>')

-- Some simple handy pairings
-- https://github.com/tpope/vim-unimpaired/blob/master/doc/unimpaired.txt
keymap('n', '[a', '<cmd>previous<cr>')
keymap('n', ']a', '<cmd>next<cr>')
keymap('n', '[A', '<cmd>first<cr>')
keymap('n', ']A', '<cmd>last<cr>')
keymap('n', '[b', '<cmd>bprevious<cr>')
keymap('n', ']b', '<cmd>bnext<cr>')
keymap('n', '[B', '<cmd>bfirst<cr>')
keymap('n', ']B', '<cmd>blast<cr>')
keymap('n', '[l', '<cmd>lprevious<cr>')
keymap('n', ']l', '<cmd>lnext<cr>')
keymap('n', '[L', '<cmd>lfirst<cr>')
keymap('n', ']L', '<cmd>llast<cr>')
keymap('n', '[<c-L>', '<cmd>lpfile<cr>')
keymap('n', ']<c-L>', '<cmd>lnfile<cr>')
keymap('n', '[q', '<cmd>cprevious<cr>')
keymap('n', ']q', '<cmd>cnext<cr>')
keymap('n', '[Q', '<cmd>cfirst<cr>')
keymap('n', ']Q', '<cmd>clast<cr>')
keymap('n', '[<c-Q>', '<cmd>cpfile<cr>')
keymap('n', ']<c-Q>', '<cmd>cnfile<cr>')
keymap('n', '[t', '<cmd>tprevious<cr>')
keymap('n', ']t', '<cmd>tnext<cr>')
keymap('n', '[T', '<cmd>tfirst<cr>')
keymap('n', ']T', '<cmd>tlast<cr>')
keymap('n', '[<c-T>', '<cmd>ptprevious<cr>')
keymap('n', ']<c-T>', '<cmd>ptnext<cr>')
keymap('n', '[<space>', 'O<esc>j')
keymap('n', ']<space>', 'o<esc>k')
keymap('n', '[e', 'ddkP')
keymap('n', ']e', 'ddp')

-- Better window navigation
keymap('n', '<tab>', '<C-w>w')

-- Open netrw to the left
keymap('n', '<leader>e', ':Lex 35<cr>')

-- Terminal
keymap('n', '<C-\\>', ':vsplit<cr> :terminal<cr> i')

-- Resizing
keymap('n', '<C-Up>', ':resize -2<cr>')
keymap('n', '<C-Down>', ':resize +2<cr>')
keymap('n', '<C-Left>', ':vertical resize -2<cr>')
keymap('n', '<C-Right>', ':vertical resize +2<cr>')

-- Args & Buffers
keymap('n', '<leader>a', ':arga <c-r>=fnameescape(expand("%:p:h"))<cr>/*<c-d>')
keymap('n', '<bs>', '<c-^>\'"zz')
keymap('n', 'bd', '<cmd>bd<cr>')
keymap('n', 'bD', ':%bd|e#<cr>')

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
-- keymap('n', '<tab>', '%')
-- keymap('v', '<tab>', '%')

-- Open current file in default program
keymap('n', '<leader>xo', ':!open %<cr><cr>')

-- Diagnostics
keymap('n', '\\e', vim.diagnostic.open_float)
keymap('n', '[d', vim.diagnostic.goto_prev)
keymap('n', ']d', vim.diagnostic.goto_next)
